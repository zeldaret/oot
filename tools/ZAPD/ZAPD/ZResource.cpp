#include "ZResource.h"

#include <cassert>
#include <regex>
#include "StringHelper.h"
#include "ZFile.h"

ZResource::ZResource(ZFile* nParent)
{
	// assert(nParent != nullptr);
	parent = nParent;
	name = "";
	outName = "";
	sourceOutput = "";
	rawDataIndex = 0;
	outputDeclaration = true;

	RegisterRequiredAttribute("Name");
	RegisterOptionalAttribute("OutName");
	RegisterOptionalAttribute("Offset");
	RegisterOptionalAttribute("Custom");
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
		// If it is an inner node, then 'Name' isn't required
		if (isInner)
		{
			registeredAttributes.at("Name").isRequired = false;
		}

		auto attrs = reader->FirstAttribute();
		while (attrs != nullptr)
		{
			std::string attrName = attrs->Name();
			bool attrDeclared = false;

			if (registeredAttributes.find(attrName) != registeredAttributes.end())
			{
				registeredAttributes[attrName].value = attrs->Value();
				registeredAttributes[attrName].wasSet = true;
				attrDeclared = true;
			}

			if (!attrDeclared)
				fprintf(stderr,
				        "ZResource::ParseXML: Warning while parsing '%s'.\n"
				        "\t Unexpected '%s' attribute in resource '%s'.\n",
				        parent->GetName().c_str(), attrName.c_str(), reader->Name());
			attrs = attrs->Next();
		}

		if (!canHaveInner && !reader->NoChildren())
		{
			throw std::runtime_error(
				StringHelper::Sprintf("ZResource::ParseXML: Fatal error in '%s'.\n"
			                          "\t Resource '%s' with inner element/child detected.\n",
			                          name.c_str(), reader->Name()));
		}

		for (const auto& attr : registeredAttributes)
		{
			if (attr.second.isRequired && attr.second.value == "")
				throw std::runtime_error(StringHelper::Sprintf(
					"ZResource::ParseXML: Fatal error while parsing '%s'.\n"
					"\t Missing required attribute '%s' in resource '%s'.\n"
					"\t Aborting...",
					parent->GetName().c_str(), attr.first.c_str(), reader->Name()));
		}

		name = registeredAttributes.at("Name").value;

		static std::regex r("[a-zA-Z_]+[a-zA-Z0-9_]*", std::regex::icase | std::regex::optimize);

		if (!isInner || (isInner && name != ""))
		{
			if (!std::regex_match(name, r))
			{
				throw std::domain_error(
					StringHelper::Sprintf("ZResource::ParseXML: Fatal error in '%s'.\n"
				                          "\t Resource with invalid 'Name' attribute.\n",
				                          name.c_str()));
			}
		}

		outName = registeredAttributes.at("OutName").value;
		if (outName == "")
			outName = name;

		isCustomAsset = registeredAttributes["Custom"].wasSet;

		declaredInXml = true;
	}
}

void ZResource::Save(const fs::path& outFolder)
{
}

void ZResource::PreGenSourceFiles()
{
}

const std::string& ZResource::GetName() const
{
	return name;
}

const std::string& ZResource::GetOutName() const
{
	return outName;
}

void ZResource::SetOutName(const std::string& nName)
{
	outName = nName;
}

void ZResource::SetName(const std::string& nName)
{
	name = nName;
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

void ZResource::SetRawDataIndex(uint32_t value)
{
	rawDataIndex = value;
}

std::string ZResource::GetBodySourceCode() const
{
	return "ERROR";
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

void ZResource::SetInnerNode(bool inner)
{
	isInner = inner;
}

void ZResource::RegisterRequiredAttribute(const std::string& attr)
{
	ResourceAttribute resAtrr;
	resAtrr.key = attr;
	resAtrr.isRequired = true;
	registeredAttributes[attr] = resAtrr;
}

void ZResource::RegisterOptionalAttribute(const std::string& attr, const std::string& defaultValue)
{
	ResourceAttribute resAtrr;
	resAtrr.key = attr;
	resAtrr.value = defaultValue;
	registeredAttributes[attr] = resAtrr;
}

uint32_t Seg2Filespace(segptr_t segmentedAddress, uint32_t parentBaseAddress)
{
	uint32_t currentPtr = GETSEGOFFSET(segmentedAddress);

	if (GETSEGNUM(segmentedAddress) == 0x80)  // Is defined in code?
		currentPtr -= GETSEGOFFSET(parentBaseAddress);

	return currentPtr;
}
