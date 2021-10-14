#include "SetAlternateHeaders.h"

#include "Utils/BitConverter.h"
#include "Utils/StringHelper.h"
#include "ZFile.h"

SetAlternateHeaders::SetAlternateHeaders(ZFile* nParent) : ZRoomCommand(nParent)
{
}

void SetAlternateHeaders::DeclareReferences([[maybe_unused]] const std::string& prefix)
{
	if (segmentOffset != 0)
		parent->AddDeclarationPlaceholder(segmentOffset);
}

void SetAlternateHeaders::ParseRawDataLate()
{
	int numHeaders = zRoom->GetDeclarationSizeFromNeighbor(segmentOffset) / 4;

	for (int32_t i = 0; i < numHeaders; i++)
	{
		int32_t address = BitConverter::ToInt32BE(parent->GetRawData(), segmentOffset + (i * 4));
		headers.push_back(address);

		if (address != 0 && parent->GetDeclaration(GETSEGOFFSET(address)) == nullptr)
		{
			ZRoom* altheader = new ZRoom(parent);
			altheader->ExtractFromBinary(GETSEGOFFSET(address), zRoom->GetResourceType());
			altheader->DeclareReferences(parent->GetName());

			parent->resources.push_back(altheader);
		}
	}
}

void SetAlternateHeaders::DeclareReferencesLate(const std::string& prefix)
{
	if (!headers.empty())
	{
		std::string declaration;

		for (size_t i = 0; i < headers.size(); i++)
		{
			declaration += StringHelper::Sprintf(
				"\t%s,", parent->GetDeclarationPtrName(headers.at(i)).c_str());

			if (i + 1 < headers.size())
				declaration += "\n";
		}

		parent->AddDeclarationArray(
			segmentOffset, DeclarationAlignment::Align4, headers.size() * 4, "SceneCmd*",
			StringHelper::Sprintf("%sAltHeader_%06X", prefix.c_str(), segmentOffset), 0,
			declaration);
	}
}

std::string SetAlternateHeaders::GetBodySourceCode() const
{
	std::string listName = parent->GetDeclarationPtrName(cmdArg2);
	return StringHelper::Sprintf("SCENE_CMD_ALTERNATE_HEADER_LIST(%s)", listName.c_str());
}

std::string SetAlternateHeaders::GetCommandCName() const
{
	return "SCmdAltHeaders";
}

RoomCommand SetAlternateHeaders::GetRoomCommand() const
{
	return RoomCommand::SetAlternateHeaders;
}
