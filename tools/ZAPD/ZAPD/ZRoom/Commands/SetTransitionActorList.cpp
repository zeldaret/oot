#include "SetTransitionActorList.h"
#include "../ZRoom.h"
#include "../ActorList.h"
#include "../../ZFile.h"
#include "../../BitConverter.h"
#include "../../StringHelper.h"

using namespace std;

SetTransitionActorList::SetTransitionActorList(ZRoom* nZRoom, std::vector<uint8_t> rawData, int rawDataIndex) : ZRoomCommand(nZRoom, rawData, rawDataIndex)
{
	int numActors = rawData[rawDataIndex + 1];
	segmentOffset = BitConverter::ToInt32BE(rawData, rawDataIndex + 4) & 0x00FFFFFF;

	transitionActors = vector<TransitionActorEntry*>();

	uint32_t currentPtr = segmentOffset;

	for (int i = 0; i < numActors; i++)
	{
		TransitionActorEntry* entry = new TransitionActorEntry(rawData, currentPtr);
		transitionActors.push_back(entry);

		currentPtr += 16;
	}
}

SetTransitionActorList::~SetTransitionActorList()
{
	for (TransitionActorEntry* actor : transitionActors)
		delete actor;
}

string SetTransitionActorList::GetSourceOutputCode(std::string prefix)
{
	return "";
}

string SetTransitionActorList::GenerateSourceCodePass1(string roomName, int baseAddress)
{
	string sourceOutput = StringHelper::Sprintf("%s 0x%02X, (u32)%sTransitionActorList0x%06X", ZRoomCommand::GenerateSourceCodePass1(roomName, baseAddress).c_str(), transitionActors.size(), roomName.c_str(), segmentOffset);
	string declaration = "";

	for (TransitionActorEntry* entry : transitionActors)
		declaration += StringHelper::Sprintf("\t{ %i, %i, %i, %i, %s, %i, %i, %i, %i, 0x%04X }, \n", entry->frontObjectRoom, entry->frontTransitionReaction, entry->backObjectRoom, entry->backTransitionReaction, ActorList[entry->actorNum].c_str(), entry->posX, entry->posY, entry->posZ, entry->rotY, (uint16_t)entry->initVar);

	zRoom->parent->AddDeclarationArray(segmentOffset, DeclarationAlignment::None, transitionActors.size() * 16, "TransitionActorEntry",
		StringHelper::Sprintf("%sTransitionActorList0x%06X", roomName.c_str(), segmentOffset), 0, declaration);

	return sourceOutput;
}


string SetTransitionActorList::GenerateSourceCodePass2(string roomName, int baseAddress)
{
	return "";
}

int32_t SetTransitionActorList::GetRawDataSize()
{
	return ZRoomCommand::GetRawDataSize() + (transitionActors.size() * 16);
}

string SetTransitionActorList::GenerateExterns()
{
	return StringHelper::Sprintf("extern TransitionActorEntry %sTransitionActorList0x%06X[];\n", zRoom->GetName().c_str(), segmentOffset);
}

string SetTransitionActorList::GetCommandCName()
{
	return "SCmdTransiActorList";
}

RoomCommand SetTransitionActorList::GetRoomCommand()
{
	return RoomCommand::SetTransitionActorList;
}

TransitionActorEntry::TransitionActorEntry(std::vector<uint8_t> rawData, int rawDataIndex)
{
	frontObjectRoom = rawData[rawDataIndex + 0];
	frontTransitionReaction = rawData[rawDataIndex + 1];
	backObjectRoom = rawData[rawDataIndex + 2];
	backTransitionReaction = rawData[rawDataIndex + 3];
	actorNum = BitConverter::ToInt16BE(rawData, rawDataIndex + 4);
	posX = BitConverter::ToInt16BE(rawData, rawDataIndex + 6);
	posY = BitConverter::ToInt16BE(rawData, rawDataIndex + 8);
	posZ = BitConverter::ToInt16BE(rawData, rawDataIndex + 10);
	rotY = BitConverter::ToInt16BE(rawData, rawDataIndex + 12);
	initVar = BitConverter::ToInt16BE(rawData, rawDataIndex + 14);
}