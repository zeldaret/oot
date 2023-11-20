#include "SetSpecialObjects.h"

#include "Utils/BitConverter.h"
#include "Utils/StringHelper.h"
#include "ZRoom/ZNames.h"

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
	EnumData* enumData = &Globals::Instance->cfg.enumData;
	std::string objectName = ZNames::GetObjectName(globalObject);

	if (enumData->naviQuestHintType.find(elfMessage) != enumData->naviQuestHintType.end())
		return StringHelper::Sprintf("SCENE_CMD_SPECIAL_FILES(%s, %s)",
		                             enumData->naviQuestHintType[elfMessage].c_str(),
		                             objectName.c_str());

	return StringHelper::Sprintf("SCENE_CMD_SPECIAL_FILES(0x%02X, %s)", elfMessage,
	                             objectName.c_str());
}

std::string SetSpecialObjects::GetCommandCName() const
{
	return "SCmdSpecialFiles";
}

RoomCommand SetSpecialObjects::GetRoomCommand() const
{
	return RoomCommand::SetSpecialObjects;
}
