#include "SetCameraSettings.h"

#include "Utils/BitConverter.h"
#include "Utils/StringHelper.h"
#include "Globals.h"

SetCameraSettings::SetCameraSettings(ZFile* nParent) : ZRoomCommand(nParent)
{
}

void SetCameraSettings::ParseRawData()
{
	ZRoomCommand::ParseRawData();
	cameraMovement = cmdArg1;
	mapHighlight = BitConverter::ToUInt32BE(parent->GetRawData(), rawDataIndex + 4);
}

std::string SetCameraSettings::GetBodySourceCode() const
{
	if (Globals::Instance->game == ZGame::MM_RETAIL)
		return StringHelper::Sprintf("SCENE_CMD_SET_REGION_VISITED(0x%02X, 0x%08X)", cameraMovement,
		                             mapHighlight);
	else
		return StringHelper::Sprintf("SCENE_CMD_MISC_SETTINGS(0x%02X, 0x%08X)", cameraMovement,
		                             mapHighlight);
}

std::string SetCameraSettings::GetCommandCName() const
{
	return "SCmdMiscSettings";
}

RoomCommand SetCameraSettings::GetRoomCommand() const
{
	return RoomCommand::SetCameraSettings;
}
