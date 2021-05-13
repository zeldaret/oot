#pragma once

#include <tinyxml2.h>
#include "../ZResource.h"
#include "ZRoomCommand.h"
#include "ZTexture.h"

#include <map>
#include <string>
#include <vector>

class ZRoom : public ZResource
{
protected:
	std::vector<ZRoomCommand*> commands;

	std::string GetSourceOutputHeader(const std::string& prefix) override;
	std::string GetSourceOutputCode(const std::string& prefix) override;
	void ProcessCommandSets();
	void SyotesRoomHack();

public:
	ZRoom* scene;
	std::map<int32_t, ZTexture*> textures;
	std::vector<CommandSet> commandSets;
	int32_t roomCount;  // Only valid for scenes

	std::string extDefines;

	ZRoom(ZFile* nParent);
	virtual ~ZRoom();

	void ExtractFromXML(tinyxml2::XMLElement* reader, const std::vector<uint8_t>& nRawData,
	                    const uint32_t nRawDataIndex, const std::string& nRelPath) override;
	void ParseCommands(std::vector<ZRoomCommand*>& commandList, CommandSet commandSet);
	size_t GetDeclarationSizeFromNeighbor(int32_t declarationAddress);
	size_t GetCommandSizeFromNeighbor(ZRoomCommand* cmd);
	ZRoomCommand* FindCommandOfType(RoomCommand cmdType);
	size_t GetRawDataSize() override;
	virtual ZResourceType GetResourceType() override;
	virtual void Save(const std::string& outFolder) override;
	virtual void PreGenSourceFiles() override;
};

struct CommandSet
{
	int32_t address;
	uint32_t commandCount;  // Only used if explicitly specified in the XML

	CommandSet(int32_t nAddress);
	CommandSet(int32_t nAddress, uint32_t nCommandCount);
};
