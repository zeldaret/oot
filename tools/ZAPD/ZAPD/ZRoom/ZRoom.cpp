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
#include "Commands/SetAnimatedMaterialList.h"
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

using namespace tinyxml2;

REGISTER_ZFILENODE(Room, ZRoom);
REGISTER_ZFILENODE(Scene, ZRoom);

ZRoom::ZRoom(ZFile* nParent) : ZResource(nParent)
{
	roomCount = -1;
	canHaveInner = true;
	RegisterOptionalAttribute("HackMode");
}

ZRoom::~ZRoom()
{
	for (ZRoomCommand* cmd : commands)
		delete cmd;
}

void ZRoom::ExtractFromXML(tinyxml2::XMLElement* reader, uint32_t nRawDataIndex)
{
	ZResource::ExtractFromXML(reader, nRawDataIndex);

	scene = Globals::Instance->lastScene;

	if (std::string(reader->Name()) == "Scene")
	{
		scene = this;
		Globals::Instance->lastScene = this;
	}

	uint32_t cmdCount = UINT32_MAX;

	if (name == "syotes_room_0")
	{
		SyotesRoomHack();
		cmdCount = 0;
	}

	for (XMLElement* child = reader->FirstChildElement(); child != nullptr;
	     child = child->NextSiblingElement())
	{
		std::string childName =
			child->Attribute("Name") == NULL ? "" : std::string(child->Attribute("Name"));
		std::string childComment = child->Attribute("Comment") == NULL ?
                                       "" :
                                       "// " + std::string(child->Attribute("Comment")) + "\n";

		// TODO: Bunch of repeated code between all of these that needs to be combined.
		if (std::string(child->Name()) == "DListHint")
		{
			std::string addressStr = child->Attribute("Offset");
			int32_t address = strtol(StringHelper::Split(addressStr, "0x")[1].c_str(), NULL, 16);

			ZDisplayList* dList = new ZDisplayList(
				address,
				ZDisplayList::GetDListLength(parent->GetRawData(), address,
			                                 Globals::Instance->game == ZGame::OOT_SW97 ?
                                                 DListType::F3DEX :
                                                 DListType::F3DZEX),
				parent);
			dList->SetInnerNode(true);

			dList->GetSourceOutputCode(name);
			delete dList;
		}
		else if (std::string(child->Name()) == "CutsceneHint")
		{
			std::string addressStr = child->Attribute("Offset");
			int32_t address = strtol(StringHelper::Split(addressStr, "0x")[1].c_str(), NULL, 16);

			ZCutscene* cutscene = new ZCutscene(parent);
			cutscene->SetInnerNode(true);
			cutscene->ExtractFromXML(child, address);

			cutscene->GetSourceOutputCode(name);

			delete cutscene;
		}
		else if (std::string(child->Name()) == "AltHeaderHint")
		{
			std::string addressStr = child->Attribute("Offset");
			int32_t address = strtol(StringHelper::Split(addressStr, "0x")[1].c_str(), NULL, 16);

			uint32_t commandsCount = UINT32_MAX;

			if (child->FindAttribute("Count") != NULL)
			{
				std::string commandCountStr = child->Attribute("Count");
				commandsCount = strtol(commandCountStr.c_str(), NULL, 10);
			}

			commandSets.push_back(CommandSet(address, commandsCount));
		}
		else if (std::string(child->Name()) == "PathHint")
		{
			std::string addressStr = child->Attribute("Offset");
			int32_t address = strtol(StringHelper::Split(addressStr, "0x")[1].c_str(), NULL, 16);

			// TODO: add this to command set
			ZPath* pathway = new ZPath(parent);
			pathway->SetInnerNode(true);
			pathway->SetRawDataIndex(address);
			pathway->ParseRawData();
			pathway->DeclareReferences(name);
			pathway->GetSourceOutputCode(name);

			delete pathway;
		}

#ifdef DEPRECATION_ON
		fprintf(stderr,
		        "ZRoom::ExtractFromXML: Deprecation warning in '%s'.\n"
		        "\t The resource '%s' is currently deprecated, and will be removed in a future "
		        "version.\n"
		        "\t Use the non-hint version instead.\n",
		        name.c_str(), child->Name());
#endif
	}

	commandSets.push_back(CommandSet(rawDataIndex, cmdCount));
	ProcessCommandSets();
}

void ZRoom::ParseCommands(std::vector<ZRoomCommand*>& commandList, CommandSet commandSet)
{
	bool shouldContinue = true;
	uint32_t currentIndex = 0;
	uint32_t rawDataIndex = GETSEGOFFSET(commandSet.address);

	uint32_t commandsLeft = commandSet.commandCount;

	const auto& rawData = parent->GetRawData();
	while (shouldContinue)
	{
		if (commandsLeft <= 0)
			break;

		RoomCommand opcode = static_cast<RoomCommand>(rawData.at(rawDataIndex));

		ZRoomCommand* cmd = nullptr;

		auto start = std::chrono::steady_clock::now();

		switch (opcode)
		{
		case RoomCommand::SetStartPositionList:
			cmd = new SetStartPositionList(parent);
			break;  // 0x00
		case RoomCommand::SetActorList:
			cmd = new SetActorList(parent);
			break;  // 0x01
		case RoomCommand::SetCsCamera:
			cmd = new SetCsCamera(parent);
			break;  // 0x02 (MM-ONLY)
		case RoomCommand::SetCollisionHeader:
			cmd = new SetCollisionHeader(parent);
			break;  // 0x03
		case RoomCommand::SetRoomList:
			cmd = new SetRoomList(parent);
			break;  // 0x04
		case RoomCommand::SetWind:
			cmd = new SetWind(parent);
			break;  // 0x05
		case RoomCommand::SetEntranceList:
			cmd = new SetEntranceList(parent);
			break;  // 0x06
		case RoomCommand::SetSpecialObjects:
			cmd = new SetSpecialObjects(parent);
			break;  // 0x07
		case RoomCommand::SetRoomBehavior:
			cmd = new SetRoomBehavior(parent);
			break;  // 0x08
		case RoomCommand::Unused09:
			cmd = new Unused09(parent);
			break;  // 0x09
		case RoomCommand::SetMesh:
			cmd = new SetMesh(parent);
			break;  // 0x0A
		case RoomCommand::SetObjectList:
			cmd = new SetObjectList(parent);
			break;  // 0x0B
		case RoomCommand::SetLightList:
			cmd = new SetLightList(parent);
			break;  // 0x0C (MM-ONLY)
		case RoomCommand::SetPathways:
			cmd = new SetPathways(parent);
			break;  // 0x0D
		case RoomCommand::SetTransitionActorList:
			cmd = new SetTransitionActorList(parent);
			break;  // 0x0E
		case RoomCommand::SetLightingSettings:
			cmd = new SetLightingSettings(parent);
			break;  // 0x0F
		case RoomCommand::SetTimeSettings:
			cmd = new SetTimeSettings(parent);
			break;  // 0x10
		case RoomCommand::SetSkyboxSettings:
			cmd = new SetSkyboxSettings(parent);
			break;  // 0x11
		case RoomCommand::SetSkyboxModifier:
			cmd = new SetSkyboxModifier(parent);
			break;  // 0x12
		case RoomCommand::SetExitList:
			cmd = new SetExitList(parent);
			break;  // 0x13
		case RoomCommand::EndMarker:
			cmd = new EndMarker(parent);
			break;  // 0x14
		case RoomCommand::SetSoundSettings:
			cmd = new SetSoundSettings(parent);
			break;  // 0x15
		case RoomCommand::SetEchoSettings:
			cmd = new SetEchoSettings(parent);
			break;  // 0x16
		case RoomCommand::SetCutscenes:
			cmd = new SetCutscenes(parent);
			break;  // 0x17
		case RoomCommand::SetAlternateHeaders:
			cmd = new SetAlternateHeaders(parent);
			break;  // 0x18
		case RoomCommand::SetCameraSettings:
			if (Globals::Instance->game == ZGame::MM_RETAIL)
				cmd = new SetWorldMapVisited(parent);
			else
				cmd = new SetCameraSettings(parent);
			break;  // 0x19
		case RoomCommand::SetAnimatedMaterialList:
			cmd = new SetAnimatedMaterialList(parent);
			break;  // 0x1A (MM-ONLY)
		case RoomCommand::SetActorCutsceneList:
			cmd = new SetActorCutsceneList(parent);
			break;  // 0x1B (MM-ONLY)
		case RoomCommand::SetMinimapList:
			cmd = new SetMinimapList(parent);
			break;  // 0x1C (MM-ONLY)
		case RoomCommand::Unused1D:
			cmd = new Unused1D(parent);
			break;  // 0x1D
		case RoomCommand::SetMinimapChests:
			cmd = new SetMinimapChests(parent);
			break;  // 0x1E (MM-ONLY)
		default:
			cmd = new ZRoomCommandUnk(parent);
		}

		cmd->ExtractCommandFromRoom(this, rawDataIndex);
		cmd->DeclareReferences(GetName());

		if (Globals::Instance->profile)
		{
			auto end = std::chrono::steady_clock::now();
			auto diff = std::chrono::duration_cast<std::chrono::milliseconds>(end - start).count();
			if (diff > 50)
				printf("OP: %s, TIME: %lims\n", cmd->GetCommandCName().c_str(), diff);
		}

		cmd->cmdIndex = currentIndex;

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

		for (auto& cmd : setCommands)
		{
			cmd->ParseRawDataLate();
			cmd->DeclareReferencesLate(name);
		}

		if (!setCommands.empty())
		{
			std::string declaration = "";

			for (size_t i = 0; i < setCommands.size(); i++)
			{
				ZRoomCommand* cmd = setCommands[i];
				cmd->commandSet = GETSEGOFFSET(commandSet);
				declaration += StringHelper::Sprintf("\t%s,", cmd->GetBodySourceCode().c_str());

				if (i + 1 < setCommands.size())
					declaration += "\n";
			}

			parent->AddDeclarationArray(
				GETSEGOFFSET(commandSet), DeclarationAlignment::Align16, 8 * setCommands.size(),
				"static SCmdBase",
				StringHelper::Sprintf("%sSet%04X", name.c_str(), GETSEGOFFSET(commandSet)),
				setCommands.size(), declaration);

			sourceOutput += "\n";

			for (ZRoomCommand* cmd : setCommands)
				commands.push_back(cmd);
		}
	}
}

/*
 * There is one room in Ocarina of Time that lacks a header. Room 120, "Syotes", dates back to very
 * early in the game's development. Since this room is a special case, this hack adds back a header
 * so that the room can be processed properly.
 */
void ZRoom::SyotesRoomHack()
{
	PolygonType2 poly(parent, parent->GetRawData(), 0, this);

	poly.ParseRawData();
	poly.DeclareReferences(GetName());
	parent->AddDeclaration(0, DeclarationAlignment::Align4, poly.GetRawDataSize(),
	                       poly.GetSourceTypeName(), poly.GetDefaultName(GetName()),
	                       poly.GetBodySourceCode());
}

ZRoomCommand* ZRoom::FindCommandOfType(RoomCommand cmdType)
{
	for (size_t i = 0; i < commands.size(); i++)
	{
		if (commands[i]->GetRoomCommand() == cmdType)
			return commands[i];
	}

	return nullptr;
}

size_t ZRoom::GetDeclarationSizeFromNeighbor(uint32_t declarationAddress)
{
	auto currentDecl = parent->declarations.find(declarationAddress);
	if (currentDecl == parent->declarations.end())
		return 0;

	auto nextDecl = currentDecl;
	std::advance(nextDecl, 1);
	if (nextDecl == parent->declarations.end())
		return parent->GetRawData().size() - currentDecl->first;

	return nextDecl->first - currentDecl->first;
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
			return parent->GetRawData().size() - commands[cmdIndex]->cmdAddress;
	}

	return 0;
}

std::string ZRoom::GetSourceOutputHeader(const std::string& prefix)
{
	return "\n" + extDefines + "\n\n";
}

std::string ZRoom::GetSourceOutputCode(const std::string& prefix)
{
	sourceOutput = "";

	sourceOutput += "#include \"segment_symbols.h\"\n";
	sourceOutput += "#include \"command_macros_base.h\"\n";
	sourceOutput += "#include \"z64cutscene_commands.h\"\n";
	sourceOutput += "#include \"variables.h\"\n";

	if (scene != nullptr)
		sourceOutput += scene->parent->GetHeaderInclude();

	ProcessCommandSets();

	return sourceOutput;
}

size_t ZRoom::GetRawDataSize() const
{
	size_t size = 0;

	for (ZRoomCommand* cmd : commands)
		size += cmd->GetRawDataSize();

	return size;
}

ZResourceType ZRoom::GetResourceType() const
{
	return ZResourceType::Room;
}

void ZRoom::PreGenSourceFiles()
{
	for (ZRoomCommand* cmd : commands)
		cmd->PreGenSourceFiles();
}

/* CommandSet */

CommandSet::CommandSet(uint32_t nAddress, uint32_t nCommandCount)
{
	address = nAddress;
	commandCount = nCommandCount;
}
