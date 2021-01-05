#include <algorithm>
#include <chrono>
#include "ZRoom.h"
#include "ZFile.h"
#include "ZCutscene.h"
#include "../ZBlob.h"
#include "ObjectList.h"
#include "../File.h"
#include "../StringHelper.h"
#include "../Globals.h"
#include "Commands/SetRoomList.h"
#include "Commands/SetEchoSettings.h"
#include "Commands/SetSoundSettings.h"
#include "Commands/SetWind.h"
#include "Commands/SetTimeSettings.h"
#include "Commands/SetSpecialObjects.h"
#include "Commands/SetSkyboxSettings.h"
#include "Commands/SetSkyboxModifier.h"
#include "Commands/SetRoomBehavior.h"
#include "Commands/SetCameraSettings.h"
#include "Commands/SetStartPositionList.h"
#include "Commands/SetActorList.h"
#include "Commands/SetTransitionActorList.h"
#include "Commands/SetEntranceList.h"
#include "Commands/SetExitList.h"
#include "Commands/SetAlternateHeaders.h"
#include "Commands/SetCollisionHeader.h"
#include "Commands/SetObjectList.h"
#include "Commands/SetMesh.h"
#include "Commands/SetLightingSettings.h"
#include "Commands/SetPathways.h"
#include "Commands/Unused09.h"
#include "Commands/SetCutscenes.h"
#include "Commands/EndMarker.h"
#include "Commands/SetLightList.h"
#include "Commands/ZRoomCommandUnk.h"
#include <Path.h>

using namespace std;
using namespace tinyxml2;

ZRoom::ZRoom() : ZResource()
{
	textures = map<int32_t, ZTexture*>();
	commands = vector<ZRoomCommand*>();
	commandSets = vector<CommandSet>();
	extDefines = "";
	scene = nullptr;
}

ZRoom* ZRoom::ExtractFromXML(XMLElement* reader, vector<uint8_t> nRawData, int rawDataIndex, string nRelPath, ZFile* nParent, ZRoom* nScene)
{
	ZRoom* room = new ZRoom();

	room->parent = nParent;
	room->rawData = nRawData;
	room->name = reader->Attribute("Name");

	//printf("ZRoom: %s\n", name.c_str());

	room->scene = nScene;

	Globals::Instance->AddSegment(SEGMENT_ROOM);
	Globals::Instance->AddSegment(SEGMENT_SCENE);

	//GenDefinitions();

	int cmdCount = 999999;

	if (room->name == "syotes_room_0")
	{
		room->SyotesRoomHack();
		cmdCount = 0;
	}

	for (XMLElement* child = reader->FirstChildElement(); child != NULL; child = child->NextSiblingElement())
	{
		if (string(child->Name()) == "DListHint")
		{
			string comment = "";
			
			if (child->Attribute("Comment") != NULL)
				comment = "// " + string(child->Attribute("Comment")) + "\n";

			string addressStr = child->Attribute("Offset");
			int address = strtol(StringHelper::Split(addressStr, "0x")[1].c_str(), NULL, 16);

			ZDisplayList* dList = new ZDisplayList(room->rawData, address, ZDisplayList::GetDListLength(room->rawData, address));
			//room->parent->declarations[address] = new Declaration(DeclarationAlignment::None, dList->GetRawDataSize(), comment + dList->GetSourceOutputCode(room->name));
			//room->parent->AddDeclarationArray(address, DeclarationAlignment::None, dList->GetRawDataSize(), "Gfx", "", 0, comment + dList->GetSourceOutputCode(room->name));

			dList->GetSourceOutputCode(room->name);
		}
		else if (string(child->Name()) == "BlobHint")
		{
			string comment = "";

			if (child->Attribute("Comment") != NULL)
				comment = "// " + string(child->Attribute("Comment")) + "\n";

			string addressStr = child->Attribute("Offset");
			int address = strtol(StringHelper::Split(addressStr, "0x")[1].c_str(), NULL, 16);

			string sizeStr = child->Attribute("Size");
			int size = strtol(StringHelper::Split(sizeStr, "0x")[1].c_str(), NULL, 16);

			ZBlob* blob = new ZBlob(room->rawData, address, size, StringHelper::Sprintf("%sBlob0x%06X", room->name.c_str(), address));
			room->parent->AddDeclarationArray(address, DeclarationAlignment::None, blob->GetRawDataSize(), "u8", StringHelper::Sprintf("%s_%s", room->name.c_str(), blob->GetName().c_str()), 0, blob->GetSourceOutputCode(room->name));
		}
		else if (string(child->Name()) == "CutsceneHint")
		{
			string comment = "";

			if (child->Attribute("Comment") != NULL)
				comment = "// " + string(child->Attribute("Comment")) + "\n";

			string addressStr = child->Attribute("Offset");
			int address = strtol(StringHelper::Split(addressStr, "0x")[1].c_str(), NULL, 16);

			ZCutscene* cutscene = new ZCutscene(room->rawData, address, 9999);
			
			room->parent->AddDeclarationArray(address, DeclarationAlignment::None, DeclarationPadding::Pad16, cutscene->GetRawDataSize(), "s32",
				StringHelper::Sprintf("%sCutsceneData0x%06X", room->name.c_str(), cutscene->segmentOffset), 0, cutscene->GetSourceOutputCode(room->name));
		}
		else if (string(child->Name()) == "AltHeaderHint")
		{
			string comment = "";

			if (child->Attribute("Comment") != NULL)
				comment = "// " + string(child->Attribute("Comment")) + "\n";

			string addressStr = child->Attribute("Offset");
			int address = strtol(StringHelper::Split(addressStr, "0x")[1].c_str(), NULL, 16);

			int commandsCount = 99999999;

			if (child->FindAttribute("Count") != NULL)
			{
				string commandCountStr = child->Attribute("Count");
				commandsCount = strtol(commandCountStr.c_str(), NULL, 10);
			}

			room->commandSets.push_back(CommandSet(address, commandsCount));
		}
		else if (string(child->Name()) == "PathHint")
		{
			string comment = "";

			if (child->Attribute("Comment") != NULL)
				comment = "// " + string(child->Attribute("Comment")) + "\n";

			string addressStr = child->Attribute("Offset");
			int address = strtol(StringHelper::Split(addressStr, "0x")[1].c_str(), NULL, 16);

			SetPathways* pathway = new SetPathways(room, room->rawData, address);
			pathway->InitList(address);
			pathway->GenerateSourceCodePass1(room->name, 0);
			pathway->GenerateSourceCodePass2(room->name, 0);

			delete pathway;
		}
		else if (string(child->Name()) == "TextureHint")
		{
			string comment = "";

			if (child->Attribute("Comment") != NULL)
				comment = "// " + string(child->Attribute("Comment")) + "\n";

			string addressStr = child->Attribute("Offset");
			int address = strtol(StringHelper::Split(addressStr, "0x")[1].c_str(), NULL, 16);

			string typeStr = child->Attribute("Type");
			int width = strtol(string(child->Attribute("Width")).c_str(), NULL, 10);
			int height = strtol(string(child->Attribute("Height")).c_str(), NULL, 10);

			ZTexture* tex = ZTexture::FromBinary(ZTexture::GetTextureTypeFromString(typeStr), room->rawData, address, StringHelper::Sprintf("%sTex_%06X", room->name.c_str(), address), width, height);
			room->parent->AddDeclarationArray(address, DeclarationAlignment::None, tex->GetRawDataSize(), "u64", StringHelper::Sprintf("%s", tex->GetName().c_str()), 0,
				tex->GetSourceOutputCode(room->name));
		}
	}

	//ParseCommands(rawDataIndex);
	room->commandSets.push_back(CommandSet(rawDataIndex, cmdCount));
	room->ProcessCommandSets();

	return room;
}

void ZRoom::ParseCommands(std::vector<ZRoomCommand*>& commandList, CommandSet commandSet)
{
	bool shouldContinue = true;
	int currentIndex = 0;
	int rawDataIndex = commandSet.address;
	int8_t segmentNumber = rawDataIndex >> 24;

	rawDataIndex &= 0x00FFFFFF;
	int32_t commandsLeft = commandSet.commandCount;

	while (shouldContinue)
	{
		if (commandsLeft <= 0)
			break;

		RoomCommand opcode = (RoomCommand)rawData[rawDataIndex]; 

		ZRoomCommand* cmd = nullptr;

		auto start = chrono::steady_clock::now();

		switch (opcode)
		{
		case RoomCommand::SetStartPositionList: cmd = new SetStartPositionList(this, rawData, rawDataIndex); break; // 0x00
		case RoomCommand::SetActorList: cmd = new SetActorList(this, rawData, rawDataIndex); break; // 0x01
		case RoomCommand::SetCollisionHeader: cmd = new SetCollisionHeader(this, rawData, rawDataIndex); break; // 0x03
		case RoomCommand::SetRoomList: cmd = new SetRoomList(this, rawData, rawDataIndex); break; // 0x04
		case RoomCommand::SetWind: cmd = new SetWind(this, rawData, rawDataIndex); break; // 0x05
		case RoomCommand::SetEntranceList: cmd = new SetEntranceList(this, rawData, rawDataIndex); break; // 0x06
		case RoomCommand::SetSpecialObjects: cmd = new SetSpecialObjects(this, rawData, rawDataIndex); break; // 0x07
		case RoomCommand::SetRoomBehavior: cmd = new SetRoomBehavior(this, rawData, rawDataIndex); break; // 0x08
		case RoomCommand::Unused09: cmd = new Unused09(this, rawData, rawDataIndex); break; // 0x09
		case RoomCommand::SetMesh: cmd = new SetMesh(this, rawData, rawDataIndex, 0); break; // 0x0A
		case RoomCommand::SetObjectList: cmd = new SetObjectList(this, rawData, rawDataIndex); break; // 0x0B
		case RoomCommand::SetLightList: cmd = new SetLightList(this, rawData, rawDataIndex); break; // 0x0C (MM-ONLY)
		case RoomCommand::SetPathways: cmd = new SetPathways(this, rawData, rawDataIndex); break; // 0x0D
		case RoomCommand::SetTransitionActorList: cmd = new SetTransitionActorList(this, rawData, rawDataIndex); break; // 0x0E
		case RoomCommand::SetLightingSettings: cmd = new SetLightingSettings(this, rawData, rawDataIndex); break; // 0x0F
		case RoomCommand::SetTimeSettings: cmd = new SetTimeSettings(this, rawData, rawDataIndex); break; // 0x10
		case RoomCommand::SetSkyboxSettings: cmd = new SetSkyboxSettings(this, rawData, rawDataIndex); break; // 0x11
		case RoomCommand::SetSkyboxModifier: cmd = new SetSkyboxModifier(this, rawData, rawDataIndex); break; // 0x12
		case RoomCommand::SetExitList: cmd = new SetExitList(this, rawData, rawDataIndex); break; // 0x13
		case RoomCommand::EndMarker: cmd = new EndMarker(this, rawData, rawDataIndex); break; // 0x14
		case RoomCommand::SetSoundSettings: cmd = new SetSoundSettings(this, rawData, rawDataIndex); break; // 0x15
		case RoomCommand::SetEchoSettings: cmd = new SetEchoSettings(this, rawData, rawDataIndex); break; // 0x16
		case RoomCommand::SetCutscenes: cmd = new SetCutscenes(this, rawData, rawDataIndex); break; // 0x17
		case RoomCommand::SetAlternateHeaders: cmd = new SetAlternateHeaders(this, rawData, rawDataIndex); break; // 0x18
		case RoomCommand::SetCameraSettings: cmd = new SetCameraSettings(this, rawData, rawDataIndex); break; // 0x19
		default: cmd = new ZRoomCommandUnk(this, rawData, rawDataIndex);
		}

		auto end = chrono::steady_clock::now();
		auto diff = chrono::duration_cast<chrono::milliseconds>(end - start).count();

		if (Globals::Instance->profile)
		{
			if (diff > 50)
				printf("OP: %s, TIME: %lims\n", cmd->GetCommandCName().c_str(), diff);
		}

		//printf("OP: %s\n", cmd->GetCommandCName().c_str());

		cmd->cmdIndex = currentIndex;
		cmd->cmdSet = rawDataIndex;

		commandList.push_back(cmd);

		if (opcode == RoomCommand::EndMarker)
			shouldContinue = false;

		rawDataIndex += 8;
		currentIndex++;

		commandsLeft--;
	}
}

void ZRoom::ProcessCommandSets()
{
	while (commandSets.size() > 0)
	{
		std::vector<ZRoomCommand*> setCommands = std::vector<ZRoomCommand*>();

		int32_t commandSet = commandSets[0].address;
		int8_t segmentNumber = commandSet >> 24;
		ParseCommands(setCommands, commandSets[0]);
		commandSets.erase(commandSets.begin());

		for (int i = 0; i < setCommands.size(); i++)
		{
			ZRoomCommand* cmd = setCommands[i];
			cmd->commandSet = commandSet & 0x00FFFFFF;
			string pass1 = cmd->GenerateSourceCodePass1(name, cmd->commandSet);

			Declaration* decl = parent->AddDeclaration(cmd->cmdAddress, i == 0 ? DeclarationAlignment::Align16 : DeclarationAlignment::None, 8, cmd->GetCommandCName(),
				StringHelper::Sprintf("%sSet%04XCmd%02X", name.c_str(), commandSet & 0x00FFFFFF, cmd->cmdIndex, cmd->cmdID),
				StringHelper::Sprintf("%s", pass1.c_str()));

			decl->rightText = StringHelper::Sprintf("// 0x%04X", cmd->cmdAddress);
		}

		sourceOutput += "\n";

		for (ZRoomCommand* cmd : setCommands)
			commands.push_back(cmd);
	}

	for (ZRoomCommand* cmd : commands)
	{
		string pass2 = cmd->GenerateSourceCodePass2(name, cmd->commandSet);

		if (pass2 != "")
			parent->AddDeclaration(cmd->cmdAddress, DeclarationAlignment::None, 8, cmd->GetCommandCName(), StringHelper::Sprintf("%sSet%04XCmd%02X", name.c_str(), cmd->commandSet & 0x00FFFFFF, cmd->cmdIndex, cmd->cmdID), StringHelper::Sprintf("%s // 0x%04X", pass2.c_str(), cmd->cmdAddress));
	}
}

/*
 * There is one room in Ocarina of Time that lacks a header. Room 120, "Syotes", dates back to very early in the game's development.
 * Since this room is a special case, this hack adds back a header so that the room can be processed properly.
 */
void ZRoom::SyotesRoomHack()
{
	char headerData[] = 
	{
		0x0A, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x08
	};

	for (int i = 0; i < sizeof(headerData); i++)
		rawData.insert(rawData.begin() + i, headerData[i]);

	SetMesh* cmdSetMesh = new SetMesh(this, rawData, 0, -8);

	for (int i = 0; i < sizeof(headerData); i++)
		rawData.erase(rawData.begin());

	cmdSetMesh->cmdIndex = 0;
	cmdSetMesh->cmdSet = 0;

	commands.push_back(cmdSetMesh);
}

ZRoomCommand* ZRoom::FindCommandOfType(RoomCommand cmdType)
{
	for (int i = 0; i < commands.size(); i++)
	{
		if (commands[i]->cmdID == cmdType)
			return commands[i];
	}

	return nullptr;
}

size_t ZRoom::GetDeclarationSizeFromNeighbor(int declarationAddress)
{
	int declarationIndex = -1;

	// Copy it into a vector.
	vector<pair<int32_t, Declaration*>> declarationKeysSorted(parent->declarations.begin(), parent->declarations.end());

	// Sort the vector according to the word count in descending order.
	sort(declarationKeysSorted.begin(), declarationKeysSorted.end(), [](const auto& lhs, const auto& rhs) { return lhs.first < rhs.first; });

	for (int i = 0; i < declarationKeysSorted.size(); i++)
	{
		if (declarationKeysSorted[i].first == declarationAddress)
		{
			declarationIndex = i;
			break;
		}
	}

	if (declarationIndex != -1)
	{
		if (declarationIndex + 1 < declarationKeysSorted.size())
			return declarationKeysSorted[declarationIndex + 1].first - declarationKeysSorted[declarationIndex].first;
		else
			return rawData.size() - declarationKeysSorted[declarationIndex].first;
	}

	return 0;
}

size_t ZRoom::GetCommandSizeFromNeighbor(ZRoomCommand* cmd)
{
	int cmdIndex = -1;

	for (int i = 0; i < commands.size(); i++)
	{
		if (commands[i] == cmd)
		{
			cmdIndex = i;
			break;
		}
	}

	if (cmdIndex != -1)
	{
		if (cmdIndex + 1 < commands.size())
			return commands[cmdIndex + 1]->cmdAddress - commands[cmdIndex]->cmdAddress;
		else
			return rawData.size() - commands[cmdIndex]->cmdAddress;
	}

	return 0;
}

string ZRoom::GetSourceOutputHeader(string prefix)
{
	sourceOutput = "";
	
	for (ZRoomCommand* cmd : commands)
		sourceOutput += cmd->GenerateExterns();

	sourceOutput += "\n";

	sourceOutput += "\n" + extDefines + "\n";
	sourceOutput += "\n";

	return sourceOutput;
}

string ZRoom::GetSourceOutputCode(std::string prefix)
{
	sourceOutput = "";

	//sourceOutput += "#include <z64.h>\n";
	sourceOutput += "#include \"segment_symbols.h\"\n";
	sourceOutput += "#include \"command_macros_base.h\"\n";
	sourceOutput += "#include \"z64cutscene_commands.h\"\n";
	sourceOutput += "#include \"variables.h\"\n";

	if (scene != nullptr)
		sourceOutput += scene->parent->GetHeaderInclude();

	//sourceOutput += "\n";

	ProcessCommandSets();

	// Check for texture intersections
	{
		string defines = "";
		if (textures.size() != 0)
		{
			vector<pair<uint32_t, ZTexture*>> texturesSorted(textures.begin(), textures.end());

			sort(texturesSorted.begin(), texturesSorted.end(), [](const auto& lhs, const auto& rhs)
			{
				return lhs.first < rhs.first;
			});

			for (int i = 0; i < texturesSorted.size() - 1; i++)
			{
				int texSize = textures[texturesSorted[i].first]->GetRawDataSize();

				if ((texturesSorted[i].first + texSize) > texturesSorted[i + 1].first)
				{
					int intersectAmt = (texturesSorted[i].first + texSize) - texturesSorted[i + 1].first;

					defines += StringHelper::Sprintf("#define %sTex_%06X ((u32)%sTex_%06X + 0x%06X)\n", prefix.c_str(), texturesSorted[i + 1].first, prefix.c_str(),
						texturesSorted[i].first, texturesSorted[i + 1].first - texturesSorted[i].first);

					parent->declarations.erase(texturesSorted[i + 1].first);
					textures.erase(texturesSorted[i + 1].first);
					texturesSorted.erase(texturesSorted.begin() + i + 1);

					i--;
				}
			}
		}

		parent->defines += defines;
		//parent->externs[0xFFFFFFFF] = defines;
	}

	for (pair<int32_t, ZTexture*> item : textures)
	{
		string declaration = "";

		declaration += item.second->GetSourceOutputCode(prefix);

		if (Globals::Instance->debugMessages)
			printf("SAVING IMAGE TO %s\n", Globals::Instance->outputPath.c_str());
		
		item.second->Save(Globals::Instance->outputPath);

		parent->AddDeclarationIncludeArray(item.first, StringHelper::Sprintf("%s/%s.%s.inc.c",
			Globals::Instance->outputPath.c_str(), Path::GetFileNameWithoutExtension(item.second->GetName()).c_str(), item.second->GetExternalExtension().c_str()), item.second->GetRawDataSize(),
			"u64", StringHelper::Sprintf("%sTex_%06X", prefix.c_str(), item.first), 0);
	}

	//sourceOutput += "\n";

	return sourceOutput;
}

vector<uint8_t> ZRoom::GetRawData()
{
	return rawData;
}

int ZRoom::GetRawDataSize()
{
	int32_t size = 0;

	for (ZRoomCommand* cmd : commands)
		size += cmd->GetRawDataSize();

	return size;
}

ZResourceType ZRoom::GetResourceType()
{
	return ZResourceType::Room;
}

void ZRoom::Save(string outFolder)
{
	for (ZRoomCommand* cmd : commands)
		cmd->Save();
}

void ZRoom::PreGenSourceFiles()
{
	for (ZRoomCommand* cmd : commands)
		cmd->PreGenSourceFiles();
}

Declaration::Declaration(DeclarationAlignment nAlignment, DeclarationPadding nPadding, uint32_t nSize, string nText)
{
	alignment = nAlignment;
	padding = nPadding;
	size = nSize;
	preText = "";
	text = nText;
	rightText = "";
	postText = "";
	preComment = "";
	postComment = "";
	varType = "";
	varName = "";
	isArray = false;
	arrayItemCnt = 0;
	includePath = "";
}

Declaration::Declaration(DeclarationAlignment nAlignment, uint32_t nSize, string nVarType, string nVarName, bool nIsArray, string nText) : Declaration(nAlignment, DeclarationPadding::None, nSize, nText)
{
	varType = nVarType;
	varName = nVarName;
	isArray = nIsArray;
}

Declaration::Declaration(DeclarationAlignment nAlignment, DeclarationPadding nPadding, uint32_t nSize, string nVarType, string nVarName, bool nIsArray, string nText) : Declaration(nAlignment, nPadding, nSize, nText)
{
	varType = nVarType;
	varName = nVarName;
	isArray = nIsArray;
}

Declaration::Declaration(DeclarationAlignment nAlignment, uint32_t nSize, string nVarType, string nVarName, bool nIsArray, int nArrayItemCnt, string nText) : Declaration(nAlignment, DeclarationPadding::None, nSize, nText)
{
	varType = nVarType;
	varName = nVarName;
	isArray = nIsArray;
	arrayItemCnt = nArrayItemCnt;
}

Declaration::Declaration(DeclarationAlignment nAlignment, DeclarationPadding nPadding, uint32_t nSize, string nVarType, string nVarName, bool nIsArray, int nArrayItemCnt, string nText) : Declaration(nAlignment, nPadding, nSize, nText)
{
	varType = nVarType;
	varName = nVarName;
	isArray = nIsArray;
	arrayItemCnt = nArrayItemCnt;
}

Declaration::Declaration(std::string nIncludePath, uint32_t nSize, string nVarType, string nVarName) : Declaration(DeclarationAlignment::None, DeclarationPadding::None, nSize, "")
{
	includePath = nIncludePath;
	varType = nVarType;
	varName = nVarName;
}

CommandSet::CommandSet(int32_t nAddress)
{
	address = nAddress;
	commandCount = 9999999;
}

CommandSet::CommandSet(int32_t nAddress, int32_t nCommandCount)
{
	address = nAddress;
	commandCount = nCommandCount;
}