#include "SetActorList.h"
#include "../../BitConverter.h"
#include "../../Globals.h"
#include "../../StringHelper.h"
#include "../../ZFile.h"
#include "../ZNames.h"
#include "../ZRoom.h"

using namespace std;

SetActorList::SetActorList(ZRoom* nZRoom, std::vector<uint8_t> rawData, uint32_t rawDataIndex)
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

}

string SetActorList::GetSourceOutputCode(std::string prefix)
{
	return "";
}

string SetActorList::GenerateSourceCodePass1(string roomName, uint32_t baseAddress)
{
	return "";
}

string SetActorList::GenerateSourceCodePass2(string roomName, uint32_t baseAddress)
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
		StringHelper::Sprintf("\n    %s 0x%02X, (u32)%sActorList0x%06X \n};",
	                          ZRoomCommand::GenerateSourceCodePass1(roomName, baseAddress).c_str(),
	                          numActors, roomName.c_str(), segmentOffset);

	// zRoom->parent->AddDeclaration(segmentOffset, DeclarationAlignment::None,
	// DeclarationPadding::None, GetRawDataSize(), "SCmdActorList",
	// ZRoomCommand::GenerateSourceCodePass1(roomName, baseAddress), sourceOutput);

	string declaration = "";

	size_t index = 0;
	for (ActorSpawnEntry* entry : actors)
	{
		uint16_t actorNum = entry->actorNum;

		if (Globals::Instance->game == ZGame::MM_RETAIL)
		{
			declaration += StringHelper::Sprintf(
				"    { %s, %i, %i, %i, SPAWN_ROT_FLAGS(%i, 0x%04X), SPAWN_ROT_FLAGS(%i, 0x%04X), "
				"SPAWN_ROT_FLAGS(%i, 0x%04X), 0x%04X }, //0x%06X",
				ZNames::GetActorName(actorNum).c_str(), entry->posX, entry->posY, entry->posZ,
				(entry->rotX >> 7) & 0b111111111, entry->rotX & 0b1111111,
				(entry->rotY >> 7) & 0b111111111, entry->rotY & 0b1111111,
				(entry->rotZ >> 7) & 0b111111111, entry->rotZ & 0b1111111, (uint16_t)entry->initVar,
				segmentOffset + (index * 16));
		}
		else
		{
			declaration += StringHelper::Sprintf(
				"    { %s, %i, %i, %i, %i, %i, %i, 0x%04X }, //0x%06X",
				ZNames::GetActorName(actorNum).c_str(), entry->posX, entry->posY, entry->posZ,
				entry->rotX, entry->rotY, entry->rotZ, (uint16_t)entry->initVar,
				segmentOffset + (index * 16));

			if (index < actors.size() - 1)
				declaration += "\n";
		}

		if (index < actors.size() - 1)
			declaration += "\n";

		index++;
	}

	DeclarationPadding padding = DeclarationPadding::Pad16;
	if (Globals::Instance->game == ZGame::MM_RETAIL)
		padding = DeclarationPadding::None;

	zRoom->parent->AddDeclarationArray(
		segmentOffset, DeclarationAlignment::None, padding, actors.size() * 16, "ActorEntry",
		StringHelper::Sprintf("%sActorList0x%06X", roomName.c_str(), segmentOffset),
		GetActorListArraySize(), declaration);

	return sourceOutput;
}

size_t SetActorList::GetRawDataSize()
{
	return ZRoomCommand::GetRawDataSize() + ((int32_t)actors.size() * 16);
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

ActorSpawnEntry::ActorSpawnEntry(std::vector<uint8_t> rawData, uint32_t rawDataIndex)
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
