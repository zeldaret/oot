#include "SetRoomList.h"
#include "../ZRoom.h"
#include "../../ZFile.h"
#include "../../Globals.h"
#include "../../BitConverter.h"
#include "../../StringHelper.h"

using namespace std;

SetRoomList::SetRoomList(ZRoom* nZRoom, std::vector<uint8_t> rawData, int rawDataIndex) : ZRoomCommand(nZRoom, rawData, rawDataIndex)
{
	int numRooms = rawData[rawDataIndex + 1];
	segmentOffset = BitConverter::ToInt32BE(rawData, rawDataIndex + 4) & 0x00FFFFFF;

	rooms = vector<RoomEntry*>();

	int32_t currentPtr = segmentOffset;

	for (int i = 0; i < numRooms; i++)
	{
		RoomEntry* entry = new RoomEntry(rawData, currentPtr);
		rooms.push_back(entry);

		currentPtr += 8;
	}
}

SetRoomList::~SetRoomList()
{
	for (RoomEntry* entry : rooms)
		delete entry;
}

string SetRoomList::GenerateSourceCodePass1(string roomName, int baseAddress)
{
	return StringHelper::Sprintf("%s 0x%02X, (u32)&%sRoomList0x%06X", ZRoomCommand::GenerateSourceCodePass1(roomName, baseAddress).c_str(), rooms.size(), zRoom->GetName().c_str(), segmentOffset);
}

string SetRoomList::GenerateSourceCodePass2(string roomName, int baseAddress)
{
	return "";
}

string SetRoomList::GenerateExterns()
{
	return StringHelper::Sprintf("extern RomFile %sRoomList0x%06X[];\n", zRoom->GetName().c_str(), segmentOffset);
}

string SetRoomList::GetCommandCName()
{
	return "SCmdRoomList";
}

RoomCommand SetRoomList::GetRoomCommand()
{
	return RoomCommand::SetRoomList;
}

std::string SetRoomList::PreGenSourceFiles()
{
	string declaration = "";

	for (ZFile* file : Globals::Instance->files)
	{
		for (ZResource* res : file->resources)
		{
			if (res->GetResourceType() == ZResourceType::Room && res != zRoom)
			{
				string roomName = res->GetName();
				declaration += StringHelper::Sprintf("\t{ (u32)_%sSegmentRomStart, (u32)_%sSegmentRomEnd },\n", roomName.c_str(), roomName.c_str());
			}
		}
	}

	zRoom->parent->AddDeclarationArray(segmentOffset, DeclarationAlignment::None, rooms.size() * 8,
		"RomFile", StringHelper::Sprintf("%sRoomList0x%06X", zRoom->GetName().c_str(), segmentOffset), 0, declaration);

	return std::string();
}

std::string SetRoomList::Save()
{
	return std::string();
}

RoomEntry::RoomEntry(int32_t nVAS, int32_t nVAE)
{
	virtualAddressStart = nVAS;
	virtualAddressEnd = nVAE;
}

RoomEntry::RoomEntry(std::vector<uint8_t> rawData, int rawDataIndex) : RoomEntry(BitConverter::ToInt32BE(rawData, rawDataIndex + 0), BitConverter::ToInt32BE(rawData, rawDataIndex + 4))
{
}