#include "SetActorCutsceneList.h"
#include "../../BitConverter.h"
#include "../../Globals.h"
#include "../../StringHelper.h"
#include "../../ZFile.h"
#include "../ZRoom.h"

using namespace std;

SetActorCutsceneList::SetActorCutsceneList(ZRoom* nZRoom, std::vector<uint8_t> rawData,
                                           uint32_t rawDataIndex)
	: ZRoomCommand(nZRoom, rawData, rawDataIndex)
{
	int32_t numCutscenes = rawData[rawDataIndex + 1];
	segmentOffset = BitConverter::ToInt32BE(rawData, rawDataIndex + 4) & 0x00FFFFFF;

	cutscenes = vector<ActorCutsceneEntry*>();

	int32_t currentPtr = segmentOffset;

	for (int32_t i = 0; i < numCutscenes; i++)
	{
		ActorCutsceneEntry* entry = new ActorCutsceneEntry(rawData, currentPtr);
		cutscenes.push_back(entry);

		currentPtr += 16;
	}

	string declaration = "";

	for (ActorCutsceneEntry* entry : cutscenes)
	{
		declaration += StringHelper::Sprintf(
			"    { %i, %i, %i, %i, %i, %i, %i, %i, %i, %i },\n", entry->priority, entry->length,
			entry->unk4, entry->unk6, entry->additionalCutscene, entry->sound, entry->unkB,
			entry->unkC, entry->unkE, entry->letterboxSize);
	}

	zRoom->parent->AddDeclarationArray(
		segmentOffset, DeclarationAlignment::None, cutscenes.size() * 16, "ActorCutscene",
		StringHelper::Sprintf("%sActorCutsceneList0x%06X", zRoom->GetName().c_str(), segmentOffset),
		0, declaration);
}

SetActorCutsceneList::~SetActorCutsceneList()
{
	for (ActorCutsceneEntry* entry : cutscenes)
		delete entry;
}

string SetActorCutsceneList::GenerateSourceCodePass1(string roomName, uint32_t baseAddress)
{
	return StringHelper::Sprintf(
		"%s 0x%02X, (u32)&%sActorCutsceneList0x%06X",
		ZRoomCommand::GenerateSourceCodePass1(roomName, baseAddress).c_str(), cutscenes.size(),
		zRoom->GetName().c_str(), segmentOffset);
}

string SetActorCutsceneList::GenerateSourceCodePass2(string roomName, uint32_t baseAddress)
{
	return "";
}

size_t SetActorCutsceneList::GetRawDataSize()
{
	return ZRoomCommand::GetRawDataSize() + (cutscenes.size() * 16);
}

string SetActorCutsceneList::GenerateExterns()
{
	return StringHelper::Sprintf("extern ActorCutscene %sActorCutsceneList0x%06X[];\n",
	                             zRoom->GetName().c_str(), segmentOffset);
}

string SetActorCutsceneList::GetCommandCName()
{
	return "SCmdCutsceneActorList";
}

RoomCommand SetActorCutsceneList::GetRoomCommand()
{
	return RoomCommand::SetActorCutsceneList;
}

ActorCutsceneEntry::ActorCutsceneEntry(std::vector<uint8_t> rawData, uint32_t rawDataIndex)
	: priority(BitConverter::ToInt16BE(rawData, rawDataIndex + 0)),
	  length(BitConverter::ToInt16BE(rawData, rawDataIndex + 2)),
	  unk4(BitConverter::ToInt16BE(rawData, rawDataIndex + 4)),
	  unk6(BitConverter::ToInt16BE(rawData, rawDataIndex + 6)),
	  additionalCutscene(BitConverter::ToInt16BE(rawData, rawDataIndex + 8)),
	  sound(rawData[rawDataIndex + 0xA]), unkB(rawData[rawDataIndex + 0xB]),
	  unkC(BitConverter::ToInt16BE(rawData, rawDataIndex + 0xC)), unkE(rawData[rawDataIndex + 0xE]),
	  letterboxSize(rawData[rawDataIndex + 0xF])
{
}
