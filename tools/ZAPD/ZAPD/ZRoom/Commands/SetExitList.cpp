#include "SetExitList.h"

#include "BitConverter.h"
#include "StringHelper.h"
#include "ZFile.h"
#include "ZRoom/ZRoom.h"

SetExitList::SetExitList(ZFile* nParent) : ZRoomCommand(nParent)
{
}

void SetExitList::DeclareReferences(const std::string& prefix)
{
	if (segmentOffset != 0)
		parent->AddDeclarationPlaceholder(segmentOffset);
}

void SetExitList::ParseRawDataLate()
{
	// Parse Entrances and Generate Declaration
	int numEntrances = zRoom->GetDeclarationSizeFromNeighbor(segmentOffset) / 2;
	uint32_t currentPtr = segmentOffset;

	for (int32_t i = 0; i < numEntrances; i++)
	{
		uint16_t exit = BitConverter::ToUInt16BE(parent->GetRawData(), currentPtr);
		exits.push_back(exit);

		currentPtr += 2;
	}
}

void SetExitList::DeclareReferencesLate(const std::string& prefix)
{
	if (!exits.empty())
	{
		std::string declaration = "";

		for (size_t i = 0; i < exits.size(); i++)
		{
			declaration += StringHelper::Sprintf("    0x%04X,", exits.at(i));
			if (i + 1 < exits.size())
				declaration += "\n";
		}

		parent->AddDeclarationArray(
			segmentOffset, DeclarationAlignment::Align4, exits.size() * 2, "u16",
			StringHelper::Sprintf("%sExitList_%06X", zRoom->GetName().c_str(), segmentOffset),
			exits.size(), declaration);
	}
}

std::string SetExitList::GetBodySourceCode() const
{
	std::string listName = parent->GetDeclarationPtrName(cmdArg2);
	return StringHelper::Sprintf("SCENE_CMD_EXIT_LIST(%s)", listName.c_str());
}

std::string SetExitList::GetCommandCName() const
{
	return "SCmdExitList";
}

RoomCommand SetExitList::GetRoomCommand() const
{
	return RoomCommand::SetExitList;
}
