#include "ZSymbol.h"

#include "Utils/StringHelper.h"
#include "ZFile.h"

REGISTER_ZFILENODE(Symbol, ZSymbol);

ZSymbol::ZSymbol(ZFile* nParent) : ZResource(nParent)
{
	RegisterOptionalAttribute("Type");
	RegisterOptionalAttribute("TypeSize");
	RegisterOptionalAttribute("Count");
}

void ZSymbol::ParseXML(tinyxml2::XMLElement* reader)
{
	ZResource::ParseXML(reader);

	std::string typeXml = registeredAttributes.at("Type").value;

	if (typeXml == "")
	{
		fprintf(stderr,
		        "ZSymbol::ParseXML: Warning in '%s'.\n"
		        "\t Missing 'Type' attribute in xml.\n"
		        "\t Defaulting to 'void*'.\n",
		        name.c_str());
		type = "void*";
	}
	else
	{
		type = typeXml;
	}

	std::string typeSizeXml = registeredAttributes.at("TypeSize").value;
	if (typeSizeXml == "")
	{
		fprintf(stderr,
		        "ZSymbol::ParseXML: Warning in '%s'.\n"
		        "\t Missing 'TypeSize' attribute in xml.\n"
		        "\t Defaulting to '4'.\n",
		        name.c_str());
		typeSize = 4;  // Size of a word.
	}
	else
	{
		typeSize = StringHelper::StrToL(typeSizeXml, 0);
	}

	if (registeredAttributes.at("Count").wasSet)
	{
		isArray = true;

		std::string countXml = registeredAttributes.at("Count").value;
		if (countXml != "")
			count = StringHelper::StrToL(countXml, 0);
	}

	if (registeredAttributes.at("Static").value == "On")
	{
		fprintf(stderr, "A <Symbol> can't be marked as static.\n\t Disabling static\n");
	}
	staticConf = StaticConfig::Off;
}

Declaration* ZSymbol::DeclareVar([[maybe_unused]] const std::string& prefix,
                                 [[maybe_unused]] const std::string& bodyStr)
{
	return nullptr;
}

size_t ZSymbol::GetRawDataSize() const
{
	if (isArray)
		return count * typeSize;

	return typeSize;
}

std::string ZSymbol::GetSourceOutputHeader([[maybe_unused]] const std::string& prefix)
{
	if (isArray)
	{
		if (count == 0)
			return StringHelper::Sprintf("extern %s %s[];\n", type.c_str(), name.c_str());
		else
			return StringHelper::Sprintf("extern %s %s[%i];\n", type.c_str(), name.c_str(), count);
	}

	return StringHelper::Sprintf("extern %s %s;\n", type.c_str(), name.c_str());
}

std::string ZSymbol::GetSourceTypeName() const
{
	return type;
}

ZResourceType ZSymbol::GetResourceType() const
{
	return ZResourceType::Symbol;
}
