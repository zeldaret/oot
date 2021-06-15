#pragma once

#include "ZResource.h"
#include "tinyxml2.h"

class ZSymbol : public ZResource
{
protected:
	std::string type;
	size_t typeSize;
	bool isArray = false;
	uint32_t count = 0;

public:
	ZSymbol(ZFile* nParent);

	void ExtractFromXML(tinyxml2::XMLElement* reader, const std::vector<uint8_t>& nRawData,
	                    const uint32_t nRawDataIndex) override;

	void ParseXML(tinyxml2::XMLElement* reader) override;

	size_t GetRawDataSize() const override;

	std::string GetSourceOutputHeader(const std::string& prefix) override;

	std::string GetSourceTypeName() const override;
	ZResourceType GetResourceType() const override;
};
