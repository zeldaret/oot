#include "SetStartPositionList.h"
#include "../ZRoom.h"
#include "../ActorList.h"
#include "../../ZFile.h"
#include "../../BitConverter.h"
#include "../../StringHelper.h"

using namespace std;

SetStartPositionList::SetStartPositionList(ZRoom* nZRoom, std::vector<uint8_t> rawData, int rawDataIndex) : ZRoomCommand(nZRoom, rawData, rawDataIndex)
{
	int numActors = rawData[rawDataIndex + 1];
	segmentOffset = SEG2FILESPACE(BitConverter::ToInt32BE(rawData, rawDataIndex + 4));
	
	if (segmentOffset != 0)
		zRoom->parent->AddDeclarationPlaceholder(segmentOffset);

	actors = vector<ActorSpawnEntry*>();

	uint32_t currentPtr = segmentOffset;

	for (int i = 0; i < numActors; i++)
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

string SetStartPositionList::GenerateSourceCodePass1(string roomName, int baseAddress)
{
	string sourceOutput = "";
	char line[2048];

	sourceOutput += StringHelper::Sprintf("%s 0x%02X, (u32)&%sStartPositionList0x%06X", ZRoomCommand::GenerateSourceCodePass1(roomName, baseAddress).c_str(), actors.size(), zRoom->GetName().c_str(), segmentOffset);

	string declaration = "";

	for (ActorSpawnEntry* entry : actors)
	{
		declaration += StringHelper::Sprintf("\t{ %s, %i, %i, %i, %i, %i, %i, 0x%04X },\n", ActorList[entry->actorNum].c_str(), entry->posX, entry->posY, entry->posZ,
			entry->rotX, entry->rotY, entry->rotZ, entry->initVar);
	}

	zRoom->parent->AddDeclarationArray(segmentOffset, DeclarationAlignment::None, actors.size() * 16, "ActorEntry",
		StringHelper::Sprintf("%sStartPositionList0x%06X", zRoom->GetName().c_str(), segmentOffset), 0, declaration);

	return sourceOutput;
}

string SetStartPositionList::GenerateSourceCodePass2(string roomName, int baseAddress)
{
	return "";
}

string SetStartPositionList::GenerateExterns()
{
	return StringHelper::Sprintf("extern ActorEntry %sStartPositionList0x%06X[];\n", zRoom->GetName().c_str(), segmentOffset);
}

string SetStartPositionList::GetCommandCName()
{
	return "SCmdSpawnList";
}

RoomCommand SetStartPositionList::GetRoomCommand()
{
	return RoomCommand::SetStartPositionList;
}