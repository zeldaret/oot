#include "SetRoomList.h"

#include "BitConverter.h"
#include "Globals.h"
#include "StringHelper.h"
#include "ZFile.h"
#include "ZRoom/ZRoom.h"

SetRoomList::SetRoomList(ZFile* nParent) : ZRoomCommand(nParent)
{
}

void SetRoomList::ParseRawData()
{
	ZRoomCommand::ParseRawData();
	int numRooms = cmdArg1;

	int32_t currentPtr = segmentOffset;

	for (int32_t i = 0; i < numRooms; i++)
	{
		RoomEntry entry(parent->GetRawData(), currentPtr);
		rooms.push_back(entry);

		currentPtr += 8;
	}

	zRoom->roomCount = numRooms;
}

void SetRoomList::DeclareReferences(const std::string& prefix)
{
	parent->AddDeclarationArray(
		segmentOffset, DeclarationAlignment::None, rooms.size() * 8, "RomFile",
		StringHelper::Sprintf("%sRoomList0x%06X", prefix.c_str(), segmentOffset), 0, "");
}

std::string SetRoomList::GetBodySourceCode() const
{
	std::string listName = parent->GetDeclarationPtrName(cmdArg2);
	return StringHelper::Sprintf("SCENE_CMD_ROOM_LIST(%i, %s)", rooms.size(), listName.c_str());
}

std::string SetRoomList::GetCommandCName() const
{
	return "SCmdRoomList";
}

RoomCommand SetRoomList::GetRoomCommand() const
{
	return RoomCommand::SetRoomList;
}

void SetRoomList::PreGenSourceFiles()
{
	std::string declaration = "";

	for (ZFile* file : Globals::Instance->files)
	{
		for (ZResource* res : file->resources)
		{
			if (res->GetResourceType() == ZResourceType::Room && res != zRoom)
			{
				std::string roomName = res->GetName();
				declaration +=
					StringHelper::Sprintf("\t{ (u32)_%sSegmentRomStart, (u32)_%sSegmentRomEnd },\n",
				                          roomName.c_str(), roomName.c_str());
			}
		}
	}

	parent->AddDeclarationArray(
		segmentOffset, DeclarationAlignment::None, rooms.size() * 8, "RomFile",
		StringHelper::Sprintf("%sRoomList0x%06X", zRoom->GetName().c_str(), segmentOffset), 0,
		declaration);
}

RoomEntry::RoomEntry(uint32_t nVAS, uint32_t nVAE)
{
	virtualAddressStart = nVAS;
	virtualAddressEnd = nVAE;
}

RoomEntry::RoomEntry(const std::vector<uint8_t>& rawData, uint32_t rawDataIndex)
	: RoomEntry(BitConverter::ToInt32BE(rawData, rawDataIndex + 0),
                BitConverter::ToInt32BE(rawData, rawDataIndex + 4))
{
}
