#include "SetAlternateHeaders.h"
#include "../../ZFile.h"
#include "../../BitConverter.h"
#include "../../StringHelper.h"

using namespace std;

SetAlternateHeaders::SetAlternateHeaders(ZRoom* nZRoom, std::vector<uint8_t> rawData, int rawDataIndex) : ZRoomCommand(nZRoom, rawData, rawDataIndex)
{
	segmentOffset = SEG2FILESPACE(BitConverter::ToInt32BE(rawData, rawDataIndex + 4));

	if (segmentOffset != 0)
		zRoom->parent->AddDeclarationPlaceholder(segmentOffset);
	
	_rawData = rawData;
	_rawDataIndex = rawDataIndex;
}

string SetAlternateHeaders::GenerateSourceCodePass1(string roomName, int baseAddress)
{
	string sourceOutput = "";
	int numHeaders = zRoom->GetDeclarationSizeFromNeighbor(segmentOffset) / 4;

	for (int i = 0; i < numHeaders; i++)
	{
		int32_t address = BitConverter::ToInt32BE(_rawData, segmentOffset + (i * 4));
		headers.push_back(address);

		if (address != 0)
			zRoom->commandSets.push_back(CommandSet(address));
	}

	sourceOutput += StringHelper::Sprintf("%s 0, (u32)&%sAlternateHeaders0x%06X", ZRoomCommand::GenerateSourceCodePass1(roomName, baseAddress).c_str(), roomName.c_str(), segmentOffset);

	string declaration = "";

	for (int i = 0; i < numHeaders; i++)
	{
		//sprintf(line, "\t0x%06X,\n", headers[i]);

		if (headers[i] == 0)
			declaration += StringHelper::Sprintf("\t0,\n");
		else
			declaration += StringHelper::Sprintf("\t(u32)&%sSet%04XCmd00,\n", roomName.c_str(), headers[i] & 0x00FFFFFF);
	}

	zRoom->parent->AddDeclarationArray(segmentOffset, DeclarationAlignment::None, headers.size() * 4, 
		"u32", StringHelper::Sprintf("%sAlternateHeaders0x%06X", roomName.c_str(), segmentOffset), 0, declaration);

	return sourceOutput;
}

int32_t SetAlternateHeaders::GetRawDataSize()
{
	return ZRoomCommand::GetRawDataSize() + 0;
}

string SetAlternateHeaders::GetCommandCName()
{
	return "SCmdAltHeaders";
}

RoomCommand SetAlternateHeaders::GetRoomCommand()
{
	return RoomCommand::SetAlternateHeaders;
}