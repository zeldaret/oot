#include "SetEntranceList.h"
#include "SetStartPositionList.h"
#include "../../ZFile.h"
#include "../ZRoom.h"
#include "../../BitConverter.h"
#include "../../StringHelper.h"

using namespace std;

SetEntranceList::SetEntranceList(ZRoom* nZRoom, std::vector<uint8_t> rawData, int rawDataIndex) : ZRoomCommand(nZRoom, rawData, rawDataIndex)
{
	segmentOffset = BitConverter::ToInt32BE(rawData, rawDataIndex + 4) & 0x00FFFFFF;
	entrances = vector<EntranceEntry*>();

	_rawData = rawData;
	_rawDataIndex = rawDataIndex;
}

string SetEntranceList::GenerateSourceCodePass1(string roomName, int baseAddress)
{
	string sourceOutput = StringHelper::Sprintf("%s 0x00, (u32)&%sEntranceList0x%06X", ZRoomCommand::GenerateSourceCodePass1(roomName, baseAddress).c_str(), zRoom->GetName().c_str(), segmentOffset);

	// Parse Entrances and Generate Declaration
	zRoom->parent->AddDeclarationPlaceholder(segmentOffset); // Make sure this segment is defined
	int numEntrances = zRoom->GetDeclarationSizeFromNeighbor(segmentOffset) / 2;
	uint32_t currentPtr = segmentOffset;

	for (int i = 0; i < numEntrances; i++)
	{
		EntranceEntry* entry = new EntranceEntry(_rawData, currentPtr);
		entrances.push_back(entry);

		currentPtr += 2;
	}

	string declaration = "";

	int index = 0;

	for (EntranceEntry* entry : entrances)
	{
		declaration += StringHelper::Sprintf("\t{ 0x%02X, 0x%02X }, //0x%06X \n", entry->startPositionIndex, entry->roomToLoad, segmentOffset + (index * 2));
		index++;
	}

	zRoom->parent->AddDeclarationArray(segmentOffset, DeclarationAlignment::None, entrances.size() * 2, "EntranceEntry", 
		StringHelper::Sprintf("%sEntranceList0x%06X", zRoom->GetName().c_str(), segmentOffset), entrances.size(), declaration);

	return sourceOutput;
}

string SetEntranceList::GenerateExterns()
{
	return StringHelper::Sprintf("extern EntranceEntry %sEntranceList0x%06X[];\n", zRoom->GetName().c_str(), segmentOffset);
}

string SetEntranceList::GetCommandCName()
{
	return "SCmdEntranceList";
}

RoomCommand SetEntranceList::GetRoomCommand()
{
	return RoomCommand::SetEntranceList;
}

EntranceEntry::EntranceEntry(std::vector<uint8_t> rawData, int rawDataIndex)
{
	startPositionIndex = rawData[rawDataIndex + 0];
	roomToLoad = rawData[rawDataIndex + 1];
}