#include "Globals.h"
#include "Utils/Directory.h"
#include "Utils/File.h"
#include "Utils/Path.h"
#include "WarningHandler.h"
#include "ZAnimation.h"
#include "ZBackground.h"
#include "ZBlob.h"
#include "ZFile.h"
#include "ZTexture.h"

#include <functional>
#include "CrashHandler.h"

#include <string>
#include <string_view>
#include "tinyxml2.h"

using ArgFunc = void (*)(int&, char**);

void Arg_SetOutputPath(int& i, char* argv[]);
void Arg_SetInputPath(int& i, char* argv[]);
void Arg_SetBaseromPath(int& i, char* argv[]);
void Arg_SetSourceOutputPath(int& i, char* argv[]);
void Arg_GenerateSourceFile(int& i, char* argv[]);
void Arg_TestMode(int& i, char* argv[]);
void Arg_LegacyDList(int& i, char* argv[]);
void Arg_EnableProfiling(int& i, char* argv[]);
void Arg_UseExternalResources(int& i, char* argv[]);
void Arg_SetTextureType(int& i, char* argv[]);
void Arg_ReadConfigFile(int& i, char* argv[]);
void Arg_EnableErrorHandler(int& i, char* argv[]);
void Arg_SetVerbosity(int& i, char* argv[]);
void Arg_VerboseUnaccounted(int& i, char* argv[]);
void Arg_SetExporter(int& i, char* argv[]);
void Arg_EnableGCCCompat(int& i, char* argv[]);
void Arg_ForceStatic(int& i, char* argv[]);
void Arg_ForceUnaccountedStatic(int& i, char* argv[]);

int main(int argc, char* argv[]);

bool Parse(const fs::path& xmlFilePath, const fs::path& basePath, const fs::path& outPath,
           ZFileMode fileMode);

void ParseArgs(int& argc, char* argv[]);

void BuildAssetTexture(const fs::path& pngFilePath, TextureType texType, const fs::path& outPath);
void BuildAssetBackground(const fs::path& imageFilePath, const fs::path& outPath);
void BuildAssetBlob(const fs::path& blobFilePath, const fs::path& outPath);
ZFileMode ParseFileMode(const std::string& buildMode, ExporterSet* exporterSet);
int HandleExtract(ZFileMode fileMode, ExporterSet* exporterSet);

extern const char gBuildHash[];

int main(int argc, char* argv[])
{
	int returnCode = 0;

	if (argc < 2)
	{
		printf("ZAPD.out (%s) [mode (btex/bovl/bsf/bblb/bmdlintr/bamnintr/e)] ...\n", gBuildHash);
		return 1;
	}

	Globals* g = new Globals();
	WarningHandler::Init(argc, argv);

	for (int i = 1; i < argc; i++)
	{
		if (!strcmp(argv[i], "--version"))
		{
			printf("ZAPD.out %s\n", gBuildHash);
			return 0;
		}
		else if (!strcmp(argv[i], "--help") || !strcmp(argv[i], "-h"))
		{
			printf("Congratulations!\n");
			printf("You just found the (unimplemented and undocumented) ZAPD's help message.\n");
			printf("Feel free to implement it if you want :D\n");

			WarningHandler::PrintHelp();
			return 0;
		}
	}

	ParseArgs(argc, argv);

	// Parse File Mode
	ExporterSet* exporterSet = Globals::Instance->GetExporterSet();
	std::string buildMode = argv[1];
	ZFileMode fileMode = ParseFileMode(buildMode, exporterSet);

	if (fileMode == ZFileMode::Invalid)
	{
		printf("Error: Invalid file mode '%s'\n", buildMode.c_str());
		return 1;
	}

	// We've parsed through our commands once. If an exporter exists, it's been set by now.
	// Now we'll parse through them again but pass them on to our exporter if one is available.
	if (exporterSet != nullptr && exporterSet->parseArgsFunc != nullptr)
	{
		for (int32_t i = 2; i < argc; i++)
			exporterSet->parseArgsFunc(argc, argv, i);
	}

	if (Globals::Instance->verbosity >= VerbosityLevel::VERBOSITY_INFO)
		printf("ZAPD: Zelda Asset Processor For Decomp: %s\n", gBuildHash);

	if (Globals::Instance->verbosity >= VerbosityLevel::VERBOSITY_DEBUG)
		WarningHandler::PrintWarningsDebugInfo();

	if (fileMode == ZFileMode::Extract || fileMode == ZFileMode::BuildSourceFile)
		returnCode = HandleExtract(fileMode, exporterSet);
	else if (fileMode == ZFileMode::BuildTexture)
		BuildAssetTexture(Globals::Instance->inputPath, Globals::Instance->texType,
		                  Globals::Instance->outputPath);
	else if (fileMode == ZFileMode::BuildBackground)
		BuildAssetBackground(Globals::Instance->inputPath, Globals::Instance->outputPath);
	else if (fileMode == ZFileMode::BuildBlob)
		BuildAssetBlob(Globals::Instance->inputPath, Globals::Instance->outputPath);

	delete g;
	return returnCode;
}

bool Parse(const fs::path& xmlFilePath, const fs::path& basePath, const fs::path& outPath,
           ZFileMode fileMode)
{
	tinyxml2::XMLDocument doc;
	tinyxml2::XMLError eResult = doc.LoadFile(xmlFilePath.string().c_str());

	if (eResult != tinyxml2::XML_SUCCESS)
	{
		// TODO: use XMLDocument::ErrorIDToName to get more specific error messages here
		HANDLE_ERROR(WarningType::InvalidXML,
		             StringHelper::Sprintf("invalid XML file: '%s'", xmlFilePath.c_str()), "");
		return false;
	}

	tinyxml2::XMLNode* root = doc.FirstChild();

	if (root == nullptr)
	{
		HANDLE_WARNING(
			WarningType::InvalidXML,
			StringHelper::Sprintf("missing Root tag in xml file: '%s'", xmlFilePath.c_str()), "");
		return false;
	}

	for (tinyxml2::XMLElement* child = root->FirstChildElement(); child != NULL;
	     child = child->NextSiblingElement())
	{
		if (std::string_view(child->Name()) == "File")
		{
			ZFile* file = new ZFile(fileMode, child, basePath, outPath, "", xmlFilePath);
			Globals::Instance->files.push_back(file);
			if (fileMode == ZFileMode::ExternalFile)
			{
				Globals::Instance->externalFiles.push_back(file);
				file->isExternalFile = true;
			}
		}
		else if (std::string(child->Name()) == "ExternalFile")
		{
			const char* xmlPathValue = child->Attribute("XmlPath");
			if (xmlPathValue == nullptr)
			{
				throw std::runtime_error(StringHelper::Sprintf(
					"Parse: Fatal error in '%s'.\n"
					"\t Missing 'XmlPath' attribute in `ExternalFile` element.\n",
					xmlFilePath.c_str()));
			}
			const char* outPathValue = child->Attribute("OutPath");
			if (outPathValue == nullptr)
			{
				throw std::runtime_error(StringHelper::Sprintf(
					"Parse: Fatal error in '%s'.\n"
					"\t Missing 'OutPath' attribute in `ExternalFile` element.\n",
					xmlFilePath.c_str()));
			}

			fs::path externalXmlFilePath =
				Globals::Instance->cfg.externalXmlFolder / fs::path(xmlPathValue);
			fs::path externalOutFilePath = fs::path(outPathValue);

			if (Globals::Instance->verbosity >= VerbosityLevel::VERBOSITY_INFO)
			{
				printf("Parsing external file: '%s'\n", externalXmlFilePath.c_str());
			}

			// Recursion. What can go wrong?
			Parse(externalXmlFilePath, basePath, externalOutFilePath, ZFileMode::ExternalFile);
		}
		else
		{
			std::string errorHeader =
				StringHelper::Sprintf("when parsing file '%s'", xmlFilePath.c_str());
			std::string errorBody = StringHelper::Sprintf(
				"Found a resource outside a File element: '%s'", child->Name());
			HANDLE_ERROR(WarningType::InvalidXML, errorHeader, errorBody);
		}
	}

	if (fileMode != ZFileMode::ExternalFile)
	{
		ExporterSet* exporterSet = Globals::Instance->GetExporterSet();

		if (exporterSet != nullptr && exporterSet->beginXMLFunc != nullptr)
			exporterSet->beginXMLFunc();

		for (ZFile* file : Globals::Instance->files)
		{
			if (fileMode == ZFileMode::BuildSourceFile)
				file->BuildSourceFile();
			else
				file->ExtractResources();
		}

		if (exporterSet != nullptr && exporterSet->endXMLFunc != nullptr)
			exporterSet->endXMLFunc();
	}

	return true;
}

void ParseArgs(int& argc, char* argv[])
{
	static const std::unordered_map<std::string, ArgFunc> ArgFuncDictionary = {
		{"-o", &Arg_SetOutputPath},
		{"--outputpath", &Arg_SetOutputPath},
		{"-i", &Arg_SetInputPath},
		{"--inputpath", &Arg_SetInputPath},
		{"-b", &Arg_SetBaseromPath},
		{"--baserompath", &Arg_SetBaseromPath},
		{"-osf", &Arg_SetSourceOutputPath},
		{"-gsf", &Arg_GenerateSourceFile},
		{"-tm", &Arg_TestMode},
		{"-ulzdl", &Arg_LegacyDList},
		{"-profile", &Arg_EnableProfiling},
		{"-uer", &Arg_UseExternalResources},
		{"-tt", &Arg_SetTextureType},
		{"-rconf", &Arg_ReadConfigFile},
		{"-eh", &Arg_EnableErrorHandler},
		{"-v", &Arg_SetVerbosity},
		{"-vu", &Arg_VerboseUnaccounted},
		{"--verbose-unaccounted", &Arg_VerboseUnaccounted},
		{"-se", &Arg_SetExporter},
		{"--set-exporter", &Arg_SetExporter},
		{"--gcc-compat", &Arg_EnableGCCCompat},
		{"-s", &Arg_ForceStatic},
		{"--static", &Arg_ForceStatic},
		{"-us", &Arg_ForceUnaccountedStatic},
		{"--unaccounted-static", &Arg_ForceUnaccountedStatic},
	};

	for (int32_t i = 2; i < argc; i++)
	{
		std::string arg = argv[i];

		// Ignore warning args as they have already been parsed
		if (arg.length() > 2 && arg[0] == '-' && arg[1] == 'W' && arg[2] != '\0')
		{
			continue;
		}

		auto it = ArgFuncDictionary.find(arg);
		if (it == ArgFuncDictionary.end())
		{
			fprintf(stderr, "Unsupported argument: %s\n", arg.c_str());
			continue;
		}

		std::invoke(it->second, i, argv);
	}
}

ZFileMode ParseFileMode(const std::string& buildMode, ExporterSet* exporterSet)
{
	ZFileMode fileMode = ZFileMode::Invalid;

	if (buildMode == "btex")
		fileMode = ZFileMode::BuildTexture;
	else if (buildMode == "bren")
		fileMode = ZFileMode::BuildBackground;
	else if (buildMode == "bsf")
		fileMode = ZFileMode::BuildSourceFile;
	else if (buildMode == "bblb")
		fileMode = ZFileMode::BuildBlob;
	else if (buildMode == "e")
		fileMode = ZFileMode::Extract;
	else if (exporterSet != nullptr && exporterSet->parseFileModeFunc != nullptr)
		exporterSet->parseFileModeFunc(buildMode, fileMode);

	return fileMode;
}

void Arg_SetOutputPath(int& i, [[maybe_unused]] char* argv[])
{
	Globals::Instance->outputPath = argv[++i];

	if (Globals::Instance->sourceOutputPath == "")
		Globals::Instance->sourceOutputPath = Globals::Instance->outputPath;
}

void Arg_SetInputPath(int& i, char* argv[])
{
	Globals::Instance->inputPath = argv[++i];
}

void Arg_SetBaseromPath(int& i, char* argv[])
{
	Globals::Instance->baseRomPath = argv[++i];
}

void Arg_SetSourceOutputPath(int& i, char* argv[])
{
	Globals::Instance->sourceOutputPath = argv[++i];
}

void Arg_GenerateSourceFile(int& i, char* argv[])
{
	// Generate source file during extraction
	Globals::Instance->genSourceFile = std::string_view(argv[++i]) == "1";
}

void Arg_TestMode(int& i, char* argv[])
{
	// Test Mode (enables certain experimental features)
	Globals::Instance->testMode = std::string_view(argv[++i]) == "1";
}

void Arg_LegacyDList(int& i, char* argv[])
{
	Globals::Instance->useLegacyZDList = std::string_view(argv[++i]) == "1";
}

void Arg_EnableProfiling(int& i, char* argv[])
{
	Globals::Instance->profile = std::string_view(argv[++i]) == "1";
}

void Arg_UseExternalResources(int& i, char* argv[])
{
	// Split resources into their individual components(enabled by default)
	// TODO: We may wish to make this a part of the config file...
	Globals::Instance->useExternalResources = std::string_view(argv[++i]) == "1";
}

void Arg_SetTextureType(int& i, char* argv[])
{
	Globals::Instance->texType = ZTexture::GetTextureTypeFromString(argv[++i]);
}

void Arg_ReadConfigFile(int& i, char* argv[])
{
	Globals::Instance->cfg.ReadConfigFile(argv[++i]);
}

void Arg_EnableErrorHandler([[maybe_unused]] int& i, [[maybe_unused]] char* argv[])
{
	CrashHandler_Init();
}

void Arg_SetVerbosity(int& i, char* argv[])
{
	Globals::Instance->verbosity = static_cast<VerbosityLevel>(strtol(argv[++i], NULL, 16));
}

void Arg_VerboseUnaccounted([[maybe_unused]] int& i, [[maybe_unused]] char* argv[])
{
	Globals::Instance->verboseUnaccounted = true;
}

void Arg_SetExporter(int& i, char* argv[])
{
	Globals::Instance->currentExporter = argv[++i];
}

void Arg_EnableGCCCompat([[maybe_unused]] int& i, [[maybe_unused]] char* argv[])
{
	Globals::Instance->gccCompat = true;
}

void Arg_ForceStatic([[maybe_unused]] int& i, [[maybe_unused]] char* argv[])
{
	Globals::Instance->forceStatic = true;
}

void Arg_ForceUnaccountedStatic([[maybe_unused]] int& i, [[maybe_unused]] char* argv[])
{
	Globals::Instance->forceUnaccountedStatic = true;
}

int HandleExtract(ZFileMode fileMode, ExporterSet* exporterSet)
{
	bool procFileModeSuccess = false;

	if (exporterSet != nullptr && exporterSet->processFileModeFunc != nullptr)
		procFileModeSuccess = exporterSet->processFileModeFunc(fileMode);

	if (!procFileModeSuccess)
	{
		bool parseSuccessful;

		for (auto& extFile : Globals::Instance->cfg.externalFiles)
		{
			fs::path externalXmlFilePath =
				Globals::Instance->cfg.externalXmlFolder / extFile.xmlPath;

			if (Globals::Instance->verbosity >= VerbosityLevel::VERBOSITY_INFO)
				printf("Parsing external file from config: '%s'\n", externalXmlFilePath.c_str());

			parseSuccessful = Parse(externalXmlFilePath, Globals::Instance->baseRomPath,
			                        extFile.outPath, ZFileMode::ExternalFile);

			if (!parseSuccessful)
				return 1;
		}

		parseSuccessful = Parse(Globals::Instance->inputPath, Globals::Instance->baseRomPath,
		                        Globals::Instance->outputPath, fileMode);
		if (!parseSuccessful)
			return 1;
	}

	return 0;
}

void BuildAssetTexture(const fs::path& pngFilePath, TextureType texType, const fs::path& outPath)
{
	std::string name = outPath.stem().string();

	ZTexture tex(nullptr);

	if (name.find("u32") != std::string::npos)
		tex.dWordAligned = false;

	tex.FromPNG(pngFilePath.string(), texType);
	std::string cfgPath = StringHelper::Split(pngFilePath.string(), ".")[0] + ".cfg";

	if (File::Exists(cfgPath))
		name = File::ReadAllText(cfgPath);

	std::string src = tex.GetBodySourceCode();

	File::WriteAllText(outPath.string(), src);
}

void BuildAssetBackground(const fs::path& imageFilePath, const fs::path& outPath)
{
	ZBackground background(nullptr);
	background.ParseBinaryFile(imageFilePath.string(), false);

	File::WriteAllText(outPath.string(), background.GetBodySourceCode());
}

void BuildAssetBlob(const fs::path& blobFilePath, const fs::path& outPath)
{
	ZBlob* blob = ZBlob::FromFile(blobFilePath.string());
	std::string name = outPath.stem().string();  // filename without extension

	std::string src = blob->GetBodySourceCode();

	File::WriteAllText(outPath.string(), src);

	delete blob;
}
