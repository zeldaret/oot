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
#include "ZBlob.h"
#include "ZCollision.h"
#include "ZCutscene.h"
#include "ZDisplayList.h"
#include "ZLimb.h"
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
		{
			Globals::Instance->game = ZGame::MM_RETAIL;
		}
		else if (string(gameStr) == "SW97" || string(gameStr) == "OOTSW97")
		{
			Globals::Instance->game = ZGame::OOT_SW97;
		}
		else
		{
			// TODO: Error here.
		}
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
			throw StringHelper::Sprintf("Error! File %s does not exist.",
			                            (basePath + "/" + name).c_str());

		rawData = File::ReadAllBytes(basePath + "/" + name);
	}

	int rawDataIndex = 0;

	for (XMLElement* child = reader->FirstChildElement(); child != NULL;
	     child = child->NextSiblingElement())
	{
		if (child->Attribute("Offset") != NULL)
			rawDataIndex =
				strtol(StringHelper::Split(child->Attribute("Offset"), "0x")[1].c_str(), NULL, 16);

		if (Globals::Instance->verbosity >= VERBOSITY_INFO)
			printf("%s: 0x%06X\n", child->Attribute("Name"), rawDataIndex);

		if (string(child->Name()) == "Texture")
		{
			ZTexture* tex = nullptr;

			if (mode == ZFileMode::Extract)
				tex = ZTexture::ExtractFromXML(child, rawData, rawDataIndex, folderName);
			else
				tex = ZTexture::BuildFromXML(child, folderName, mode == ZFileMode::Build);

			tex->SetRawDataIndex(rawDataIndex);

			tex->parent = this;

			resources.push_back(tex);
			rawDataIndex += tex->GetRawDataSize();
		}
		else if (string(child->Name()) == "Blob")
		{
			ZBlob* blob = nullptr;

			if (mode == ZFileMode::Extract)
				blob = ZBlob::ExtractFromXML(child, rawData, rawDataIndex, folderName);
			else
				blob = ZBlob::BuildFromXML(child, folderName, mode == ZFileMode::Build);

			blob->parent = this;

			resources.push_back(blob);

			rawDataIndex += blob->GetRawDataSize();
		}
		else if (string(child->Name()) == "DList")
		{
			ZResource* dList = nullptr;

			if (mode == ZFileMode::Extract)
				dList = ZDisplayList::ExtractFromXML(
					child, rawData, rawDataIndex,
					ZDisplayList::GetDListLength(rawData, rawDataIndex,
				                                 Globals::Instance->game == ZGame::OOT_SW97 ?
                                                     DListType::F3DEX :
                                                     DListType::F3DZEX),
					folderName);
			// else
			// dList = ZDisplayList::BuildFromXML(child, folderName, mode == ZFileMode::Build);
			else
				dList = ZBlob::BuildFromXML(child, folderName, mode == ZFileMode::Build);

			dList->parent = this;

			resources.push_back(dList);

			rawDataIndex += dList->GetRawDataSize();
		}
		else if (string(child->Name()) == "Scene" || string(child->Name()) == "Room")
		{
			ZRoom* room = nullptr;

			if (mode == ZFileMode::Extract)
				room = ZRoom::ExtractFromXML(child, rawData, rawDataIndex, folderName, this,
				                             Globals::Instance->lastScene);

			if (string(child->Name()) == "Scene")
			{
				Globals::Instance->lastScene = room;

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

			resources.push_back(room);

			rawDataIndex += room->GetRawDataSize();
		}
		else if (string(child->Name()) == "Animation")
		{
			ZAnimation* anim = nullptr;

			if (mode == ZFileMode::Extract)
				anim = ZNormalAnimation::ExtractFromXML(child, rawData, rawDataIndex, folderName);

			anim->parent = this;
			resources.push_back(anim);

			rawDataIndex += anim->GetRawDataSize();
		}
		else if (string(child->Name()) == "PlayerAnimation")
		{
			ZLinkAnimation* anim = nullptr;

			if (mode == ZFileMode::Extract)
				anim = ZLinkAnimation::ExtractFromXML(child, rawData, rawDataIndex, folderName);

			anim->parent = this;
			resources.push_back(anim);

			rawDataIndex += anim->GetRawDataSize();
		}
		else if (string(child->Name()) == "CurveAnimation")
		{
			ZCurveAnimation* anim = nullptr;

			if (mode == ZFileMode::Extract)
			{
				anim =
					ZCurveAnimation::ExtractFromXML(child, rawData, rawDataIndex, folderName, this);
			}

			if (anim == nullptr)
			{
				throw std::runtime_error("Couldn't create ZCurveAnimation.");
			}
			resources.push_back(anim);
			rawDataIndex += anim->GetRawDataSize();
		}
		else if (string(child->Name()) == "Skeleton")
		{
			ZSkeleton* skeleton = nullptr;

			if (mode == ZFileMode::Extract)
				skeleton = ZSkeleton::FromXML(child, rawData, rawDataIndex, folderName, this);

			if (skeleton == nullptr)
			{
				throw std::runtime_error("Couldn't create ZSkeleton.");
			}
			resources.push_back(skeleton);
			rawDataIndex += skeleton->GetRawDataSize();
		}
		else if (string(child->Name()) == "Limb")
		{
			ZLimb* limb = nullptr;

			if (mode == ZFileMode::Extract)
				limb = ZLimb::FromXML(child, rawData, rawDataIndex, folderName, this);

			if (limb == nullptr)
			{
				throw std::runtime_error("Couldn't create ZLimb.");
			}
			resources.push_back(limb);
			rawDataIndex += limb->GetRawDataSize();
		}
		else if (string(child->Name()) == "Symbol")
		{
			ZSymbol* symbol = nullptr;

			if (mode == ZFileMode::Extract)
			{
				symbol = ZSymbol::ExtractFromXML(child, rawData, rawDataIndex, this);
			}

			if (symbol == nullptr)
			{
				throw std::runtime_error("Couldn't create ZSymbol.");
			}
			resources.push_back(symbol);
		}
		else if (string(child->Name()) == "Collision")
		{
			ZCollisionHeader* res = nullptr;

			if (mode == ZFileMode::Extract)
			{
				res = new ZCollisionHeader(this, child->Attribute("Name"), rawData, rawDataIndex);
				res->SetName(child->Attribute("Name"));
				res->SetRawDataIndex(rawDataIndex);
			}

			resources.push_back(res);
		}
		else if (string(child->Name()) == "Scalar")
		{
			ZScalar* scalar = nullptr;

			if (mode == ZFileMode::Extract)
				scalar = ZScalar::ExtractFromXML(child, rawData, rawDataIndex, folderName);

			if (scalar != nullptr)
			{
				scalar->parent = this;
				resources.push_back(scalar);

				rawDataIndex += scalar->GetRawDataSize();
			}
			else
			{
				if (Globals::Instance->verbosity >= VERBOSITY_DEBUG)
					printf("No ZScalar created!!");
			}
		}
		else if (string(child->Name()) == "Vector")
		{
			ZVector* vector = nullptr;

			if (mode == ZFileMode::Extract)
				vector = ZVector::ExtractFromXML(child, rawData, rawDataIndex, folderName);

			if (vector != nullptr)
			{
				vector->parent = this;
				resources.push_back(vector);

				rawDataIndex += vector->GetRawDataSize();
			}
			else
			{
				if (Globals::Instance->verbosity >= VERBOSITY_DEBUG)
					printf("No ZVector created!!");
			}
		}
		else if (string(child->Name()) == "Vtx")
		{
			ZVtx* vtx = nullptr;

			if (mode == ZFileMode::Extract)
				vtx = ZVtx::ExtractFromXML(child, rawData, rawDataIndex, folderName);

			if (vtx != nullptr)
			{
				vtx->parent = this;
				resources.push_back(vtx);

				rawDataIndex += vtx->GetRawDataSize();
			}
			else
			{
				if (Globals::Instance->verbosity >= VERBOSITY_DEBUG)
					printf("No ZVtx created!!");
			}
		}
		else if (string(child->Name()) == "Cutscene")
		{
			ZCutscene* cs = nullptr;

			if (mode == ZFileMode::Extract)
				cs = ZCutscene::ExtractFromXML(child, rawData, rawDataIndex, folderName);

			if (cs != nullptr)
			{
				cs->parent = this;
				resources.push_back(cs);
				rawDataIndex += cs->GetRawDataSize();
			}
		}
		else if (string(child->Name()) == "Array")
		{
			ZArray* array = nullptr;

			if (mode == ZFileMode::Extract)
				array = ZArray::ExtractFromXML(child, rawData, rawDataIndex, folderName, this);

			if (array != nullptr)
			{
				resources.push_back(array);
				rawDataIndex += array->GetRawDataSize();
			}
		}
		else
		{
			std::cerr << "ERROR bad type\n";
			printf("Encountered unknown resource type: %s on line: %d\n", child->Name(),
			       child->GetLineNum());
			std::exit(EXIT_FAILURE);
		}
	}
}

void ZFile::BuildResources()
{
	cout << "Building resources " << name << "\n";

	int size = 0;

	for (ZResource* res : resources)
		size += res->GetRawDataSize();

	// Make sure size is 16 byte aligned
	if (size % 16 != 0)
		size = ((size / 16) + 1) * 16;

	vector<uint8_t> file = vector<uint8_t>(size);
	int fileIndex = 0;

	for (ZResource* res : resources)
	{
		// Console.WriteLine("Building resource " + res.GetName());
		memcpy(file.data() + fileIndex, res->GetRawData().data(), res->GetRawData().size());
		// Array.Copy(res.GetRawData(), 0, file, fileIndex, res.GetRawData().Length);
		fileIndex += res->GetRawData().size();
	}

	File::WriteAllBytes(basePath + "/" + name, file);
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
#endif

	AddDeclarationDebugChecks(address);

	Declaration* decl = new Declaration(includePath, size, varType, varName);

	decl->isArray = true;
	decl->arrayItemCnt = arrayItemCnt;

	declarations[address] = decl;
	return declarations[address];
}

void ZFile::AddDeclarationDebugChecks(uint32_t address)
{
#ifdef _DEBUG
	if (address == 0x5600)
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
			// cout << "EXTERN\n";
			string path = Path::GetFileNameWithoutExtension(res->GetName()).c_str();

			while (StringHelper::EndsWith(outputDir, "/"))
				outputDir = outputDir.substr(0, outputDir.length() - 1);

			// HACK
			string declType = "u64";

			if (res->GetResourceType() != ZResourceType::Texture)
				declType = "u8";

			AddDeclarationIncludeArray(
				res->GetRawDataIndex(),
				StringHelper::Sprintf("%s/%s.%s.inc.c", outputDir.c_str(),
			                          Path::GetFileNameWithoutExtension(res->GetOutName()).c_str(),
			                          res->GetExternalExtension().c_str()),
				res->GetRawDataSize(), declType, res->GetName(), 0);

			// File::WriteAllText("build/" + outputDir + "/" +
			// Path::GetFileNameWithoutExtension(res->GetName()) + ".inc.c", resSrc);
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

	while (StringHelper::EndsWith(outputDir, "/"))
		outputDir = outputDir.substr(0, outputDir.length() - 1);

	// string buildPath = "build/" + outputDir + "/" + "basefile.txt";
	string outPath = outputDir + "/" + Path::GetFileNameWithoutExtension(name) + ".c";
	// printf("WRITING %s\n", buildPath.c_str());

	// if (!Directory::Exists(Path::GetPath(outPath)))
	// Directory::CreateDirectory(Path::GetPath(outPath));

	// if (!Directory::Exists(Path::GetPath(buildPath)))
	// Directory::CreateDirectory(Path::GetPath(buildPath));

	File::WriteAllText(outPath, sourceOutput);
	// File::WriteAllText(buildPath, outPath);

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

	File::WriteAllText(outputDir + "/" + Path::GetFileNameWithoutExtension(name) + ".h",
	                   sourceOutput);
}

void ZFile::GenerateHLIntermediette()
{
	// This is kinda hacky but it gets the job done for now...
	HLModelIntermediette* mdl = new HLModelIntermediette();

	for (ZResource* res : resources)
	{
		if (typeid(ZDisplayList) == typeid(*res) || typeid(ZSkeleton) == typeid(*res))
			res->GenerateHLIntermediette(*mdl);
	}

	std::string test = mdl->ToOBJFile();
	std::string test2 = mdl->ToFBXFile();
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
	// pair<int32_t, Declaration*> lastItem = declarationKeysSorted[0];

	// for (int i = 1; i < declarationKeysSorted.size(); i++)
	//{
	//	pair<int32_t, Declaration*> curItem = declarationKeysSorted[i];

	//	if (curItem.second->isArray && lastItem.second->isArray)
	//	{
	//		if (curItem.second->varType == lastItem.second->varType)
	//		{
	//			// TEST: For now just do Vtx declarations...
	//			if (lastItem.second->varType == "static Vtx")
	//			{
	//				lastItem.second->size += curItem.second->size;
	//				lastItem.second->arrayItemCnt += curItem.second->arrayItemCnt;
	//				lastItem.second->text += "\n" + curItem.second->text;
	//				declarations.erase(curItem.first);
	//				declarationKeysSorted.erase(declarationKeysSorted.begin() + i);
	//				i--;
	//				continue;

	//				int bp = 0;
	//			}
	//		}
	//	}

	//	lastItem = curItem;
	//}

	for (pair<uint32_t, Declaration*> item : declarations)
	{
		ProcessDeclarationText(item.second);
	}

	for (pair<int32_t, Declaration*> item : declarations)
	{
		while (item.second->size % 4 != 0)
		{
			item.second->size++;
		}

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
	for (pair<int32_t, Declaration*> item : declarations)
	{
		if (item.first >= rangeStart && item.first < rangeEnd)
		{
			if (lastAddr != 0 && declarations.find(lastAddr) != declarations.end() &&
			    lastAddr + declarations[lastAddr]->size > item.first)
			{
				printf("WARNING: Intersection detected from 0x%06X:0x%06X, conflicts with 0x%06X\n",
				       lastAddr, lastAddr + declarations[lastAddr]->size, item.first);
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

	// TODO: THIS CONTAINS REDUNDANCIES. CLEAN THIS UP!
	if (lastAddr + declarations[lastAddr]->size < rawData.size() &&
	    lastAddr + declarations[lastAddr]->size >= rangeStart &&
	    lastAddr + declarations[lastAddr]->size < rangeEnd)
	{
		int diff = (int)(rawData.size() - (lastAddr + declarations[lastAddr]->size));

		string src = "    ";

		for (int i = 0; i < diff; i++)
		{
			src += StringHelper::Sprintf("0x%02X, ",
			                             rawData[lastAddr + declarations[lastAddr]->size + i]);

			if (i % 16 == 15)
				src += "\n    ";
		}

		if (declarations.find(lastAddr + declarations[lastAddr]->size) == declarations.end())
		{
			if (diff > 0)
			{
				AddDeclarationArray(lastAddr + declarations[lastAddr]->size,
				                    DeclarationAlignment::None, diff, "static u8",
				                    StringHelper::Sprintf("unaccounted_%06X",
				                                          lastAddr + declarations[lastAddr]->size),
				                    diff, src);
			}
		}
	}

	// Go through include declarations
	// First, handle the prototypes (static only for now)
	int protoCnt = 0;
	for (pair<int32_t, Declaration*> item : declarations)
	{
		if (item.second->includePath == "" &&
		    StringHelper::StartsWith(item.second->varType, "static ") &&
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
	for (pair<int32_t, Declaration*> item : declarations)
	{
		if (item.first < rangeStart || item.first >= rangeEnd)
		{
			continue;
		}

		if (item.second->includePath != "")
		{
			// output += StringHelper::Sprintf("#include \"%s\"\n",
			// item.second->includePath.c_str());
			output += StringHelper::Sprintf(
				"%s %s[] = {\n#include \"%s\"\n};\n\n", item.second->varType.c_str(),
				item.second->varName.c_str(), item.second->includePath.c_str());
		}
		else if (item.second->varType != "")
		{
			if (item.second->preText != "")
				output += item.second->preText + "\n";

			if (item.second->isArray)
			{
				if (item.second->arrayItemCnt == 0)
					output += StringHelper::Sprintf("%s %s[] = {\n", item.second->varType.c_str(),
					                                item.second->varName.c_str());
				else
					output += StringHelper::Sprintf("%s %s[%i] = {\n", item.second->varType.c_str(),
					                                item.second->varName.c_str(),
					                                item.second->arrayItemCnt);

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

	for (pair<int32_t, Declaration*> item : declarations)
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