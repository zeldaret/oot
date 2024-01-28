#include "ZCutscene.h"

#include <cassert>

#include "Globals.h"
#include "Utils/BitConverter.h"
#include "Utils/StringHelper.h"
#include "WarningHandler.h"
#include "ZResource.h"

REGISTER_ZFILENODE(Cutscene, ZCutscene);

ZCutscene::ZCutscene(ZFile* nParent) : ZResource(nParent)
{
}

ZCutscene::~ZCutscene()
{
	for (CutsceneCommand* cmd : commands)
		delete cmd;
}

std::string ZCutscene::GetBodySourceCode() const
{
	std::string output = "";

	output += StringHelper::Sprintf("    CS_BEGIN_CUTSCENE(%i, %i),\n", commands.size(), endFrame);

	for (size_t i = 0; i < commands.size(); i++)
	{
		CutsceneCommand* cmd = commands[i];
		output += "    " + cmd->GenerateSourceCode();
	}

	output += StringHelper::Sprintf("    CS_END(),", commands.size(), endFrame);

	return output;
}

size_t ZCutscene::GetRawDataSize() const
{
	size_t size = 0;

	// Beginning
	size += 8;

	for (size_t i = 0; i < commands.size(); i++)
	{
		CutsceneCommand* cmd = commands[i];

		size += cmd->GetCommandSize();
	}

	// End
	if (Globals::Instance->game == ZGame::MM_RETAIL)
	{
		size += 4;
	}
	else
	{
		size += 8;
	}

	return size;
}

void ZCutscene::ParseRawData()
{
	ZResource::ParseRawData();

	const auto& rawData = parent->GetRawData();

	numCommands = BitConverter::ToInt32BE(rawData, rawDataIndex + 0);
	commands = std::vector<CutsceneCommand*>();

	endFrame = BitConverter::ToInt32BE(rawData, rawDataIndex + 4);
	offset_t currentPtr = rawDataIndex + 8;
	commands.reserve(numCommands);
	for (int32_t i = 0; i < numCommands; i++)
	{
		uint32_t id = BitConverter::ToUInt32BE(rawData, currentPtr);

		if (id == 0xFFFFFFFF)
			break;

		if (Globals::Instance->verbosity >= VerbosityLevel::VERBOSITY_DEBUG)
		{
			printf("Cutscene Command: 0x%X (%i)\n", id, id);
		}

		currentPtr += 4;

		CutsceneCommand* cmd = nullptr;

		if (Globals::Instance->game == ZGame::MM_RETAIL)
		{
			cmd = GetCommandMM(id, currentPtr);
		}
		else
		{
			cmd = GetCommandOoT(id, currentPtr);
		}

		if (cmd == nullptr)
		{
			HANDLE_WARNING_RESOURCE(
				WarningType::NotImplemented, parent, this, rawDataIndex,
				StringHelper::Sprintf("Cutscene command not implemented"),
				StringHelper::Sprintf("Command ID: 0x%X\nIndex: %d\ncurrentPtr-rawDataIndex: 0x%X",
			                          id, i, currentPtr - rawDataIndex));
			cmd = new CutsceneMMCommand_NonImplemented(rawData, currentPtr);
		}

		assert(cmd != nullptr);

		cmd->commandIndex = i;
		cmd->SetCommandID(id);
		size_t commmandSize = cmd->GetCommandSize();
		if (Globals::Instance->verbosity >= VerbosityLevel::VERBOSITY_DEBUG)
		{
			printf("\t Command size: 0x%zX (%zu)\n", commmandSize, commmandSize);
		}
		currentPtr += commmandSize - 4;

		commands.push_back(cmd);
	}
}

CutsceneCommand* ZCutscene::GetCommandOoT(uint32_t id, offset_t currentPtr) const
{
	CutsceneOoT_CommandType cmdID = static_cast<CutsceneOoT_CommandType>(id);

	const auto& rawData = parent->GetRawData();

	switch (cmdID)
	{
	case CutsceneOoT_CommandType::CS_CMD_PLAYER_CUE:
	case CutsceneOoT_CommandType::CS_CMD_ACTOR_CUE_1_0:
	case CutsceneOoT_CommandType::CS_CMD_ACTOR_CUE_0_0:
	case CutsceneOoT_CommandType::CS_CMD_ACTOR_CUE_1_1:
	case CutsceneOoT_CommandType::CS_CMD_ACTOR_CUE_0_1:
	case CutsceneOoT_CommandType::CS_CMD_ACTOR_CUE_0_2:
	case CutsceneOoT_CommandType::CS_CMD_ACTOR_CUE_0_3:
	case CutsceneOoT_CommandType::CS_CMD_ACTOR_CUE_1_2:
	case CutsceneOoT_CommandType::CS_CMD_ACTOR_CUE_2_0:
	case CutsceneOoT_CommandType::CS_CMD_ACTOR_CUE_3_0:
	case CutsceneOoT_CommandType::CS_CMD_ACTOR_CUE_4_0:
	case CutsceneOoT_CommandType::CS_CMD_ACTOR_CUE_6_0:
	case CutsceneOoT_CommandType::CS_CMD_ACTOR_CUE_0_4:
	case CutsceneOoT_CommandType::CS_CMD_ACTOR_CUE_1_3:
	case CutsceneOoT_CommandType::CS_CMD_ACTOR_CUE_2_1:
	case CutsceneOoT_CommandType::CS_CMD_ACTOR_CUE_3_1:
	case CutsceneOoT_CommandType::CS_CMD_ACTOR_CUE_4_1:
	case CutsceneOoT_CommandType::CS_CMD_ACTOR_CUE_0_5:
	case CutsceneOoT_CommandType::CS_CMD_ACTOR_CUE_1_4:
	case CutsceneOoT_CommandType::CS_CMD_ACTOR_CUE_2_2:
	case CutsceneOoT_CommandType::CS_CMD_ACTOR_CUE_3_2:
	case CutsceneOoT_CommandType::CS_CMD_ACTOR_CUE_4_2:
	case CutsceneOoT_CommandType::CS_CMD_ACTOR_CUE_5_0:
	case CutsceneOoT_CommandType::CS_CMD_ACTOR_CUE_0_6:
	case CutsceneOoT_CommandType::CS_CMD_ACTOR_CUE_4_3:
	case CutsceneOoT_CommandType::CS_CMD_ACTOR_CUE_1_5:
	case CutsceneOoT_CommandType::CS_CMD_ACTOR_CUE_7_0:
	case CutsceneOoT_CommandType::CS_CMD_ACTOR_CUE_2_3:
	case CutsceneOoT_CommandType::CS_CMD_ACTOR_CUE_3_3:
	case CutsceneOoT_CommandType::CS_CMD_ACTOR_CUE_6_1:
	case CutsceneOoT_CommandType::CS_CMD_ACTOR_CUE_3_4:
	case CutsceneOoT_CommandType::CS_CMD_ACTOR_CUE_4_4:
	case CutsceneOoT_CommandType::CS_CMD_ACTOR_CUE_5_1:
	case CutsceneOoT_CommandType::CS_CMD_ACTOR_CUE_6_2:
	case CutsceneOoT_CommandType::CS_CMD_ACTOR_CUE_6_3:
	case CutsceneOoT_CommandType::CS_CMD_ACTOR_CUE_7_1:
	case CutsceneOoT_CommandType::CS_CMD_ACTOR_CUE_8_0:
	case CutsceneOoT_CommandType::CS_CMD_ACTOR_CUE_3_5:
	case CutsceneOoT_CommandType::CS_CMD_ACTOR_CUE_1_6:
	case CutsceneOoT_CommandType::CS_CMD_ACTOR_CUE_3_6:
	case CutsceneOoT_CommandType::CS_CMD_ACTOR_CUE_3_7:
	case CutsceneOoT_CommandType::CS_CMD_ACTOR_CUE_2_4:
	case CutsceneOoT_CommandType::CS_CMD_ACTOR_CUE_1_7:
	case CutsceneOoT_CommandType::CS_CMD_ACTOR_CUE_2_5:
	case CutsceneOoT_CommandType::CS_CMD_ACTOR_CUE_1_8:
	case CutsceneOoT_CommandType::CS_CMD_ACTOR_CUE_2_6:
	case CutsceneOoT_CommandType::CS_CMD_ACTOR_CUE_2_7:
	case CutsceneOoT_CommandType::CS_CMD_ACTOR_CUE_3_8:
	case CutsceneOoT_CommandType::CS_CMD_ACTOR_CUE_0_7:
	case CutsceneOoT_CommandType::CS_CMD_ACTOR_CUE_5_2:
	case CutsceneOoT_CommandType::CS_CMD_ACTOR_CUE_1_9:
	case CutsceneOoT_CommandType::CS_CMD_ACTOR_CUE_4_5:
	case CutsceneOoT_CommandType::CS_CMD_ACTOR_CUE_1_10:
	case CutsceneOoT_CommandType::CS_CMD_ACTOR_CUE_2_8:
	case CutsceneOoT_CommandType::CS_CMD_ACTOR_CUE_3_9:
	case CutsceneOoT_CommandType::CS_CMD_ACTOR_CUE_4_6:
	case CutsceneOoT_CommandType::CS_CMD_ACTOR_CUE_5_3:
	case CutsceneOoT_CommandType::CS_CMD_ACTOR_CUE_0_8:
	case CutsceneOoT_CommandType::CS_CMD_ACTOR_CUE_6_4:
	case CutsceneOoT_CommandType::CS_CMD_ACTOR_CUE_7_2:
	case CutsceneOoT_CommandType::CS_CMD_ACTOR_CUE_5_4:
	case CutsceneOoT_CommandType::CS_CMD_ACTOR_CUE_0_9:
	case CutsceneOoT_CommandType::CS_CMD_ACTOR_CUE_1_11:
	case CutsceneOoT_CommandType::CS_CMD_ACTOR_CUE_0_10:
	case CutsceneOoT_CommandType::CS_CMD_ACTOR_CUE_2_9:
	case CutsceneOoT_CommandType::CS_CMD_ACTOR_CUE_0_11:
	case CutsceneOoT_CommandType::CS_CMD_ACTOR_CUE_3_10:
	case CutsceneOoT_CommandType::CS_CMD_ACTOR_CUE_0_12:
	case CutsceneOoT_CommandType::CS_CMD_ACTOR_CUE_7_3:
	case CutsceneOoT_CommandType::CS_CMD_ACTOR_CUE_7_4:
	case CutsceneOoT_CommandType::CS_CMD_ACTOR_CUE_6_5:
	case CutsceneOoT_CommandType::CS_CMD_ACTOR_CUE_1_12:
	case CutsceneOoT_CommandType::CS_CMD_ACTOR_CUE_2_10:
	case CutsceneOoT_CommandType::CS_CMD_ACTOR_CUE_1_13:
	case CutsceneOoT_CommandType::CS_CMD_ACTOR_CUE_0_13:
	case CutsceneOoT_CommandType::CS_CMD_ACTOR_CUE_1_14:
	case CutsceneOoT_CommandType::CS_CMD_ACTOR_CUE_2_11:
	case CutsceneOoT_CommandType::CS_CMD_ACTOR_CUE_0_14:
	case CutsceneOoT_CommandType::CS_CMD_ACTOR_CUE_1_15:
	case CutsceneOoT_CommandType::CS_CMD_ACTOR_CUE_2_12:
	case CutsceneOoT_CommandType::CS_CMD_ACTOR_CUE_3_11:
	case CutsceneOoT_CommandType::CS_CMD_ACTOR_CUE_4_7:
	case CutsceneOoT_CommandType::CS_CMD_ACTOR_CUE_5_5:
	case CutsceneOoT_CommandType::CS_CMD_ACTOR_CUE_6_6:
	case CutsceneOoT_CommandType::CS_CMD_ACTOR_CUE_1_16:
	case CutsceneOoT_CommandType::CS_CMD_ACTOR_CUE_2_13:
	case CutsceneOoT_CommandType::CS_CMD_ACTOR_CUE_3_12:
	case CutsceneOoT_CommandType::CS_CMD_ACTOR_CUE_7_5:
	case CutsceneOoT_CommandType::CS_CMD_ACTOR_CUE_4_8:
	case CutsceneOoT_CommandType::CS_CMD_ACTOR_CUE_5_6:
	case CutsceneOoT_CommandType::CS_CMD_ACTOR_CUE_6_7:
	case CutsceneOoT_CommandType::CS_CMD_ACTOR_CUE_0_15:
	case CutsceneOoT_CommandType::CS_CMD_ACTOR_CUE_0_16:
	case CutsceneOoT_CommandType::CS_CMD_ACTOR_CUE_1_17:
	case CutsceneOoT_CommandType::CS_CMD_ACTOR_CUE_7_6:
	case CutsceneOoT_CommandType::CS_CMD_ACTOR_CUE_9_0:
	case CutsceneOoT_CommandType::CS_CMD_ACTOR_CUE_0_17:
		return new CutsceneOoTCommand_ActorCue(rawData, currentPtr);

	case CutsceneOoT_CommandType::CS_CMD_MISC:
	case CutsceneOoT_CommandType::CS_CMD_LIGHT_SETTING:
	case CutsceneOoT_CommandType::CS_CMD_START_SEQ:
	case CutsceneOoT_CommandType::CS_CMD_STOP_SEQ:
	case CutsceneOoT_CommandType::CS_CMD_FADE_OUT_SEQ:
		return new CutsceneOoTCommand_GenericCmd(rawData, currentPtr, cmdID);

	case CutsceneOoT_CommandType::CS_CMD_CAM_EYE_SPLINE:
	case CutsceneOoT_CommandType::CS_CMD_CAM_AT_SPLINE:
	case CutsceneOoT_CommandType::CS_CMD_CAM_EYE_SPLINE_REL_TO_PLAYER:
	case CutsceneOoT_CommandType::CS_CMD_CAM_AT_SPLINE_REL_TO_PLAYER:
		return new CutsceneOoTCommand_GenericCameraCmd(rawData, currentPtr);

	case CutsceneOoT_CommandType::CS_CMD_RUMBLE_CONTROLLER:
		return new CutsceneOoTCommand_Rumble(rawData, currentPtr);

	case CutsceneOoT_CommandType::CS_CMD_TEXT:
		return new CutsceneOoTCommand_Text(rawData, currentPtr);

	case CutsceneOoT_CommandType::CS_CMD_TRANSITION:
		return new CutsceneOoTCommand_Transition(rawData, currentPtr);

	case CutsceneOoT_CommandType::CS_CMD_TIME:
		return new CutsceneCommand_Time(rawData, currentPtr);

	case CutsceneOoT_CommandType::CS_CMD_DESTINATION:
		return new CutsceneOoTCommand_Destination(rawData, currentPtr);

	case CutsceneOoT_CommandType::CS_CMD_CAM_EYE:
	case CutsceneOoT_CommandType::CS_CMD_CAM_AT:
		break;

	default:
		std::string errorHeader =
			StringHelper::Sprintf("Warning: Invalid cutscene command ID: '0x%04X'", cmdID);
		return new CutsceneOoTCommand_GenericCmd(rawData, currentPtr, cmdID);
	}

	return nullptr;
}

CutsceneCommand* ZCutscene::GetCommandMM(uint32_t id, offset_t currentPtr) const
{
	CutsceneMM_CommandType cmdID = static_cast<CutsceneMM_CommandType>(id);

	const auto& rawData = parent->GetRawData();

	if (((id >= (uint32_t)CutsceneMM_CommandType::CS_CMD_ACTOR_CUE_100) &&
	     (id <= (uint32_t)CutsceneMM_CommandType::CS_CMD_ACTOR_CUE_149)) ||
	    (id == (uint32_t)CutsceneMM_CommandType::CS_CMD_ACTOR_CUE_201) ||
	    ((id >= (uint32_t)CutsceneMM_CommandType::CS_CMD_ACTOR_CUE_450) &&
	     (id <= (uint32_t)CutsceneMM_CommandType::CS_CMD_ACTOR_CUE_599)))
	{
		return new CutsceneMMCommand_ActorCue(rawData, currentPtr);
	}

	switch (cmdID)
	{
	case CutsceneMM_CommandType::CS_CMD_MISC:
	case CutsceneMM_CommandType::CS_CMD_LIGHT_SETTING:
	case CutsceneMM_CommandType::CS_CMD_TRANSITION:
	case CutsceneMM_CommandType::CS_CMD_MOTION_BLUR:
	case CutsceneMM_CommandType::CS_CMD_GIVE_TATL:
	case CutsceneMM_CommandType::CS_CMD_START_SEQ:
	case CutsceneMM_CommandType::CS_CMD_SFX_REVERB_INDEX_2:
	case CutsceneMM_CommandType::CS_CMD_SFX_REVERB_INDEX_1:
	case CutsceneMM_CommandType::CS_CMD_MODIFY_SEQ:
	case CutsceneMM_CommandType::CS_CMD_STOP_SEQ:
	case CutsceneMM_CommandType::CS_CMD_START_AMBIENCE:
	case CutsceneMM_CommandType::CS_CMD_FADE_OUT_AMBIENCE:
	case CutsceneMM_CommandType::CS_CMD_DESTINATION:
	case CutsceneMM_CommandType::CS_CMD_CHOOSE_CREDITS_SCENES:

	case CutsceneMM_CommandType::CS_CMD_UNK_DATA_FA:
	case CutsceneMM_CommandType::CS_CMD_UNK_DATA_FE:
	case CutsceneMM_CommandType::CS_CMD_UNK_DATA_FF:
	case CutsceneMM_CommandType::CS_CMD_UNK_DATA_100:
	case CutsceneMM_CommandType::CS_CMD_UNK_DATA_101:
	case CutsceneMM_CommandType::CS_CMD_UNK_DATA_102:
	case CutsceneMM_CommandType::CS_CMD_UNK_DATA_103:
	case CutsceneMM_CommandType::CS_CMD_UNK_DATA_104:
	case CutsceneMM_CommandType::CS_CMD_UNK_DATA_105:
	case CutsceneMM_CommandType::CS_CMD_UNK_DATA_108:
	case CutsceneMM_CommandType::CS_CMD_UNK_DATA_109:
		return new CutsceneMMCommand_GenericCmd(rawData, currentPtr, cmdID);

	case CutsceneMM_CommandType::CS_CMD_TEXT:
		return new CutsceneMMCommand_Text(rawData, currentPtr);

	case CutsceneMM_CommandType::CS_CMD_CAMERA_SPLINE:
		return new CutsceneMMCommand_Camera(rawData, currentPtr);

	case CutsceneMM_CommandType::CS_CMD_TRANSITION_GENERAL:
		return new CutsceneMMCommand_TransitionGeneral(rawData, currentPtr);

	case CutsceneMM_CommandType::CS_CMD_FADE_OUT_SEQ:
		return new CutsceneMMCommand_FadeOutSeq(rawData, currentPtr);

	case CutsceneMM_CommandType::CS_CMD_TIME:
		return new CutsceneCommand_Time(rawData, currentPtr);

	case CutsceneMM_CommandType::CS_CMD_PLAYER_CUE:
		return new CutsceneMMCommand_ActorCue(rawData, currentPtr);

	case CutsceneMM_CommandType::CS_CMD_RUMBLE:
		return new CutsceneMMCommand_Rumble(rawData, currentPtr);

	default:
		std::string errorHeader =
			StringHelper::Sprintf("Warning: Invalid cutscene command ID: '0x%04X'", cmdID);
		return new CutsceneMMCommand_GenericCmd(rawData, currentPtr, cmdID);
	}

	return nullptr;
}

Declaration* ZCutscene::DeclareVar(const std::string& prefix, const std::string& bodyStr)
{
	std::string auxName = name;

	if (auxName == "")
		auxName = GetDefaultName(prefix);

	Declaration* decl =
		parent->AddDeclarationArray(rawDataIndex, GetDeclarationAlignment(), GetRawDataSize(),
	                                GetSourceTypeName(), auxName, 0, bodyStr);
	decl->staticConf = staticConf;
	return decl;
}

std::string ZCutscene::GetSourceTypeName() const
{
	return "CutsceneData";
}

ZResourceType ZCutscene::GetResourceType() const
{
	return ZResourceType::Cutscene;
}
