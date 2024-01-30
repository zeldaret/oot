#include "SetCutsceneEntryList.h"

#include "Globals.h"
#include "Utils/BitConverter.h"
#include "Utils/StringHelper.h"
#include "ZFile.h"
#include "ZRoom/ZRoom.h"

SetActorCutsceneList::SetActorCutsceneList(ZFile* nParent) : ZRoomCommand(nParent)
{
}

void SetActorCutsceneList::ParseRawData()
{
	ZRoomCommand::ParseRawData();
	int numCutscenes = cmdArg1;
	offset_t currentPtr = segmentOffset;

	cutscenes.reserve(numCutscenes);
	for (int32_t i = 0; i < numCutscenes; i++)
	{
		CutsceneEntry entry(parent->GetRawData(), currentPtr);
		cutscenes.push_back(entry);

		currentPtr += 16;
	}
}

void SetActorCutsceneList::DeclareReferences(const std::string& prefix)
{
	if (cutscenes.size() > 0)
	{
		std::string declaration;

		for (size_t i = 0; i < cutscenes.size(); i++)
		{
			const auto& entry = cutscenes.at(i);
			declaration += StringHelper::Sprintf("    { %s },", entry.GetBodySourceCode().c_str());

			if (i + 1 < cutscenes.size())
			{
				declaration += "\n";
			}
		}

		std::string typeName = cutscenes.at(0).GetSourceTypeName();

		parent->AddDeclarationArray(
			segmentOffset, GetDeclarationAlignment(), cutscenes.size() * 16, typeName,
			StringHelper::Sprintf("%s%sList_%06X", prefix.c_str(), typeName.c_str(), segmentOffset),
			cutscenes.size(), declaration);
	}
}

std::string SetActorCutsceneList::GetBodySourceCode() const
{
	std::string listName;
	Globals::Instance->GetSegmentedPtrName(cmdArg2, parent, "CutsceneEntry", listName);
	return StringHelper::Sprintf("SCENE_CMD_ACTOR_CUTSCENE_LIST(%i, %s)", cutscenes.size(),
	                             listName.c_str());
}

std::string SetActorCutsceneList::GetCommandCName() const
{
	return "SCmdCutsceneActorList";
}

RoomCommand SetActorCutsceneList::GetRoomCommand() const
{
	return RoomCommand::SetActorCutsceneList;
}

CutsceneEntry::CutsceneEntry(const std::vector<uint8_t>& rawData, uint32_t rawDataIndex)
	: priority(BitConverter::ToInt16BE(rawData, rawDataIndex + 0)),
	  length(BitConverter::ToInt16BE(rawData, rawDataIndex + 2)),
	  csCamId(BitConverter::ToInt16BE(rawData, rawDataIndex + 4)),
	  scriptIndex(BitConverter::ToInt16BE(rawData, rawDataIndex + 6)),
	  additionalCsId(BitConverter::ToInt16BE(rawData, rawDataIndex + 8)),
	  endSfx(rawData[rawDataIndex + 0xA]), customValue(rawData[rawDataIndex + 0xB]),
	  hudVisibility(BitConverter::ToInt16BE(rawData, rawDataIndex + 0xC)),
	  endCam(rawData[rawDataIndex + 0xE]), letterboxSize(rawData[rawDataIndex + 0xF])
{
}

std::string CutsceneEntry::GetBodySourceCode() const
{
	EnumData* enumData = &Globals::Instance->cfg.enumData;

	if (enumData->endSfx.find(endSfx) != enumData->endSfx.end())
		return StringHelper::Sprintf("%i, %i, %i, %i, %i, %s, %i, %i, %i, %i", priority, length,
		                             csCamId, scriptIndex, additionalCsId,
		                             enumData->endSfx[endSfx].c_str(), customValue, hudVisibility,
		                             endCam, letterboxSize);
	else
		return StringHelper::Sprintf("%i, %i, %i, %i, %i, %i, %i, %i, %i, %i", priority, length,
		                             csCamId, scriptIndex, additionalCsId, endSfx, customValue,
		                             hudVisibility, endCam, letterboxSize);
}

std::string CutsceneEntry::GetSourceTypeName() const
{
	return "CutsceneEntry";
}
