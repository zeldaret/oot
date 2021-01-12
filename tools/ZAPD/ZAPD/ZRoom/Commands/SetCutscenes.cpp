#include "SetCutscenes.h"
#include "../ZRoom.h"
#include "../../ZFile.h"
#include "../../BitConverter.h"
#include "../../StringHelper.h"

using namespace std;

SetCutscenes::SetCutscenes(ZRoom* nZRoom, std::vector<uint8_t> rawData, int rawDataIndex) : ZRoomCommand(nZRoom, rawData, rawDataIndex)
{
	segmentOffset = BitConverter::ToInt32BE(rawData, rawDataIndex + 4) & 0x00FFFFFF;
	
	uint32_t curPtr = segmentOffset;
	string output = "";

	cutscene = new ZCutscene(rawData, segmentOffset, 9999);

	output += cutscene->GetSourceOutputCode(zRoom->GetName());

	if (segmentOffset != 0)
		zRoom->parent->AddDeclarationArray(segmentOffset, DeclarationAlignment::None, DeclarationPadding::Pad16, cutscene->GetRawDataSize(), "s32", 
			StringHelper::Sprintf("%sCutsceneData0x%06X", zRoom->GetName().c_str(), segmentOffset), 0, output);
}

SetCutscenes::~SetCutscenes()
{
	if (cutscene != nullptr)
	{
		delete cutscene;
		cutscene = nullptr;
	}
}

string SetCutscenes::GenerateSourceCodePass1(string roomName, int baseAddress)
{
	return StringHelper::Sprintf("%s 0, (u32)%sCutsceneData0x%06X", ZRoomCommand::GenerateSourceCodePass1(roomName, baseAddress).c_str(), zRoom->GetName().c_str(), segmentOffset);
}

int32_t SetCutscenes::GetRawDataSize()
{
	return ZRoomCommand::GetRawDataSize() + (0);
}

string SetCutscenes::GenerateExterns()
{
	return  StringHelper::Sprintf("extern s32 %sCutsceneData0x%06X[];\n", zRoom->GetName().c_str(), segmentOffset);
}

string SetCutscenes::GetCommandCName()
{
	return "SCmdCutsceneData";
}

RoomCommand SetCutscenes::GetRoomCommand()
{
	return RoomCommand::SetCutscenes;
}

string SetCutscenes::GetSourceOutputCode(std::string prefix)
{
	return "";
}