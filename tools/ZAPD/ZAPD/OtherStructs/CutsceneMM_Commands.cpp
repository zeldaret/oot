#include "CutsceneMM_Commands.h"

#include <unordered_map>
#include "Globals.h"
#include "Utils/BitConverter.h"
#include "Utils/StringHelper.h"

/**** GENERIC ****/

// Specific for command lists where each entry has size 8 bytes
const std::unordered_map<CutsceneMM_CommandType, CsCommandListDescriptor> csCommandsDescMM = {
	{CutsceneMM_CommandType::CS_CMD_MISC, {"CS_MISC", "(%s, %i, %i, %i)"}},
	{CutsceneMM_CommandType::CS_CMD_LIGHT_SETTING, {"CS_LIGHT_SETTING", "(0x%02X, %i, %i)"}},
	{CutsceneMM_CommandType::CS_CMD_TRANSITION, {"CS_TRANSITION", "(%s, %i, %i)"}},
	{CutsceneMM_CommandType::CS_CMD_MOTION_BLUR, {"CS_MOTION_BLUR", "(%s, %i, %i)"}},
	{CutsceneMM_CommandType::CS_CMD_GIVE_TATL, {"CS_GIVE_TATL", "(%s, %i, %i)"}},
	{CutsceneMM_CommandType::CS_CMD_START_SEQ, {"CS_START_SEQ", "(0x%04X, %i, %i)"}},
	{CutsceneMM_CommandType::CS_CMD_SFX_REVERB_INDEX_2,
     {"CS_SFX_REVERB_INDEX_2", "(0x%04X, %i, %i)"}},
	{CutsceneMM_CommandType::CS_CMD_SFX_REVERB_INDEX_1,
     {"CS_SFX_REVERB_INDEX_1", "(0x%04X, %i, %i)"}},
	{CutsceneMM_CommandType::CS_CMD_MODIFY_SEQ, {"CS_MODIFY_SEQ", "(%s, %i, %i)"}},
	{CutsceneMM_CommandType::CS_CMD_STOP_SEQ, {"CS_STOP_SEQ", "(0x%04X, %i, %i, %i)"}},
	{CutsceneMM_CommandType::CS_CMD_START_AMBIENCE, {"CS_START_AMBIENCE", "(0x%04X, %i, %i)"}},
	{CutsceneMM_CommandType::CS_CMD_FADE_OUT_AMBIENCE,
     {"CS_FADE_OUT_AMBIENCE", "(0x%04X, %i, %i)"}},
	{CutsceneMM_CommandType::CS_CMD_DESTINATION, {"CS_DESTINATION", "(%s, %i, %i)"}},
	{CutsceneMM_CommandType::CS_CMD_CHOOSE_CREDITS_SCENES,
     {"CS_CHOOSE_CREDITS_SCENES", "(%s, %i, %i)"}},
};

CutsceneMMSubCommandEntry_GenericCmd::CutsceneMMSubCommandEntry_GenericCmd(
	const std::vector<uint8_t>& rawData, offset_t rawDataIndex, CutsceneMM_CommandType cmdId)
	: CutsceneSubCommandEntry(rawData, rawDataIndex), commandId(cmdId)
{
}

std::string CutsceneMMSubCommandEntry_GenericCmd::GetBodySourceCode() const
{
	EnumData* enumData = &Globals::Instance->cfg.enumData;
	const auto& element = csCommandsDescMM.find(commandId);
	std::string entryFmt = "CS_UNK_DATA(0x%02X, %i, %i, %i)";
	std::string type = "";

	if (element != csCommandsDescMM.end())
	{
		entryFmt = element->second.cmdMacro;
		entryFmt += element->second.args;
	}

	if (commandId == CutsceneMM_CommandType::CS_CMD_MISC &&
	    enumData->miscType.find(base) != enumData->miscType.end())
		type = enumData->miscType[base];

	else if (commandId == CutsceneMM_CommandType::CS_CMD_TRANSITION &&
	         enumData->transitionType.find(base) != enumData->transitionType.end())
		type = enumData->transitionType[base];

	else if (commandId == CutsceneMM_CommandType::CS_CMD_MOTION_BLUR &&
	         enumData->motionBlurType.find(base) != enumData->motionBlurType.end())
		type = enumData->motionBlurType[base];

	else if (commandId == CutsceneMM_CommandType::CS_CMD_MODIFY_SEQ &&
	         enumData->modifySeqType.find(base) != enumData->modifySeqType.end())
		type = enumData->modifySeqType[base];

	else if (commandId == CutsceneMM_CommandType::CS_CMD_DESTINATION &&
	         enumData->destinationType.find(base) != enumData->destinationType.end())
		type = enumData->destinationType[base];

	else if (commandId == CutsceneMM_CommandType::CS_CMD_CHOOSE_CREDITS_SCENES &&
	         enumData->chooseCreditsSceneType.find(base) != enumData->chooseCreditsSceneType.end())
		type = enumData->chooseCreditsSceneType[base];

	else if (commandId == CutsceneMM_CommandType::CS_CMD_GIVE_TATL)
		type = base ? "true" : "false";

	if (type != "")
		return StringHelper::Sprintf(entryFmt.c_str(), type.c_str(), startFrame, endFrame, pad);

	if (commandId == CutsceneMM_CommandType::CS_CMD_LIGHT_SETTING ||
	    commandId == CutsceneMM_CommandType::CS_CMD_START_SEQ ||
	    commandId == CutsceneMM_CommandType::CS_CMD_STOP_SEQ)
	{
		return StringHelper::Sprintf(entryFmt.c_str(), base - 1, startFrame, endFrame, pad);
	}

	return StringHelper::Sprintf(entryFmt.c_str(), base, startFrame, endFrame, pad);
}

CutsceneMMCommand_GenericCmd::CutsceneMMCommand_GenericCmd(const std::vector<uint8_t>& rawData,
                                                           offset_t rawDataIndex,
                                                           CutsceneMM_CommandType cmdId)
	: CutsceneCommand(rawData, rawDataIndex)
{
	rawDataIndex += 4;

	commandID = static_cast<uint32_t>(cmdId);

	entries.reserve(numEntries);
	for (size_t i = 0; i < numEntries; i++)
	{
		auto* entry = new CutsceneMMSubCommandEntry_GenericCmd(rawData, rawDataIndex, cmdId);
		entries.push_back(entry);
		rawDataIndex += entry->GetRawSize();
	}
}

std::string CutsceneMMCommand_GenericCmd::GetCommandMacro() const
{
	const auto& element = csCommandsDescMM.find(static_cast<CutsceneMM_CommandType>(commandID));

	if (element != csCommandsDescMM.end())
	{
		return StringHelper::Sprintf("%s_LIST(%i)", element->second.cmdMacro, numEntries);
	}

	return StringHelper::Sprintf("CS_UNK_DATA_LIST(0x%X, %i)", commandID, numEntries);
}

/**** CAMERA ****/

CutsceneSubCommandEntry_Camera::CutsceneSubCommandEntry_Camera(const std::vector<uint8_t>& rawData,
                                                               offset_t rawDataIndex)
	: CutsceneSubCommandEntry(rawData, rawDataIndex)
{
}

std::string CutsceneSubCommandEntry_Camera::GetBodySourceCode() const
{
	return StringHelper::Sprintf("CMD_HH(0x%04X, 0x%04X)", base, startFrame);
}

size_t CutsceneSubCommandEntry_Camera::GetRawSize() const
{
	return 0x04;
}

CutsceneMMCommand_Camera::CutsceneMMCommand_Camera(const std::vector<uint8_t>& rawData,
                                                   offset_t rawDataIndex)
	: CutsceneCommand(rawData, rawDataIndex)
{
	rawDataIndex += 4;

	entries.reserve(numEntries);
	for (size_t i = 0; i < numEntries / 4; i++)
	{
		auto* entry = new CutsceneSubCommandEntry_Camera(rawData, rawDataIndex);
		entries.push_back(entry);
		rawDataIndex += entry->GetRawSize();
	}
}

std::string CutsceneMMCommand_Camera::GetCommandMacro() const
{
	return StringHelper::Sprintf("CS_CAM_SPLINE_LIST(%i)", numEntries);
}

/**** TRANSITION GENERAL ****/

CutsceneSubCommandEntry_TransitionGeneral::CutsceneSubCommandEntry_TransitionGeneral(
	const std::vector<uint8_t>& rawData, offset_t rawDataIndex)
	: CutsceneSubCommandEntry(rawData, rawDataIndex)
{
	unk_06 = BitConverter::ToUInt8BE(rawData, rawDataIndex + 0x06);
	unk_07 = BitConverter::ToUInt8BE(rawData, rawDataIndex + 0x07);
	unk_08 = BitConverter::ToUInt8BE(rawData, rawDataIndex + 0x08);
	unk_09 = BitConverter::ToUInt8BE(rawData, rawDataIndex + 0x09);
	unk_0A = BitConverter::ToUInt8BE(rawData, rawDataIndex + 0x0A);
	unk_0B = BitConverter::ToUInt8BE(rawData, rawDataIndex + 0x0B);
}

std::string CutsceneSubCommandEntry_TransitionGeneral::GetBodySourceCode() const
{
	EnumData* enumData = &Globals::Instance->cfg.enumData;

	if (enumData->transitionGeneralType.find(base) != enumData->transitionGeneralType.end())
		return StringHelper::Sprintf("CS_TRANSITION_GENERAL(%s, %i, %i, %i, %i, %i)",
		                             enumData->transitionGeneralType[base].c_str(), startFrame,
		                             endFrame, unk_06, unk_07, unk_08);

	return StringHelper::Sprintf("CS_TRANSITION_GENERAL(0x%02X, %i, %i, %i, %i, %i)", base,
	                             startFrame, endFrame, unk_06, unk_07, unk_08);
}

size_t CutsceneSubCommandEntry_TransitionGeneral::GetRawSize() const
{
	return 0x0C;
}

CutsceneMMCommand_TransitionGeneral::CutsceneMMCommand_TransitionGeneral(
	const std::vector<uint8_t>& rawData, offset_t rawDataIndex)
	: CutsceneCommand(rawData, rawDataIndex)
{
	rawDataIndex += 4;

	entries.reserve(numEntries);
	for (size_t i = 0; i < numEntries; i++)
	{
		auto* entry = new CutsceneSubCommandEntry_TransitionGeneral(rawData, rawDataIndex);
		entries.push_back(entry);
		rawDataIndex += entry->GetRawSize();
	}
}

std::string CutsceneMMCommand_TransitionGeneral::GetCommandMacro() const
{
	return StringHelper::Sprintf("CS_TRANSITION_GENERAL_LIST(%i)", numEntries);
}

CutsceneSubCommandEntry_FadeOutSeq::CutsceneSubCommandEntry_FadeOutSeq(
	const std::vector<uint8_t>& rawData, offset_t rawDataIndex)
	: CutsceneSubCommandEntry(rawData, rawDataIndex)
{
	unk_08 = BitConverter::ToUInt32BE(rawData, rawDataIndex + 8);
}

/**** FADE OUT SEQUENCE ****/

std::string CutsceneSubCommandEntry_FadeOutSeq::GetBodySourceCode() const
{
	EnumData* enumData = &Globals::Instance->cfg.enumData;

	if (enumData->fadeOutSeqPlayer.find(base) != enumData->fadeOutSeqPlayer.end())
		return StringHelper::Sprintf("CS_FADE_OUT_SEQ(%s, %i, %i)",
		                             enumData->fadeOutSeqPlayer[base].c_str(), startFrame,
		                             endFrame);

	return StringHelper::Sprintf("CS_FADE_OUT_SEQ(%i, %i, %i)", base, startFrame, endFrame);
}

size_t CutsceneSubCommandEntry_FadeOutSeq::GetRawSize() const
{
	return 0x0C;
}

CutsceneMMCommand_FadeOutSeq::CutsceneMMCommand_FadeOutSeq(const std::vector<uint8_t>& rawData,
                                                           offset_t rawDataIndex)
	: CutsceneCommand(rawData, rawDataIndex)
{
	rawDataIndex += 4;

	entries.reserve(numEntries);
	for (size_t i = 0; i < numEntries; i++)
	{
		auto* entry = new CutsceneSubCommandEntry_FadeOutSeq(rawData, rawDataIndex);
		entries.push_back(entry);
		rawDataIndex += entry->GetRawSize();
	}
}

std::string CutsceneMMCommand_FadeOutSeq::GetCommandMacro() const
{
	return StringHelper::Sprintf("CS_FADE_OUT_SEQ_LIST(%i)", numEntries);
}

/**** NON IMPLEMENTED ****/

CutsceneSubCommandEntry_NonImplemented::CutsceneSubCommandEntry_NonImplemented(
	const std::vector<uint8_t>& rawData, offset_t rawDataIndex)
	: CutsceneSubCommandEntry(rawData, rawDataIndex)
{
}

CutsceneMMCommand_NonImplemented::CutsceneMMCommand_NonImplemented(
	const std::vector<uint8_t>& rawData, offset_t rawDataIndex)
	: CutsceneCommand(rawData, rawDataIndex)
{
	rawDataIndex += 4;

	entries.reserve(numEntries);
	for (size_t i = 0; i < numEntries; i++)
	{
		auto* entry = new CutsceneSubCommandEntry_NonImplemented(rawData, rawDataIndex);
		entries.push_back(entry);
		rawDataIndex += entry->GetRawSize();
	}
}

/**** RUMBLE ****/

CutsceneMMSubCommandEntry_Rumble::CutsceneMMSubCommandEntry_Rumble(
	const std::vector<uint8_t>& rawData, offset_t rawDataIndex)
	: CutsceneSubCommandEntry(rawData, rawDataIndex)
{
	intensity = BitConverter::ToUInt8BE(rawData, rawDataIndex + 0x06);
	decayTimer = BitConverter::ToUInt8BE(rawData, rawDataIndex + 0x07);
	decayStep = BitConverter::ToUInt8BE(rawData, rawDataIndex + 0x08);
}

std::string CutsceneMMSubCommandEntry_Rumble::GetBodySourceCode() const
{
	EnumData* enumData = &Globals::Instance->cfg.enumData;

	if (enumData->rumbleType.find(base) != enumData->rumbleType.end())
		return StringHelper::Sprintf("CS_RUMBLE(%s, %i, %i, 0x%02X, 0x%02X, 0x%02X)",
		                             enumData->rumbleType[base].c_str(), startFrame, endFrame,
		                             intensity, decayTimer, decayStep);

	return StringHelper::Sprintf("CS_RUMBLE(0x%04X, %i, %i, 0x%02X, 0x%02X, 0x%02X)", base,
	                             startFrame, endFrame, intensity, decayTimer, decayStep);
}

size_t CutsceneMMSubCommandEntry_Rumble::GetRawSize() const
{
	return 0x0C;
}

CutsceneMMCommand_Rumble::CutsceneMMCommand_Rumble(const std::vector<uint8_t>& rawData,
                                                   offset_t rawDataIndex)
	: CutsceneCommand(rawData, rawDataIndex)
{
	rawDataIndex += 4;

	entries.reserve(numEntries);
	for (size_t i = 0; i < numEntries; i++)
	{
		auto* entry = new CutsceneMMSubCommandEntry_Rumble(rawData, rawDataIndex);
		entries.push_back(entry);
		rawDataIndex += entry->GetRawSize();
	}
}

std::string CutsceneMMCommand_Rumble::GetCommandMacro() const
{
	return StringHelper::Sprintf("CS_RUMBLE_LIST(%i)", numEntries);
}

/**** TEXT ****/

CutsceneMMSubCommandEntry_Text::CutsceneMMSubCommandEntry_Text(const std::vector<uint8_t>& rawData,
                                                               offset_t rawDataIndex)
	: CutsceneSubCommandEntry(rawData, rawDataIndex)
{
	type = BitConverter::ToUInt16BE(rawData, rawDataIndex + 0x6);
	textId1 = BitConverter::ToUInt16BE(rawData, rawDataIndex + 0x8);
	textId2 = BitConverter::ToUInt16BE(rawData, rawDataIndex + 0xA);
}

std::string CutsceneMMSubCommandEntry_Text::GetBodySourceCode() const
{
	if (type == 0xFFFF)
	{
		return StringHelper::Sprintf("CS_TEXT_NONE(%i, %i)", startFrame, endFrame);
	}

	if (type == 2)
	{
		// TODO: set the enum name when it will be documented
		// (https://github.com/Decompollaborate/mm/blob/3e1c568c084671c17836ced904714ea49d989621/include/z64ocarina.h#L35-L118)
		return StringHelper::Sprintf("CS_TEXT_OCARINA_ACTION(%i, %i, %i, 0x%X)", base, startFrame,
		                             endFrame, textId1);
	}

	switch (type)
	{
	case 0:
		return StringHelper::Sprintf("CS_TEXT_DEFAULT(0x%X, %i, %i, 0x%X, 0x%X)", base, startFrame,
		                             endFrame, textId1, textId2);

	case 1:
		return StringHelper::Sprintf("CS_TEXT_TYPE_1(0x%X, %i, %i, 0x%X, 0x%X)", base, startFrame,
		                             endFrame, textId1, textId2);

	case 3:
		return StringHelper::Sprintf("CS_TEXT_TYPE_3(0x%X, %i, %i, 0x%X, 0x%X)", base, startFrame,
		                             endFrame, textId1, textId2);

	case 4:
		return StringHelper::Sprintf("CS_TEXT_BOSSES_REMAINS(0x%X, %i, %i, 0x%X)", base, startFrame,
		                             endFrame, textId1);

	case 5:
		return StringHelper::Sprintf("CS_TEXT_ALL_NORMAL_MASKS(0x%X, %i, %i, 0x%X)", base,
		                             startFrame, endFrame, textId1);
	}

	return nullptr;
}

size_t CutsceneMMSubCommandEntry_Text::GetRawSize() const
{
	return 0x0C;
}

CutsceneMMCommand_Text::CutsceneMMCommand_Text(const std::vector<uint8_t>& rawData,
                                               offset_t rawDataIndex)
	: CutsceneCommand(rawData, rawDataIndex)
{
	rawDataIndex += 4;

	entries.reserve(numEntries);
	for (size_t i = 0; i < numEntries; i++)
	{
		auto* entry = new CutsceneMMSubCommandEntry_Text(rawData, rawDataIndex);
		entries.push_back(entry);
		rawDataIndex += entry->GetRawSize();
	}
}

std::string CutsceneMMCommand_Text::GetCommandMacro() const
{
	return StringHelper::Sprintf("CS_TEXT_LIST(%i)", numEntries);
}

/**** ACTOR CUE ****/

CutsceneMMSubCommandEntry_ActorCue::CutsceneMMSubCommandEntry_ActorCue(
	const std::vector<uint8_t>& rawData, offset_t rawDataIndex)
	: CutsceneSubCommandEntry(rawData, rawDataIndex)
{
	rotX = BitConverter::ToUInt16BE(rawData, rawDataIndex + 0x6);
	rotY = BitConverter::ToUInt16BE(rawData, rawDataIndex + 0x8);
	rotZ = BitConverter::ToUInt16BE(rawData, rawDataIndex + 0xA);
	startPosX = BitConverter::ToInt32BE(rawData, rawDataIndex + 0xC);
	startPosY = BitConverter::ToInt32BE(rawData, rawDataIndex + 0x10);
	startPosZ = BitConverter::ToInt32BE(rawData, rawDataIndex + 0x14);
	endPosX = BitConverter::ToInt32BE(rawData, rawDataIndex + 0x18);
	endPosY = BitConverter::ToInt32BE(rawData, rawDataIndex + 0x1C);
	endPosZ = BitConverter::ToInt32BE(rawData, rawDataIndex + 0x20);
	normalX = BitConverter::ToFloatBE(rawData, rawDataIndex + 0x24);
	normalY = BitConverter::ToFloatBE(rawData, rawDataIndex + 0x28);
	normalZ = BitConverter::ToFloatBE(rawData, rawDataIndex + 0x2C);
}

std::string CutsceneMMSubCommandEntry_ActorCue::GetBodySourceCode() const
{
	std::string result;

	if (static_cast<CutsceneMM_CommandType>(commandID) == CutsceneMM_CommandType::CS_CMD_PLAYER_CUE)
	{
		result = "CS_PLAYER_CUE";
	}
	else
	{
		result = "CS_ACTOR_CUE";
	}

	result +=
		StringHelper::Sprintf("(%i, %i, %i, 0x%04X, 0x%04X, 0x%04X, %i, %i, "
	                          "%i, %i, %i, %i, %.8ef, %.8ef, %.8ef)",
	                          base, startFrame, endFrame, rotX, rotY, rotZ, startPosX, startPosY,
	                          startPosZ, endPosX, endPosY, endPosZ, normalX, normalY, normalZ);
	return result;
}

size_t CutsceneMMSubCommandEntry_ActorCue::GetRawSize() const
{
	return 0x30;
}

CutsceneMMCommand_ActorCue::CutsceneMMCommand_ActorCue(const std::vector<uint8_t>& rawData,
                                                       offset_t rawDataIndex)
	: CutsceneCommand(rawData, rawDataIndex)
{
	rawDataIndex += 4;

	entries.reserve(numEntries);
	for (size_t i = 0; i < numEntries; i++)
	{
		auto* entry = new CutsceneMMSubCommandEntry_ActorCue(rawData, rawDataIndex);
		entries.push_back(entry);
		rawDataIndex += entry->GetRawSize();
	}
}

std::string CutsceneMMCommand_ActorCue::GetCommandMacro() const
{
	EnumData* enumData = &Globals::Instance->cfg.enumData;

	if (static_cast<CutsceneMM_CommandType>(commandID) == CutsceneMM_CommandType::CS_CMD_PLAYER_CUE)
	{
		return StringHelper::Sprintf("CS_PLAYER_CUE_LIST(%i)", numEntries);
	}

	if (enumData->cutsceneCmd.find(commandID) != enumData->cutsceneCmd.end())
	{
		return StringHelper::Sprintf("CS_ACTOR_CUE_LIST(%s, %i)",
		                             enumData->cutsceneCmd[commandID].c_str(), numEntries);
	}
	return StringHelper::Sprintf("CS_ACTOR_CUE_LIST(0x%03X, %i)", commandID, numEntries);
}
