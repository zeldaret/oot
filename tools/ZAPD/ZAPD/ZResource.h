#pragma once

#include <map>
#include <stdexcept>
#include <stdint.h>
#include <string>
#include <vector>
#include "Declaration.h"
#include "tinyxml2.h"

#include "Directory.h"

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

enum class ZResourceType
{
	Error,
	Animation,
	Array,
	Background,
	Blob,
	CollisionHeader,
	Cutscene,
	DisplayList,
	Limb,
	Mtx,
	Path,
	Room,
	RoomCommand,
	Scalar,
	Skeleton,
	String,
	Symbol,
	Texture,
	Vector,
	Vertex,
};

class ResourceAttribute
{
public:
	std::string key = "";
	std::string value = "";
	bool isRequired = false;
	bool wasSet = false;
};

class ZResource
{
public:
	ZFile* parent;
	bool outputDeclaration = true;
	uint32_t hash = 0;

	ZResource(ZFile* nParent);
	virtual ~ZResource() = default;

	// Parsing from File
	virtual void ExtractFromXML(tinyxml2::XMLElement* reader, const std::vector<uint8_t>& nRawData,
	                            uint32_t nRawDataIndex);
	virtual void ExtractFromFile(const std::vector<uint8_t>& nRawData, uint32_t nRawDataIndex);

	// Misc
	virtual void ParseXML(tinyxml2::XMLElement* reader);
	virtual void ParseRawData();
	virtual void DeclareReferences(const std::string& prefix);
	virtual std::string GetBodySourceCode() const;

	virtual std::string GetSourceOutputCode(const std::string& prefix);
	virtual std::string GetSourceOutputHeader(const std::string& prefix);
	virtual void PreGenSourceFiles();
	virtual void GenerateHLIntermediette(HLFileIntermediette& hlFile);
	virtual void CalcHash();
	virtual void Save(const fs::path& outFolder);

	// Properties
	virtual bool IsExternalResource() const;
	virtual bool DoesSupportArray() const;  // Can this type be wrapped in an <Array> node?
	virtual std::string GetSourceTypeName() const;
	virtual ZResourceType GetResourceType() const = 0;
	virtual std::string GetExternalExtension() const;

	// Getters/Setters
	const std::string& GetName() const;
	void SetName(const std::string& nName);
	const std::string& GetOutName() const;
	void SetOutName(const std::string& nName);
	virtual uint32_t GetRawDataIndex() const;
	virtual void SetRawDataIndex(uint32_t value);
	virtual size_t GetRawDataSize() const = 0;
	virtual const std::vector<uint8_t>& GetRawData() const;
	virtual void SetRawData(const std::vector<uint8_t>& nData);
	void SetInnerNode(bool inner);
	bool WasDeclaredInXml() const;

protected:
	std::string name;
	std::string outName;
	std::vector<uint8_t> rawData;
	uint32_t rawDataIndex;
	std::string sourceOutput;
	bool isInner = false;  // Is this resource an inner node of another resource? inside of <Array>
	bool canHaveInner = false;  // Can this type have an inner node?
	bool isCustomAsset;  // If set to true, create a reference for the asset in the file, but don't
	                     // actually try to extract it from the file
	bool declaredInXml = false;

	// Reading from this XMLs attributes should be performed in the overrided `ParseXML` method.
	std::map<std::string, ResourceAttribute> registeredAttributes;

	// XML attributes registers.
	// Registering XML attributes should be done in constructors.

	// The resource needs this attribute. If it is not provided, then the program will throw an
	// exception.
	void RegisterRequiredAttribute(const std::string& attr);
	// Optional attribute. The resource has to do manual checks and manual warnings. It may or may
	// not have a value.
	void RegisterOptionalAttribute(const std::string& attr, const std::string& defaultValue = "");
};

uint32_t Seg2Filespace(segptr_t segmentedAddress, uint32_t parentBaseAddress);

typedef ZResource*(ZResourceFactoryFunc)(ZFile* nParent);

#define REGISTER_ZFILENODE(nodeName, zResClass)                                                    \
	static ZResource* ZResourceFactory_##zResClass_##nodeName(ZFile* nParent)                      \
	{                                                                                              \
		return static_cast<ZResource*>(new zResClass(nParent));                                    \
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
	static ZRes_##nodeName inst_ZRes_##nodeName
