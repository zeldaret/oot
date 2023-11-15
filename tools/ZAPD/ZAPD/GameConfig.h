#pragma once

#include <cstdint>
#include <map>
#include <string>
#include <vector>

#include "Utils/Directory.h"
#include "tinyxml2.h"

struct TexturePoolEntry
{
	fs::path path = "";  // Path to Shared Texture
};

class ExternalFile
{
public:
	fs::path xmlPath, outPath;

	ExternalFile(fs::path nXmlPath, fs::path nOutPath);
};

// Stores data from the XML file, the integer is the index (via ATOI) and the string is the value
class EnumData
{
public:
	// Common
	std::map<uint16_t, std::string> cutsceneCmd;
	std::map<uint16_t, std::string> miscType;
	std::map<uint16_t, std::string> fadeOutSeqPlayer;
	std::map<uint16_t, std::string> transitionType;
	std::map<uint16_t, std::string> naviQuestHintType;

	// OoT
	std::map<uint16_t, std::string> textType;
	std::map<uint16_t, std::string> destination;

	// MM
	std::map<uint16_t, std::string> modifySeqType;
	std::map<uint16_t, std::string> chooseCreditsSceneType;
	std::map<uint16_t, std::string> destinationType;
	std::map<uint16_t, std::string> motionBlurType;
	std::map<uint16_t, std::string> transitionGeneralType;
	std::map<uint16_t, std::string> rumbleType;
	std::map<uint8_t, std::string> spawnFlag;
	std::map<uint8_t, std::string> endSfx;
};

class ZFile;

class GameConfig
{
public:
	std::string configFilePath;
	std::map<int32_t, std::vector<ZFile*>> segmentRefFiles;
	std::map<uint32_t, std::string> symbolMap;
	std::vector<std::string> actorList;
	std::vector<std::string> objectList;
	std::vector<std::string> entranceList;
	std::vector<std::string> specialEntranceList;
	std::map<uint32_t, TexturePoolEntry> texturePool;  // Key = CRC
	EnumData enumData;

	// ZBackground
	uint32_t bgScreenWidth = 320, bgScreenHeight = 240;
	bool useScreenWidthHeightConstants = true;  // If true, ZBackground's will be declared with
	                                            // SCREEN_WIDTH * SCREEN_HEIGHT in the C file

	// ExternalFile
	fs::path externalXmlFolder;
	std::vector<ExternalFile> externalFiles;

	GameConfig() = default;
	~GameConfig();

	void ReadTexturePool(const fs::path& texturePoolXmlPath);
	void GenSymbolMap(const fs::path& symbolMapPath);

	void ConfigFunc_SymbolMap(const tinyxml2::XMLElement& element);
	void ConfigFunc_ActorList(const tinyxml2::XMLElement& element);
	void ConfigFunc_ObjectList(const tinyxml2::XMLElement& element);
	void ConfigFunc_EntranceList(const tinyxml2::XMLElement& element);
	void ConfigFunc_specialEntranceList(const tinyxml2::XMLElement& element);
	void ConfigFunc_TexturePool(const tinyxml2::XMLElement& element);
	void ConfigFunc_BGConfig(const tinyxml2::XMLElement& element);
	void ConfigFunc_ExternalXMLFolder(const tinyxml2::XMLElement& element);
	void ConfigFunc_ExternalFile(const tinyxml2::XMLElement& element);
	void ConfigFunc_EnumData(const tinyxml2::XMLElement& element);

	void ReadConfigFile(const fs::path& configFilePath);
};
