#include "ZFile.h"
#include <algorithm>
#include <cassert>
#include <unordered_set>
#include "Directory.h"
#include "File.h"
#include "Globals.h"
#include "HighLevel/HLModelIntermediette.h"
#include "OutputFormatter.h"
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

ZFile::ZFile()
{
	resources = std::vector<ZResource*>();
	basePath = "";
	outputPath = Directory::GetCurrentDirectory();
	declarations = std::map<uint32_t, Declaration*>();
	defines = "";
	baseAddress = 0;
	rangeStart = 0x000000000;
	rangeEnd = 0xFFFFFFFF;
}

ZFile::ZFile(const fs::path& nOutPath, std::string nName) : ZFile()
{
	outputPath = nOutPath;
	name = nName;
}

ZFile::ZFile(ZFileMode mode, tinyxml2::XMLElement* reader, const fs::path& nBasePath,
             const fs::path& nOutPath, std::string filename, const fs::path& nXmlFilePath,
             bool placeholderMode)
	: ZFile()
{
	xmlFilePath = nXmlFilePath;
	if (nBasePath == "")
		basePath = Directory::GetCurrentDirectory();
	else
		basePath = nBasePath;

	if (nOutPath == "")
		outputPath = Directory::GetCurrentDirectory();
	else
		outputPath = nOutPath;

	ParseXML(mode, reader, filename, placeholderMode);
	DeclareResourceSubReferences();
}

ZFile::~ZFile()
{
	for (ZResource* res : resources)
	{
		delete res;
	}

	for (auto d : declarations)
	{
		delete d.second;
	}
}

void ZFile::ParseXML(ZFileMode mode, XMLElement* reader, std::string filename, bool placeholderMode)
{
	if (filename == "")
		name = reader->Attribute("Name");
	else
		name = filename;

	// TODO: This should be a variable on the ZFile, but it is a large change in order to force all
	// ZResource types to have a parent ZFile.
	const char* gameStr = reader->Attribute("Game");
	if (reader->Attribute("Game") != nullptr)
	{
		if (std::string(gameStr) == "MM")
			Globals::Instance->game = ZGame::MM_RETAIL;
		else if (std::string(gameStr) == "SW97" || std::string(gameStr) == "OOTSW97")
			Globals::Instance->game = ZGame::OOT_SW97;
		else if (std::string(gameStr) == "OOT")
			Globals::Instance->game = ZGame::OOT_RETAIL;
		else
			throw std::runtime_error(
				StringHelper::Sprintf("Error: Game type %s not supported.", gameStr));
	}

	if (reader->Attribute("BaseAddress") != nullptr)
		baseAddress = StringHelper::StrToL(reader->Attribute("BaseAddress"), 16);

	if (reader->Attribute("RangeStart") != nullptr)
		rangeStart = StringHelper::StrToL(reader->Attribute("RangeStart"), 16);

	if (reader->Attribute("RangeEnd") != nullptr)
		rangeEnd = StringHelper::StrToL(reader->Attribute("RangeEnd"), 16);

	// Commented until ZArray doesn't use a ZFile to parse it's contents anymore.
	/*
	if (reader->Attribute("Segment") == nullptr)
	    throw std::runtime_error(StringHelper::Sprintf(
	        "ZFile::ParseXML: Error in '%s'.\n"
	        "\t Missing 'Segment' attribute in File node. \n",
	        name.c_str()));
	*/

	if (reader->Attribute("Segment") != nullptr)
	{
		segment = StringHelper::StrToL(reader->Attribute("Segment"), 10);
		Globals::Instance->AddSegment(segment, this);
	}

	std::string folderName = (basePath / Path::GetFileNameWithoutExtension(name)).string();

	if (mode == ZFileMode::Extract)
	{
		if (!File::Exists((basePath / name).string()))
			throw std::runtime_error(
				StringHelper::Sprintf("Error! File %s does not exist.", (basePath / name).c_str()));

		rawData = File::ReadAllBytes((basePath / name).string());
	}

	std::unordered_set<std::string> nameSet;
	std::unordered_set<std::string> outNameSet;
	std::unordered_set<std::string> offsetSet;

	auto nodeMap = *GetNodeMap();
	uint32_t rawDataIndex = 0;

	for (XMLElement* child = reader->FirstChildElement(); child != nullptr;
	     child = child->NextSiblingElement())
	{
		const char* nameXml = child->Attribute("Name");
		const char* outNameXml = child->Attribute("OutName");
		const char* offsetXml = child->Attribute("Offset");

		if (Globals::Instance->verbosity >= VerbosityLevel::VERBOSITY_INFO)
			printf("%s: 0x%06X\n", nameXml, rawDataIndex);

		// Check for repeated attributes.
		if (offsetXml != nullptr)
		{
			rawDataIndex = strtol(StringHelper::Split(offsetXml, "0x")[1].c_str(), NULL, 16);

			if (offsetSet.find(offsetXml) != offsetSet.end())
			{
				throw std::runtime_error(StringHelper::Sprintf(
					"ZFile::ParseXML: Error in '%s'.\n\t Repeated 'Offset' attribute: %s \n",
					name.c_str(), offsetXml));
			}
			offsetSet.insert(offsetXml);
		}
		if (outNameXml != nullptr)
		{
			if (outNameSet.find(outNameXml) != outNameSet.end())
			{
				throw std::runtime_error(StringHelper::Sprintf(
					"ZFile::ParseXML: Error in '%s'.\n\t Repeated 'OutName' attribute: %s \n",
					name.c_str(), outNameXml));
			}
			outNameSet.insert(outNameXml);
		}
		if (nameXml != nullptr)
		{
			if (nameSet.find(nameXml) != nameSet.end())
			{
				throw std::runtime_error(StringHelper::Sprintf(
					"ZFile::ParseXML: Error in '%s'.\n\t Repeated 'Name' attribute: %s \n",
					name.c_str(), nameXml));
			}
			nameSet.insert(nameXml);
		}

		std::string nodeName = std::string(child->Name());

		if (nodeMap.find(nodeName) != nodeMap.end())
		{
			ZResource* nRes = nodeMap[nodeName](this);

			if (mode == ZFileMode::Extract)
				nRes->ExtractFromXML(child, rawData, rawDataIndex);

			auto resType = nRes->GetResourceType();
			if (resType == ZResourceType::Texture)
				AddTextureResource(rawDataIndex, static_cast<ZTexture*>(nRes));
			else
				resources.push_back(nRes);

			rawDataIndex += nRes->GetRawDataSize();
		}
		else if (std::string(child->Name()) == "File")
		{
			throw std::runtime_error(StringHelper::Sprintf(
				"ZFile::ParseXML: Error in '%s'.\n\t Can't declare a File inside a File.\n",
				name.c_str()));
		}
		else
		{
			throw std::runtime_error(
				StringHelper::Sprintf("ZFile::ParseXML: Error in '%s'.\n\t Unknown element found "
			                          "inside a File element: '%s'.\n",
			                          name.c_str(), nodeName.c_str()));
		}
	}
}

void ZFile::DeclareResourceSubReferences()
{
	for (size_t i = 0; i < resources.size(); i++)
	{
		resources.at(i)->DeclareReferences(name);
	}
}

void ZFile::BuildSourceFile(fs::path outputDir)
{
	std::string folderName = Path::GetFileNameWithoutExtension(outputPath.string());

	if (!Directory::Exists(outputPath.string()))
		Directory::CreateDirectory(outputPath.string());

	GenerateSourceFiles(outputDir);
}

std::string ZFile::GetVarName(uint32_t address)
{
	for (std::pair<uint32_t, Declaration*> pair : declarations)
	{
		if (pair.first == address)
			return pair.second->varName;
	}

	return "";
}

std::string ZFile::GetName() const
{
	return name;
}

const fs::path& ZFile::GetXmlFilePath() const
{
	return xmlFilePath;
}

const std::vector<uint8_t>& ZFile::GetRawData() const
{
	return rawData;
}

void ZFile::ExtractResources(fs::path outputDir)
{
	std::string folderName = Path::GetFileNameWithoutExtension(outputPath.string());

	if (!Directory::Exists(outputPath.string()))
		Directory::CreateDirectory(outputPath.string());

	if (!Directory::Exists(Globals::Instance->sourceOutputPath.string()))
		Directory::CreateDirectory(Globals::Instance->sourceOutputPath.string());

	for (ZResource* res : resources)
		res->PreGenSourceFiles();

	if (Globals::Instance->genSourceFile)
		GenerateSourceFiles(outputDir);

	for (ZResource* res : resources)
	{
		if (Globals::Instance->verbosity >= VerbosityLevel::VERBOSITY_INFO)
			printf("Saving resource %s\n", res->GetName().c_str());

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

Declaration* ZFile::AddDeclaration(uint32_t address, DeclarationAlignment alignment, size_t size,
                                   std::string varType, std::string varName, std::string body)
{
	assert(GETSEGNUM(address) == 0);
	AddDeclarationDebugChecks(address);

	Declaration* decl = new Declaration(alignment, size, varType, varName, false, body);
	declarations[address] = decl;
	return decl;
}

Declaration* ZFile::AddDeclaration(uint32_t address, DeclarationAlignment alignment,
                                   DeclarationPadding padding, size_t size, std::string varType,
                                   std::string varName, std::string body)
{
	assert(GETSEGNUM(address) == 0);
	AddDeclarationDebugChecks(address);

	declarations[address] =
		new Declaration(alignment, padding, size, varType, varName, false, body);
	return declarations[address];
}

Declaration* ZFile::AddDeclarationArray(uint32_t address, DeclarationAlignment alignment,
                                        size_t size, std::string varType, std::string varName,
                                        size_t arrayItemCnt, std::string body)
{
	assert(GETSEGNUM(address) == 0);
	AddDeclarationDebugChecks(address);

	declarations[address] =
		new Declaration(alignment, size, varType, varName, true, arrayItemCnt, body);
	return declarations[address];
}

Declaration* ZFile::AddDeclarationArray(uint32_t address, DeclarationAlignment alignment,
                                        size_t size, std::string varType, std::string varName,
                                        std::string arrayItemCntStr, std::string body)
{
	assert(GETSEGNUM(address) == 0);
	AddDeclarationDebugChecks(address);

	declarations[address] =
		new Declaration(alignment, size, varType, varName, true, arrayItemCntStr, body);
	return declarations[address];
}

Declaration* ZFile::AddDeclarationArray(uint32_t address, DeclarationAlignment alignment,
                                        size_t size, std::string varType, std::string varName,
                                        size_t arrayItemCnt, std::string body, bool isExternal)
{
	assert(GETSEGNUM(address) == 0);
	AddDeclarationDebugChecks(address);

	declarations[address] =
		new Declaration(alignment, size, varType, varName, true, arrayItemCnt, body, isExternal);
	return declarations[address];
}

Declaration* ZFile::AddDeclarationArray(uint32_t address, DeclarationAlignment alignment,
                                        DeclarationPadding padding, size_t size,
                                        std::string varType, std::string varName,
                                        size_t arrayItemCnt, std::string body)
{
	assert(GETSEGNUM(address) == 0);
	AddDeclarationDebugChecks(address);

	declarations[address] =
		new Declaration(alignment, padding, size, varType, varName, true, arrayItemCnt, body);
	return declarations[address];
}

Declaration* ZFile::AddDeclarationPlaceholder(uint32_t address)
{
	assert(GETSEGNUM(address) == 0);
	AddDeclarationDebugChecks(address);
	Declaration* decl;

	if (declarations.find(address) == declarations.end())
	{
		decl = new Declaration(DeclarationAlignment::None, 0, "", "", false, "");
		decl->isPlaceholder = true;
		declarations[address] = decl;
	}
	else
		decl = declarations[address];

	return decl;
}

Declaration* ZFile::AddDeclarationPlaceholder(uint32_t address, std::string varName)
{
	assert(GETSEGNUM(address) == 0);
	AddDeclarationDebugChecks(address);
	Declaration* decl;

	if (declarations.find(address) == declarations.end())
	{
		decl = new Declaration(DeclarationAlignment::None, 0, "", varName, false, "");
		decl->isPlaceholder = true;
		declarations[address] = decl;
	}
	else
		decl = declarations[address];

	return decl;
}

Declaration* ZFile::AddDeclarationInclude(uint32_t address, std::string includePath, size_t size,
                                          std::string varType, std::string varName)
{
	assert(GETSEGNUM(address) == 0);
	AddDeclarationDebugChecks(address);

	if (declarations.find(address) == declarations.end())
		declarations[address] = new Declaration(includePath, size, varType, varName);

	return declarations[address];
}

Declaration* ZFile::AddDeclarationIncludeArray(uint32_t address, std::string includePath,
                                               size_t size, std::string varType,
                                               std::string varName, size_t arrayItemCnt)
{
	assert(GETSEGNUM(address) == 0);
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
	assert(GETSEGNUM(address) == 0);
#ifdef _DEBUG
	if (address == 0x0000)
	{
		int32_t bp = 0;
	}
#endif
}

std::string ZFile::GetDeclarationName(uint32_t address) const
{
	return GetDeclarationName(address,
	                          "ERROR_COULD_NOT_FIND_DECLARATION");  // Note: For now that default
	                                                                // message is just for testing
}

std::string ZFile::GetDeclarationName(uint32_t address, std::string defaultResult) const
{
	Declaration* decl = GetDeclaration(address);
	if (decl != nullptr)
		return decl->varName;

	return defaultResult;
}

std::string ZFile::GetDeclarationPtrName(segptr_t segAddress) const
{
	if (segAddress == 0)
		return "NULL";

	Declaration* decl = GetDeclaration(Seg2Filespace(segAddress, baseAddress));

	if (!Globals::Instance->HasSegment(GETSEGNUM(segAddress)) || decl == nullptr)
		return StringHelper::Sprintf("0x%08X", segAddress);

	if (!decl->isArray)
		return "&" + decl->varName;

	return decl->varName;
}

Declaration* ZFile::GetDeclaration(uint32_t address) const
{
	if (declarations.find(address) != declarations.end())
		return declarations.at(address);

	return nullptr;
}

Declaration* ZFile::GetDeclarationRanged(uint32_t address) const
{
	for (const auto decl : declarations)
	{
		if (address >= decl.first && address < decl.first + decl.second->size)
			return decl.second;
	}

	return nullptr;
}

uint32_t ZFile::GetDeclarationRangedAddress(uint32_t address) const
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
	return declarations.find(address) != declarations.end();
}

void ZFile::GenerateSourceFiles(fs::path outputDir)
{
	std::string sourceOutput = "";

	sourceOutput += "#include \"ultra64.h\"\n";
	sourceOutput += "#include \"z64.h\"\n";
	sourceOutput += "#include \"macros.h\"\n";
	sourceOutput += GetHeaderInclude();

	GeneratePlaceholderDeclarations();

	// Generate Code
	for (size_t i = 0; i < resources.size(); i++)
	{
		ZResource* res = resources.at(i);
		std::string resSrc = res->GetSourceOutputCode(name);

		if (res->IsExternalResource())
		{
			std::string path = Path::GetFileNameWithoutExtension(res->GetName()).c_str();

			std::string assetOutDir =
				(outputDir / Path::GetFileNameWithoutExtension(res->GetOutName())).string();
			std::string declType = res->GetSourceTypeName();

			std::string incStr = StringHelper::Sprintf("%s.%s.inc", assetOutDir.c_str(),
			                                           res->GetExternalExtension().c_str());

			if (res->GetResourceType() == ZResourceType::Texture)
			{
				ZTexture* tex = static_cast<ZTexture*>(res);

				if (!Globals::Instance->cfg.texturePool.empty())
				{
					tex->CalcHash();

					// TEXTURE POOL CHECK
					if (Globals::Instance->cfg.texturePool.find(tex->hash) !=
					    Globals::Instance->cfg.texturePool.end())
					{
						incStr = Globals::Instance->cfg.texturePool[tex->hash].path.string() + "." +
								 res->GetExternalExtension() + ".inc";
					}
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
			sourceOutput += resSrc;
		}

		if (resSrc != "" && !res->IsExternalResource())
			sourceOutput += "\n";
	}

	sourceOutput += ProcessDeclarations();

	std::string outPath =
		(Globals::Instance->sourceOutputPath / (Path::GetFileNameWithoutExtension(name) + ".c"))
			.string();

	OutputFormatter formatter;
	formatter.Write(sourceOutput);

	File::WriteAllText(outPath, formatter.GetOutput());

	GenerateSourceHeaderFiles();
}

void ZFile::GenerateSourceHeaderFiles()
{
	OutputFormatter formatter;

	for (ZResource* res : resources)
	{
		std::string resSrc = res->GetSourceOutputHeader("");
		formatter.Write(resSrc);

		if (resSrc != "")
			formatter.Write("\n");
	}

	formatter.Write(ProcessExterns());

	fs::path headerFilename =
		Globals::Instance->sourceOutputPath / (Path::GetFileNameWithoutExtension(name) + ".h");

	File::WriteAllText(headerFilename.string(), formatter.GetOutput());
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

void ZFile::AddTextureResource(uint32_t offset, ZTexture* tex)
{
	for (auto res : resources)
		assert(res->GetRawDataIndex() != offset);

	resources.push_back(tex);
	texturesResources[offset] = tex;
}

ZTexture* ZFile::GetTextureResource(uint32_t offset) const
{
	auto tex = texturesResources.find(offset);
	if (tex != texturesResources.end())
		return tex->second;

	return nullptr;
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

std::string ZFile::ProcessDeclarations()
{
	std::string output = "";

	if (declarations.size() == 0)
		return output;

	defines += ProcessTextureIntersections(name);

	// Account for padding/alignment
	uint32_t lastAddr = 0;
	uint32_t lastSize = 0;

	// printf("RANGE START: 0x%06X - RANGE END: 0x%06X\n", rangeStart, rangeEnd);

	// Optimization: See if there are any arrays side by side that can be merged...
	std::vector<std::pair<int32_t, Declaration*>> declarationKeys(declarations.begin(),
	                                                              declarations.end());

	std::pair<int32_t, Declaration*> lastItem = declarationKeys.at(0);

	for (size_t i = 1; i < declarationKeys.size(); i++)
	{
		std::pair<int32_t, Declaration*> curItem = declarationKeys[i];

		if (curItem.second->isArray && lastItem.second->isArray)
		{
			if (curItem.second->varType == lastItem.second->varType)
			{
				// TEST: For now just do Vtx declarations...
				if (lastItem.second->varType == "static Vtx")
				{
					int32_t sizeDiff = curItem.first - (lastItem.first + lastItem.second->size);

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

	for (std::pair<uint32_t, Declaration*> item : declarations)
		ProcessDeclarationText(item.second);

	for (std::pair<uint32_t, Declaration*> item : declarations)
	{
		while (item.second->size % 4 != 0)
			item.second->size++;

		if (lastAddr != 0)
		{
			if (item.second->alignment == DeclarationAlignment::Align16)
			{
				// int32_t lastAddrSizeTest = declarations[lastAddr]->size;
				int32_t curPtr = lastAddr + declarations[lastAddr]->size;

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
				int32_t curPtr = lastAddr + declarations[lastAddr]->size;

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
			int32_t curPtr = item.first + item.second->size;

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
	std::vector<uint32_t> declsAddresses;
	for (const auto& item : declarations)
	{
		declsAddresses.push_back(item.first);
	}
	declsAddresses.push_back(rawData.size());

	for (uint32_t currentAddress : declsAddresses)
	{
		if (currentAddress >= rangeEnd)
		{
			break;
		}

		if (currentAddress < rangeStart)
		{
			lastAddr = currentAddress;
			continue;
		}

		if (currentAddress != lastAddr && declarations.find(lastAddr) != declarations.end())
		{
			Declaration* lastDecl = declarations.at(lastAddr);
			lastSize = lastDecl->size;

			if (lastAddr + lastSize > currentAddress)
			{
				Declaration* currentDecl = declarations.at(currentAddress);

				fprintf(stderr,
				        "WARNING: Intersection detected from 0x%06X:0x%06X (%s), conflicts with "
				        "0x%06X (%s)\n",
				        lastAddr, lastAddr + lastSize, lastDecl->varName.c_str(), currentAddress,
				        currentDecl->varName.c_str());
			}
		}

		uint32_t unaccountedAddress = lastAddr + lastSize;

		if (unaccountedAddress != currentAddress && lastAddr >= rangeStart &&
		    unaccountedAddress < rangeEnd)
		{
			int diff = currentAddress - unaccountedAddress;
			bool nonZeroUnaccounted = false;

			std::string src = "    ";

			for (int i = 0; i < diff; i++)
			{
				uint8_t val = rawData.at(unaccountedAddress + i);
				src += StringHelper::Sprintf("0x%02X, ", val);
				if (val != 0x00)
				{
					nonZeroUnaccounted = true;
				}

				if ((i % 16 == 15) && (i != (diff - 1)))
					src += "\n    ";
			}

			if (declarations.find(unaccountedAddress) == declarations.end())
			{
				if (diff > 0)
				{
					std::string unaccountedPrefix = "unaccounted";

					if (diff < 16 && !nonZeroUnaccounted)
						unaccountedPrefix = "possiblePadding";

					Declaration* decl = AddDeclarationArray(
						unaccountedAddress, DeclarationAlignment::None, diff, "static u8",
						StringHelper::Sprintf("%s_%06X", unaccountedPrefix.c_str(),
					                          unaccountedAddress),
						diff, src);
					decl->isUnaccounted = true;

					if (Globals::Instance->warnUnaccounted)
					{
						if (nonZeroUnaccounted)
						{
							fprintf(
								stderr,
								"Warning in file: %s (%s)\n"
								"\t A non-zero unaccounted block was found at address '0x%06X'.\n"
								"\t Block size: '0x%X'.\n",
								xmlFilePath.c_str(), name.c_str(), unaccountedAddress, diff);
						}
						else if (diff >= 16)
						{
							fprintf(stderr,
							        "Warning in file: %s (%s)\n"
							        "\t A big (size>=0x10) zero-only unaccounted block was found "
							        "at address '0x%06X'.\n"
							        "\t Block size: '0x%X'.\n",
							        xmlFilePath.c_str(), name.c_str(), unaccountedAddress, diff);
						}
					}
				}
			}
		}

		lastAddr = currentAddress;
	}

	// Go through include declarations
	// First, handle the prototypes (static only for now)
	int32_t protoCnt = 0;
	for (std::pair<uint32_t, Declaration*> item : declarations)
	{
		if (StringHelper::StartsWith(item.second->varType, "static ") &&
		    !item.second->isUnaccounted)
		{
			if (item.second->isArray)
			{
				if (item.second->arrayItemCntStr != "")
				{
					output += StringHelper::Sprintf("%s %s[%s];\n", item.second->varType.c_str(),
					                                item.second->varName.c_str(),
					                                item.second->arrayItemCntStr.c_str());
				}
				else if (item.second->arrayItemCnt == 0)
				{
					output += StringHelper::Sprintf("%s %s[];\n", item.second->varType.c_str(),
					                                item.second->varName.c_str());
				}
				else
				{
					output += StringHelper::Sprintf("%s %s[%i];\n", item.second->varType.c_str(),
					                                item.second->varName.c_str(),
					                                item.second->arrayItemCnt);
				}
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
	for (std::pair<uint32_t, Declaration*> item : declarations)
	{
		if (item.first < rangeStart || item.first >= rangeEnd)
		{
			continue;
		}

		if (item.second->includePath != "")
		{
			if (item.second->isExternal)
			{
				// HACK
				std::string extType = "";

				if (item.second->varType == "Gfx")
					extType = "dlist";
				else if (item.second->varType == "Vtx" || item.second->varType == "static Vtx")
					extType = "vtx";

				auto filepath = Globals::Instance->outputPath / item.second->varName;
				File::WriteAllText(
					StringHelper::Sprintf("%s.%s.inc", filepath.c_str(), extType.c_str()),
					item.second->text);
			}

			// Do not asm_process vertex arrays. They have no practical use being overridden.
			// if (item.second->varType == "Vtx" || item.second->varType == "static Vtx")
			if (item.second->varType != "u64" && item.second->varType != "static u64" &&
			    item.second->varType != "u8" && item.second->varType != "static u8")
			{
				output += StringHelper::Sprintf(
					"%s %s[] = {\n    #include \"%s\"\n};\n\n", item.second->varType.c_str(),
					item.second->varName.c_str(),
					StringHelper::Replace(item.second->includePath, "assets/", "../assets/")
						.c_str());
			}
			else
			{
				if (item.second->arrayItemCntStr != "")
					output += StringHelper::Sprintf(
						"%s %s[%s] = {\n    #include \"%s\"\n};\n\n", item.second->varType.c_str(),
						item.second->varName.c_str(), item.second->arrayItemCntStr.c_str(),
						item.second->includePath.c_str());
				else
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
					if (item.second->arrayItemCntStr != "")
					{
						output += StringHelper::Sprintf(
							"%s %s[%s];\n", item.second->varType.c_str(),
							item.second->varName.c_str(), item.second->arrayItemCntStr.c_str());
					}
					else
					{
						if (item.second->arrayItemCnt == 0)
							output +=
								StringHelper::Sprintf("%s %s[] = {\n", item.second->varType.c_str(),
							                          item.second->varName.c_str());
						else
							output += StringHelper::Sprintf(
								"%s %s[%i] = {\n", item.second->varType.c_str(),
								item.second->varName.c_str(), item.second->arrayItemCnt);
					}

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
							int32_t itemSize = refDecl->size / refDecl->arrayItemCnt;
							int32_t itemIndex =
								(decl->references[refIndex] - refDeclAddr) / itemSize;

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

std::string ZFile::ProcessExterns()
{
	std::string output = "";

	for (std::pair<uint32_t, Declaration*> item : declarations)
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

std::string ZFile::ProcessTextureIntersections(std::string prefix)
{
	if (texturesResources.empty())
		return "";

	std::string defines = "";
	std::vector<std::pair<uint32_t, ZTexture*>> texturesSorted(texturesResources.begin(),
	                                                           texturesResources.end());

	for (size_t i = 0; i < texturesSorted.size() - 1; i++)
	{
		uint32_t currentOffset = texturesSorted[i].first;
		uint32_t nextOffset = texturesSorted[i + 1].first;
		auto& currentTex = texturesResources.at(currentOffset);
		int texSize = currentTex->GetRawDataSize();

		if (currentTex->WasDeclaredInXml())
		{
			// We believe the user is right.
			continue;
		}

		if ((currentOffset + texSize) > nextOffset)
		{
			uint32_t offsetDiff = nextOffset - currentOffset;
			if (currentTex->isPalette)
			{
				// Shrink palette so it doesn't overlap
				currentTex->SetDimensions(offsetDiff / currentTex->GetPixelMultiplyer(), 1);
				declarations.at(currentOffset)->size = currentTex->GetRawDataSize();
			}
			else
			{
				std::string texName = GetDeclarationPtrName(currentOffset);
				std::string texNextName;

				Declaration* nextDecl = GetDeclaration(nextOffset);
				if (nextDecl == nullptr)
					texNextName = texturesResources.at(nextOffset)->GetName();
				else
					texNextName = nextDecl->varName;

				defines += StringHelper::Sprintf("#define %s ((u32)%s + 0x%06X)\n",
				                                 texNextName.c_str(), texName.c_str(), offsetDiff);

				declarations.erase(nextOffset);
				texturesResources.erase(nextOffset);
				texturesSorted.erase(texturesSorted.begin() + i + 1);

				i--;
			}
		}
	}

	return defines;
}
