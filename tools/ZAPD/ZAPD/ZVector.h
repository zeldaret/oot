#pragma once

#include <vector>
#include <string>
#include <stdint.h>
#include "ZResource.h"
#include "ZScalar.h"
#include "tinyxml2.h"

class ZVector : public ZResource
{
public:
	std::vector<ZScalar*> scalars;
	ZScalarType scalarType;
	uint32_t dimensions;

	ZVector();

	void ParseXML(tinyxml2::XMLElement* reader);
	std::string GetSourceTypeName();
	std::string GetSourceValue();
	std::string GetSourceOutputCode(const std::string& prefix);
	int GetRawDataSize();
	ZResourceType GetResourceType();

	static ZVector* ExtractFromXML(tinyxml2::XMLElement* reader, const std::vector<uint8_t>& nRawData, const int rawDataIndex, const std::string& nRelPath);

protected:
	void ParseRawData();
};