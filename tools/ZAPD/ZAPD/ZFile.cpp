#include "ZFile.h"
#include <algorithm>
#include <cassert>
#include "Directory.h"
#include "File.h"
#include "Globals.h"
#include "HighLevel/HLModelIntermediette.h"
#include "Path.h"
#include "ZAnimation.h"
#include "ZArray.h"
#include "ZBackground.h"
#include "ZBlob.h"
#include "ZCollision.h"
#include "ZCutscene.h"
#include "ZDisplayList.h"
#include "ZLimb.h"
#include "ZMtx.h"
#include "ZRoom/ZRoom.h"
#include "ZScalar.h"
#include "ZSkeleton.h"
#include "ZSymbol.h"
#include "ZTexture.h"
#include "ZVector.h"
#include "ZVtx.h"

using namespace tinyxml2;
using namespace std;

ZFile::ZFile()
{
	resources = vector<ZResource*>();
	basePath = "";
	outputPath = Directory::GetCurrentDirectory();
	declarations = map<uint32_t, Declaration*>();
	defines = "";
	baseAddress = 0;
	rangeStart = 0x000000000;
	rangeEnd = 0xFFFFFFFF;
}

ZFile::ZFile(string nOutPath, string nName) : ZFile()
{
	outputPath = nOutPath;
	name = nName;
}

ZFile::ZFile(ZFileMode mode, XMLElement* reader, string nBasePath, string nOutPath,
             std::string filename, bool placeholderMode)
	: ZFile()
{
	if (nBasePath == "")
		basePath = Directory::GetCurrentDirectory();
	else
		basePath = nBasePath;

	if (nOutPath == "")
		outputPath = Directory::GetCurrentDirectory();
	else
		outputPath = nOutPath;

	ParseXML(mode, reader, filename, placeholderMode);
}

ZFile::~ZFile()
{
	for (ZResource* res : resources)
		delete res;
}

void ZFile::ParseXML(ZFileMode mode, XMLElement* reader, std::string filename, bool placeholderMode)
{
	if (filename == "")
		name = reader->Attribute("Name");
	else
		name = filename;

	int segment = -1;

	// TODO: This should be a variable on the ZFile, but it is a large change in order to force all
	// ZResource types to have a parent ZFile.
	const char* gameStr = reader->Attribute("Game");
	if (reader->Attribute("Game") != nullptr)
	{
		if (string(gameStr) == "MM")
			Globals::Instance->game = ZGame::MM_RETAIL;
		else if (string(gameStr) == "SW97" || string(gameStr) == "OOTSW97")
			Globals::Instance->game = ZGame::OOT_SW97;
		else if (string(gameStr) == "OOT")
			Globals::Instance->game = ZGame::OOT_RETAIL;
		else
			throw std::runtime_error(
				StringHelper::Sprintf("Error: Game type %s not supported.", gameStr));
	}

	if (reader->Attribute("BaseAddress") != NULL)
		baseAddress = (uint32_t)strtoul(
			StringHelper::Split(reader->Attribute("BaseAddress"), "0x")[1].c_str(), NULL, 16);

	if (reader->Attribute("RangeStart") != NULL)
		rangeStart = (uint32_t)strtoul(
			StringHelper::Split(reader->Attribute("RangeStart"), "0x")[1].c_str(), NULL, 16);

	if (reader->Attribute("RangeEnd") != NULL)
		rangeEnd = (uint32_t)strtoul(
			StringHelper::Split(reader->Attribute("RangeEnd"), "0x")[1].c_str(), NULL, 16);

	if (reader->Attribute("Segment") != NULL)
		segment = strtol(reader->Attribute("Segment"), NULL, 10);

	if (segment != -1)
	{
		// printf("Adding Segment %i\n", segment);
		Globals::Instance->AddSegment(segment);
	}

	string folderName = basePath + "/" + Path::GetFileNameWithoutExtension(name);

	if (mode == ZFileMode::Extract)
	{
		if (!File::Exists(basePath + "/" + name))
			throw std::runtime_error(StringHelper::Sprintf("Error! File %s does not exist.",
			                                               (basePath + "/" + name).c_str()));

		rawData = File::ReadAllBytes(basePath + "/" + name);
	}

	auto nodeMap = *GetNodeMap();
	int rawDataIndex = 0;

	for (XMLElement* child = reader->FirstChildElement(); child != NULL;
	     child = child->NextSiblingElement())
	{
		if (child->Attribute("Offset") != NULL)
			rawDataIndex =
				strtol(StringHelper::Split(child->Attribute("Offset"), "0x")[1].c_str(), NULL, 16);

		if (Globals::Instance->verbosity >= VERBOSITY_INFO)
			printf("%s: 0x%06X\n", child->Attribute("Name"), rawDataIndex);

		string nodeName = string(child->Name());

		if (nodeMap.find(nodeName) != nodeMap.end())
		{
			ZResource* nRes = nodeMap[nodeName]();
			nRes->parent = this;

			if (mode == ZFileMode::Extract)
				nRes->ExtractFromXML(child, rawData, rawDataIndex, folderName);
			// else
			// nRes->ExtractFromFile();

			// TODO: See if we can make this part of the ZRoom code...
			if (nRes->GetResourceType() == ZResourceType::Room)
			{
				if (nodeName == "Scene")
				{
					Globals::Instance->lastScene = (ZRoom*)nRes;

					if (segment == -1)
						segment = SEGMENT_SCENE;
				}
				else
				{
					if (segment == -1)
						segment = SEGMENT_ROOM;
				}

				if (segment != -1)
					Globals::Instance->AddSegment(segment);
			}

			resources.push_back(nRes);
			rawDataIndex += nRes->GetRawDataSize();
		}
		else
		{
		}
	}
}

void ZFile::BuildSourceFile(string outputDir)
{
	string folderName = Path::GetFileNameWithoutExtension(outputPath);

	if (!Directory::Exists(outputPath))
		Directory::CreateDirectory(outputPath);

	GenerateSourceFiles(outputDir);
}

std::string ZFile::GetVarName(int address)
{
	for (pair<int32_t, Declaration*> pair : declarations)
	{
		if (pair.first == address)
			return pair.second->varName;
	}

	return "";
}

std::string ZFile::GetName()
{
	return name;
}

void ZFile::ExtractResources(string outputDir)
{
	string folderName = Path::GetFileNameWithoutExtension(outputPath);

	// printf("DIR CHECK: %s\n", folderName.c_str());
	// printf("OUT CHECK: %s\n", outputDir.c_str());

	if (!Directory::Exists(outputPath))
		Directory::CreateDirectory(outputPath);

	if (!Directory::Exists(Globals::Instance->sourceOutputPath))
		Directory::CreateDirectory(Globals::Instance->sourceOutputPath);

	for (ZResource* res : resources)
		res->PreGenSourceFiles();

	if (Globals::Instance->genSourceFile)
		GenerateSourceFiles(outputDir);

	for (ZResource* res : resources)
	{
		if (Globals::Instance->verbosity >= VERBOSITY_INFO)
			printf("Saving resource %s\n", res->GetName().c_str());

		res->CalcHash();  // TEST
		res->Save(outputPath);
	}

	if (Globals::Instance->testMode)
		GenerateHLIntermediette();
}

void ZFile::AddResource(ZResource* res)
{
	resources.push_back(res);
}

ZResource* ZFile::FindResource(uint32_t rawDataIndex)
{
	for (ZResource* res : resources)
	{
		if (res->GetRawDataIndex() == rawDataIndex)
			return res;
	}

	return nullptr;
}

std::vector<ZResource*> ZFile::GetResourcesOfType(ZResourceType resType)
{
	std::vector<ZResource*> resList;

	for (ZResource* res : resources)
	{
		if (res->GetResourceType() == resType)
			resList.push_back(res);
	}

	return resList;
}

Declaration* ZFile::AddDeclaration(uint32_t address, DeclarationAlignment alignment, uint32_t size,
                                   std::string varType, std::string varName, std::string body)
{
#if _DEBUG
	if (declarations.find(address) != declarations.end())
	{
		int bp = 0;
	}
#endif

	AddDeclarationDebugChecks(address);

	Declaration* decl = new Declaration(alignment, size, varType, varName, false, body);
	declarations[address] = decl;
	return decl;
}

Declaration* ZFile::AddDeclaration(uint32_t address, DeclarationAlignment alignment,
                                   DeclarationPadding padding, uint32_t size, string varType,
                                   string varName, std::string body)
{
#if _DEBUG
	if (declarations.find(address) != declarations.end())
	{
		int bp = 0;
	}
#endif

	AddDeclarationDebugChecks(address);

	declarations[address] =
		new Declaration(alignment, padding, size, varType, varName, false, body);
	return declarations[address];
}

Declaration* ZFile::AddDeclarationArray(uint32_t address, DeclarationAlignment alignment,
                                        uint32_t size, std::string varType, std::string varName,
                                        int arrayItemCnt, std::string body)
{
#if _DEBUG
	if (declarations.find(address) != declarations.end())
	{
		int bp = 0;
	}
#endif

	AddDeclarationDebugChecks(address);

	declarations[address] =
		new Declaration(alignment, size, varType, varName, true, arrayItemCnt, body);
	return declarations[address];
}

Declaration* ZFile::AddDeclarationArray(uint32_t address, DeclarationAlignment alignment,
                                        uint32_t size, std::string varType, std::string varName,
                                        int arrayItemCnt, std::string body, bool isExternal)
{
#if _DEBUG
	if (declarations.find(address) != declarations.end())
	{
		int bp = 0;
	}
#endif

	AddDeclarationDebugChecks(address);

	declarations[address] =
		new Declaration(alignment, size, varType, varName, true, arrayItemCnt, body, isExternal);
	return declarations[address];
}

Declaration* ZFile::AddDeclarationArray(uint32_t address, DeclarationAlignment alignment,
                                        DeclarationPadding padding, uint32_t size, string varType,
                                        string varName, int arrayItemCnt, std::string body)
{
#if _DEBUG
	if (declarations.find(address) != declarations.end())
	{
		int bp = 0;
	}
#endif

	AddDeclarationDebugChecks(address);

	declarations[address] =
		new Declaration(alignment, padding, size, varType, varName, true, arrayItemCnt, body);
	return declarations[address];
}

Declaration* ZFile::AddDeclarationPlaceholder(uint32_t address)
{
	AddDeclarationDebugChecks(address);

	if (declarations.find(address) == declarations.end())
		declarations[address] = new Declaration(DeclarationAlignment::None, 0, "", "", false, "");

	return declarations[address];
}

Declaration* ZFile::AddDeclarationPlaceholder(uint32_t address, string varName)
{
	AddDeclarationDebugChecks(address);

	if (declarations.find(address) == declarations.end())
		declarations[address] =
			new Declaration(DeclarationAlignment::None, 0, "", varName, false, "");

	return declarations[address];
}

Declaration* ZFile::AddDeclarationInclude(uint32_t address, string includePath, uint32_t size,
                                          string varType, string varName)
{
	AddDeclarationDebugChecks(address);

	if (declarations.find(address) == declarations.end())
		declarations[address] = new Declaration(includePath, size, varType, varName);

	return declarations[address];
}

Declaration* ZFile::AddDeclarationIncludeArray(uint32_t address, std::string includePath,
                                               uint32_t size, std::string varType,
                                               std::string varName, int arrayItemCnt)
{
#if _DEBUG
	if (declarations.find(address) != declarations.end())
	{
		int bp = 0;
	}

	if (address == 0)
	{
		int bp = 0;
	}
#endif

	AddDeclarationDebugChecks(address);

	if (StringHelper::StartsWith(includePath, "assets/extracted/"))
		includePath = "assets/" + StringHelper::Split(includePath, "assets/extracted/")[1];
	if (StringHelper::StartsWith(includePath, "assets/custom/"))
		includePath = "assets/" + StringHelper::Split(includePath, "assets/custom/")[1];

	auto declCheck = declarations.find(address);

	if (declCheck != declarations.end())
	{
		declCheck->second->includePath = includePath;
		declCheck->second->varType = varType;
		declCheck->second->varName = varName;
		declCheck->second->size = size;
		declCheck->second->isArray = true;
		declCheck->second->arrayItemCnt = arrayItemCnt;

		return declCheck->second;
	}
	else
	{
		Declaration* decl = new Declaration(includePath, size, varType, varName);

		decl->isArray = true;
		decl->arrayItemCnt = arrayItemCnt;

		declarations[address] = decl;
		return declarations[address];
	}
}

void ZFile::AddDeclarationDebugChecks(uint32_t address)
{
#ifdef _DEBUG
	if (address == 0x0000)
	{
		int bp = 0;
	}
#endif
}

std::string ZFile::GetDeclarationName(uint32_t address)
{
	return GetDeclarationName(address,
	                          "ERROR_COULD_NOT_FIND_DECLARATION");  // Note: For now that default
	                                                                // message is just for testing
}

std::string ZFile::GetDeclarationName(uint32_t address, std::string defaultResult)
{
	if (declarations.find(address) != declarations.end())
		return declarations[address]->varName;

	return defaultResult;
}

Declaration* ZFile::GetDeclaration(uint32_t address)
{
	if (declarations.find(address) != declarations.end())
		return declarations[address];

	return nullptr;
}

Declaration* ZFile::GetDeclarationRanged(uint32_t address)
{
	for (const auto decl : declarations)
	{
		if (address >= decl.first && address < decl.first + decl.second->size)
			return decl.second;
	}

	return nullptr;
}

uint32_t ZFile::GetDeclarationRangedAddress(uint32_t address)
{
	for (const auto decl : declarations)
	{
		if (address >= decl.first && address < decl.first + decl.second->size)
			return decl.first;
	}

	return 0xFFFFFFFF;
}

bool ZFile::HasDeclaration(uint32_t address)
{
	return (declarations.find(address) != declarations.end());
}

void ZFile::GenerateSourceFiles(string outputDir)
{
	sourceOutput = "";

	sourceOutput += "#include \"ultra64.h\"\n";
	sourceOutput += "#include \"z64.h\"\n";
	sourceOutput += "#include \"macros.h\"\n";
	sourceOutput += GetHeaderInclude();

	GeneratePlaceholderDeclarations();

	// Generate Code
	for (ZResource* res : resources)
	{
		string resSrc = res->GetSourceOutputCode(name);

		if (res->IsExternalResource())
		{
			string path = Path::GetFileNameWithoutExtension(res->GetName()).c_str();

			while (StringHelper::EndsWith(outputDir, "/"))
				outputDir = outputDir.substr(0, outputDir.length() - 1);

			string assetOutDir = outputDir;
			string declType = res->GetSourceTypeName();

			std::string incStr =
				StringHelper::Sprintf("%s/%s.%s.inc", assetOutDir.c_str(),
			                          Path::GetFileNameWithoutExtension(res->GetOutName()).c_str(),
			                          res->GetExternalExtension().c_str());

			if (res->GetResourceType() == ZResourceType::Texture)
			{
				ZTexture* tex = (ZTexture*)res;

				// POOL CHECK
				if (Globals::Instance->cfg.texturePool.find(tex->hash) !=
				    Globals::Instance->cfg.texturePool.end())
				{
					incStr = Globals::Instance->cfg.texturePool[tex->hash];
					res->SetName(Path::GetFileNameWithoutExtension(incStr));
				}

				incStr += ".c";
			}
			else if (res->GetResourceType() == ZResourceType::Blob ||
			         res->GetResourceType() == ZResourceType::Background)
			{
				incStr += ".c";
			}

			AddDeclarationIncludeArray(res->GetRawDataIndex(), incStr, res->GetRawDataSize(),
			                           declType, res->GetName(), 0);
		}
		else
		{
			// cout << "NOT EXTERN\n";
			sourceOutput += resSrc;
		}

		if (resSrc != "" && !res->IsExternalResource())
			sourceOutput += "\n";
	}

	sourceOutput += ProcessDeclarations();

	string sourceOutDir = Globals::Instance->sourceOutputPath;

	while (StringHelper::EndsWith(sourceOutDir, "/"))
		sourceOutDir = sourceOutDir.substr(0, sourceOutDir.length() - 1);

	string outPath = sourceOutDir + "/" + Path::GetFileNameWithoutExtension(name) + ".c";

	File::WriteAllText(outPath, sourceOutput);

	// Generate Header
	sourceOutput = "";

	for (ZResource* res : resources)
	{
		string resSrc = res->GetSourceOutputHeader("");
		sourceOutput += resSrc;

		if (resSrc != "")
			sourceOutput += "\n";
	}

	sourceOutput += ProcessExterns();

	File::WriteAllText(sourceOutDir + "/" + Path::GetFileNameWithoutExtension(name) + ".h",
	                   sourceOutput);
}

void ZFile::GenerateHLIntermediette()
{
	// This is kinda hacky but it gets the job done for now...
	HLModelIntermediette* mdl = new HLModelIntermediette();

	for (ZResource* res : resources)
	{
		if (res->GetResourceType() == ZResourceType::DisplayList ||
		    res->GetResourceType() == ZResourceType::Skeleton)
			res->GenerateHLIntermediette(*mdl);
	}

	// std::string test = mdl->ToOBJFile();
	// std::string test2 = mdl->ToAssimpFile();
}

std::string ZFile::GetHeaderInclude()
{
	return StringHelper::Sprintf("#include \"%s\"\n\n",
	                             (Path::GetFileNameWithoutExtension(name) + ".h").c_str());
}

void ZFile::GeneratePlaceholderDeclarations()
{
	// Generate placeholder declarations
	for (ZResource* res : resources)
	{
		if (GetDeclaration(res->GetRawDataIndex()) == nullptr)
			AddDeclarationPlaceholder(res->GetRawDataIndex(), res->GetName());
	}
}

std::map<std::string, ZResourceFactoryFunc*>* ZFile::GetNodeMap()
{
	static std::map<std::string, ZResourceFactoryFunc*> nodeMap;
	return &nodeMap;
}

void ZFile::RegisterNode(std::string nodeName, ZResourceFactoryFunc* nodeFunc)
{
	std::map<std::string, ZResourceFactoryFunc*>* nodeMap = GetNodeMap();
	(*nodeMap)[nodeName] = nodeFunc;
}

string ZFile::ProcessDeclarations()
{
	string output = "";

	if (declarations.size() == 0)
		return output;

	// Account for padding/alignment
	uint32_t lastAddr = 0;
	uint32_t lastSize = 0;

	// printf("RANGE START: 0x%06X - RANGE END: 0x%06X\n", rangeStart, rangeEnd);

	// Optimization: See if there are any arrays side by side that can be merged...
	auto declarationKeys =
		vector<pair<int32_t, Declaration*>>(declarations.begin(), declarations.end());
	sort(declarationKeys.begin(), declarationKeys.end(),
	     [](const auto& lhs, const auto& rhs) { return lhs.first < rhs.first; });

	pair<int32_t, Declaration*> lastItem = declarationKeys[0];

	for (int i = 1; i < declarationKeys.size(); i++)
	{
		pair<int32_t, Declaration*> curItem = declarationKeys[i];

		if (curItem.second->isArray && lastItem.second->isArray)
		{
			if (curItem.second->varType == lastItem.second->varType)
			{
				// TEST: For now just do Vtx declarations...
				if (lastItem.second->varType == "static Vtx")
				{
					int sizeDiff = curItem.first - (lastItem.first + lastItem.second->size);

					// Make sure there isn't an unaccounted inbetween these two
					if (sizeDiff == 0)
					{
						lastItem.second->size += curItem.second->size;
						lastItem.second->arrayItemCnt += curItem.second->arrayItemCnt;
						lastItem.second->text += "\n" + curItem.second->text;
						declarations.erase(curItem.first);
						declarationKeys.erase(declarationKeys.begin() + i);
						i--;
						continue;
					}
				}
			}
		}

		lastItem = curItem;
	}

	for (pair<uint32_t, Declaration*> item : declarations)
		ProcessDeclarationText(item.second);

	for (pair<uint32_t, Declaration*> item : declarations)
	{
		while (item.second->size % 4 != 0)
			item.second->size++;

		if (lastAddr != 0)
		{
			if (item.second->alignment == DeclarationAlignment::Align16)
			{
				// int lastAddrSizeTest = declarations[lastAddr]->size;
				int curPtr = lastAddr + declarations[lastAddr]->size;

				while (curPtr % 4 != 0)
				{
					declarations[lastAddr]->size++;
					// item.second->size++;
					curPtr++;
				}

				/*while (curPtr % 16 != 0)
				{
				    char buffer[2048];

				    sprintf(buffer, "static u32 align%02X = 0;\n", curPtr);
				    item.second->text = buffer + item.second->text;

				    declarations[lastAddr]->size += 4;
				    curPtr += 4;
				}*/
			}
			else if (item.second->alignment == DeclarationAlignment::Align8)
			{
				int curPtr = lastAddr + declarations[lastAddr]->size;

				while (curPtr % 4 != 0)
				{
					declarations[lastAddr]->size++;
					// item.second->size++;
					curPtr++;
				}

				while (curPtr % 8 != 0)
				{
					char buffer[2048];

					sprintf(buffer, "static u32 align%02X = 0;\n", curPtr);
					item.second->preText = buffer + item.second->preText;

					declarations[lastAddr]->size += 4;
					// item.second->size += 4;
					curPtr += 4;
				}
			}
		}

		if (item.second->padding == DeclarationPadding::Pad16)
		{
			int curPtr = item.first + item.second->size;

			while (curPtr % 4 != 0)
			{
				item.second->size++;
				curPtr++;
			}

			while (curPtr % 16 != 0)
			{
				item.second->postText += StringHelper::Sprintf("static u32 pad%02X = 0;\n", curPtr);

				item.second->size += 4;
				curPtr += 4;
			}
		}

		lastAddr = item.first;
	}

	// Handle unaccounted data
	lastAddr = 0;
	lastSize = 0;
	for (pair<uint32_t, Declaration*> item : declarations)
	{
		if (item.first >= rangeStart && item.first < rangeEnd)
		{
			if (lastAddr != 0 && declarations.find(lastAddr) != declarations.end() &&
			    lastAddr + declarations[lastAddr]->size > item.first)
			{
				fprintf(stderr,
				        "WARNING: Intersection detected from 0x%06X:0x%06X, conflicts with 0x%06X "
				        "(%s)\n",
				        lastAddr, lastAddr + declarations[lastAddr]->size, item.first,
				        item.second->varName.c_str());
			}

			uint8_t* rawDataArr = rawData.data();

			if (lastAddr + lastSize != item.first && lastAddr >= rangeStart &&
			    lastAddr + lastSize < rangeEnd)
			{
				// int diff = item.first - (lastAddr + declarations[lastAddr]->size);
				int diff = item.first - (lastAddr + lastSize);

				string src = "    ";

				for (int i = 0; i < diff; i++)
				{
					// src += StringHelper::Sprintf("0x%02X, ", rawDataArr[lastAddr +
					// declarations[lastAddr]->size + i]);
					src += StringHelper::Sprintf("0x%02X, ", rawDataArr[lastAddr + lastSize + i]);

					if ((i % 16 == 15) && (i != (diff - 1)))
						src += "\n    ";
				}

				if (declarations.find(lastAddr + lastSize) == declarations.end())
				{
					if (diff > 0)
					{
						// AddDeclarationArray(lastAddr + declarations[lastAddr]->size,
						// DeclarationAlignment::None, diff, "static u8",
						// StringHelper::Sprintf("unaccounted_%06X", lastAddr +
						// declarations[lastAddr]->size), diff, src);
						AddDeclarationArray(
							lastAddr + lastSize, DeclarationAlignment::None, diff, "static u8",
							StringHelper::Sprintf("unaccounted_%06X", lastAddr + lastSize), diff,
							src);
					}
				}
			}
		}

		lastAddr = item.first;
		lastSize = item.second->size;
	}

	auto lastDecl = declarations[lastAddr];

	// TODO: THIS CONTAINS REDUNDANCIES. CLEAN THIS UP!
	if (lastAddr + lastDecl->size < rawData.size() && lastAddr + lastDecl->size >= rangeStart &&
	    lastAddr + lastDecl->size < rangeEnd)
	{
		int diff = (int)(rawData.size() - (lastAddr + lastDecl->size));

		string src = "    ";

		for (int i = 0; i < diff; i++)
		{
			src += StringHelper::Sprintf("0x%02X, ", rawData[lastAddr + lastDecl->size + i]);

			if (i % 16 == 15)
				src += "\n    ";
		}

		if (declarations.find(lastAddr + lastDecl->size) == declarations.end())
		{
			if (diff > 0)
			{
				AddDeclarationArray(
					lastAddr + lastDecl->size, DeclarationAlignment::None, diff, "static u8",
					StringHelper::Sprintf("unaccounted_%06X", lastAddr + lastDecl->size), diff,
					src);
			}
		}
	}

	// Go through include declarations
	// First, handle the prototypes (static only for now)
	int protoCnt = 0;
	for (pair<uint32_t, Declaration*> item : declarations)
	{
		if (/* item.second->includePath == "" && */ StringHelper::StartsWith(item.second->varType,
		                                                                     "static ") &&
		    !StringHelper::StartsWith(item.second->varName, "unaccounted_"))
		{
			if (item.second->isArray)
			{
				if (item.second->arrayItemCnt == 0)
					output += StringHelper::Sprintf("%s %s[];\n", item.second->varType.c_str(),
					                                item.second->varName.c_str());
				else
					output += StringHelper::Sprintf("%s %s[%i];\n", item.second->varType.c_str(),
					                                item.second->varName.c_str(),
					                                item.second->arrayItemCnt);
			}
			else
				output += StringHelper::Sprintf("%s %s;\n", item.second->varType.c_str(),
				                                item.second->varName.c_str());

			protoCnt++;
		}
	}

	if (protoCnt > 0)
		output += "\n";

	// Next, output the actual declarations
	for (pair<uint32_t, Declaration*> item : declarations)
	{
		if (item.first < rangeStart || item.first >= rangeEnd)
		{
			continue;
		}

		if (item.second->includePath != "")
		{
			// output += StringHelper::Sprintf("#include \"%s\"\n",
			// item.second->includePath.c_str()); output += StringHelper::Sprintf("%s %s[] =
			// {\n#include \"%s\"\n};\n\n", item.second->varType.c_str(),
			// item.second->varName.c_str(), item.second->includePath.c_str());

			if (item.second->isExternal)
			{
				// HACK
				std::string extType = "";

				if (item.second->varType == "Gfx")
					extType = "dlist";
				else if (item.second->varType == "Vtx" || item.second->varType == "static Vtx")
					extType = "vtx";

				File::WriteAllText(
					StringHelper::Sprintf("%s/%s.%s.inc", Globals::Instance->outputPath.c_str(),
				                          item.second->varName.c_str(), extType.c_str()),
					item.second->text);
			}

			/*if (item.second->varType == "u64")
			    output += StringHelper::Sprintf("#pragma INC_ASSET_U64(\"%s\", \"%s\")\n",
			item.second->varName.c_str(), item.second->includePath.c_str()); else if
			(item.second->varType == "Gfx") output += StringHelper::Sprintf("#pragma
			INC_ASSET_GFX(\"%s\", \"%s\")\n", item.second->varName.c_str(),
			item.second->includePath.c_str()); else if (item.second->varType == "Vtx" ||
			item.second->varType == "static Vtx") output += StringHelper::Sprintf("#pragma
			INC_ASSET_VTX(\"%s\", \"%s\")\n", item.second->varName.c_str(),
			item.second->includePath.c_str()); else output += StringHelper::Sprintf("#pragma
			INC_ASSET_U8(\"%s\", \"%s\")\n", item.second->varName.c_str(),
			item.second->includePath.c_str());*/

			// Do not asm_process vertex arrays. They have no practical use being overridden.
			// if (item.second->varType == "Vtx" || item.second->varType == "static Vtx")
			if (item.second->varType != "u64" && item.second->varType != "static u64" &&
			    item.second->varType != "u8" && item.second->varType != "static u8")
			{
				// output += StringHelper::Sprintf("%s %s[] = {\n    #include \"%s\"\n};\n\n",
				// item.second->varType.c_str(), item.second->varName.c_str(),
				// StringHelper::Replace(item.second->includePath, "assets/",
				// "../assets/extracted/").c_str());
				output += StringHelper::Sprintf(
					"%s %s[] = {\n    #include \"%s\"\n};\n\n", item.second->varType.c_str(),
					item.second->varName.c_str(),
					StringHelper::Replace(item.second->includePath, "assets/", "../assets/")
						.c_str());
				// output += StringHelper::Sprintf("%s %s[] = {\n    #include \"%s\"\n};\n\n",
				// item.second->varType.c_str(), item.second->varName.c_str(),
				// Path::GetFileName(item.second->includePath).c_str());
			}
			else
			{
				// output += StringHelper::Sprintf("%s %s[] = {\n    #pragma
				// INC_ASSET(\"%s\")\n};\n\n", item.second->varType.c_str(),
				// item.second->varName.c_str(), item.second->includePath.c_str()); output +=
				// StringHelper::Sprintf("%s %s[] = {\n    #include \"%s\"\n};\n\n",
				// item.second->varType.c_str(), item.second->varName.c_str(),
				// StringHelper::Replace(item.second->includePath, "assets/",
				// "assets/extracted/").c_str());
				output += StringHelper::Sprintf(
					"%s %s[] = {\n    #include \"%s\"\n};\n\n", item.second->varType.c_str(),
					item.second->varName.c_str(), item.second->includePath.c_str());
			}
		}
		else if (item.second->varType != "")
		{
			if (item.second->preText != "")
				output += item.second->preText + "\n";

			{
				if (item.second->isArray)
				{
					if (item.second->arrayItemCnt == 0)
						output +=
							StringHelper::Sprintf("%s %s[] = {\n", item.second->varType.c_str(),
						                          item.second->varName.c_str());
					else
						output += StringHelper::Sprintf(
							"%s %s[%i] = {\n", item.second->varType.c_str(),
							item.second->varName.c_str(), item.second->arrayItemCnt);

					output += item.second->text + "\n";
				}
				else
				{
					output += StringHelper::Sprintf("%s %s = { ", item.second->varType.c_str(),
					                                item.second->varName.c_str());
					output += item.second->text;
				}

				if (output.back() == '\n')
					output += "};";
				else
					output += " };";
			}

			output += " " + item.second->rightText + "\n\n";

			if (item.second->postText != "")
				output += item.second->postText + "\n";
		}
	}

	output += "\n";

	return output;
}

void ZFile::ProcessDeclarationText(Declaration* decl)
{
	size_t refIndex = 0;

	if (decl->references.size() > 0)
	{
		for (size_t i = 0; i < decl->text.size() - 1; i++)
		{
			char c = decl->text[i];
			char c2 = decl->text[i + 1];

			if (c == '@' && c2 == 'r')
			{
				if (refIndex >= decl->references.size())
					break;

				Declaration* refDecl = GetDeclarationRanged(decl->references[refIndex]);
				uint32_t refDeclAddr = GetDeclarationRangedAddress(decl->references[refIndex]);

				if (refDecl != nullptr)
				{
					if (refDecl->isArray)
					{
						if (refDecl->arrayItemCnt != 0)
						{
							int itemSize = refDecl->size / refDecl->arrayItemCnt;
							int itemIndex = (decl->references[refIndex] - refDeclAddr) / itemSize;

							decl->text.replace(i, 2,
							                   StringHelper::Sprintf(
												   "&%s[%i]", refDecl->varName.c_str(), itemIndex));
						}
						else
						{
							decl->text.replace(i, 2,
							                   StringHelper::Sprintf("ERROR ARRAYITEMCNT = 0"));
						}
					}
					else
					{
						decl->text.replace(i, 2, refDecl->varName);
					}
				}
				else
					decl->text.replace(i, 2, "ERROR");

				refIndex++;
			}
		}
	}
}

string ZFile::ProcessExterns()
{
	string output = "";

	for (pair<uint32_t, Declaration*> item : declarations)
	{
		if (item.first < rangeStart || item.first >= rangeEnd)
		{
			continue;
		}

		if (!StringHelper::StartsWith(item.second->varType, "static ") &&
		    item.second->varType != "")  // && item.second->includePath == "")
		{
			if (item.second->isArray)
			{
				if (item.second->arrayItemCnt == 0)
					output +=
						StringHelper::Sprintf("extern %s %s[];\n", item.second->varType.c_str(),
					                          item.second->varName.c_str());
				else
					output += StringHelper::Sprintf(
						"extern %s %s[%i];\n", item.second->varType.c_str(),
						item.second->varName.c_str(), item.second->arrayItemCnt);
			}
			else
				output += StringHelper::Sprintf("extern %s %s;\n", item.second->varType.c_str(),
				                                item.second->varName.c_str());
		}
	}

	output += "\n";

	output += defines;

	return output;
}