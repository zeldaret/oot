#include "SetPathways.h"

#include "Globals.h"
#include "Utils/BitConverter.h"
#include "Utils/StringHelper.h"
#include "ZFile.h"
#include "ZRoom/ZRoom.h"

SetPathways::SetPathways(ZFile* nParent) : ZRoomCommand(nParent), pathwayList(nParent)
{
}

void SetPathways::DeclareReferences([[maybe_unused]] const std::string& prefix)
{
	if (segmentOffset != 0)
		parent->AddDeclarationPlaceholder(segmentOffset);
}

void SetPathways::ParseRawDataLate()
{
	if (Globals::Instance->game == ZGame::MM_RETAIL)
	{
		auto numPaths = zRoom->GetDeclarationSizeFromNeighbor(segmentOffset) / 8;
		pathwayList.SetNumPaths(numPaths);
	}

	pathwayList.ExtractFromFile(segmentOffset);
}

void SetPathways::DeclareReferencesLate(const std::string& prefix)
{
	pathwayList.SetName(StringHelper::Sprintf("%sPathway_%06X", prefix.c_str(), segmentOffset));
	pathwayList.DeclareReferences(prefix);
	pathwayList.GetSourceOutputCode(prefix);
}

std::string SetPathways::GetBodySourceCode() const
{
	std::string listName = parent->GetDeclarationPtrName(cmdArg2);
	return StringHelper::Sprintf("SCENE_CMD_PATH_LIST(%s)", listName.c_str());
}

std::string SetPathways::GetCommandCName() const
{
	return "SCmdPathList";
}

RoomCommand SetPathways::GetRoomCommand() const
{
	return RoomCommand::SetPathways;
}
