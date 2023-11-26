#include "SetWorldMapVisited.h"

#include "Utils/StringHelper.h"
#include "Globals.h"

SetWorldMapVisited::SetWorldMapVisited(ZFile* nParent) : ZRoomCommand(nParent)
{
}

std::string SetWorldMapVisited::GetBodySourceCode() const
{
	if (Globals::Instance->game == ZGame::MM_RETAIL)
		return "SCENE_CMD_SET_REGION_VISITED()";
	else
		return "SCENE_CMD_MISC_SETTINGS()";
}

std::string SetWorldMapVisited::GetCommandCName() const
{
	return "SCmdWorldMapVisited";
}

RoomCommand SetWorldMapVisited::GetRoomCommand() const
{
	return RoomCommand::SetWorldMapVisited;
}
