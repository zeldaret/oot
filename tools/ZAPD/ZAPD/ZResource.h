#pragma once

#include <map>
#include <stdexcept>
#include <stdint.h>
#include <string>
#include <vector>
#include "tinyxml2.h"

#define SEGMENT_SCENE 2
#define SEGMENT_ROOM 3
#define SEGMENT_KEEP 4
#define SEGMENT_FIELDDANGEON_KEEP 5
#define SEGMENT_OBJECT 6
#define SEGMENT_LINKANIMETION 7

#define GETSEGOFFSET(x) (x & 0x00FFFFFF)
#define GETSEGNUM(x) ((x >> 24) & 0xFF)

typedef uint32_t segptr_t;

class ZFile;
class HLFileIntermediette;

class Declaration;
struct CommandSet;

enum class ZResourceType
{
	Error,
	Texture,
	DisplayList,
	Room,
	Animation,
	Cutscene,
	Blob,
	Limb,
	Skeleton,
	Scalar,
	Vector,
	Vertex,
	CollisionHeader,
	Symbol,
	Mtx,
	Background,
};

class ZResource
{
public:
	ZFile* parent;
	bool outputDeclaration;
	uint32_t hash;

	ZResource(ZFile* nParent);

	// Parsing from File
	virtual void ExtractFromXML(tinyxml2::XMLElement* reader, const std::vector<uint8_t>& nRawData,
	                            const int nRawDataIndex,
	                            const std::string& nRelPath);  // Extract Mode
	virtual void ExtractFromFile();

	// Misc
	virtual void ParseXML(tinyxml2::XMLElement* reader);
	virtual void ParseRawData();
	virtual std::string GetSourceOutputCode(const std::string& prefix);
	virtual std::string GetSourceOutputHeader(const std::string& prefix);
	virtual void PreGenSourceFiles();
	virtual void GenerateHLIntermediette(HLFileIntermediette& hlFile);
	virtual void CalcHash();
	virtual void Save(const std::string& outFolder);

	// Properties
	virtual bool IsExternalResource();
	virtual bool DoesSupportArray();  // Can this type be wrapped in an <Array> node?
	virtual std::string GetSourceTypeName();
	virtual ZResourceType GetResourceType();
	virtual std::string GetExternalExtension();

	// Getters/Setters
	std::string GetName();
	void SetName(std::string nName);
	std::string GetOutName();
	void SetOutName(std::string nName);
	std::string GetRelativePath();
	virtual int GetRawDataIndex();
	virtual void SetRawDataIndex(int value);
	virtual int GetRawDataSize();
	virtual std::vector<uint8_t> GetRawData();
	virtual void SetRawData(std::vector<uint8_t> nData);

protected:
	std::string name;
	std::string outName;
	std::string relativePath;
	std::vector<uint8_t> rawData;
	int rawDataIndex;
	std::string sourceOutput;
	bool isCustomAsset;  // If set to true, create a reference for the asset in the file, but don't
	                     // actually try to extract it from the file
};

enum class DeclarationAlignment
{
	None,
	Align4,
	Align8,
	Align16
};

enum class DeclarationPadding
{
	None,
	Pad4,
	Pad8,
	Pad16
};

class Declaration
{
public:
	DeclarationAlignment alignment;
	DeclarationPadding padding;
	uint32_t size;
	std::string preText;
	std::string text;
	std::string rightText;
	std::string postText;
	std::string preComment;
	std::string postComment;
	std::string varType;
	std::string varName;
	std::string includePath;
	bool isExternal;
	bool isArray;
	int arrayItemCnt;
	std::vector<uint32_t> references;

	Declaration(DeclarationAlignment nAlignment, uint32_t nSize, std::string nVarType,
	            std::string nVarName, bool nIsArray, std::string nText);
	Declaration(DeclarationAlignment nAlignment, DeclarationPadding nPadding, uint32_t nSize,
	            std::string nVarType, std::string nVarName, bool nIsArray, std::string nText);
	Declaration(DeclarationAlignment nAlignment, uint32_t nSize, std::string nVarType,
	            std::string nVarName, bool nIsArray, int nArrayItemCnt, std::string nText);
	Declaration(DeclarationAlignment nAlignment, uint32_t nSize, std::string nVarType,
	            std::string nVarName, bool nIsArray, int nArrayItemCnt, std::string nText,
	            bool nIsExternal);
	Declaration(DeclarationAlignment nAlignment, DeclarationPadding nPadding, uint32_t nSize,
	            std::string nVarType, std::string nVarName, bool nIsArray, int nArrayItemCnt,
	            std::string nText);
	Declaration(std::string nIncludePath, uint32_t nSize, std::string nVarType,
	            std::string nVarName);

protected:
	Declaration(DeclarationAlignment nAlignment, DeclarationPadding nPadding, uint32_t nSize,
	            std::string nText);
};

uint32_t Seg2Filespace(segptr_t segmentedAddress, uint32_t parentBaseAddress);

typedef ZResource*(ZResourceFactoryFunc)();

#define REGISTER_ZFILENODE(nodeName, zResClass)                                                    \
	static ZResource* ZResourceFactory_##zResClass_##nodeName()                                    \
	{                                                                                              \
		return static_cast<ZResource*>(new zResClass(nullptr));                                    \
	}                                                                                              \
                                                                                                   \
	class ZRes_##nodeName                                                                          \
	{                                                                                              \
	public:                                                                                        \
		ZRes_##nodeName()                                                                          \
		{                                                                                          \
			ZFile::RegisterNode(#nodeName, &ZResourceFactory_##zResClass_##nodeName);              \
		}                                                                                          \
	};                                                                                             \
	static ZRes_##nodeName inst_ZRes_##nodeName;
