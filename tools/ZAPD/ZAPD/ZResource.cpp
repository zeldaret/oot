#include "ZResource.h"

#include <cassert>
#include <regex>

#include "Utils/StringHelper.h"
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
	RegisterOptionalAttribute("Static", "Global");
}

void ZResource::ExtractFromXML(tinyxml2::XMLElement* reader, offset_t nRawDataIndex)
{
	rawDataIndex = nRawDataIndex;
	declaredInXml = true;

	if (reader != nullptr)
		ParseXML(reader);

	// Don't parse raw data of external files
	if (parent->GetMode() != ZFileMode::ExternalFile)
	{
		ParseRawData();
		CalcHash();
	}

	if (!isInner)
	{
		Declaration* decl = DeclareVar(parent->GetName(), "");
		if (decl != nullptr)
		{
			decl->declaredInXml = true;
			decl->staticConf = staticConf;
		}
	}
}

void ZResource::ExtractFromFile(offset_t nRawDataIndex)
{
	rawDataIndex = nRawDataIndex;

	// Don't parse raw data of external files
	if (parent->GetMode() == ZFileMode::ExternalFile)
		return;

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

		std::string& staticXml = registeredAttributes["Static"].value;
		if (staticXml == "Global")
		{
			staticConf = StaticConfig::Global;
		}
		else if (staticXml == "On")
		{
			staticConf = StaticConfig::On;
		}
		else if (staticXml == "Off")
		{
			staticConf = StaticConfig::Off;
		}
		else
		{
			throw std::runtime_error("Invalid value for 'Static' attribute.");
		}

		declaredInXml = true;
	}
}

void ZResource::ParseRawData()
{
}

void ZResource::DeclareReferences([[maybe_unused]] const std::string& prefix)
{
}

void ZResource::ParseRawDataLate()
{
}

void ZResource::DeclareReferencesLate([[maybe_unused]] const std::string& prefix)
{
}

Declaration* ZResource::DeclareVar(const std::string& prefix, const std::string& bodyStr)
{
	std::string auxName = name;

	if (name == "")
		auxName = GetDefaultName(prefix);

	Declaration* decl =
		parent->AddDeclaration(rawDataIndex, GetDeclarationAlignment(), GetRawDataSize(),
	                           GetSourceTypeName(), auxName, bodyStr);
	decl->staticConf = staticConf;
	return decl;
}

void ZResource::Save([[maybe_unused]] const fs::path& outFolder)
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

DeclarationAlignment ZResource::GetDeclarationAlignment() const
{
	return DeclarationAlignment::Align4;
}

bool ZResource::WasDeclaredInXml() const
{
	return declaredInXml;
}

StaticConfig ZResource::GetStaticConf() const
{
	return staticConf;
}

offset_t ZResource::GetRawDataIndex() const
{
	return rawDataIndex;
}

std::string ZResource::GetBodySourceCode() const
{
	return "ERROR";
}

std::string ZResource::GetDefaultName(const std::string& prefix) const
{
	return StringHelper::Sprintf("%s%s_%06X", prefix.c_str(), GetSourceTypeName().c_str(),
	                             rawDataIndex);
}

std::string ZResource::GetSourceOutputCode([[maybe_unused]] const std::string& prefix)
{
	std::string bodyStr = GetBodySourceCode();

	Declaration* decl = parent->GetDeclaration(rawDataIndex);
	if (decl == nullptr || decl->isPlaceholder)
		decl = DeclareVar(prefix, bodyStr);
	else
		decl->text = bodyStr;
	decl->staticConf = staticConf;

	return "";
}

std::string ZResource::GetSourceOutputHeader([[maybe_unused]] const std::string& prefix)
{
	return "";
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

offset_t Seg2Filespace(segptr_t segmentedAddress, uint32_t parentBaseAddress)
{
	offset_t currentPtr = GETSEGOFFSET(segmentedAddress);

	if (GETSEGNUM(segmentedAddress) == 0x80)  // Is defined in code?
	{
		uint32_t parentBaseOffset = GETSEGOFFSET(parentBaseAddress);
		if (parentBaseOffset > currentPtr)
		{
			throw std::runtime_error(
				StringHelper::Sprintf("\nSeg2Filespace: Segmented address is smaller than "
			                          "'BaseAddress'. Maybe your 'BaseAddress' is wrong?\n"
			                          "\t SegmentedAddress: 0x%08X\n"
			                          "\t BaseAddress:      0x%08X\n",
			                          segmentedAddress, parentBaseAddress));
		}
		currentPtr -= parentBaseOffset;
	}

	return currentPtr;
}
