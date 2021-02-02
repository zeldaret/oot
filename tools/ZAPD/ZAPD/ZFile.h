#pragma once

#include <vector>
#include <string>
#include "tinyxml2.h"
#include "ZResource.h"

enum class ZFileMode
{
	Build,
	BuildTexture,
	BuildOverlay,
	BuildModelIntermediette,
	BuildAnimationIntermediette,
	BuildBlob,
	BuildSourceFile,
	Extract,
	Invalid
};

enum class ZGame
{
	OOT_RETAIL,
	OOT_SW97,
	MM_RETAIL
};

class ZFile
{
public:
	std::map<int32_t, Declaration*> declarations;
	std::string defines;
	std::vector<ZResource*> resources;
	uint32_t baseAddress, rangeStart, rangeEnd;

	ZFile(std::string nOutPath, std::string nName);
	ZFile(ZFileMode mode, tinyxml2::XMLElement* reader, std::string nBasePath, std::string nOutPath, std::string filename, bool placeholderMode);
	~ZFile();

	std::string GetVarName(int address);
	std::string GetName();
	void ExtractResources(std::string outputDir);
	void BuildResources();
	void BuildSourceFile(std::string outputDir);
	void AddResource(ZResource* res);

	Declaration* AddDeclaration(uint32_t address, DeclarationAlignment alignment, uint32_t size, std::string varType, std::string varName, std::string body);
	Declaration* AddDeclaration(uint32_t address, DeclarationAlignment alignment, DeclarationPadding padding, uint32_t size, std::string varType, std::string varName, std::string body);
	Declaration* AddDeclarationArray(uint32_t address, DeclarationAlignment alignment, uint32_t size, std::string varType, std::string varName, int arrayItemCnt, std::string body);
	Declaration* AddDeclarationArray(uint32_t address, DeclarationAlignment alignment, DeclarationPadding padding, uint32_t size, std::string varType, std::string varName, int arrayItemCnt, std::string body);
	Declaration* AddDeclarationPlaceholder(uint32_t address);
	Declaration* AddDeclarationPlaceholder(uint32_t address, std::string varName);
	Declaration* AddDeclarationInclude(uint32_t address, std::string includePath, uint32_t size, std::string varType, std::string varName);
	Declaration* AddDeclarationIncludeArray(uint32_t address, std::string includePath, uint32_t size, std::string varType, std::string varName, int arrayItemCnt);
	std::string GetDeclarationName(uint32_t address);
	std::string GetDeclarationName(uint32_t address, std::string defaultResult);
	Declaration* GetDeclaration(uint32_t address);
	Declaration* GetDeclarationRanged(uint32_t address);
	uint32_t GetDeclarationRangedAddress(uint32_t address);
	bool HasDeclaration(uint32_t address);
	std::string GetHeaderInclude();
	void GeneratePlaceholderDeclarations();

protected:
	std::vector<uint8_t> rawData;
	std::string name;
	std::string basePath;
	std::string outputPath;
	std::string sourceOutput;

	ZFile();
	void ParseXML(ZFileMode mode, tinyxml2::XMLElement* reader, std::string filename, bool placeholderMode);
	void GenerateSourceFiles(std::string outputDir);
	void GenerateHLIntermediette();
	void AddDeclarationDebugChecks(uint32_t address);
	std::string ProcessDeclarations();
	void ProcessDeclarationText(Declaration* decl);
	std::string ProcessExterns();
};