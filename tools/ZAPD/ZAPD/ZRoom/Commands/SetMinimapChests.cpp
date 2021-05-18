#include "SetMinimapChests.h"
#include "../../BitConverter.h"
#include "../../Globals.h"
#include "../../StringHelper.h"
#include "../../ZFile.h"
#include "../ZRoom.h"

using namespace std;

SetMinimapChests::SetMinimapChests(ZRoom* nZRoom, std::vector<uint8_t> rawData, uint32_t rawDataIndex)
	: ZRoomCommand(nZRoom, rawData, rawDataIndex)
{
	int32_t numChests = rawData[rawDataIndex + 1];
	segmentOffset = GETSEGOFFSET(BitConverter::ToInt32BE(rawData, rawDataIndex + 4));

	int32_t currentPtr = segmentOffset;

	for (int32_t i = 0; i < numChests; i++)
	{
		MinimapChest* chest = new MinimapChest(rawData, currentPtr);
		chests.push_back(chest);

		currentPtr += 10;
	}
}

SetMinimapChests::~SetMinimapChests()
{
	for (MinimapChest* chest : chests)
		delete chest;
}

string SetMinimapChests::GenerateSourceCodePass1(string roomName, uint32_t baseAddress)
{
	return std::string();
}

string SetMinimapChests::GenerateSourceCodePass2(string roomName, uint32_t baseAddress)
{
	string sourceOutput = "";

	sourceOutput +=
		StringHelper::Sprintf("%s 0x%02X, (u32)%sMinimapChests0x%06X };",
	                          ZRoomCommand::GenerateSourceCodePass1(roomName, baseAddress).c_str(),
	                          chests.size(), roomName.c_str(), segmentOffset);

	{
		string declaration = "";

		size_t index = 0;
		for (MinimapChest* chest : chests)
		{
			declaration += StringHelper::Sprintf("    { 0x%04X, 0x%04X, 0x%04X, 0x%04X, 0x%04X },",
			                                     chest->unk0, chest->unk2, chest->unk4, chest->unk6,
			                                     chest->unk8);

			if (index < chests.size() - 1)
				declaration += "\n";

			index++;
		}

		zRoom->parent->AddDeclarationArray(
			segmentOffset, DeclarationAlignment::None, DeclarationPadding::None, chests.size() * 10,
			"MinimapChest",
			StringHelper::Sprintf("%sMinimapChests0x%06X", roomName.c_str(), segmentOffset),
			chests.size(), declaration);
	}

	return sourceOutput;
}

string SetMinimapChests::GenerateExterns()
{
	return StringHelper::Sprintf("extern MinimapChest %sMinimapChests0x%06X[%i];\n",
	                             zRoom->GetName().c_str(), segmentOffset, chests.size());
}

string SetMinimapChests::GetCommandCName()
{
	return "SCmdMinimapChests";
}

RoomCommand SetMinimapChests::GetRoomCommand()
{
	return RoomCommand::SetMinimapChests;
}

size_t SetMinimapChests::GetRawDataSize()
{
	return ZRoomCommand::GetRawDataSize() + (chests.size() * 10);
}

MinimapChest::MinimapChest(std::vector<uint8_t> rawData, uint32_t rawDataIndex)
	: unk0(BitConverter::ToUInt16BE(rawData, rawDataIndex + 0)),
	  unk2(BitConverter::ToUInt16BE(rawData, rawDataIndex + 2)),
	  unk4(BitConverter::ToUInt16BE(rawData, rawDataIndex + 4)),
	  unk6(BitConverter::ToUInt16BE(rawData, rawDataIndex + 6)),
	  unk8(BitConverter::ToUInt16BE(rawData, rawDataIndex + 8))
{
}