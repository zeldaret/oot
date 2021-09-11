#include "SetEntranceList.h"
#include "BitConverter.h"
#include "SetStartPositionList.h"
#include "StringHelper.h"
#include "ZFile.h"
#include "ZRoom/ZRoom.h"

SetEntranceList::SetEntranceList(ZFile* nParent) : ZRoomCommand(nParent)
{
}

void SetEntranceList::DeclareReferences(const std::string& prefix)
{
	if (segmentOffset != 0)
		parent->AddDeclarationPlaceholder(segmentOffset);
}

void SetEntranceList::ParseRawDataLate()
{
	// Parse Entrances and Generate Declaration
	int numEntrances = zRoom->GetDeclarationSizeFromNeighbor(segmentOffset) / 2;
	uint32_t currentPtr = segmentOffset;

	for (int32_t i = 0; i < numEntrances; i++)
	{
		EntranceEntry entry(parent->GetRawData(), currentPtr);
		entrances.push_back(entry);

		currentPtr += 2;
	}
}

void SetEntranceList::DeclareReferencesLate(const std::string& prefix)
{
	if (!entrances.empty())
	{
		std::string declaration = "";

		size_t index = 0;
		for (const auto& entry : entrances)
		{
			declaration +=
				StringHelper::Sprintf("    { %s }, //0x%06X", entry.GetBodySourceCode().c_str(),
			                          segmentOffset + (index * 2));
			if (index + 1 < entrances.size())
				declaration += "\n";

			index++;
		}

		parent->AddDeclarationArray(
			segmentOffset, DeclarationAlignment::None, entrances.size() * 2, "EntranceEntry",
			StringHelper::Sprintf("%sEntranceList0x%06X", zRoom->GetName().c_str(), segmentOffset),
			entrances.size(), declaration);
	}
}

std::string SetEntranceList::GetBodySourceCode() const
{
	std::string listName = parent->GetDeclarationPtrName(cmdArg2);
	return StringHelper::Sprintf("SCENE_CMD_ENTRANCE_LIST(%s)", listName.c_str());
}

std::string SetEntranceList::GetCommandCName() const
{
	return "SCmdEntranceList";
}

RoomCommand SetEntranceList::GetRoomCommand() const
{
	return RoomCommand::SetEntranceList;
}

EntranceEntry::EntranceEntry(const std::vector<uint8_t>& rawData, uint32_t rawDataIndex)
{
	startPositionIndex = rawData.at(rawDataIndex + 0);
	roomToLoad = rawData.at(rawDataIndex + 1);
}

std::string EntranceEntry::GetBodySourceCode() const
{
	return StringHelper::Sprintf("0x%02X, 0x%02X", startPositionIndex, roomToLoad);
}
