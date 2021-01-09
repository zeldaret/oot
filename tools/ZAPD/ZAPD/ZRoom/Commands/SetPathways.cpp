#include "SetPathways.h"
#include "../ZRoom.h"
#include "../../ZFile.h"
#include "../../BitConverter.h"
#include "../../StringHelper.h"

using namespace std;

SetPathways::SetPathways(ZRoom* nZRoom, std::vector<uint8_t> rawData, int rawDataIndex) : ZRoomCommand(nZRoom, rawData, rawDataIndex)
{
	_rawData = rawData;
	_rawDataIndex = rawDataIndex;

	segmentOffset = 0;
	listSegmentOffset = 0;

	InitList(SEG2FILESPACE(BitConverter::ToInt32BE(rawData, rawDataIndex + 4)));

	uint32_t currentPtr = listSegmentOffset;

	if (segmentOffset != 0)
		zRoom->parent->AddDeclarationPlaceholder(segmentOffset);
}

SetPathways::~SetPathways()
{
	for (PathwayEntry* entry : pathways)
		delete entry;
}

void SetPathways::InitList(uint32_t address)
{
	segmentOffset = address;
	listSegmentOffset = SEG2FILESPACE(BitConverter::ToInt32BE(_rawData, address + 4));
	numPoints = _rawData[address + 0];
}

string SetPathways::GetSourceOutputCode(std::string prefix)
{
	return "";
}

string SetPathways::GenerateSourceCodePass1(string roomName, int baseAddress)
{
	//int numPathsReal = zRoom->GetDeclarationSizeFromNeighbor(listSegmentOffset) / 6;
	uint32_t currentPtr = listSegmentOffset;

	uint8_t* data = _rawData.data();

	for (int i = 0; i < numPoints; i++)
	{
		PathwayEntry* entry = new PathwayEntry();
		entry->x = BitConverter::ToInt16BE(data, currentPtr + 0);
		entry->y = BitConverter::ToInt16BE(data, currentPtr + 2);
		entry->z = BitConverter::ToInt16BE(data, currentPtr + 4);

		pathways.push_back(entry);

		currentPtr += 6;
	}

	return "";
}


string SetPathways::GenerateSourceCodePass2(string roomName, int baseAddress)
{
	string sourceOutput = "";

	sourceOutput += StringHelper::Sprintf("%s 0, (u32)&%sPathway0x%06X };", ZRoomCommand::GenerateSourceCodePass1(roomName, baseAddress).c_str(), roomName.c_str(), segmentOffset);

	{
		string declaration = StringHelper::Sprintf("%i, (u32)%sPathwayList0x%06X", numPoints, roomName.c_str(), listSegmentOffset);
		
		zRoom->parent->AddDeclaration(segmentOffset, DeclarationAlignment::None, DeclarationPadding::None, 8, "Path",
			StringHelper::Sprintf("%sPathway0x%06X", roomName.c_str(), segmentOffset), declaration);
	}

	{
		string declaration = "";

		int index = 0;
		for (PathwayEntry* entry : pathways)
		{
			declaration += StringHelper::Sprintf("{ %i, %i, %i }, //0x%06X \n", entry->x, entry->y, entry->z, listSegmentOffset + (index * 6));
			index++;
		}

		zRoom->parent->AddDeclarationArray(listSegmentOffset, DeclarationAlignment::None, DeclarationPadding::None, pathways.size() * 6, 
			"Vec3s", StringHelper::Sprintf("%sPathwayList0x%06X", roomName.c_str(), listSegmentOffset), pathways.size(), declaration);
	}

	return sourceOutput;
}

int32_t SetPathways::GetRawDataSize()
{
	return ZRoomCommand::GetRawDataSize() + (pathways.size() * 6);
}

string SetPathways::GenerateExterns()
{
	return StringHelper::Sprintf("extern Vec3s %sPathwayList0x%06X[];\n", zRoom->GetName().c_str(), segmentOffset);
}

string SetPathways::GetCommandCName()
{
	return "SCmdPathList";
}

RoomCommand SetPathways::GetRoomCommand()
{
	return RoomCommand::SetPathways;
}