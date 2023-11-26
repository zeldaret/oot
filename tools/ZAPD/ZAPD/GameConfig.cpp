#include "GameConfig.h"

#include <functional>
#include <string_view>
#include <unordered_map>

#include "Utils/Directory.h"
#include "Utils/File.h"
#include "Utils/Path.h"
#include "ZFile.h"
#include "tinyxml2.h"

using ConfigFunc = void (GameConfig::*)(const tinyxml2::XMLElement&);

GameConfig::~GameConfig()
{
	for (auto& declPair : segmentRefFiles)
	{
		for (auto& file : declPair.second)
		{
			delete file;
		}
	}
}

void GameConfig::ReadTexturePool(const fs::path& texturePoolXmlPath)
{
	tinyxml2::XMLDocument doc;
	tinyxml2::XMLError eResult = doc.LoadFile(texturePoolXmlPath.string().c_str());

	if (eResult != tinyxml2::XML_SUCCESS)
	{
		fprintf(stderr, "Warning: Unable to read texture pool XML with error code %i\n", eResult);
		return;
	}

	tinyxml2::XMLNode* root = doc.FirstChild();

	if (root == nullptr)
		return;

	for (tinyxml2::XMLElement* child = root->FirstChildElement(); child != nullptr;
	     child = child->NextSiblingElement())
	{
		if (std::string_view(child->Name()) == "Texture")
		{
			std::string crcStr = child->Attribute("CRC");
			fs::path texPath = child->Attribute("Path");
			std::string texName;

			uint32_t crc = strtoul(crcStr.c_str(), nullptr, 16);

			texturePool[crc].path = texPath;
		}
	}
}

void GameConfig::GenSymbolMap(const fs::path& symbolMapPath)
{
	auto symbolLines = File::ReadAllLines(symbolMapPath);

	for (std::string& symbolLine : symbolLines)
	{
		auto split = StringHelper::Split(symbolLine, " ");
		uint32_t addr = strtoul(split[0].c_str(), nullptr, 16);
		std::string symbolName = split[1];

		symbolMap[addr] = std::move(symbolName);
	}
}

void GameConfig::ConfigFunc_SymbolMap(const tinyxml2::XMLElement& element)
{
	std::string fileName = element.Attribute("File");
	GenSymbolMap(Path::GetDirectoryName(configFilePath) / fileName);
}

void GameConfig::ConfigFunc_ActorList(const tinyxml2::XMLElement& element)
{
	std::string fileName = element.Attribute("File");
	std::vector<std::string> lines =
		File::ReadAllLines(Path::GetDirectoryName(configFilePath) / fileName);

	for (auto& line : lines)
		actorList.emplace_back(std::move(line));
}

void GameConfig::ConfigFunc_ObjectList(const tinyxml2::XMLElement& element)
{
	std::string fileName = element.Attribute("File");
	std::vector<std::string> lines =
		File::ReadAllLines(Path::GetDirectoryName(configFilePath) / fileName);

	for (auto& line : lines)
		objectList.emplace_back(std::move(line));
}

void GameConfig::ConfigFunc_EntranceList(const tinyxml2::XMLElement& element)
{
	std::string fileName = element.Attribute("File");
	std::vector<std::string> lines =
		File::ReadAllLines(Path::GetDirectoryName(configFilePath) / fileName);

	for (auto& line : lines)
		entranceList.emplace_back(std::move(line));
}

void GameConfig::ConfigFunc_specialEntranceList(const tinyxml2::XMLElement& element)
{
	std::string fileName = element.Attribute("File");
	std::vector<std::string> lines =
		File::ReadAllLines(Path::GetDirectoryName(configFilePath) / fileName);

	for (auto& line : lines)
		specialEntranceList.emplace_back(std::move(line));
}

void GameConfig::ConfigFunc_TexturePool(const tinyxml2::XMLElement& element)
{
	std::string fileName = element.Attribute("File");
	ReadTexturePool(Path::GetDirectoryName(configFilePath) / fileName);
}

void GameConfig::ConfigFunc_BGConfig(const tinyxml2::XMLElement& element)
{
	bgScreenWidth = element.IntAttribute("ScreenWidth", 320);
	bgScreenHeight = element.IntAttribute("ScreenHeight", 240);
	useScreenWidthHeightConstants = element.BoolAttribute("UseScreenWidthHeightConstants", true);
}

void GameConfig::ConfigFunc_ExternalXMLFolder(const tinyxml2::XMLElement& element)
{
	const char* pathValue = element.Attribute("Path");
	if (pathValue == nullptr)
	{
		throw std::runtime_error(
			StringHelper::Sprintf("Parse: Fatal error in configuration file.\n"
		                          "\t Missing 'Path' attribute in `ExternalXMLFolder` element.\n"));
	}
	if (externalXmlFolder != "")
	{
		throw std::runtime_error(StringHelper::Sprintf("Parse: Fatal error in configuration file.\n"
		                                               "\t `ExternalXMLFolder` is duplicated.\n"));
	}
	externalXmlFolder = pathValue;
}

void GameConfig::ConfigFunc_ExternalFile(const tinyxml2::XMLElement& element)
{
	const char* xmlPathValue = element.Attribute("XmlPath");
	if (xmlPathValue == nullptr)
	{
		throw std::runtime_error(
			StringHelper::Sprintf("Parse: Fatal error in configuration file.\n"
		                          "\t Missing 'XmlPath' attribute in `ExternalFile` element.\n"));
	}
	const char* outPathValue = element.Attribute("OutPath");
	if (outPathValue == nullptr)
	{
		throw std::runtime_error(
			StringHelper::Sprintf("Parse: Fatal error in configuration file.\n"
		                          "\t Missing 'OutPath' attribute in `ExternalFile` element.\n"));
	}

	externalFiles.push_back(ExternalFile(fs::path(xmlPathValue), fs::path(outPathValue)));
}

void GameConfig::ConfigFunc_EnumData(const tinyxml2::XMLElement& element)
{
	std::string path = Path::GetDirectoryName(configFilePath);
	path = path.append("/").append(element.Attribute("File"));
	tinyxml2::XMLDocument doc;
	tinyxml2::XMLError eResult = doc.LoadFile(path.c_str());

	if (eResult != tinyxml2::XML_SUCCESS)
	{
		throw std::runtime_error("Error: Unable to read enum data.");
	}

	tinyxml2::XMLNode* root = doc.FirstChild();

	if (root == nullptr)
		return;

	for (tinyxml2::XMLElement* csEnum = root->FirstChildElement(); csEnum != nullptr;
	     csEnum = csEnum->NextSiblingElement())
	{
		for (tinyxml2::XMLElement* item = csEnum->FirstChildElement(); item != nullptr;
		     item = item->NextSiblingElement())
		{
			std::string enumKey = csEnum->Attribute("Key");
			uint16_t itemIndex = atoi(item->Attribute("Index"));
			const char* itemID = item->Attribute("ID");

			// Common
			if (enumKey == "cmd")
				enumData.cutsceneCmd[itemIndex] = itemID;

			else if (enumKey == "miscType")
				enumData.miscType[itemIndex] = itemID;

			else if (enumKey == "textType")
				enumData.textType[itemIndex] = itemID;

			else if (enumKey == "fadeOutSeqPlayer")
				enumData.fadeOutSeqPlayer[itemIndex] = itemID;

			else if (enumKey == "transitionType")
				enumData.transitionType[itemIndex] = itemID;

			else if (enumKey == "destination")
				enumData.destination[itemIndex] = itemID;

			else if (enumKey == "naviQuestHintType")
				enumData.naviQuestHintType[itemIndex] = itemID;

			// MM
			else if (enumKey == "modifySeqType")
				enumData.modifySeqType[itemIndex] = itemID;

			else if (enumKey == "chooseCreditsSceneType")
				enumData.chooseCreditsSceneType[itemIndex] = itemID;

			else if (enumKey == "destinationType")
				enumData.destinationType[itemIndex] = itemID;

			else if (enumKey == "motionBlurType")
				enumData.motionBlurType[itemIndex] = itemID;

			else if (enumKey == "transitionGeneralType")
				enumData.transitionGeneralType[itemIndex] = itemID;

			else if (enumKey == "rumbleType")
				enumData.rumbleType[itemIndex] = itemID;

			else if (enumKey == "spawnFlag")
				enumData.spawnFlag[itemIndex] = itemID;

			else if (enumKey == "endSfx")
				enumData.endSfx[itemIndex] = itemID;
		}
	}
}

void GameConfig::ReadConfigFile(const fs::path& argConfigFilePath)
{
	static const std::unordered_map<std::string, ConfigFunc> ConfigFuncDictionary = {
		{"SymbolMap", &GameConfig::ConfigFunc_SymbolMap},
		{"ActorList", &GameConfig::ConfigFunc_ActorList},
		{"ObjectList", &GameConfig::ConfigFunc_ObjectList},
		{"EntranceList", &GameConfig::ConfigFunc_EntranceList},
		{"SpecialEntranceList", &GameConfig::ConfigFunc_specialEntranceList},
		{"TexturePool", &GameConfig::ConfigFunc_TexturePool},
		{"BGConfig", &GameConfig::ConfigFunc_BGConfig},
		{"EnumData", &GameConfig::ConfigFunc_EnumData},
		{"ExternalXMLFolder", &GameConfig::ConfigFunc_ExternalXMLFolder},
		{"ExternalFile", &GameConfig::ConfigFunc_ExternalFile},
	};

	configFilePath = argConfigFilePath.string();
	tinyxml2::XMLDocument doc;
	tinyxml2::XMLError eResult = doc.LoadFile(configFilePath.c_str());

	if (eResult != tinyxml2::XML_SUCCESS)
	{
		throw std::runtime_error("Error: Unable to read config file.");
	}

	tinyxml2::XMLNode* root = doc.FirstChild();

	if (root == nullptr)
		return;

	for (tinyxml2::XMLElement* child = root->FirstChildElement(); child != nullptr;
	     child = child->NextSiblingElement())
	{
		auto it = ConfigFuncDictionary.find(child->Name());
		if (it == ConfigFuncDictionary.end())
		{
			fprintf(stderr, "Unsupported configuration variable: %s\n", child->Name());
			continue;
		}

		std::invoke(it->second, *this, *child);
	}
}
