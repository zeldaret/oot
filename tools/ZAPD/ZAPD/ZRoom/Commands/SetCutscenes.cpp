#include "SetCutscenes.h"
#include "../../BitConverter.h"
#include "../../Globals.h"
#include "../../StringHelper.h"
#include "../../ZFile.h"
#include "../ZRoom.h"

using namespace std;

SetCutscenes::SetCutscenes(ZRoom* nZRoom, std::vector<uint8_t> rawData, int rawDataIndex)
	: ZRoomCommand(nZRoom, rawData, rawDataIndex)
{
    numCutscenes = rawData[rawDataIndex + 1];
	segmentOffset = GETSEGOFFSET(BitConverter::ToInt32BE(rawData, rawDataIndex + 4));

	uint32_t curPtr = segmentOffset;
	string output = "";

	if (Globals::Instance->game == ZGame::OOT_RETAIL || Globals::Instance->game == ZGame::OOT_SW97)
	{
		ZCutscene* cutscene = new ZCutscene(nZRoom->parent);
		cutscene->ExtractFromXML(nullptr, rawData, segmentOffset,
			"");  // TODO: Use ExtractFromFile() here when that gets implemented
		cutscenes.push_back(cutscene);
	}
	else
	{
		int32_t currentPtr = segmentOffset;
		string declaration = "";

		for (int i = 0; i < numCutscenes; i++)
		{
			CutsceneEntry* entry = new CutsceneEntry(rawData, currentPtr);
			cutsceneEntries.push_back(entry);
			currentPtr += 8;

			declaration += StringHelper::Sprintf("    { %sCutsceneData0x%06X, 0x%04X, 0x%02X, 0x%02X },", zRoom->GetName().c_str(),
									  entry->segmentOffset, entry->exit, entry->entrance, entry->flag);

			if (i <numCutscenes - 1)
				declaration += "\n";

			ZCutsceneMM* cutscene = new ZCutsceneMM(nZRoom->parent);
			cutscene->ExtractFromXML(nullptr, rawData, entry->segmentOffset,
				"");  // TODO: Use ExtractFromFile() here when that gets implemented
			cutscenes.push_back(cutscene);

			//cutscenes.push_back(new ZCutsceneMM(rawData, entry->segmentOffset, 9999));
		}

		zRoom->parent->AddDeclarationArray(
				segmentOffset, DeclarationAlignment::None, DeclarationPadding::None,
				cutsceneEntries.size() * 8, "CutsceneEntry",
				StringHelper::Sprintf("%sCutsceneEntryList0x%06X", zRoom->GetName().c_str(),
									  segmentOffset),
				cutsceneEntries.size(), declaration);
	}

	for (ZCutsceneBase* cutscene : cutscenes)
	{
		string output = "";

		output += cutscene->GetSourceOutputCode(zRoom->GetName());

		if (cutscene->getSegmentOffset() != 0)
		{
			Declaration* decl = zRoom->parent->GetDeclaration(cutscene->getSegmentOffset());
			if (decl == nullptr)
			{
				DeclarationPadding padding = (Globals::Instance->game == ZGame::MM_RETAIL) ?
					DeclarationPadding::None : DeclarationPadding::Pad16;

				zRoom->parent->AddDeclarationArray(
					cutscene->getSegmentOffset(), DeclarationAlignment::None, padding,
					cutscene->GetRawDataSize(), "s32",
					StringHelper::Sprintf("%sCutsceneData0x%06X", zRoom->GetName().c_str(),
											cutscene->getSegmentOffset()),
					0, output);
			}
			else if (decl->text == "")
			{
				decl->text = output;
			}
		}
	}
}

SetCutscenes::~SetCutscenes()
{
	for (ZCutsceneBase* cutscene : cutscenes)
		delete cutscene;

	for (CutsceneEntry* entry : cutsceneEntries)
		delete entry;
}

string SetCutscenes::GenerateSourceCodePass1(string roomName, int baseAddress)
{
	string pass1 = ZRoomCommand::GenerateSourceCodePass1(roomName, baseAddress);
	Declaration* decl = zRoom->parent->GetDeclaration(segmentOffset);
	if (decl != nullptr)
	{
		return StringHelper::Sprintf("%s %i, (u32)%s", pass1.c_str(), numCutscenes, decl->varName.c_str());
	}
	return StringHelper::Sprintf("%s %i, (u32)%sCutsceneData0x%06X", pass1.c_str(),
								 numCutscenes, zRoom->GetName().c_str(), segmentOffset);
}

int32_t SetCutscenes::GetRawDataSize()
{
	return ZRoomCommand::GetRawDataSize() + (0);
}

string SetCutscenes::GenerateExterns()
{
	if (Globals::Instance->game == ZGame::MM_RETAIL)
	{
		return StringHelper::Sprintf("extern CutsceneEntry %sCutsceneEntryList0x%06X[];\n", zRoom->GetName().c_str(),
								 	segmentOffset);
	}

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

CutsceneEntry::CutsceneEntry(std::vector<uint8_t> rawData, int rawDataIndex) :
	segmentOffset(BitConverter::ToInt32BE(rawData, rawDataIndex + 0) & 0x00FFFFFF),
	exit(BitConverter::ToInt16BE(rawData, rawDataIndex + 4)),
	entrance(rawData[rawDataIndex + 6]),
	flag(rawData[rawDataIndex + 7])
{
}
