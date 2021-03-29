#include "SetCutscenes.h"
#include "../../BitConverter.h"
#include "../../StringHelper.h"
#include "../../ZFile.h"
#include "../ZRoom.h"

using namespace std;

SetCutscenes::SetCutscenes(ZRoom* nZRoom, std::vector<uint8_t> rawData, int rawDataIndex)
	: ZRoomCommand(nZRoom, rawData, rawDataIndex)
{
	segmentOffset = BitConverter::ToInt32BE(rawData, rawDataIndex + 4) & 0x00FFFFFF;

	string output = "";

	cutscene = new ZCutscene(rawData, segmentOffset, 9999);

	output += cutscene->GetSourceOutputCode(zRoom->GetName());

	if (segmentOffset != 0)
	{
		Declaration* decl = zRoom->parent->GetDeclaration(segmentOffset);
		if (decl == nullptr)
		{
			zRoom->parent->AddDeclarationArray(
				segmentOffset, DeclarationAlignment::None, DeclarationPadding::Pad16,
				cutscene->GetRawDataSize(), "s32",
				StringHelper::Sprintf("%sCutsceneData0x%06X", zRoom->GetName().c_str(),
			                          segmentOffset),
				0, output);
		}
		else if (decl->text == "")
		{
			decl->text = output;
		}
	}
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
	string pass1 = ZRoomCommand::GenerateSourceCodePass1(roomName, baseAddress);
	Declaration* decl = zRoom->parent->GetDeclaration(segmentOffset);
	if (decl != nullptr)
	{
		return StringHelper::Sprintf("%s 0, (u32)%s", pass1.c_str(), decl->varName.c_str());
	}
	return StringHelper::Sprintf("%s 0, (u32)%sCutsceneData0x%06X", pass1.c_str(),
	                             zRoom->GetName().c_str(), segmentOffset);
}

int32_t SetCutscenes::GetRawDataSize()
{
	return ZRoomCommand::GetRawDataSize() + (0);
}

string SetCutscenes::GenerateExterns()
{
	Declaration* decl = zRoom->parent->GetDeclaration(segmentOffset);
	if (decl != nullptr && decl->varName != "")
	{
		return StringHelper::Sprintf("extern s32 %s[];\n", decl->varName.c_str());
	}
	return StringHelper::Sprintf("extern s32 %sCutsceneData0x%06X[];\n", zRoom->GetName().c_str(),
	                             segmentOffset);
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
