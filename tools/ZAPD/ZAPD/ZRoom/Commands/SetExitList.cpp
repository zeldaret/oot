#include "SetExitList.h"
#include "../ZRoom.h"
#include "../../ZFile.h"
#include "../../BitConverter.h"
#include "../../StringHelper.h"

using namespace std;

SetExitList::SetExitList(ZRoom* nZRoom, std::vector<uint8_t> rawData, int rawDataIndex) : ZRoomCommand(nZRoom, rawData, rawDataIndex)
{
	segmentOffset = SEG2FILESPACE(BitConverter::ToInt32BE(rawData, rawDataIndex + 4));
	exits = vector<uint16_t>();

	if (segmentOffset != 0)
		zRoom->parent->AddDeclarationPlaceholder(segmentOffset);

	_rawData = rawData;
	_rawDataIndex = rawDataIndex;
}

string SetExitList::GenerateSourceCodePass1(string roomName, int baseAddress)
{
	string sourceOutput = StringHelper::Sprintf("%s 0x00, (u32)&%sExitList0x%06X", ZRoomCommand::GenerateSourceCodePass1(roomName, baseAddress).c_str(), zRoom->GetName().c_str(), segmentOffset);

	// Parse Entrances and Generate Declaration
	zRoom->parent->AddDeclarationPlaceholder(segmentOffset); // Make sure this segment is defined
	int numEntrances = zRoom->GetDeclarationSizeFromNeighbor(segmentOffset) / 2;
	uint32_t currentPtr = segmentOffset;

	for (int i = 0; i < numEntrances; i++)
	{
		uint16_t exit = BitConverter::ToInt16BE(_rawData, currentPtr);
		exits.push_back(exit);

		currentPtr += 2;
	}

	string declaration = "";

	for (uint16_t exit : exits)
		declaration += StringHelper::Sprintf("\t0x%04X,\n", exit);;

	zRoom->parent->AddDeclarationArray(segmentOffset, DeclarationAlignment::None, exits.size() * 2, "u16", StringHelper::Sprintf("%sExitList0x%06X", zRoom->GetName().c_str(), segmentOffset),
		exits.size(), declaration);

	return sourceOutput;
}

string SetExitList::GenerateExterns()
{
	return StringHelper::Sprintf("extern u16 %sExitList0x%06X[];\n", zRoom->GetName().c_str(), segmentOffset);;
}

string SetExitList::GetCommandCName()
{
	return "SCmdExitList";
}

RoomCommand SetExitList::GetRoomCommand()
{
	return RoomCommand::SetExitList;
}