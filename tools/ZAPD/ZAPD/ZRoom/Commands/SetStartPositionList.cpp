#include "SetStartPositionList.h"
#include "../../BitConverter.h"
#include "../../Globals.h"
#include "../../StringHelper.h"
#include "../../ZFile.h"
#include "../ZNames.h"
#include "../ZRoom.h"

using namespace std;

SetStartPositionList::SetStartPositionList(ZRoom* nZRoom, std::vector<uint8_t> rawData,
                                           uint32_t rawDataIndex)
	: ZRoomCommand(nZRoom, rawData, rawDataIndex)
{
	uint8_t numActors = rawData[rawDataIndex + 1];
	segmentOffset = GETSEGOFFSET(BitConverter::ToInt32BE(rawData, rawDataIndex + 4));

	if (segmentOffset != 0)
		zRoom->parent->AddDeclarationPlaceholder(segmentOffset);

	actors = vector<ActorSpawnEntry*>();

	uint32_t currentPtr = segmentOffset;

	for (int32_t i = 0; i < numActors; i++)
	{
		actors.push_back(new ActorSpawnEntry(rawData, currentPtr));
		currentPtr += 16;
	}
}

SetStartPositionList::~SetStartPositionList()
{
	for (ActorSpawnEntry* entry : actors)
		delete entry;
}

string SetStartPositionList::GenerateSourceCodePass1(string roomName, uint32_t baseAddress)
{
	string sourceOutput = "";

	sourceOutput +=
		StringHelper::Sprintf("%s 0x%02X, (u32)&%sStartPositionList0x%06X",
	                          ZRoomCommand::GenerateSourceCodePass1(roomName, baseAddress).c_str(),
	                          actors.size(), zRoom->GetName().c_str(), segmentOffset);

	string declaration = "";

	for (ActorSpawnEntry* entry : actors)
	{
		declaration += StringHelper::Sprintf("    { %s, %i, %i, %i, %i, %i, %i, 0x%04X },\n",
		                                     ZNames::GetActorName(entry->actorNum).c_str(),
		                                     entry->posX, entry->posY, entry->posZ, entry->rotX,
		                                     entry->rotY, entry->rotZ, entry->initVar);
	}

	zRoom->parent->AddDeclarationArray(
		segmentOffset, DeclarationAlignment::None, actors.size() * 16, "ActorEntry",
		StringHelper::Sprintf("%sStartPositionList0x%06X", zRoom->GetName().c_str(), segmentOffset),
		0, declaration);

	return sourceOutput;
}

string SetStartPositionList::GenerateSourceCodePass2(string roomName, uint32_t baseAddress)
{
	return "";
}

string SetStartPositionList::GenerateExterns()
{
	return StringHelper::Sprintf("extern ActorEntry %sStartPositionList0x%06X[];\n",
	                             zRoom->GetName().c_str(), segmentOffset);
}

string SetStartPositionList::GetCommandCName()
{
	return "SCmdSpawnList";
}

RoomCommand SetStartPositionList::GetRoomCommand()
{
	return RoomCommand::SetStartPositionList;
}