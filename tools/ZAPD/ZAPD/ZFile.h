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

class ZFile
{
public:
	std::map<int32_t, Declaration*> declarations;
	std::string defines;
	std::vector<ZResource*> resources;
	uint32_t baseAddress, rangeStart, rangeEnd;

	ZFile(std::string nOutPath, std::string nName);
	ZFile(ZFileMode mode, tinyxml2::XMLElement* reader, std::string nBasePath, std::string nOutPath, bool placeholderMode);

	std::string GetVarName(int address);
	void ExtractResources(std::string outputDir);
	void BuildResources();
	void BuildSourceFile(std::string outputDir);
	void AddResource(ZResource* res);

	Declaration* AddDeclaration(uint32_t address, DeclarationAlignment alignment, uint32_t size, std::string varType, std::string varName, std::string body);
	void AddDeclaration(uint32_t address, DeclarationAlignment alignment, DeclarationPadding padding, uint32_t size, std::string varType, std::string varName, std::string body);
	void AddDeclarationArray(uint32_t address, DeclarationAlignment alignment, uint32_t size, std::string varType, std::string varName, int arrayItemCnt, std::string body);
	void AddDeclarationArray(uint32_t address, DeclarationAlignment alignment, DeclarationPadding padding, uint32_t size, std::string varType, std::string varName, int arrayItemCnt, std::string body);
	void AddDeclarationPlaceholder(uint32_t address);
	void AddDeclarationPlaceholder(uint32_t address, std::string varName);
	void AddDeclarationInclude(uint32_t address, std::string includePath, uint32_t size, std::string varType, std::string varName);
	void AddDeclarationIncludeArray(uint32_t address, std::string includePath, uint32_t size, std::string varType, std::string varName, int arrayItemCnt);
	std::string GetDeclarationName(uint32_t address);
	std::string GetDeclarationName(uint32_t address, std::string defaultResult);
	Declaration* GetDeclaration(uint32_t address);
	Declaration* GetDeclarationRanged(uint32_t address);
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
	void ParseXML(ZFileMode mode, tinyxml2::XMLElement* reader, bool placeholderMode);
	void GenerateSourceFiles(std::string outputDir);
	void GenerateHLIntermediette();
	void AddDeclarationDebugChecks(uint32_t address);
	std::string ProcessDeclarations();
	std::string ProcessExterns();
};