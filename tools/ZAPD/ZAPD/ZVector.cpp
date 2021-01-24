#include "ZVector.h"
#include "ZFile.h"
#include "BitConverter.h"
#include "StringHelper.h"
#include "File.h"
#include "Globals.h"
#include <assert.h>

ZVector::ZVector() : ZResource()
{
	scalars = std::vector<ZScalar*>();
	this->scalarType = ZSCALAR_NONE;
	this->dimensions = 0;
}

ZVector* ZVector::ExtractFromXML(tinyxml2::XMLElement* reader, const std::vector<uint8_t>& nRawData, const int rawDataIndex, const std::string& nRelPath)
{
	ZVector* vector = new ZVector();
	vector->rawData = nRawData;
	vector->rawDataIndex = rawDataIndex;
	vector->ParseXML(reader);
	vector->ParseRawData();

	return vector;
}

void ZVector::ParseXML(tinyxml2::XMLElement* reader)
{
	ZResource::ParseXML(reader);

	name = reader->Attribute("Name");

	std::string type = reader->Attribute("Type");
	this->scalarType = ZScalar::MapOutputTypeToScalarType(type);

	std::string dimensions = reader->Attribute("Dimensions");
	this->dimensions = strtol(dimensions.c_str(), NULL, 16);
}

void ZVector::ParseRawData()
{
	int currentRawDataIndex = this->rawDataIndex;

	scalars.clear();

	for (int i = 0; i < this->dimensions; i++) 
	{
		ZScalar* scalar = new ZScalar(this->scalarType);
		scalar->rawDataIndex = currentRawDataIndex;
		scalar->rawData = this->rawData;
		scalar->ParseRawData();
		currentRawDataIndex += scalar->GetRawDataSize();

		this->scalars.push_back(scalar);
	}

	// Ensure the scalars vector has the same number of elements as the vector dimension.
	assert(this->scalars.size() == this->dimensions);
}

int ZVector::GetRawDataSize()
{
	int size = 0;
	for (int i = 0; i < this->scalars.size(); i++)
		size += this->scalars[i]->GetRawDataSize();
	return size;
}

bool ZVector::DoesSupportArray()
{
	return true;
}

std::string ZVector::GetSourceTypeName()
{
	if (dimensions == 3 && scalarType == ZSCALAR_F32)
	{
		return "Vec3f";
	}
	else if (dimensions == 3 && scalarType == ZSCALAR_S16)
	{
		return "Vec3s";
	}
	else if (dimensions == 3 && scalarType == ZSCALAR_S32)
	{
		return "Vec3i";
	}
	else
	{
		std::string output = StringHelper::Sprintf("Encountered unsupported vector type: %d dimensions, %s type", dimensions, ZScalar::MapScalarTypeToOutputType(scalarType).c_str());

		if (Globals::Instance->verbosity >= VERBOSITY_DEBUG)
			printf("%s\n", output.c_str());

		throw output;
	}
}

std::string ZVector::GetSourceValue()
{
	std::vector<std::string> strings = std::vector<std::string>();
	for (int i = 0; i < this->scalars.size(); i++)
		strings.push_back(scalars[i]->GetSourceValue());
	return "{ " + StringHelper::Implode(strings, ", ") + " }";
}

std::string ZVector::GetSourceOutputCode(const std::string& prefix)
{
	if (parent != nullptr)
		parent->AddDeclaration(rawDataIndex, DeclarationAlignment::None, GetRawDataSize(), GetSourceTypeName(), GetName(), GetSourceValue());

	return "";
}

ZResourceType ZVector::GetResourceType()
{
	return ZResourceType::Vector;
}