#pragma once

#include <Utils/Directory.h>
#include <string>
#include <vector>
#include "ZTexture.h"
#include "tinyxml2.h"

enum class ZFileMode
{
	BuildTexture,
	BuildOverlay,
	BuildBlob,
	BuildSourceFile,
	BuildBackground,
	Extract,
	Invalid,
	Custom = 1000  // Used for exporter file modes
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
	std::map<uint32_t, Declaration*> declarations;
	std::string defines;
	std::vector<ZResource*> resources;
	uint32_t segment;
	uint32_t baseAddress, rangeStart, rangeEnd;

	ZFile(const std::string& nName);
	ZFile(ZFileMode mode, tinyxml2::XMLElement* reader, const fs::path& nBasePath,
	      const std::string& filename, const fs::path& nXmlFilePath, bool placeholderMode);
	~ZFile();

	std::string GetVarName(uint32_t address);
	std::string GetName() const;
	const fs::path& GetXmlFilePath() const;
	const std::vector<uint8_t>& GetRawData() const;
	void ExtractResources();
	void BuildSourceFile();
	void AddResource(ZResource* res);
	ZResource* FindResource(uint32_t rawDataIndex);
	std::vector<ZResource*> GetResourcesOfType(ZResourceType resType);

	Declaration* AddDeclaration(offset_t address, DeclarationAlignment alignment, size_t size,
	                            const std::string& varType, const std::string& varName,
	                            const std::string& body);
	Declaration* AddDeclarationArray(offset_t address, DeclarationAlignment alignment, size_t size,
	                                 const std::string& varType, const std::string& varName,
	                                 size_t arrayItemCnt, const std::string& body);
	Declaration* AddDeclarationArray(offset_t address, DeclarationAlignment alignment, size_t size,
	                                 const std::string& varType, const std::string& varName,
	                                 const std::string& arrayItemCntStr, const std::string& body);
	Declaration* AddDeclarationPlaceholder(uint32_t address);
	Declaration* AddDeclarationPlaceholder(offset_t address, const std::string& varName);
	Declaration* AddDeclarationInclude(offset_t address, const std::string& includePath,
	                                   size_t size, const std::string& varType,
	                                   const std::string& varName);
	Declaration* AddDeclarationIncludeArray(offset_t address, std::string& includePath, size_t size,
	                                        const std::string& varType, const std::string& varName,
	                                        size_t arrayItemCnt);
	std::string GetDeclarationName(uint32_t address) const;
	std::string GetDeclarationName(uint32_t address, const std::string& defaultResult) const;
	std::string GetDeclarationPtrName(segptr_t segAddress) const;
	Declaration* GetDeclaration(uint32_t address) const;
	Declaration* GetDeclarationRanged(uint32_t address) const;
	uint32_t GetDeclarationRangedAddress(uint32_t address) const;
	bool HasDeclaration(uint32_t address);
	std::string GetHeaderInclude();
	void GeneratePlaceholderDeclarations();

	void AddTextureResource(uint32_t offset, ZTexture* tex);
	ZTexture* GetTextureResource(uint32_t offset) const;

	fs::path GetSourceOutputFolderPath() const;

	static std::map<std::string, ZResourceFactoryFunc*>* GetNodeMap();
	static void RegisterNode(std::string nodeName, ZResourceFactoryFunc* nodeFunc);

protected:
	std::vector<uint8_t> rawData;
	std::string name;
	fs::path outName = "";
	fs::path basePath;
	fs::path xmlFilePath;

	// Keep track of every texture of this ZFile.
	// The pointers declared here are "borrowed" (somebody else is the owner),
	// so ZFile shouldn't delete/free those textures.
	std::map<uint32_t, ZTexture*> texturesResources;

	ZFile();
	void ParseXML(ZFileMode mode, tinyxml2::XMLElement* reader, const std::string& filename,
	              bool placeholderMode);
	void DeclareResourceSubReferences();
	void GenerateSourceFiles(fs::path outputDir);
	void GenerateSourceHeaderFiles();
	void AddDeclarationDebugChecks(uint32_t address);
	std::string ProcessDeclarations();
	void ProcessDeclarationText(Declaration* decl);
	std::string ProcessExterns();

	std::string ProcessTextureIntersections(const std::string& prefix);
};
