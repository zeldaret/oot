#include "BuildInfo.h"
#include "Directory.h"
#include "File.h"
#include "Globals.h"
#include "HighLevel/HLAnimationIntermediette.h"
#include "HighLevel/HLModelIntermediette.h"
#include "Overlays/ZOverlay.h"
#include "Path.h"
#include "ZAnimation.h"
#include "ZBackground.h"
#include "ZBlob.h"
#include "ZFile.h"
#include "ZTexture.h"

#if !defined(_MSC_VER) && !defined(__CYGWIN__)
#include <csignal>
#include <cxxabi.h>  // for __cxa_demangle
#include <dlfcn.h>   // for dladdr
#include <execinfo.h>
#include <unistd.h>
#endif

#include <string>
#include "tinyxml2.h"

using namespace tinyxml2;
using namespace std;

bool Parse(const std::string& xmlFilePath, const std::string& basePath, const std::string& outPath,
           ZFileMode fileMode);

void BuildAssetTexture(const std::string& pngFilePath, TextureType texType,
                       const std::string& outPath);
void BuildAssetBackground(const std::string& imageFilePath, const std::string& outPath);
void BuildAssetBlob(const std::string& blobFilePath, const std::string& outPath);
void BuildAssetModelIntermediette(const std::string& mdlPath, const std::string& outPath);
void BuildAssetAnimationIntermediette(const std::string& animPath, const std::string& outPath);

int NewMain(int argc, char* argv[]);

#if !defined(_MSC_VER) && !defined(__CYGWIN__)
void ErrorHandler(int sig)
{
	void* array[4096];
	const int nMaxFrames = sizeof(array) / sizeof(array[0]);
	size_t size = backtrace(array, nMaxFrames);
	char** symbols = backtrace_symbols(array, nMaxFrames);

	for (size_t i = 1; i < size; i++)
	{
		Dl_info info;
		int gotAddress = dladdr(array[i], &info);
		string functionName(symbols[i]);

		if (gotAddress != 0 && info.dli_sname != nullptr)
		{
			int status;
			char* demangled = abi::__cxa_demangle(info.dli_sname, nullptr, nullptr, &status);
			const char* nameFound = info.dli_sname;

			if (status == 0)
			{
				nameFound = demangled;
			}

			functionName = StringHelper::Sprintf("%s (+0x%X)", nameFound,
			                                     (char*)array[i] - (char*)info.dli_saddr);
			free(demangled);
		}

		fprintf(stderr, "%-3zd %s\n", i, functionName.c_str());
	}

	// backtrace_symbols_fd(array, size, STDERR_FILENO);
	free(symbols);
	exit(1);
}
#endif

int main(int argc, char* argv[])
{
	Globals* g = new Globals();
	return NewMain(argc, argv);
}

int NewMain(int argc, char* argv[])
{
	// Syntax: ZAPD.exe [mode (btex/bovl/e)] (Arbritrary Number of Arguments)

	if (argc < 2)
	{
		printf("ZAPD.exe (%s) [mode (btex/bovl/bsf/bblb/bmdlintr/bamnintr/e)] ...\n", gBuildHash);
		return 1;
	}

	// Parse File Mode
	string buildMode = argv[1];
	ZFileMode fileMode = ZFileMode::Invalid;

	if (buildMode == "btex")
		fileMode = ZFileMode::BuildTexture;
	else if (buildMode == "bren")
		fileMode = ZFileMode::BuildBackground;
	else if (buildMode == "bovl")
		fileMode = ZFileMode::BuildOverlay;
	else if (buildMode == "bsf")
		fileMode = ZFileMode::BuildSourceFile;
	else if (buildMode == "bblb")
		fileMode = ZFileMode::BuildBlob;
	else if (buildMode == "bmdlintr")
		fileMode = ZFileMode::BuildModelIntermediette;
	else if (buildMode == "bamnintr")
		fileMode = ZFileMode::BuildAnimationIntermediette;
	else if (buildMode == "e")
		fileMode = ZFileMode::Extract;

	if (fileMode == ZFileMode::Invalid)
	{
		printf("Error: Invalid file mode '%s'\n", buildMode.c_str());
		return 1;
	}

	// Parse other "commands"
	for (int i = 2; i < argc; i++)
	{
		string arg = argv[i];

		if (arg == "-o" || arg == "--outputpath")  // Set output path
		{
			Globals::Instance->outputPath = argv[i + 1];

			if (Globals::Instance->sourceOutputPath == "")
				Globals::Instance->sourceOutputPath = Globals::Instance->outputPath;

			i++;
		}
		else if (arg == "-i" || arg == "--inputpath")  // Set input path
		{
			Globals::Instance->inputPath = argv[i + 1];
			i++;
		}
		else if (arg == "-b" || arg == "--baserompath")  // Set baserom path
		{
			Globals::Instance->baseRomPath = argv[i + 1];
			i++;
		}
		else if (arg == "-osf")  // Set source output path
		{
			Globals::Instance->sourceOutputPath = argv[i + 1];
			i++;
		}
		else if (arg == "-gsf")  // Generate source file during extraction
		{
			Globals::Instance->genSourceFile = string(argv[i + 1]) == "1";
			i++;
		}
		else if (arg == "-ifp")  // Include file prefix in generated symbols
		{
			Globals::Instance->includeFilePrefix = string(argv[i + 1]) == "1";
			i++;
		}
		else if (arg == "-tm")  // Test Mode
		{
			Globals::Instance->testMode = string(argv[i + 1]) == "1";
			i++;
		}
		else if (arg == "-ulzdl")  // Use Legacy ZDisplay List (Linux builds only)
		{
			Globals::Instance->useLegacyZDList = string(argv[i + 1]) == "1";
			i++;
		}
		else if (arg == "-profile")  // Profile
		{
			Globals::Instance->profile = string(argv[i + 1]) == "1";
			i++;
		}
		else if (arg ==
		         "-uer")  // Split resources into their individual components (enabled by default)
		{
			Globals::Instance->useExternalResources = string(argv[i + 1]) == "1";
			i++;
		}
		else if (arg == "-tt")  // Set texture type
		{
			Globals::Instance->texType = ZTexture::GetTextureTypeFromString(argv[i + 1]);
			i++;
		}
		else if (arg == "-cfg")  // Set cfg path
		{
			Globals::Instance->cfgPath = argv[i + 1];
			i++;
		}
		else if (arg == "-sm")  // Set symbol map path
		{
			Globals::Instance->GenSymbolMap(argv[i + 1]);
			i++;
		}
		else if (arg == "-rconf")  // Read Config File
		{
			Globals::Instance->ReadConfigFile(argv[i + 1]);
			i++;
		}
		else if (arg == "-al")  // Set actor list
		{
			i++;
		}
		else if (arg == "-ol")  // Set object list
		{
			i++;
		}
		else if (arg == "-eh")  // Enable Error Handler
		{
#if !defined(_MSC_VER) && !defined(__CYGWIN__)
			signal(SIGSEGV, ErrorHandler);
			signal(SIGABRT, ErrorHandler);
#else
			printf("Warning: Tried to set error handler, but this build lacks support for one.\n");
#endif
		}
		else if (arg == "-v")  // Verbose
		{
			Globals::Instance->verbosity = (VerbosityLevel)strtol(argv[++i], NULL, 16);
		}
	}

	if (Globals::Instance->verbosity >= VERBOSITY_INFO)
		printf("ZAPD: Zelda Asset Processor For Decomp: %s\n", gBuildHash);

	try
	{
		if (fileMode == ZFileMode::Extract || fileMode == ZFileMode::BuildSourceFile)
		{
			bool parseSuccessful =
				Parse(Globals::Instance->inputPath, Globals::Instance->baseRomPath,
			          Globals::Instance->outputPath, fileMode);

			if (!parseSuccessful)
				return 1;
		}
		else if (fileMode == ZFileMode::BuildTexture)
		{
			TextureType texType = Globals::Instance->texType;
			string pngFilePath = Globals::Instance->inputPath;
			string outFilePath = Globals::Instance->outputPath;

			BuildAssetTexture(pngFilePath, texType, outFilePath);
		}
		else if (fileMode == ZFileMode::BuildBackground)
		{
			string imageFilePath = Globals::Instance->inputPath;
			string outFilePath = Globals::Instance->outputPath;

			BuildAssetBackground(imageFilePath, outFilePath);
		}
		else if (fileMode == ZFileMode::BuildBlob)
		{
			string blobFilePath = Globals::Instance->inputPath;
			string outFilePath = Globals::Instance->outputPath;

			BuildAssetBlob(blobFilePath, outFilePath);
		}
		else if (fileMode == ZFileMode::BuildModelIntermediette)
		{
			BuildAssetModelIntermediette(Globals::Instance->inputPath,
			                             Globals::Instance->outputPath);
		}
		else if (fileMode == ZFileMode::BuildAnimationIntermediette)
		{
			BuildAssetAnimationIntermediette(Globals::Instance->inputPath,
			                                 Globals::Instance->outputPath);
		}
		else if (fileMode == ZFileMode::BuildOverlay)
		{
			ZOverlay* overlay =
				ZOverlay::FromBuild(Path::GetDirectoryName(Globals::Instance->inputPath),
			                        Path::GetDirectoryName(Globals::Instance->cfgPath));

			if (overlay)
				File::WriteAllText(Globals::Instance->outputPath, overlay->GetSourceOutputCode(""));
		}
	}
	catch (std::runtime_error e)
	{
		printf("Exception occurred: %s\n", e.what());
	}

	return 0;
}

bool Parse(const std::string& xmlFilePath, const std::string& basePath, const std::string& outPath,
           ZFileMode fileMode)
{
	XMLDocument doc;
	XMLError eResult = doc.LoadFile(xmlFilePath.c_str());

	if (eResult != tinyxml2::XML_SUCCESS)
	{
		fprintf(stderr, "Invalid xml file: '%s'\n", xmlFilePath.c_str());
		return false;
	}

	XMLNode* root = doc.FirstChild();

	if (root == nullptr)
	{
		fprintf(stderr, "Missing Root tag in xml file: '%s'\n", xmlFilePath.c_str());
		return false;
	}

	for (XMLElement* child = root->FirstChildElement(); child != NULL;
	     child = child->NextSiblingElement())
	{
		if (string(child->Name()) == "File")
		{
			ZFile* file = new ZFile(fileMode, child, basePath, outPath, "", false);
			Globals::Instance->files.push_back(file);
		}
	}

	for (ZFile* file : Globals::Instance->files)
	{
		if (fileMode == ZFileMode::BuildSourceFile)
			file->BuildSourceFile(outPath);
		else
			file->ExtractResources(outPath);
	}

	// All done, free files
	for (ZFile* file : Globals::Instance->files)
		delete file;

	Globals::Instance->files.clear();

	return true;
}

void BuildAssetTexture(const std::string& pngFilePath, TextureType texType,
                       const std::string& outPath)
{
	vector<string> split = StringHelper::Split(outPath, "/");
	string name = StringHelper::Split(split[split.size() - 1], ".")[0];
	ZTexture* tex = ZTexture::FromPNG(pngFilePath, texType);
	string cfgPath = StringHelper::Split(pngFilePath, ".")[0] + ".cfg";

	if (File::Exists(cfgPath))
		name = File::ReadAllText(cfgPath);

	// string src = StringHelper::Sprintf("u64 %s[] = \n{\n", name.c_str()) +
	// tex->GetSourceOutputCode(name) + "};\n";
	string src = tex->GetSourceOutputCode(name);

	File::WriteAllText(outPath, src);

	delete tex;
}

void BuildAssetBackground(const std::string& imageFilePath, const std::string& outPath)
{
	ZBackground background(nullptr);
	background.ParseBinaryFile(imageFilePath, false);

	File::WriteAllText(outPath, background.GetBodySourceCode());
}

void BuildAssetBlob(const std::string& blobFilePath, const std::string& outPath)
{
	vector<string> split = StringHelper::Split(outPath, "/");
	ZBlob* blob = ZBlob::FromFile(blobFilePath);
	string name = StringHelper::Split(split[split.size() - 1], ".")[0];

	// string src = StringHelper::Sprintf("u8 %s[] = \n{\n", name.c_str()) +
	// blob->GetSourceOutputCode(name) + "};\n";
	string src = blob->GetSourceOutputCode(name);

	File::WriteAllText(outPath, src);

	delete blob;
}

void BuildAssetModelIntermediette(const std::string& mdlPath, const std::string& outPath)
{
	XMLDocument doc;
	// XMLError eResult = doc.LoadFile(mdlPath.c_str());

	vector<string> split = StringHelper::Split(outPath, "/");
	HLModelIntermediette* mdl = HLModelIntermediette::FromXML(doc.RootElement());
	string output = mdl->OutputCode();

	File::WriteAllText(outPath, output);

	delete mdl;
}

void BuildAssetAnimationIntermediette(const std::string& animPath, const std::string& outPath)
{
	vector<string> split = StringHelper::Split(outPath, "/");
	ZFile* file = new ZFile("", split[split.size() - 2]);
	HLAnimationIntermediette* anim = HLAnimationIntermediette::FromXML(animPath);
	ZAnimation* zAnim = anim->ToZAnimation();
	zAnim->SetName(Path::GetFileNameWithoutExtension(split[split.size() - 1]));
	zAnim->parent = file;
	// zAnim->rotationIndicesSeg = 1;
	// zAnim->rotationValuesSeg = 2;

	zAnim->GetSourceOutputCode(split[split.size() - 2]);
	string output = "";

	output += file->declarations[2]->text + "\n";
	output += file->declarations[1]->text + "\n";
	output += file->declarations[0]->text + "\n";

	File::WriteAllText(outPath, output);

	delete zAnim;
	delete file;
}
