#include "ZRoomCommand.h"

#include "BitConverter.h"
#include "StringHelper.h"
#include "ZRoom.h"

ZRoomCommand::ZRoomCommand(ZFile* nParent) : ZResource(nParent)
{
}

void ZRoomCommand::ExtractCommandFromRoom(ZRoom* nZRoom, uint32_t nRawDataIndex)
{
	zRoom = nZRoom;
	rawDataIndex = nRawDataIndex;

	ParseRawData();
}

void ZRoomCommand::ParseRawData()
{
	auto& parentRawData = parent->GetRawData();
	cmdID = static_cast<RoomCommand>(parentRawData.at(rawDataIndex));
	cmdAddress = rawDataIndex;

	cmdArg1 = parentRawData.at(rawDataIndex + 1);
	cmdArg2 = BitConverter::ToUInt32BE(parentRawData, rawDataIndex + 4);
	segmentOffset = GETSEGOFFSET(cmdArg2);
}

void ZRoomCommand::ParseRawDataLate()
{
}

void ZRoomCommand::DeclareReferencesLate(const std::string& prefix)
{
}

std::string ZRoomCommand::GetCommandCName() const
{
	return "SCmdBase";
}

RoomCommand ZRoomCommand::GetRoomCommand() const
{
	return RoomCommand::Error;
}

std::string ZRoomCommand::GetCommandHex() const
{
	return StringHelper::Sprintf("0x%02X", static_cast<uint8_t>(cmdID));
}
