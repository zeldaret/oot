#pragma once

#include <stdint.h>
#include <string>
#include <vector>
#include "ZResource.h"
#include "ZScalar.h"
#include "tinyxml2.h"

class ZVtx : public ZResource
{
public:
	int16_t x, y, z;
	uint16_t flag;
	int16_t s, t;
	uint8_t r, g, b, a;

	ZVtx();

	void ParseXML(tinyxml2::XMLElement* reader) override;
	std::string GetSourceTypeName() override;
	std::string GetSourceOutputCode(const std::string& prefix) override;
	void ParseRawData() override;
	int GetRawDataSize() override;
	bool DoesSupportArray() override;
	ZResourceType GetResourceType() override;

	static ZVtx* ExtractFromXML(tinyxml2::XMLElement* reader, const std::vector<uint8_t>& nRawData,
	                            const int rawDataIndex, const std::string& nRelPath);

protected:
};