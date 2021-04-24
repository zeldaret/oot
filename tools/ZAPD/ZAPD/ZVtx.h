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

	ZVtx(ZFile* nParent);

	void ParseXML(tinyxml2::XMLElement* reader) override;
	std::string GetSourceTypeName() override;
	std::string GetSourceOutputCode(const std::string& prefix) override;
	void ParseRawData() override;
	size_t GetRawDataSize() override;
	bool DoesSupportArray() override;
	ZResourceType GetResourceType() override;
	bool IsExternalResource() override;
	virtual std::string GetExternalExtension() override;

	void ExtractFromXML(tinyxml2::XMLElement* reader, const std::vector<uint8_t>& nRawData,
	                    const uint32_t nRawDataIndex, const std::string& nRelPath) override;

protected:
};