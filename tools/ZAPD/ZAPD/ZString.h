#pragma once

#include "ZResource.h"
#include "tinyxml2.h"

class ZString : public ZResource
{
public:
	ZString(ZFile* nParent);

	void ParseRawData() override;
	std::string GetBodySourceCode() const;
	std::string GetSourceOutputCode(const std::string& prefix) override;

	std::string GetSourceOutputHeader(const std::string& prefix) override;
	std::string GetSourceTypeName() const override;
	ZResourceType GetResourceType() const override;

	size_t GetRawDataSize() const override;

protected:
	std::vector<uint8_t> strData;
};
