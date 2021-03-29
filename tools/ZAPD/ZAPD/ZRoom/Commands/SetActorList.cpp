#include "SetActorList.h"
#include "../../BitConverter.h"
#include "../../Globals.h"
#include "../../StringHelper.h"
#include "../../ZFile.h"
#include "../ActorList.h"
#include "../ZRoom.h"

using namespace std;

SetActorList::SetActorList(ZRoom* nZRoom, std::vector<uint8_t> rawData, int rawDataIndex)
	: ZRoomCommand(nZRoom, rawData, rawDataIndex)
{
	numActors = rawData[rawDataIndex + 1];
	segmentOffset = GETSEGOFFSET(BitConverter::ToInt32BE(rawData, rawDataIndex + 4));

	_rawData = rawData;
	_rawDataIndex = rawDataIndex;

	if (segmentOffset != 0)
		zRoom->parent->AddDeclarationPlaceholder(segmentOffset);
}

SetActorList::~SetActorList()
{
	for (ActorSpawnEntry* entry : actors)
		delete entry;

	actors.clear();
}

string SetActorList::GetSourceOutputCode(std::string prefix)
{
	return "";
}

string SetActorList::GenerateSourceCodePass1(string roomName, int baseAddress)
{
	return "";
}

string SetActorList::GenerateSourceCodePass2(string roomName, int baseAddress)
{
	string sourceOutput = "";
	size_t numActorsReal = zRoom->GetDeclarationSizeFromNeighbor(segmentOffset) / 16;
	actors = vector<ActorSpawnEntry*>();
	uint32_t currentPtr = segmentOffset;

	for (size_t i = 0; i < numActorsReal; i++)
	{
		ActorSpawnEntry* entry = new ActorSpawnEntry(_rawData, currentPtr);
		actors.push_back(entry);

		currentPtr += 16;
	}

	sourceOutput +=
		StringHelper::Sprintf("%s 0x%02X, (u32)%sActorList0x%06X };",
	                          ZRoomCommand::GenerateSourceCodePass1(roomName, baseAddress).c_str(),
	                          numActors, roomName.c_str(), segmentOffset);

	// zRoom->parent->AddDeclaration(segmentOffset, DeclarationAlignment::None,
	// DeclarationPadding::None, GetRawDataSize(), "SCmdActorList",
	//ZRoomCommand::GenerateSourceCodePass1(roomName, baseAddress), sourceOutput);

	string declaration = "";

	size_t index = 0;
	for (ActorSpawnEntry* entry : actors)
	{
		uint16_t actorNum = entry->actorNum;

		// SW97 Actor 0x22 was removed, so we want to not output a working actor.
		if (actorNum == 0x22 && Globals::Instance->game == ZGame::OOT_SW97)
			declaration += StringHelper::Sprintf(
				"\t//{ %s, %i, %i, %i, %i, %i, %i, 0x%04X }, //0x%06X",
				/*StringHelper::Sprintf("SW_REMOVED_0x%04X", actorNum).c_str()*/
				"ACTOR_DUNGEON_KEEP", entry->posX, entry->posY, entry->posZ, entry->rotX,
				entry->rotY, entry->rotZ, (uint16_t)entry->initVar, segmentOffset + (index * 16));
		else
		{
			// SW97 Actor 0x23 and above are shifted up by one because 0x22 was removed between SW97
			// and retail. We need to shift down by one
			if (Globals::Instance->game == ZGame::OOT_SW97 && actorNum >= 0x23)
				actorNum--;

			if (actorNum < sizeof(ActorList) / sizeof(ActorList[0]))
				declaration +=
					StringHelper::Sprintf("\t{ %s, %i, %i, %i, %i, %i, %i, 0x%04X }, //0x%06X",
				                          ActorList[actorNum].c_str(), entry->posX, entry->posY,
				                          entry->posZ, entry->rotX, entry->rotY, entry->rotZ,
				                          (uint16_t)entry->initVar, segmentOffset + (index * 16));
			else
				declaration += StringHelper::Sprintf(
					"\t{ 0x%04X, %i, %i, %i, %i, %i, %i, 0x%04X }, //0x%06X", actorNum, entry->posX,
					entry->posY, entry->posZ, entry->rotX, entry->rotY, entry->rotZ,
					(uint16_t)entry->initVar, segmentOffset + (index * 16));

			if (index < actors.size() - 1)
				declaration += "\n";
		}

		index++;
	}

	zRoom->parent->AddDeclarationArray(
		segmentOffset, DeclarationAlignment::None, DeclarationPadding::Pad16, actors.size() * 16,
		"ActorEntry", StringHelper::Sprintf("%sActorList0x%06X", roomName.c_str(), segmentOffset),
		GetActorListArraySize(), declaration);

	return sourceOutput;
}

int32_t SetActorList::GetRawDataSize()
{
	return ZRoomCommand::GetRawDataSize() + ((int)actors.size() * 16);
}

size_t SetActorList::GetActorListArraySize()
{
	size_t actorCount = 0;

	// Doing an else-if here so we only do the loop when the game is SW97.
	// Actor 0x22 is removed from SW97, so we need to ensure that we don't increment the actor count
	// for it.
	if (Globals::Instance->game == ZGame::OOT_SW97)
	{
		actorCount = 0;

		for (ActorSpawnEntry* entry : actors)
			if (entry->actorNum != 0x22)
				actorCount++;
	}
	else
	{
		actorCount = actors.size();
	}

	return actorCount;
}

string SetActorList::GenerateExterns()
{
	return StringHelper::Sprintf("extern ActorEntry %sActorList0x%06X[%i];\n",
	                             zRoom->GetName().c_str(), segmentOffset, GetActorListArraySize());
}

string SetActorList::GetCommandCName()
{
	return "SCmdActorList";
}

RoomCommand SetActorList::GetRoomCommand()
{
	return RoomCommand::SetActorList;
}

ActorSpawnEntry::ActorSpawnEntry(std::vector<uint8_t> rawData, int rawDataIndex)
{
	const uint8_t* data = rawData.data();

	actorNum = BitConverter::ToInt16BE(data, rawDataIndex + 0);
	posX = BitConverter::ToInt16BE(data, rawDataIndex + 2);
	posY = BitConverter::ToInt16BE(data, rawDataIndex + 4);
	posZ = BitConverter::ToInt16BE(data, rawDataIndex + 6);
	rotX = BitConverter::ToInt16BE(data, rawDataIndex + 8);
	rotY = BitConverter::ToInt16BE(data, rawDataIndex + 10);
	rotZ = BitConverter::ToInt16BE(data, rawDataIndex + 12);
	initVar = BitConverter::ToInt16BE(data, rawDataIndex + 14);
}
