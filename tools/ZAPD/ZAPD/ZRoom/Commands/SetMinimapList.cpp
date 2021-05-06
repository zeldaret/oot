#include "SetMinimapList.h"
#include "../../BitConverter.h"
#include "../../Globals.h"
#include "../../StringHelper.h"
#include "../../ZFile.h"
#include "../ZRoom.h"

using namespace std;

SetMinimapList::SetMinimapList(ZRoom* nZRoom, std::vector<uint8_t> rawData, uint32_t rawDataIndex)
	: ZRoomCommand(nZRoom, rawData, rawDataIndex)
{
	segmentOffset = GETSEGOFFSET(BitConverter::ToInt32BE(rawData, rawDataIndex + 4));
	listSegmentOffset = GETSEGOFFSET(BitConverter::ToInt32BE(rawData, segmentOffset + 0));
	unk4 = BitConverter::ToInt32BE(rawData, segmentOffset + 4);

	minimaps = vector<MinimapEntry*>();

	int32_t currentPtr = listSegmentOffset;

	for (int32_t i = 0; i < zRoom->roomCount; i++)
	{
		MinimapEntry* entry = new MinimapEntry(rawData, currentPtr);
		minimaps.push_back(entry);

		currentPtr += 10;
	}
}

SetMinimapList::~SetMinimapList()
{
	for (MinimapEntry* entry : minimaps)
		delete entry;
}

string SetMinimapList::GenerateSourceCodePass1(string roomName, uint32_t baseAddress)
{
	return StringHelper::Sprintf(
		"%s 0x%02X, (u32)&%sMinimapList0x%06X",
		ZRoomCommand::GenerateSourceCodePass1(roomName, baseAddress).c_str(), minimaps.size(),
		zRoom->GetName().c_str(), segmentOffset);
}

string SetMinimapList::GenerateSourceCodePass2(string roomName, uint32_t baseAddress)
{
	string sourceOutput = "";

	sourceOutput +=
		StringHelper::Sprintf("%s 0, (u32)&%sMinimapList0x%06X };",
	                          ZRoomCommand::GenerateSourceCodePass1(roomName, baseAddress).c_str(),
	                          roomName.c_str(), segmentOffset, unk4);

	{
		string declaration = StringHelper::Sprintf("(u32)%sMinimapEntryList0x%06X, 0x%08X",
		                                           roomName.c_str(), listSegmentOffset, unk4);

		zRoom->parent->AddDeclaration(
			segmentOffset, DeclarationAlignment::Align4, DeclarationPadding::None, 8, "MinimapList",
			StringHelper::Sprintf("%sMinimapList0x%06X", roomName.c_str(), segmentOffset),
			declaration);
	}

	{
		string declaration = "";

		size_t index = 0;
		for (MinimapEntry* entry : minimaps)
		{
			declaration += StringHelper::Sprintf("    { 0x%04X, 0x%04X, 0x%04X, 0x%04X, 0x%04X },",
			                                     entry->unk0, entry->unk2, entry->unk4, entry->unk6,
			                                     entry->unk8);

			if (index < minimaps.size() - 1)
				declaration += "\n";

			index++;
		}

		zRoom->parent->AddDeclarationArray(
			listSegmentOffset, DeclarationAlignment::None, DeclarationPadding::None,
			minimaps.size() * 10, "MinimapEntry",
			StringHelper::Sprintf("%sMinimapEntryList0x%06X", roomName.c_str(), listSegmentOffset),
			minimaps.size(), declaration);
	}

	return sourceOutput;
}

string SetMinimapList::GenerateExterns()
{
	return StringHelper::Sprintf("extern MinimapList %sMinimapList0x%06X;\n",
	                             zRoom->GetName().c_str(), listSegmentOffset);
}

string SetMinimapList::GetCommandCName()
{
	return "SCmdMinimapSettings";
}

RoomCommand SetMinimapList::GetRoomCommand()
{
	return RoomCommand::SetMinimapList;
}

size_t SetMinimapList::GetRawDataSize()
{
	return ZRoomCommand::GetRawDataSize() + (minimaps.size() * 10);
}

MinimapEntry::MinimapEntry(std::vector<uint8_t> rawData, uint32_t rawDataIndex)
	: unk0(BitConverter::ToUInt16BE(rawData, rawDataIndex + 0)),
	  unk2(BitConverter::ToUInt16BE(rawData, rawDataIndex + 2)),
	  unk4(BitConverter::ToUInt16BE(rawData, rawDataIndex + 4)),
	  unk6(BitConverter::ToUInt16BE(rawData, rawDataIndex + 6)),
	  unk8(BitConverter::ToUInt16BE(rawData, rawDataIndex + 8))
{
}