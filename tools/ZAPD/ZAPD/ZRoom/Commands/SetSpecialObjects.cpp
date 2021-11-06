#include "SetSpecialObjects.h"
#include "Utils/BitConverter.h"
#include "Utils/StringHelper.h"

SetSpecialObjects::SetSpecialObjects(ZFile* nParent) : ZRoomCommand(nParent)
{
}

void SetSpecialObjects::ParseRawData()
{
	ZRoomCommand::ParseRawData();
	elfMessage = cmdArg1;
	globalObject = BitConverter::ToUInt16BE(parent->GetRawData(), rawDataIndex + 0x06);
}

std::string SetSpecialObjects::GetBodySourceCode() const
{
	return StringHelper::Sprintf("SCENE_CMD_SPECIAL_FILES(0x%02X, 0x%04X)", elfMessage,
	                             globalObject);
}

std::string SetSpecialObjects::GetCommandCName() const
{
	return "SCmdSpecialFiles";
}

RoomCommand SetSpecialObjects::GetRoomCommand() const
{
	return RoomCommand::SetSpecialObjects;
}
