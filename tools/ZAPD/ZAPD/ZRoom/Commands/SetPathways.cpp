#include "SetPathways.h"
#include "../../BitConverter.h"
#include "../../Globals.h"
#include "../../StringHelper.h"
#include "../../ZFile.h"
#include "../ZRoom.h"

REGISTER_ZFILENODE(Path, ZSetPathways);

using namespace std;

ZSetPathways::ZSetPathways(ZFile* nParent) : ZResource(nParent)
{
}

ZSetPathways::ZSetPathways(ZRoom* nZRoom, const std::vector<uint8_t>& nRawData, uint32_t nRawDataIndex,
                           bool nIsFromHeader)
	: ZResource(nZRoom->parent), ZRoomCommand(nZRoom, nRawData, nRawDataIndex)
{
	rawData = nRawData;
	rawDataIndex = nRawDataIndex;
	isFromHeader = nIsFromHeader;
}

ZSetPathways::~ZSetPathways()
{
	delete pathwayList;
}

void ZSetPathways::DeclareVar(const std::string& prefix, const std::string& bodyStr)
{
	parent->AddDeclaration(cmdAddress, DeclarationAlignment::None, 8,
	                       StringHelper::Sprintf("static %s", GetCommandCName().c_str()),
	                       StringHelper::Sprintf("%sSet%04XCmd%02X", name.c_str(),
	                                             commandSet & 0x00FFFFFF, cmdIndex, cmdID),
	                       StringHelper::Sprintf("%s // 0x%04X", bodyStr.c_str(), cmdAddress));
}

string ZSetPathways::GetSourceOutputCode(const std::string& prefix)
{
	if (pathwayList != nullptr)
		pathwayList->GetSourceOutputCode(parent->GetName());

	return "";
}

void ZSetPathways::ParseRawData()
{
	if (isFromHeader)
		segmentOffset = GETSEGOFFSET(BitConverter::ToInt32BE(rawData, rawDataIndex + 4));
	else
		segmentOffset = rawDataIndex;

	if (segmentOffset != 0)
		parent->AddDeclarationPlaceholder(segmentOffset);

	int32_t numPaths = (Globals::Instance->game != ZGame::MM_RETAIL) ?
                       1 :
                       zRoom->GetDeclarationSizeFromNeighbor(segmentOffset) / 8;

	pathwayList = new PathwayList(parent, rawData, segmentOffset, numPaths);
}

string ZSetPathways::GenerateSourceCodePass1(string roomName, uint32_t baseAddress)
{
	ParseRawData();
	return "";
}

string ZSetPathways::GenerateSourceCodePass2(string roomName, uint32_t baseAddress)
{
	string sourceOutput = "";

	sourceOutput += StringHelper::Sprintf("\n\t%s 0, (u32)%sPathway0x%06X\n};",
	                                      ZRoomCommand::GenerateSourceCodePass1("", 0).c_str(),
	                                      parent->GetName().c_str(), segmentOffset);

	if (pathwayList != nullptr)
		pathwayList->GetSourceOutputCode(parent->GetName());

	return sourceOutput;
}

size_t ZSetPathways::GetRawDataSize()
{
	size_t size = 0;
	if (pathwayList != nullptr)
		size += pathwayList->GetRawDataSize();

	return ZRoomCommand::GetRawDataSize() + size;
}

string ZSetPathways::GenerateExterns()
{
	if (pathwayList != nullptr)
		return pathwayList->GenerateExterns(parent->GetName());

	return "";
}

string ZSetPathways::GetCommandCName()
{
	return "SCmdPathList";
}

RoomCommand ZSetPathways::GetRoomCommand()
{
	return RoomCommand::SetPathways;
}

PathwayEntry::PathwayEntry(std::vector<uint8_t> rawData, uint32_t rawDataIndex)
	: numPoints(rawData[rawDataIndex + 0]), unk1(rawData[rawDataIndex + 1]),
	  unk2(BitConverter::ToInt16BE(rawData, rawDataIndex + 2)),
	  listSegmentOffset(GETSEGOFFSET(BitConverter::ToInt32BE(rawData, rawDataIndex + 4)))
{
	uint32_t currentPtr = listSegmentOffset;
	uint8_t* data = rawData.data();

	for (int32_t i = 0; i < numPoints; i++)
	{
		x = BitConverter::ToInt16BE(data, currentPtr + 0);
		y = BitConverter::ToInt16BE(data, currentPtr + 2);
		z = BitConverter::ToInt16BE(data, currentPtr + 4);

		Vec3s point = Vec3s(x, y, z);
		points.push_back(point);

		currentPtr += 6;
	}

	if (numPoints == 0)  // Hack for SharpOcarina
	{
		for (int32_t i = 0; i < 3; i++)
		{
			Vec3s point = Vec3s(0, 0, 0);
			points.push_back(point);
		}
	}
}

PathwayList::PathwayList(ZFile* nParent, std::vector<uint8_t> rawData, uint32_t rawDataIndex, int32_t length)
{
	parent = nParent;
	_rawDataIndex = rawDataIndex;

	uint32_t currentPtr = rawDataIndex;

	for (int32_t pathIndex = 0; pathIndex < length; pathIndex++)
	{
		PathwayEntry* path = new PathwayEntry(rawData, currentPtr);
		currentPtr += 8;

		if (path->listSegmentOffset == 0)
			break;

		pathways.push_back(path);
	}
}

PathwayList::~PathwayList()
{
	for (PathwayEntry* path : pathways)
		delete path;
}

void PathwayList::GetSourceOutputCode(const std::string& prefix)
{
	{
		string declaration = "";
		size_t index = 0;
		for (PathwayEntry* entry : pathways)
		{
			if (Globals::Instance->game == ZGame::MM_RETAIL)
				declaration += StringHelper::Sprintf("	{ %i, %i, %i, (u32)%sPathwayList0x%06X },",
				                                     entry->numPoints, entry->unk1, entry->unk2,
				                                     prefix.c_str(), entry->listSegmentOffset);
			else
				declaration +=
					StringHelper::Sprintf("	{ %i, (u32)%sPathwayList0x%06X },", entry->numPoints,
				                          prefix.c_str(), entry->listSegmentOffset);

			if (index < pathways.size() - 1)
				declaration += "\n";

			index++;
		}

		parent->AddDeclarationArray(
			_rawDataIndex, DeclarationAlignment::None, DeclarationPadding::None,
			pathways.size() * 8, "Path",
			StringHelper::Sprintf("%sPathway0x%06X", prefix.c_str(), _rawDataIndex),
			pathways.size(), declaration);
	}

	for (PathwayEntry* entry : pathways)
	{
		string declaration = "";

		size_t index = 0;
		for (Vec3s& point : entry->points)
		{
			declaration += StringHelper::Sprintf("	{ %i, %i, %i }, //0x%06X", point.x, point.y,
			                                     point.z, entry->listSegmentOffset + (index * 6));

			if (index < entry->points.size() - 1)
				declaration += "\n";

			index++;
		}

		parent->AddDeclarationArray(
			entry->listSegmentOffset, DeclarationAlignment::Align4, DeclarationPadding::Pad4,
			entry->points.size() * 6, "Vec3s",
			StringHelper::Sprintf("%sPathwayList0x%06X", prefix.c_str(), entry->listSegmentOffset),
			entry->points.size(), declaration);
	}
}

size_t PathwayList::GetRawDataSize()
{
	size_t pointsSize = 0;

	for (PathwayEntry* entry : pathways)
	{
		pointsSize += entry->points.size() * 6;
	}

	return pathways.size() * 8 + pointsSize;
}

string PathwayList::GenerateExterns(const std::string& prefix)
{
	string declaration = "";
	for (PathwayEntry* entry : pathways)
	{
		declaration += StringHelper::Sprintf("extern Vec3s %sPathwayList0x%06X[];\n",
		                                     prefix.c_str(), entry->listSegmentOffset);
	}

	return declaration;
}
