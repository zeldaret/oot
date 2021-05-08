#include "Globals.h"
#include <algorithm>
#include "File.h"
#include "Path.h"
#include "tinyxml2.h"

using namespace tinyxml2;
using namespace std;

Globals* Globals::Instance;

Globals::Globals()
{
	Instance = this;

	files = std::vector<ZFile*>();
	segments = std::vector<int32_t>();
	symbolMap = std::map<uint32_t, std::string>();
	segmentRefs = map<int32_t, string>();
	segmentRefFiles = map<int32_t, ZFile*>();
	game = ZGame::OOT_RETAIL;
	genSourceFile = true;
	testMode = false;
	profile = false;
	includeFilePrefix = false;
	useLegacyZDList = false;
	useExternalResources = true;
	lastScene = nullptr;
	verbosity = VERBOSITY_SILENT;
}

string Globals::FindSymbolSegRef(int32_t segNumber, uint32_t symbolAddress)
{
	if (segmentRefs.find(segNumber) != segmentRefs.end())
	{
		if (segmentRefFiles.find(segNumber) == segmentRefFiles.end())
		{
			XMLDocument doc;
			string filePath = segmentRefs[segNumber];
			XMLError eResult = doc.LoadFile(filePath.c_str());

			if (eResult != tinyxml2::XML_SUCCESS)
				return "ERROR";

			XMLNode* root = doc.FirstChild();

			if (root == nullptr)
				return "ERROR";

			// vector<ZFile*> files = vector<ZFile*>();

			for (XMLElement* child = root->FirstChildElement(); child != NULL;
			     child = child->NextSiblingElement())
			{
				if (string(child->Name()) == "File")
				{
					ZFile* file = new ZFile(fileMode, child, "", "", "", "", true);
					file->GeneratePlaceholderDeclarations();
					segmentRefFiles[segNumber] = file;
					break;
				}
			}
		}

		return segmentRefFiles[segNumber]->GetDeclarationName(symbolAddress, "ERROR");
	}

	return "ERROR";
}

void Globals::ReadConfigFile(const std::string& configFilePath)
{
	XMLDocument doc;
	XMLError eResult = doc.LoadFile(configFilePath.c_str());

	if (eResult != tinyxml2::XML_SUCCESS)
	{
		throw std::runtime_error("Error: Unable to read config file.");
		return;
	}

	XMLNode* root = doc.FirstChild();

	if (root == nullptr)
		return;

	for (XMLElement* child = root->FirstChildElement(); child != NULL;
	     child = child->NextSiblingElement())
	{
		if (string(child->Name()) == "SymbolMap")
		{
			string fileName = string(child->Attribute("File"));
			GenSymbolMap(Path::GetDirectoryName(configFilePath) + "/" + fileName);
		}
		else if (string(child->Name()) == "Segment")
		{
			string fileName = string(child->Attribute("File"));
			int32_t segNumber = child->IntAttribute("Number");
			segmentRefs[segNumber] = fileName;
		}
		else if (string(child->Name()) == "ActorList")
		{
			string fileName = string(child->Attribute("File"));
			std::vector<std::string> lines =
				File::ReadAllLines(Path::GetDirectoryName(configFilePath) + "/" + fileName);

			for (std::string line : lines)
				cfg.actorList.push_back(StringHelper::Strip(line, "\r"));
		}
		else if (string(child->Name()) == "ObjectList")
		{
			string fileName = string(child->Attribute("File"));
			std::vector<std::string> lines =
				File::ReadAllLines(Path::GetDirectoryName(configFilePath) + "/" + fileName);

			for (std::string line : lines)
				cfg.objectList.push_back(StringHelper::Strip(line, "\r"));
		}
		else if (string(child->Name()) == "TexturePool")
		{
			string fileName = string(child->Attribute("File"));
			ReadTexturePool(Path::GetDirectoryName(configFilePath) + "/" + fileName);
		}
		else if (string(child->Name()) == "BGConfig")
		{
			cfg.bgScreenWidth = child->IntAttribute("ScreenWidth", 320);
			cfg.bgScreenHeight = child->IntAttribute("ScreenHeight", 240);
		}
	}
}

void Globals::ReadTexturePool(const std::string& texturePoolXmlPath)
{
	XMLDocument doc;
	XMLError eResult = doc.LoadFile(texturePoolXmlPath.c_str());

	if (eResult != tinyxml2::XML_SUCCESS)
	{
		fprintf(stderr, "Warning: Unable to read texture pool XML with error code %i\n", eResult);
		return;
	}

	XMLNode* root = doc.FirstChild();

	if (root == nullptr)
		return;

	for (XMLElement* child = root->FirstChildElement(); child != NULL;
	     child = child->NextSiblingElement())
	{
		if (string(child->Name()) == "Texture")
		{
			string crcStr = string(child->Attribute("CRC"));
			string texPath = string(child->Attribute("Path"));
			string texName = "";

			uint32_t crc = strtoul(crcStr.c_str(), NULL, 16);

			cfg.texturePool[crc].path = texPath;
		}
	}
}

void Globals::GenSymbolMap(const std::string& symbolMapPath)
{
	auto symbolLines = File::ReadAllLines(symbolMapPath);

	for (std::string symbolLine : symbolLines)
	{
		auto split = StringHelper::Split(symbolLine, " ");
		uint32_t addr = strtoul(split[0].c_str(), NULL, 16);
		std::string symbolName = split[1];

		symbolMap[addr] = symbolName;
	}
}

void Globals::AddSegment(int32_t segment)
{
	if (std::find(segments.begin(), segments.end(), segment) == segments.end())
		segments.push_back(segment);
}

bool Globals::HasSegment(int32_t segment)
{
	return std::find(segments.begin(), segments.end(), segment) != segments.end();
}
