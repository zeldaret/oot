#include "GameConfig.h"

#include <functional>
#include <string_view>
#include "Utils/Directory.h"
#include "Utils/File.h"
#include "Utils/Path.h"
#include "tinyxml2.h"

using ConfigFunc = void (GameConfig::*)(const tinyxml2::XMLElement&);

void GameConfig::ReadTexturePool(const std::string& texturePoolXmlPath)
{
	tinyxml2::XMLDocument doc;
	tinyxml2::XMLError eResult = doc.LoadFile(texturePoolXmlPath.c_str());

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

void GameConfig::GenSymbolMap(const std::string& symbolMapPath)
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
	GenSymbolMap(Path::GetDirectoryName(configFilePath) + "/" + fileName);
}

void GameConfig::ConfigFunc_Segment(const tinyxml2::XMLElement& element)
{
	std::string fileName = element.Attribute("File");
	int32_t segNumber = element.IntAttribute("Number");
	segmentRefs[segNumber] = std::move(fileName);
}

void GameConfig::ConfigFunc_ActorList(const tinyxml2::XMLElement& element)
{
	std::string fileName = element.Attribute("File");
	std::vector<std::string> lines =
		File::ReadAllLines(Path::GetDirectoryName(configFilePath) + "/" + fileName);

	for (auto& line : lines)
		actorList.emplace_back(std::move(line));
}

void GameConfig::ConfigFunc_ObjectList(const tinyxml2::XMLElement& element)
{
	std::string fileName = element.Attribute("File");
	std::vector<std::string> lines =
		File::ReadAllLines(Path::GetDirectoryName(configFilePath) + "/" + fileName);

	for (auto& line : lines)
		objectList.emplace_back(std::move(line));
}

void GameConfig::ConfigFunc_TexturePool(const tinyxml2::XMLElement& element)
{
	std::string fileName = element.Attribute("File");
	ReadTexturePool(Path::GetDirectoryName(configFilePath) + "/" + fileName);
}

void GameConfig::ConfigFunc_BGConfig(const tinyxml2::XMLElement& element)
{
	bgScreenWidth = element.IntAttribute("ScreenWidth", 320);
	bgScreenHeight = element.IntAttribute("ScreenHeight", 240);
}

void GameConfig::ReadConfigFile(const std::string& argConfigFilePath)
{
	static const std::map<std::string, ConfigFunc> ConfigFuncDictionary = {
		{"SymbolMap", &GameConfig::ConfigFunc_SymbolMap},
		{"Segment", &GameConfig::ConfigFunc_Segment},
		{"ActorList", &GameConfig::ConfigFunc_ActorList},
		{"ObjectList", &GameConfig::ConfigFunc_ObjectList},
		{"TexturePool", &GameConfig::ConfigFunc_TexturePool},
		{"BGConfig", &GameConfig::ConfigFunc_BGConfig},
	};

	configFilePath = argConfigFilePath;
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
