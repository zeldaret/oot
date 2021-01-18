#include "Globals.h"
#include "File.h"
#include "tinyxml2.h"
#include <algorithm>

using namespace tinyxml2;
using namespace std;

Globals* Globals::Instance;

Globals::Globals()
{
	Instance = this;

	files = std::vector<ZFile*>();
	segments = std::vector<int>();
	symbolMap = std::map <uint32_t, std::string>();
	segmentRefs = map<int, string>();
	segmentRefFiles = map<int, ZFile*>();
	genSourceFile = true;
	testMode = false;
	profile = false;
	includeFilePrefix = false;
	useExternalResources = true;
	lastScene = nullptr;
	verbosity = VERBOSITY_SILENT;
}

string Globals::FindSymbolSegRef(int segNumber, uint32_t symbolAddress)
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

			//vector<ZFile*> files = vector<ZFile*>();

			for (XMLElement* child = root->FirstChildElement(); child != NULL; child = child->NextSiblingElement())
			{
				if (string(child->Name()) == "File")
				{
					ZFile* file = new ZFile(fileMode, child, "", "", true);
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
		return;

	XMLNode* root = doc.FirstChild();

	if (root == nullptr)
		return;

	for (XMLElement* child = root->FirstChildElement(); child != NULL; child = child->NextSiblingElement())
	{
		if (string(child->Name()) == "SymbolMap")
		{
			string fileName = string(child->Attribute("File"));
			GenSymbolMap(fileName);
		}
		else if (string(child->Name()) == "Segment")
		{
			string fileName = string(child->Attribute("File"));
			int segNumber = child->IntAttribute("Number");
			segmentRefs[segNumber] = fileName;
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

void Globals::AddSegment(int segment)
{
	if (std::find(segments.begin(), segments.end(), segment) == segments.end())
		segments.push_back(segment);
}

bool Globals::HasSegment(int segment)
{
	return std::find(segments.begin(), segments.end(), segment) != segments.end();
}
