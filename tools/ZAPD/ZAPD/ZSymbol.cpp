#include "ZSymbol.h"
#include "StringHelper.h"
#include "ZFile.h"

REGISTER_ZFILENODE(Symbol, ZSymbol);

ZSymbol::ZSymbol(ZFile* nParent) : ZResource(nParent)
{
}

void ZSymbol::ExtractFromXML(tinyxml2::XMLElement* reader, const std::vector<uint8_t>& nRawData,
                             const uint32_t nRawDataIndex, const std::string& nRelPath)
{
	ZResource::ExtractFromXML(reader, nRawData, nRawDataIndex, nRelPath);
}

void ZSymbol::ParseXML(tinyxml2::XMLElement* reader)
{
	ZResource::ParseXML(reader);

	const char* typeXml = reader->Attribute("Type");

	if (typeXml == nullptr)
	{
		fprintf(stderr,
		        "ZSymbol::ParseXML: Warning in '%s'.\n\t Missing 'Type' attribute in xml. "
		        "Defaulting to 'void*'.\n",
		        name.c_str());
		type = "void*";
	}
	else
	{
		type = std::string(typeXml);
	}

	const char* typeSizeXml = reader->Attribute("TypeSize");
	if (typeSizeXml == nullptr)
	{
		fprintf(stderr,
		        "ZSymbol::ParseXML: Warning in '%s'.\n\t Missing 'TypeSize' attribute in xml. "
		        "Defaulting to '4'.\n",
		        name.c_str());
		typeSize = 4;  // Size of a word.
	}
	else
	{
		typeSize = std::strtoul(typeSizeXml, nullptr, 0);
	}

	const char* countXml = reader->Attribute("Count");
	if (countXml != nullptr)
	{
		isArray = true;

		if (!std::string(countXml).empty())
			count = std::strtoul(countXml, nullptr, 0);
	}
}

size_t ZSymbol::GetRawDataSize()
{
	if (isArray)
		return count * typeSize;

	return typeSize;
}

std::string ZSymbol::GetSourceOutputHeader(const std::string& prefix)
{
	if (isArray)
	{
		if (count == 0)
			return StringHelper::Sprintf("extern %s %s%s[];\n", type.c_str(), prefix.c_str(),
			                             name.c_str());
		else
			return StringHelper::Sprintf("extern %s %s%s[%i];\n", type.c_str(), prefix.c_str(),
			                             name.c_str(), count);
	}

	return StringHelper::Sprintf("extern %s %s%s;\n", type.c_str(), prefix.c_str(), name.c_str());
}

std::string ZSymbol::GetSourceTypeName()
{
	return type;
}

ZResourceType ZSymbol::GetResourceType()
{
	return ZResourceType::Symbol;
}
