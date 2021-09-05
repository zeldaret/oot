#include "ZVector.h"
#include <assert.h>
#include "BitConverter.h"
#include "File.h"
#include "Globals.h"
#include "StringHelper.h"
#include "ZFile.h"

REGISTER_ZFILENODE(Vector, ZVector);

ZVector::ZVector(ZFile* nParent) : ZResource(nParent)
{
	scalarType = ZScalarType::ZSCALAR_NONE;
	dimensions = 0;
	RegisterRequiredAttribute("Type");
	RegisterRequiredAttribute("Dimensions");
}

void ZVector::ParseXML(tinyxml2::XMLElement* reader)
{
	ZResource::ParseXML(reader);

	this->scalarType = ZScalar::MapOutputTypeToScalarType(registeredAttributes.at("Type").value);

	this->dimensions = StringHelper::StrToL(registeredAttributes.at("Dimensions").value, 16);
}

void ZVector::ParseRawData()
{
	int32_t currentRawDataIndex = rawDataIndex;
	// TODO: this shouldn't be necessary.
	scalars.clear();

	for (uint32_t i = 0; i < dimensions; i++)
	{
		ZScalar scalar(scalarType, parent);
		scalar.rawDataIndex = currentRawDataIndex;
		scalar.ParseRawData();
		currentRawDataIndex += scalar.GetRawDataSize();

		scalars.push_back(scalar);
	}

	// Ensure the scalars vector has the same number of elements as the vector dimension.
	assert(scalars.size() == dimensions);
}

size_t ZVector::GetRawDataSize() const
{
	size_t size = 0;

	for (size_t i = 0; i < this->scalars.size(); i++)
		size += this->scalars[i].GetRawDataSize();

	return size;
}

bool ZVector::DoesSupportArray() const
{
	return true;
}

std::string ZVector::GetSourceTypeName() const
{
	if (dimensions == 3 && scalarType == ZScalarType::ZSCALAR_F32)
		return "Vec3f";
	else if (dimensions == 3 && scalarType == ZScalarType::ZSCALAR_S16)
		return "Vec3s";
	else if (dimensions == 3 && scalarType == ZScalarType::ZSCALAR_S32)
		return "Vec3i";
	else
	{
		std::string output = StringHelper::Sprintf(
			"Encountered unsupported vector type: %d dimensions, %s type", dimensions,
			ZScalar::MapScalarTypeToOutputType(scalarType).c_str());

		if (Globals::Instance->verbosity >= VerbosityLevel::VERBOSITY_DEBUG)
			printf("%s\n", output.c_str());

		throw std::runtime_error(output);
	}
}

std::string ZVector::GetBodySourceCode() const
{
	std::string body = "";

	for (size_t i = 0; i < this->scalars.size(); i++)
		body += StringHelper::Sprintf("%6s, ", scalars[i].GetBodySourceCode().c_str());

	return "{ " + body + "}";
}

std::string ZVector::GetSourceOutputCode(const std::string& prefix)
{
	if (parent != nullptr)
		parent->AddDeclaration(rawDataIndex, DeclarationAlignment::None, GetRawDataSize(),
		                       GetSourceTypeName(), GetName(), GetBodySourceCode());

	return "";
}

ZResourceType ZVector::GetResourceType() const
{
	return ZResourceType::Vector;
}

void ZVector::SetScalarType(ZScalarType type)
{
	scalarType = type;
}

void ZVector::SetDimensions(uint32_t dim)
{
	dimensions = dim;
}
