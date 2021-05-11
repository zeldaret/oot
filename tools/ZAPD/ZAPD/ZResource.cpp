#include "ZResource.h"

#include <cassert>
#include <regex>
#include "StringHelper.h"

ZResource::ZResource(ZFile* nParent)
{
	// assert(nParent != nullptr);
	parent = nParent;
	name = "";
	outName = "";
	sourceOutput = "";
	rawData = std::vector<uint8_t>();
	rawDataIndex = 0;
	outputDeclaration = true;
}

void ZResource::ExtractFromXML(tinyxml2::XMLElement* reader, const std::vector<uint8_t>& nRawData,
                               const uint32_t nRawDataIndex)
{
	rawData = nRawData;
	rawDataIndex = nRawDataIndex;

	if (reader != nullptr)
		ParseXML(reader);

	ParseRawData();
	CalcHash();
}

void ZResource::ExtractFromFile(const std::vector<uint8_t>& nRawData, uint32_t nRawDataIndex)
{
	rawData = nRawData;
	rawDataIndex = nRawDataIndex;

	ParseRawData();
	CalcHash();
}

void ZResource::ParseXML(tinyxml2::XMLElement* reader)
{
	if (reader != nullptr)
	{
		if (reader->Attribute("Name") != nullptr)
		{
			name = reader->Attribute("Name");
			static std::regex r("[a-zA-Z_]+[a-zA-Z0-9_]*",
			                    std::regex::icase | std::regex::optimize);

			if (!std::regex_match(name, r))
			{
				throw std::domain_error(
					StringHelper::Sprintf("ZResource::ParseXML: Fatal error in '%s'.\n\t Resource "
				                          "with invalid 'Name' attribute.\n",
				                          name.c_str()));
			}
		}
		else
			name = "";

		if (reader->Attribute("OutName") != nullptr)
			outName = reader->Attribute("OutName");
		else
			outName = name;

		if (reader->Attribute("Custom") != nullptr)
			isCustomAsset = true;
		else
			isCustomAsset = false;

		if (!canHaveInner && !reader->NoChildren())
		{
			throw std::runtime_error(
				StringHelper::Sprintf("ZResource::ParseXML: Fatal error in '%s'.\n\t Resource '%s' "
			                          "with inner element/child detected.\n",
			                          name.c_str(), reader->Name()));
		}

		declaredInXml = true;
	}
}

void ZResource::Save(const fs::path& outFolder)
{
}

void ZResource::PreGenSourceFiles()
{
}

std::string ZResource::GetName() const
{
	return name;
}

const std::string& ZResource::GetOutName() const
{
	return outName;
}

void ZResource::SetOutName(std::string nName)
{
	outName = nName;
}

void ZResource::SetName(std::string nName)
{
	name = std::move(nName);
}

bool ZResource::IsExternalResource() const
{
	return false;
}

bool ZResource::DoesSupportArray() const
{
	return false;
}

std::string ZResource::GetExternalExtension() const
{
	return "";
}

const std::vector<uint8_t>& ZResource::GetRawData() const
{
	return rawData;
}

void ZResource::SetRawData(const std::vector<uint8_t>& nData)
{
	rawData = nData;
}

bool ZResource::WasDeclaredInXml() const
{
	return declaredInXml;
}

uint32_t ZResource::GetRawDataIndex() const
{
	return rawDataIndex;
}

size_t ZResource::GetRawDataSize() const
{
	return rawData.size();
}

void ZResource::SetRawDataIndex(uint32_t value)
{
	rawDataIndex = value;
}

std::string ZResource::GetSourceOutputCode(const std::string& prefix)
{
	return "";
}

std::string ZResource::GetSourceOutputHeader(const std::string& prefix)
{
	return "";
}

void ZResource::ParseRawData()
{
}

void ZResource::DeclareReferences(const std::string& prefix)
{
}

void ZResource::GenerateHLIntermediette(HLFileIntermediette& hlFile)
{
}

std::string ZResource::GetSourceTypeName() const
{
	return "u8";
}

ZResourceType ZResource::GetResourceType() const
{
	return ZResourceType::Error;
}

void ZResource::CalcHash()
{
	hash = 0;
}

uint32_t Seg2Filespace(segptr_t segmentedAddress, uint32_t parentBaseAddress)
{
	uint32_t currentPtr = GETSEGOFFSET(segmentedAddress);

	if (GETSEGNUM(segmentedAddress) == 0x80)  // Is defined in code?
		currentPtr -= GETSEGOFFSET(parentBaseAddress);

	return currentPtr;
}

ZResource::~ZResource()
{
}