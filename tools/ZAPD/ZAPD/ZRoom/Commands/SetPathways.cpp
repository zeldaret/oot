#include "SetPathways.h"
#include "../../BitConverter.h"
#include "../../StringHelper.h"
#include "../../ZFile.h"
#include "../../Globals.h"
#include "../ZRoom.h"

using namespace std;

SetPathways::SetPathways(ZRoom* nZRoom, std::vector<uint8_t> rawData, int rawDataIndex, bool isFromHeader)
	: ZRoomCommand(nZRoom, rawData, rawDataIndex)
{
	_rawData = rawData;
	_rawDataIndex = rawDataIndex;

	if (isFromHeader)
		segmentOffset = GETSEGOFFSET(BitConverter::ToInt32BE(rawData, rawDataIndex + 4));
	else
		segmentOffset = _rawDataIndex;

	if (segmentOffset != 0)
		zRoom->parent->AddDeclarationPlaceholder(segmentOffset);
}

SetPathways::~SetPathways()
{
	if (pathwayList != nullptr)
		delete pathwayList;
}

string SetPathways::GetSourceOutputCode(std::string prefix)
{
	return "";
}

string SetPathways::GenerateSourceCodePass1(string roomName, int baseAddress)
{
	int numPaths = (Globals::Instance->game != ZGame::MM_RETAIL) ? 1 : zRoom->GetDeclarationSizeFromNeighbor(segmentOffset) / 8;

	pathwayList = new PathwayList(zRoom, _rawData, segmentOffset, numPaths);

	return "";
}

string SetPathways::GenerateSourceCodePass2(string roomName, int baseAddress)
{
	string sourceOutput = "";

	sourceOutput +=
		StringHelper::Sprintf("%s 0, (u32)%sPathway0x%06X };",
							  ZRoomCommand::GenerateSourceCodePass1(roomName, baseAddress).c_str(),
							  roomName.c_str(), segmentOffset);

	if (pathwayList != nullptr)
	    pathwayList->GetSourceOutputCode(roomName);

	return sourceOutput;
}

int32_t SetPathways::GetRawDataSize()
{
	int32_t size = 0;
	if (pathwayList != nullptr)
	    size += pathwayList->GetRawDataSize();

	return ZRoomCommand::GetRawDataSize() + size;
}

string SetPathways::GenerateExterns()
{
	if (pathwayList != nullptr)
	    return pathwayList->GenerateExterns();

	return std::string();
}

string SetPathways::GetCommandCName()
{
	return "SCmdPathList";
}

RoomCommand SetPathways::GetRoomCommand()
{
	return RoomCommand::SetPathways;
}

PathwayEntry::PathwayEntry(std::vector<uint8_t> rawData, int rawDataIndex) :
	numPoints(rawData[rawDataIndex + 0]),
	unk1(rawData[rawDataIndex + 1]),
	unk2(BitConverter::ToInt16BE(rawData, rawDataIndex + 2)),
	listSegmentOffset(GETSEGOFFSET(BitConverter::ToInt32BE(rawData, rawDataIndex + 4)))
{
	uint32_t currentPtr = listSegmentOffset;
	uint8_t* data = rawData.data();

	for (int i = 0; i < numPoints; i++)
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
		for (int i = 0; i < 3; i++)
		{
			Vec3s point = Vec3s(0, 0, 0);
			points.push_back(point);
		}
	}
}

PathwayList::PathwayList(ZRoom* nZRoom, std::vector<uint8_t> rawData, int rawDataIndex, int length)
{
	zRoom = nZRoom;
	_rawDataIndex = rawDataIndex;

	uint32_t currentPtr = rawDataIndex;
	uint8_t* data = rawData.data();

	for (int pathIndex = 0; pathIndex < length; pathIndex++)
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

void PathwayList::GetSourceOutputCode(std::string prefix)
{
	{
		string declaration = "";
		size_t index = 0;
		for (PathwayEntry* entry : pathways)
		{
			if (Globals::Instance->game == ZGame::MM_RETAIL)
				declaration += StringHelper::Sprintf("	{ %i, %i, %i, (u32)%sPathwayList0x%06X },", entry->numPoints,
													entry->unk1, entry->unk2, prefix.c_str(), entry->listSegmentOffset);
			else
				declaration += StringHelper::Sprintf("	{ %i, (u32)%sPathwayList0x%06X },", entry->numPoints,
													prefix.c_str(), entry->listSegmentOffset);

			if (index < pathways.size() - 1)
				declaration += "\n";

			index++;
		}

		zRoom->parent->AddDeclarationArray(
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

		zRoom->parent->AddDeclarationArray(
			entry->listSegmentOffset, DeclarationAlignment::Align4, DeclarationPadding::Pad4,
			entry->points.size() * 6, "Vec3s",
			StringHelper::Sprintf("%sPathwayList0x%06X", prefix.c_str(), entry->listSegmentOffset),
			entry->points.size(), declaration);
	}
}

int32_t PathwayList::GetRawDataSize()
{
	int32_t pointsSize = 0;

	for (PathwayEntry* entry : pathways)
	{
		pointsSize += entry->points.size() * 6;
	}

	return pathways.size() * 8 + pointsSize;
}

string PathwayList::GenerateExterns()
{
	string declaration = "";
	for (PathwayEntry* entry : pathways)
	{
		declaration += StringHelper::Sprintf("extern Vec3s %sPathwayList0x%06X[];\n", zRoom->GetName().c_str(),
								 entry->listSegmentOffset);
	}

	return declaration;
}
