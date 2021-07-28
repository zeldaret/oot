#include "SetActorList.h"

#include "BitConverter.h"
#include "Globals.h"
#include "StringHelper.h"
#include "ZFile.h"
#include "ZRoom/ZNames.h"
#include "ZRoom/ZRoom.h"

SetActorList::SetActorList(ZFile* nParent) : ZRoomCommand(nParent)
{
}

void SetActorList::ParseRawData()
{
	ZRoomCommand::ParseRawData();
	numActors = cmdArg1;

	uint32_t currentPtr = segmentOffset;

	for (size_t i = 0; i < numActors; i++)
	{
		ActorSpawnEntry entry(parent->GetRawData(), currentPtr);

		currentPtr += entry.GetRawDataSize();
		actors.push_back(entry);
	}
}

void SetActorList::DeclareReferences(const std::string& prefix)
{
	if (!actors.empty())
	{
		std::string declaration = "";

		size_t index = 0;
		for (const auto& entry : actors)
		{
			declaration +=
				StringHelper::Sprintf("\t{ %s }, // 0x%06X", entry.GetBodySourceCode().c_str(),
			                          segmentOffset + (index * 16));

			if (index < actors.size() - 1)
				declaration += "\n";

			index++;
		}

		const auto& entry = actors.front();

		DeclarationPadding padding = DeclarationPadding::Pad16;
		if (Globals::Instance->game == ZGame::MM_RETAIL)
			padding = DeclarationPadding::None;

		parent->AddDeclarationArray(
			segmentOffset, DeclarationAlignment::Align4, padding,
			actors.size() * entry.GetRawDataSize(), entry.GetSourceTypeName(),
			StringHelper::Sprintf("%sActorList_%06X", prefix.c_str(), segmentOffset),
			GetActorListArraySize(), declaration);
	}
}

std::string SetActorList::GetBodySourceCode() const
{
	std::string listName = parent->GetDeclarationPtrName(cmdArg2);
	return StringHelper::Sprintf("SCENE_CMD_ACTOR_LIST(%i, %s)", numActors, listName.c_str());
}

size_t SetActorList::GetRawDataSize() const
{
	return ZRoomCommand::GetRawDataSize() + ((int32_t)actors.size() * 16);
}

size_t SetActorList::GetActorListArraySize() const
{
	size_t actorCount = 0;

	// Doing an else-if here so we only do the loop when the game is SW97.
	// Actor 0x22 is removed from SW97, so we need to ensure that we don't increment the actor count
	// for it.
	if (Globals::Instance->game == ZGame::OOT_SW97)
	{
		actorCount = 0;

		for (const auto& entry : actors)
			if (entry.GetActorId() != 0x22)
				actorCount++;
	}
	else
	{
		actorCount = actors.size();
	}

	return actorCount;
}

std::string SetActorList::GetCommandCName() const
{
	return "SCmdActorList";
}

RoomCommand SetActorList::GetRoomCommand() const
{
	return RoomCommand::SetActorList;
}

ActorSpawnEntry::ActorSpawnEntry(const std::vector<uint8_t>& rawData, uint32_t rawDataIndex)
{
	actorNum = BitConverter::ToInt16BE(rawData, rawDataIndex + 0);
	posX = BitConverter::ToInt16BE(rawData, rawDataIndex + 2);
	posY = BitConverter::ToInt16BE(rawData, rawDataIndex + 4);
	posZ = BitConverter::ToInt16BE(rawData, rawDataIndex + 6);
	rotX = BitConverter::ToInt16BE(rawData, rawDataIndex + 8);
	rotY = BitConverter::ToInt16BE(rawData, rawDataIndex + 10);
	rotZ = BitConverter::ToInt16BE(rawData, rawDataIndex + 12);
	initVar = BitConverter::ToInt16BE(rawData, rawDataIndex + 14);
}

std::string ActorSpawnEntry::GetBodySourceCode() const
{
	std::string body = "\n";

	body += "\t\t" + ZNames::GetActorName(actorNum) + ",\n";
	body += StringHelper::Sprintf("\t\t{ %6i, %6i, %6i },\n", posX, posY, posZ);
	if (Globals::Instance->game == ZGame::MM_RETAIL)
		body += StringHelper::Sprintf("\t\t{ SPAWN_ROT_FLAGS(%i, 0x%04X), SPAWN_ROT_FLAGS(%i, "
		                              "0x%04X), SPAWN_ROT_FLAGS(%i, 0x%04X)},\n",
		                              (rotX >> 7) & 0b111111111, rotX & 0b1111111,
		                              (rotY >> 7) & 0b111111111, rotY & 0b1111111,
		                              (rotZ >> 7) & 0b111111111, rotZ & 0b1111111);
	else
		body += StringHelper::Sprintf("\t\t{ %6i, %6i, %6i },\n", rotX, rotY, rotZ);
	body += StringHelper::Sprintf("\t\t0x%04X\n   ", initVar);

	return body;
}

std::string ActorSpawnEntry::GetSourceTypeName() const
{
	return "ActorEntry";
}

int32_t ActorSpawnEntry::GetRawDataSize() const
{
	return 16;
}

uint16_t ActorSpawnEntry::GetActorId() const
{
	return actorNum;
}
