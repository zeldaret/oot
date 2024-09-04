#include "CutsceneMM_Commands.h"

#include <unordered_map>
#include "Globals.h"
#include "Utils/BitConverter.h"
#include "Utils/StringHelper.h"
#include "WarningHandler.h"

#include "ZCutscene.h"

/**** GENERIC ****/

// Specific for command lists where each entry has size 8 bytes
const std::unordered_map<CutsceneMM_CommandType, CsCommandListDescriptor> csCommandsDescMM = {
	{CutsceneMM_CommandType::CS_CMD_MISC, {"CS_MISC", "(%s, %i, %i, %i)"}},
	{CutsceneMM_CommandType::CS_CMD_LIGHT_SETTING, {"CS_LIGHT_SETTING", "(0x%02X, %i, %i)"}},
	{CutsceneMM_CommandType::CS_CMD_TRANSITION, {"CS_TRANSITION", "(%s, %i, %i)"}},
	{CutsceneMM_CommandType::CS_CMD_MOTION_BLUR, {"CS_MOTION_BLUR", "(%s, %i, %i)"}},
	{CutsceneMM_CommandType::CS_CMD_GIVE_TATL, {"CS_GIVE_TATL", "(%s, %i, %i)"}},
	{CutsceneMM_CommandType::CS_CMD_START_SEQ, {"CS_START_SEQ", "(%s, %i, %i)"}},
	{CutsceneMM_CommandType::CS_CMD_SFX_REVERB_INDEX_2,
     {"CS_SFX_REVERB_INDEX_2", "(0x%04X, %i, %i)"}},
	{CutsceneMM_CommandType::CS_CMD_SFX_REVERB_INDEX_1,
     {"CS_SFX_REVERB_INDEX_1", "(0x%04X, %i, %i)"}},
	{CutsceneMM_CommandType::CS_CMD_MODIFY_SEQ, {"CS_MODIFY_SEQ", "(%s, %i, %i)"}},
	{CutsceneMM_CommandType::CS_CMD_STOP_SEQ, {"CS_STOP_SEQ", "(%s, %i, %i, %i)"}},
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
	bool isIndexInSeqId = enumData->seqId.find(base - 1) != enumData->seqId.end();

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

	else if ((commandId == CutsceneMM_CommandType::CS_CMD_START_SEQ ||
	          commandId == CutsceneMM_CommandType::CS_CMD_STOP_SEQ) &&
	         isIndexInSeqId)
		type = enumData->seqId[base - 1];

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

CutsceneSubCommandEntry_SplineCamPoint::CutsceneSubCommandEntry_SplineCamPoint(
	const std::vector<uint8_t>& rawData, offset_t rawDataIndex)
	: CutsceneSubCommandEntry(rawData, rawDataIndex)
{
	interpType = BitConverter::ToUInt8BE(rawData, rawDataIndex + 0);
	weight = BitConverter::ToUInt8BE(rawData, rawDataIndex + 1);
	duration = BitConverter::ToUInt16BE(rawData, rawDataIndex + 2);
	posX = BitConverter::ToUInt16BE(rawData, rawDataIndex + 4);
	posY = BitConverter::ToUInt16BE(rawData, rawDataIndex + 6);
	posZ = BitConverter::ToUInt16BE(rawData, rawDataIndex + 8);
	relTo = BitConverter::ToUInt16BE(rawData, rawDataIndex + 10);
}

std::string CutsceneSubCommandEntry_SplineCamPoint::GetBodySourceCode() const
{
	const auto interpTypeMap = &Globals::Instance->cfg.enumData.interpType;
	const auto relToMap = &Globals::Instance->cfg.enumData.relTo;

	return StringHelper::Sprintf("CS_CAM_POINT(%s, 0x%02X, 0x%04X, 0x%04X, 0x%04X, 0x%04X, %s)",
	                             interpTypeMap->at(interpType).c_str(), weight, duration, posX,
	                             posY, posZ, relToMap->at(relTo).c_str());
}

size_t CutsceneSubCommandEntry_SplineCamPoint::GetRawSize() const
{
	return 0x0C;
}

CutsceneSubCommandEntry_SplineMiscPoint::CutsceneSubCommandEntry_SplineMiscPoint(
	const std::vector<uint8_t>& rawData, offset_t rawDataIndex)
	: CutsceneSubCommandEntry(rawData, rawDataIndex)
{
	unused0 = BitConverter::ToUInt16BE(rawData, rawDataIndex + 0);
	roll = BitConverter::ToUInt16BE(rawData, rawDataIndex + 2);
	fov = BitConverter::ToUInt16BE(rawData, rawDataIndex + 4);
	unused1 = BitConverter::ToUInt16BE(rawData, rawDataIndex + 6);
}

std::string CutsceneSubCommandEntry_SplineMiscPoint::GetBodySourceCode() const
{
	return StringHelper::Sprintf("CS_CAM_MISC(0x%04X, 0x%04X, 0x%04X, 0x%04X)", unused0, roll, fov,
	                             unused1);
}

size_t CutsceneSubCommandEntry_SplineMiscPoint::GetRawSize() const
{
	return 0x08;
}

CutsceneSubCommandEntry_SplineHeader::CutsceneSubCommandEntry_SplineHeader(
	const std::vector<uint8_t>& rawData, offset_t rawDataIndex)
	: CutsceneSubCommandEntry(rawData, rawDataIndex)
{
	numEntries = BitConverter::ToUInt16BE(rawData, rawDataIndex + 0);
	unused0 = BitConverter::ToUInt16BE(rawData, rawDataIndex + 2);
	unused1 = BitConverter::ToUInt16BE(rawData, rawDataIndex + 4);
	duration = BitConverter::ToUInt16BE(rawData, rawDataIndex + 6);
}

std::string CutsceneSubCommandEntry_SplineHeader::GetBodySourceCode() const
{
	return StringHelper::Sprintf("CS_CAM_SPLINE(0x%04X, 0x%04X, 0x%04X, 0x%04X)", numEntries,
	                             unused0, unused1, duration);
}

size_t CutsceneSubCommandEntry_SplineHeader::GetRawSize() const
{
	return 0x08;
}

CutsceneSubCommandEntry_SplineFooter::CutsceneSubCommandEntry_SplineFooter(
	const std::vector<uint8_t>& rawData, offset_t rawDataIndex)
	: CutsceneSubCommandEntry(rawData, rawDataIndex)
{
	uint16_t firstHalfWord = BitConverter::ToUInt16BE(rawData, rawDataIndex);
	uint16_t secondHalfWord = BitConverter::ToUInt16BE(rawData, rawDataIndex + 2);

	if (firstHalfWord != 0xFFFF || secondHalfWord != 4)
	{
		HANDLE_ERROR(WarningType::InvalidExtractedData, "Invalid Spline Footer",
		             StringHelper::Sprintf(
						 "Invalid Spline footer. Was expecting 0xFFFF, 0x0004. Got 0x%04X, 0x%04X",
						 firstHalfWord, secondHalfWord));
	}
}

std::string CutsceneSubCommandEntry_SplineFooter::GetBodySourceCode() const
{
	return "CS_CAM_END()";
}

size_t CutsceneSubCommandEntry_SplineFooter::GetRawSize() const
{
	return 0x04;
}

CutsceneMMCommand_Spline::CutsceneMMCommand_Spline(const std::vector<uint8_t>& rawData,
                                                   offset_t rawDataIndex)
	: CutsceneCommand(rawData, rawDataIndex)
{
	numHeaders = 0;
	totalCommands = 0;
	rawDataIndex += 4;

	while (1)
	{
		if (BitConverter::ToUInt16BE(rawData, rawDataIndex) == 0xFFFF)
		{
			break;
		}
		numHeaders++;

		auto* header = new CutsceneSubCommandEntry_SplineHeader(rawData, rawDataIndex);
		rawDataIndex += header->GetRawSize();
		entries.push_back(header);

		totalCommands += header->numEntries;

		for (uint32_t i = 0; i < header->numEntries; i++)
		{
			auto* entry = new CutsceneSubCommandEntry_SplineCamPoint(rawData, rawDataIndex);
			entries.push_back(entry);
			rawDataIndex += entry->GetRawSize();
		}

		for (uint32_t i = 0; i < header->numEntries; i++)
		{
			auto* entry = new CutsceneSubCommandEntry_SplineCamPoint(rawData, rawDataIndex);
			entries.push_back(entry);
			rawDataIndex += entry->GetRawSize();
		}

		for (uint32_t i = 0; i < header->numEntries; i++)
		{
			auto* entry = new CutsceneSubCommandEntry_SplineMiscPoint(rawData, rawDataIndex);
			entries.push_back(entry);
			rawDataIndex += entry->GetRawSize();
		}
	}

	auto* footer = new CutsceneSubCommandEntry_SplineFooter(rawData, rawDataIndex);
	entries.push_back(footer);
	rawDataIndex += footer->GetRawSize();
}

std::string CutsceneMMCommand_Spline::GetCommandMacro() const
{
	return StringHelper::Sprintf("CS_CAM_SPLINE_LIST(%i)", numEntries);
}

size_t CutsceneMMCommand_Spline::GetCommandSize() const
{
	// 8 Bytes once for the spline command, 8 Bytes per spline the header, two groups of size 12, 1
	// group of size 8, 4 bytes for the footer.
	return 8 + (8 * numHeaders) + ((totalCommands * 2) * 0xC) + (totalCommands * 8) + 4;
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
	EnumData* enumData = &Globals::Instance->cfg.enumData;

	if (type == 0xFFFF)
	{
		return StringHelper::Sprintf("CS_TEXT_NONE(%i, %i)", startFrame, endFrame);
	}

	if (type == 2 &&
	    enumData->ocarinaSongActionId.find(base) != enumData->ocarinaSongActionId.end())
	{
		return StringHelper::Sprintf("CS_TEXT_OCARINA_ACTION(%s, %i, %i, 0x%X)",
		                             enumData->ocarinaSongActionId[base].c_str(), startFrame,
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
	EnumData* enumData = &Globals::Instance->cfg.enumData;
	std::string normalXStr =
		ZCutscene::GetCsEncodedFloat(normalX, Globals::Instance->floatType, true);
	std::string normalYStr =
		ZCutscene::GetCsEncodedFloat(normalY, Globals::Instance->floatType, true);
	std::string normalZStr =
		ZCutscene::GetCsEncodedFloat(normalZ, Globals::Instance->floatType, true);

	if (static_cast<CutsceneMM_CommandType>(commandID) == CutsceneMM_CommandType::CS_CMD_PLAYER_CUE)
	{
		return StringHelper::Sprintf("CS_PLAYER_CUE(%s, %i, %i, 0x%04X, 0x%04X, 0x%04X, %i, %i, "
		                             "%i, %i, %i, %i, %s, %s, %s)",
		                             enumData->playerCueId[base].c_str(), startFrame, endFrame,
		                             rotX, rotY, rotZ, startPosX, startPosY, startPosZ, endPosX,
		                             endPosY, endPosZ, normalXStr.c_str(), normalYStr.c_str(),
		                             normalZStr.c_str());
	}
	else
	{
		return StringHelper::Sprintf("CS_ACTOR_CUE(%i, %i, %i, 0x%04X, 0x%04X, 0x%04X, %i, %i, "
		                             "%i, %i, %i, %i, %s, %s, %s)",
		                             base, startFrame, endFrame, rotX, rotY, rotZ, startPosX,
		                             startPosY, startPosZ, endPosX, endPosY, endPosZ,
		                             normalXStr.c_str(), normalYStr.c_str(), normalZStr.c_str());
	}
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
