#pragma once

#include <stdint.h>
#include <string>
#include <vector>
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

	void ParseXML(tinyxml2::XMLElement* reader) override;
	std::string GetSourceTypeName() override;
	std::string GetSourceValue();
	std::string GetSourceOutputCode(const std::string& prefix) override;
	void ParseRawData() override;
	int GetRawDataSize() override;
	bool DoesSupportArray() override;
	ZResourceType GetResourceType() override;

	static ZVector* ExtractFromXML(tinyxml2::XMLElement* reader,
	                               const std::vector<uint8_t>& nRawData, const int rawDataIndex,
	                               const std::string& nRelPath);

protected:
};