#include "ZRoom.h"
#include <Path.h>
#include <algorithm>
#include <chrono>
#include "../File.h"
#include "../Globals.h"
#include "../StringHelper.h"
#include "../ZBlob.h"
#include "Commands/EndMarker.h"
#include "Commands/SetActorCutsceneList.h"
#include "Commands/SetActorList.h"
#include "Commands/SetAlternateHeaders.h"
#include "Commands/SetAnimatedTextureList.h"
#include "Commands/SetCameraSettings.h"
#include "Commands/SetCollisionHeader.h"
#include "Commands/SetCsCamera.h"
#include "Commands/SetCutscenes.h"
#include "Commands/SetEchoSettings.h"
#include "Commands/SetEntranceList.h"
#include "Commands/SetExitList.h"
#include "Commands/SetLightList.h"
#include "Commands/SetLightingSettings.h"
#include "Commands/SetMesh.h"
#include "Commands/SetMinimapChests.h"
#include "Commands/SetMinimapList.h"
#include "Commands/SetObjectList.h"
#include "Commands/SetPathways.h"
#include "Commands/SetRoomBehavior.h"
#include "Commands/SetRoomList.h"
#include "Commands/SetSkyboxModifier.h"
#include "Commands/SetSkyboxSettings.h"
#include "Commands/SetSoundSettings.h"
#include "Commands/SetSpecialObjects.h"
#include "Commands/SetStartPositionList.h"
#include "Commands/SetTimeSettings.h"
#include "Commands/SetTransitionActorList.h"
#include "Commands/SetWind.h"
#include "Commands/SetWorldMapVisited.h"
#include "Commands/Unused09.h"
#include "Commands/Unused1D.h"
#include "Commands/ZRoomCommandUnk.h"
#include "ZCutscene.h"
#include "ZFile.h"

using namespace std;
using namespace tinyxml2;

REGISTER_ZFILENODE(Room, ZRoom);
REGISTER_ZFILENODE(Scene, ZRoom);

ZRoom::ZRoom(ZFile* nParent) : ZResource(nParent)
{
	textures = map<int32_t, ZTexture*>();
	commands = vector<ZRoomCommand*>();
	commandSets = vector<CommandSet>();
	extDefines = "";
	scene = nullptr;
	roomCount = -1;
	canHaveInner = true;
}

ZRoom::~ZRoom()
{
	for (ZRoomCommand* cmd : commands)
		delete cmd;

	for(auto t : textures)
		delete t.second;
}

void ZRoom::ExtractFromXML(tinyxml2::XMLElement* reader, const std::vector<uint8_t>& nRawData,
                           const uint32_t nRawDataIndex, const std::string& nRelPath)
{
	ZResource::ExtractFromXML(reader, nRawData, nRawDataIndex, nRelPath);

	// room->scene = nScene;
	scene = Globals::Instance->lastScene;

	if (string(reader->Name()) == "Scene")
	{
		scene = this;
		Globals::Instance->lastScene = this;
	}

	Globals::Instance->AddSegment(SEGMENT_ROOM);
	Globals::Instance->AddSegment(SEGMENT_SCENE);

	uint32_t cmdCount = UINT32_MAX;

	if (name == "syotes_room_0")
	{
		SyotesRoomHack();
		cmdCount = 0;
	}

	for (XMLElement* child = reader->FirstChildElement(); child != NULL;
	     child = child->NextSiblingElement())
	{
		string childName = child->Attribute("Name") == NULL ? "" : string(child->Attribute("Name"));
		string childComment = child->Attribute("Comment") == NULL ?
                                  "" :
                                  "// " + string(child->Attribute("Comment")) + "\n";

		// TODO: Bunch of repeated code between all of these that needs to be combined.
		if (string(child->Name()) == "DListHint")
		{
			string addressStr = child->Attribute("Offset");
			int32_t address = strtol(StringHelper::Split(addressStr, "0x")[1].c_str(), NULL, 16);

			ZDisplayList* dList = new ZDisplayList(
				rawData, address,
				ZDisplayList::GetDListLength(rawData, address,
			                                 Globals::Instance->game == ZGame::OOT_SW97 ?
                                                 DListType::F3DEX :
                                                 DListType::F3DZEX),
				parent);

			dList->GetSourceOutputCode(name);
			delete dList;
		}
		else if (string(child->Name()) == "CutsceneHint")
		{
			string addressStr = child->Attribute("Offset");
			int32_t address = strtol(StringHelper::Split(addressStr, "0x")[1].c_str(), NULL, 16);

			// ZCutscene* cutscene = new ZCutscene(rawData, address, 9999, parent);
			ZCutscene* cutscene = new ZCutscene(parent);
			cutscene->ExtractFromXML(child, rawData, address, "");

			cutscene->GetSourceOutputCode(name);

			delete cutscene;
		}
		else if (string(child->Name()) == "AltHeaderHint")
		{
			string addressStr = child->Attribute("Offset");
			int32_t address = strtol(StringHelper::Split(addressStr, "0x")[1].c_str(), NULL, 16);

			uint32_t commandsCount = UINT32_MAX;

			if (child->FindAttribute("Count") != NULL)
			{
				string commandCountStr = child->Attribute("Count");
				commandsCount = strtol(commandCountStr.c_str(), NULL, 10);
			}

			commandSets.push_back(CommandSet(address, commandsCount));
		}
		else if (string(child->Name()) == "PathHint")
		{
			string addressStr = child->Attribute("Offset");
			int32_t address = strtol(StringHelper::Split(addressStr, "0x")[1].c_str(), NULL, 16);

			ZSetPathways* pathway = new ZSetPathways(this, rawData, address, false);
			pathway->GenerateSourceCodePass1(name, 0);
			pathway->GenerateSourceCodePass2(name, 0);

			delete pathway;
		}

		fprintf(stderr,
		        "ZRoom::ExtractFromXML: Deprecation warning in '%s'.\n"
		        "\t The resource '%s' is currently deprecated, and will be removed in a future "
		        "version.\n"
		        "\t Use the non-hint version instead.\n",
		        name.c_str(), child->Name());
	}

	// ParseCommands(rawDataIndex);
	commandSets.push_back(CommandSet(rawDataIndex, cmdCount));
	ProcessCommandSets();
}

void ZRoom::ParseCommands(std::vector<ZRoomCommand*>& commandList, CommandSet commandSet)
{
	bool shouldContinue = true;
	uint32_t currentIndex = 0;
	uint32_t rawDataIndex = GETSEGOFFSET(commandSet.address);

	uint32_t commandsLeft = commandSet.commandCount;

	while (shouldContinue)
	{
		if (commandsLeft <= 0)
			break;

		RoomCommand opcode = (RoomCommand)rawData[rawDataIndex];

		ZRoomCommand* cmd = nullptr;

		auto start = chrono::steady_clock::now();

		switch (opcode)
		{
		case RoomCommand::SetStartPositionList:
			cmd = new SetStartPositionList(this, rawData, rawDataIndex);
			break;  // 0x00
		case RoomCommand::SetActorList:
			cmd = new SetActorList(this, rawData, rawDataIndex);
			break;  // 0x01
		case RoomCommand::SetCsCamera:
			cmd = new SetCsCamera(this, rawData, rawDataIndex);
			break;  // 0x02 (MM-ONLY)
		case RoomCommand::SetCollisionHeader:
			cmd = new SetCollisionHeader(this, rawData, rawDataIndex);
			break;  // 0x03
		case RoomCommand::SetRoomList:
			cmd = new SetRoomList(this, rawData, rawDataIndex);
			break;  // 0x04
		case RoomCommand::SetWind:
			cmd = new SetWind(this, rawData, rawDataIndex);
			break;  // 0x05
		case RoomCommand::SetEntranceList:
			cmd = new SetEntranceList(this, rawData, rawDataIndex);
			break;  // 0x06
		case RoomCommand::SetSpecialObjects:
			cmd = new SetSpecialObjects(this, rawData, rawDataIndex);
			break;  // 0x07
		case RoomCommand::SetRoomBehavior:
			cmd = new SetRoomBehavior(this, rawData, rawDataIndex);
			break;  // 0x08
		case RoomCommand::Unused09:
			cmd = new Unused09(this, rawData, rawDataIndex);
			break;  // 0x09
		case RoomCommand::SetMesh:
			cmd = new SetMesh(this, rawData, rawDataIndex, 0);
			break;  // 0x0A
		case RoomCommand::SetObjectList:
			cmd = new SetObjectList(this, rawData, rawDataIndex);
			break;  // 0x0B
		case RoomCommand::SetLightList:
			cmd = new SetLightList(this, rawData, rawDataIndex);
			break;  // 0x0C (MM-ONLY)
		case RoomCommand::SetPathways:
			cmd = new ZSetPathways(this, rawData, rawDataIndex, true);
			break;  // 0x0D
		case RoomCommand::SetTransitionActorList:
			cmd = new SetTransitionActorList(this, rawData, rawDataIndex);
			break;  // 0x0E
		case RoomCommand::SetLightingSettings:
			cmd = new SetLightingSettings(this, rawData, rawDataIndex);
			break;  // 0x0F
		case RoomCommand::SetTimeSettings:
			cmd = new SetTimeSettings(this, rawData, rawDataIndex);
			break;  // 0x10
		case RoomCommand::SetSkyboxSettings:
			cmd = new SetSkyboxSettings(this, rawData, rawDataIndex);
			break;  // 0x11
		case RoomCommand::SetSkyboxModifier:
			cmd = new SetSkyboxModifier(this, rawData, rawDataIndex);
			break;  // 0x12
		case RoomCommand::SetExitList:
			cmd = new SetExitList(this, rawData, rawDataIndex);
			break;  // 0x13
		case RoomCommand::EndMarker:
			cmd = new EndMarker(this, rawData, rawDataIndex);
			break;  // 0x14
		case RoomCommand::SetSoundSettings:
			cmd = new SetSoundSettings(this, rawData, rawDataIndex);
			break;  // 0x15
		case RoomCommand::SetEchoSettings:
			cmd = new SetEchoSettings(this, rawData, rawDataIndex);
			break;  // 0x16
		case RoomCommand::SetCutscenes:
			cmd = new SetCutscenes(this, rawData, rawDataIndex);
			break;  // 0x17
		case RoomCommand::SetAlternateHeaders:
			cmd = new SetAlternateHeaders(this, rawData, rawDataIndex);
			break;  // 0x18
		case RoomCommand::SetCameraSettings:
			if (Globals::Instance->game == ZGame::MM_RETAIL)
				cmd = new SetWorldMapVisited(this, rawData, rawDataIndex);
			else
				cmd = new SetCameraSettings(this, rawData, rawDataIndex);
			break;  // 0x19
		case RoomCommand::SetAnimatedTextureList:
			cmd = new SetAnimatedTextureList(this, rawData, rawDataIndex);
			break;  // 0x1A (MM-ONLY)
		case RoomCommand::SetActorCutsceneList:
			cmd = new SetActorCutsceneList(this, rawData, rawDataIndex);
			break;  // 0x1B (MM-ONLY)
		case RoomCommand::SetMinimapList:
			cmd = new SetMinimapList(this, rawData, rawDataIndex);
			break;  // 0x1C (MM-ONLY)
		case RoomCommand::Unused1D:
			cmd = new Unused1D(this, rawData, rawDataIndex);
			break;  // 0x1D
		case RoomCommand::SetMinimapChests:
			cmd = new SetMinimapChests(this, rawData, rawDataIndex);
			break;  // 0x1E (MM-ONLY)
		default:
			cmd = new ZRoomCommandUnk(this, rawData, rawDataIndex);
		}

		auto end = chrono::steady_clock::now();
		auto diff = chrono::duration_cast<chrono::milliseconds>(end - start).count();

		if (Globals::Instance->profile)
		{
			if (diff > 50)
				printf("OP: %s, TIME: %lims\n", cmd->GetCommandCName().c_str(), diff);
		}

		// printf("OP: %s\n", cmd->GetCommandCName().c_str());

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
		ParseCommands(setCommands, commandSets[0]);
		commandSets.erase(commandSets.begin());

		for (size_t i = 0; i < setCommands.size(); i++)
		{
			ZRoomCommand* cmd = setCommands[i];
			cmd->commandSet = commandSet & 0x00FFFFFF;
			string pass1 = cmd->GenerateSourceCodePass1(name, cmd->commandSet);

			Declaration* decl = parent->AddDeclaration(
				cmd->cmdAddress,
				i == 0 ? DeclarationAlignment::Align16 : DeclarationAlignment::None, 8,
				StringHelper::Sprintf("static %s", cmd->GetCommandCName().c_str()),
				StringHelper::Sprintf("%sSet%04XCmd%02X", name.c_str(), commandSet & 0x00FFFFFF,
			                          cmd->cmdIndex, cmd->cmdID),
				StringHelper::Sprintf("\n    %s\n", pass1.c_str()));

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
			parent->AddDeclaration(
				cmd->cmdAddress, DeclarationAlignment::None, 8,
				StringHelper::Sprintf("static %s", cmd->GetCommandCName().c_str()),
				StringHelper::Sprintf("%sSet%04XCmd%02X", name.c_str(),
			                          cmd->commandSet & 0x00FFFFFF, cmd->cmdIndex, cmd->cmdID),
				StringHelper::Sprintf("%s // 0x%04X", pass2.c_str(), cmd->cmdAddress));
	}
}

/*
 * There is one room in Ocarina of Time that lacks a header. Room 120, "Syotes", dates back to very
 * early in the game's development. Since this room is a special case, this hack adds back a header
 * so that the room can be processed properly.
 */
void ZRoom::SyotesRoomHack()
{
	char headerData[] = {0x0A, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x08};

	for (size_t i = 0; i < sizeof(headerData); i++)
		rawData.insert(rawData.begin() + i, headerData[i]);

	SetMesh* cmdSetMesh = new SetMesh(this, rawData, 0, -8);

	for (size_t i = 0; i < sizeof(headerData); i++)
		rawData.erase(rawData.begin());

	cmdSetMesh->cmdIndex = 0;
	cmdSetMesh->cmdSet = 0;

	commands.push_back(cmdSetMesh);
}

ZRoomCommand* ZRoom::FindCommandOfType(RoomCommand cmdType)
{
	for (size_t i = 0; i < commands.size(); i++)
	{
		if (commands[i]->cmdID == cmdType)
			return commands[i];
	}

	return nullptr;
}

size_t ZRoom::GetDeclarationSizeFromNeighbor(int32_t declarationAddress)
{
	size_t declarationIndex = -1;

	// Copy it into a vector.
	vector<pair<int32_t, Declaration*>> declarationKeysSorted(parent->declarations.begin(),
	                                                          parent->declarations.end());

	// Sort the vector according to the word count in descending order.
	sort(declarationKeysSorted.begin(), declarationKeysSorted.end(),
	     [](const auto& lhs, const auto& rhs) { return lhs.first < rhs.first; });

	for (size_t i = 0; i < declarationKeysSorted.size(); i++)
	{
		if (declarationKeysSorted[i].first == declarationAddress)
		{
			declarationIndex = i;
			break;
		}
	}

	if ((int32_t)declarationIndex != -1)
	{
		if (declarationIndex + 1 < declarationKeysSorted.size())
			return declarationKeysSorted[declarationIndex + 1].first -
				   declarationKeysSorted[declarationIndex].first;
		else
			return rawData.size() - declarationKeysSorted[declarationIndex].first;
	}

	return 0;
}

size_t ZRoom::GetCommandSizeFromNeighbor(ZRoomCommand* cmd)
{
	int32_t cmdIndex = -1;

	for (size_t i = 0; i < commands.size(); i++)
	{
		if (commands[i] == cmd)
		{
			cmdIndex = i;
			break;
		}
	}

	if (cmdIndex != -1)
	{
		if (cmdIndex + 1 < (int32_t)commands.size())
			return commands[cmdIndex + 1]->cmdAddress - commands[cmdIndex]->cmdAddress;
		else
			return rawData.size() - commands[cmdIndex]->cmdAddress;
	}

	return 0;
}

string ZRoom::GetSourceOutputHeader(const std::string& prefix)
{
	sourceOutput = "";

	for (ZRoomCommand* cmd : commands)
		sourceOutput += cmd->GenerateExterns();

	sourceOutput += "\n";

	sourceOutput += "\n" + extDefines + "\n";
	sourceOutput += "\n";

	return sourceOutput;
}

string ZRoom::GetSourceOutputCode(const std::string& prefix)
{
	sourceOutput = "";

	sourceOutput += "#include \"segment_symbols.h\"\n";
	sourceOutput += "#include \"command_macros_base.h\"\n";
	sourceOutput += "#include \"z64cutscene_commands.h\"\n";
	sourceOutput += "#include \"variables.h\"\n";

	if (scene != nullptr)
		sourceOutput += scene->parent->GetHeaderInclude();

	// sourceOutput += "\n";

	ProcessCommandSets();

	// Check for texture intersections
	{
		string defines = "";
		if (textures.size() != 0)
		{
			vector<pair<uint32_t, ZTexture*>> texturesSorted(textures.begin(), textures.end());

			sort(texturesSorted.begin(), texturesSorted.end(),
			     [](const auto& lhs, const auto& rhs) { return lhs.first < rhs.first; });

			for (size_t i = 0; i < texturesSorted.size() - 1; i++)
			{
				int32_t texSize = textures[texturesSorted[i].first]->GetRawDataSize();

				if ((texturesSorted[i].first + texSize) > texturesSorted[i + 1].first)
				{
					// int32_t intersectAmt = (texturesSorted[i].first + texSize) - texturesSorted[i +
					// 1].first;

					defines += StringHelper::Sprintf(
						"#define %sTex_%06X ((u32)%sTex_%06X + 0x%06X)\n", prefix.c_str(),
						texturesSorted[i + 1].first, prefix.c_str(), texturesSorted[i].first,
						texturesSorted[i + 1].first - texturesSorted[i].first);

					parent->declarations.erase(texturesSorted[i + 1].first);
					textures.erase(texturesSorted[i + 1].first);
					texturesSorted.erase(texturesSorted.begin() + i + 1);

					i--;
				}
			}
		}

		parent->defines += defines;
	}

	for (pair<int32_t, ZTexture*> item : textures)
	{
		string declaration = "";

		declaration += item.second->GetSourceOutputCode(prefix);

		std::string outPath = item.second->GetPoolOutPath(Globals::Instance->outputPath);

		if (Globals::Instance->verbosity >= VERBOSITY_DEBUG)
			printf("SAVING IMAGE TO %s\n", outPath.c_str());

		item.second->Save(outPath);

		auto filepath = Globals::Instance->outputPath / Path::GetFileNameWithoutExtension(item.second->GetName());
		parent->AddDeclarationIncludeArray(
			item.first,
			StringHelper::Sprintf("%s.%s.inc.c", filepath.c_str(), item.second->GetExternalExtension().c_str()),
			item.second->GetRawDataSize(), "u64",
			StringHelper::Sprintf("%sTex_%06X", prefix.c_str(), item.first), 0);
	}

	return sourceOutput;
}

size_t ZRoom::GetRawDataSize()
{
	size_t size = 0;

	for (ZRoomCommand* cmd : commands)
		size += cmd->GetRawDataSize();

	return size;
}

ZResourceType ZRoom::GetResourceType()
{
	return ZResourceType::Room;
}

void ZRoom::Save(const std::string& outFolder)
{
	for (ZRoomCommand* cmd : commands)
		cmd->Save();
}

void ZRoom::PreGenSourceFiles()
{
	for (ZRoomCommand* cmd : commands)
		cmd->PreGenSourceFiles();
}

Declaration::Declaration(DeclarationAlignment nAlignment, DeclarationPadding nPadding,
                         size_t nSize, string nText)
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
	isExternal = false;
	references = vector<uint32_t>();
}

Declaration::Declaration(DeclarationAlignment nAlignment, size_t nSize, string nVarType,
                         string nVarName, bool nIsArray, string nText)
	: Declaration(nAlignment, DeclarationPadding::None, nSize, nText)
{
	varType = nVarType;
	varName = nVarName;
	isArray = nIsArray;
}

Declaration::Declaration(DeclarationAlignment nAlignment, DeclarationPadding nPadding,
                         size_t nSize, string nVarType, string nVarName, bool nIsArray,
                         string nText)
	: Declaration(nAlignment, nPadding, nSize, nText)
{
	varType = nVarType;
	varName = nVarName;
	isArray = nIsArray;
}

Declaration::Declaration(DeclarationAlignment nAlignment, size_t nSize, string nVarType,
                         string nVarName, bool nIsArray, size_t nArrayItemCnt, string nText)
	: Declaration(nAlignment, DeclarationPadding::None, nSize, nText)
{
	varType = nVarType;
	varName = nVarName;
	isArray = nIsArray;
	arrayItemCnt = nArrayItemCnt;
}

Declaration::Declaration(DeclarationAlignment nAlignment, size_t nSize, std::string nVarType,
                         std::string nVarName, bool nIsArray, size_t nArrayItemCnt, std::string nText,
                         bool nIsExternal)
	: Declaration(nAlignment, nSize, nVarType, nVarName, nIsArray, nArrayItemCnt, nText)
{
	isExternal = nIsExternal;
}

Declaration::Declaration(DeclarationAlignment nAlignment, DeclarationPadding nPadding,
                         size_t nSize, string nVarType, string nVarName, bool nIsArray,
                         size_t nArrayItemCnt, string nText)
	: Declaration(nAlignment, nPadding, nSize, nText)
{
	varType = nVarType;
	varName = nVarName;
	isArray = nIsArray;
	arrayItemCnt = nArrayItemCnt;
}

Declaration::Declaration(std::string nIncludePath, size_t nSize, string nVarType, string nVarName)
	: Declaration(DeclarationAlignment::None, DeclarationPadding::None, nSize, "")
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

CommandSet::CommandSet(int32_t nAddress, uint32_t nCommandCount)
{
	address = nAddress;
	commandCount = nCommandCount;
}
