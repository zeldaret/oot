#pragma once

#include "ZFile.h"
#include "ZResource.h"

class ZWaterbox : public ZResource
{
public:
	int16_t xMin;
	int16_t ySurface;
	int16_t zMin;
	int16_t xLength;
	int16_t zLength;
	int32_t properties;

	ZWaterbox(ZFile* nParent);
	~ZWaterbox();

	void ParseRawData() override;
	void DeclareReferences(const std::string& prefix) override;
	std::string GetBodySourceCode() const override;
	std::string GetDefaultName(const std::string& prefix) const override;

	std::string GetSourceTypeName() const override;
	ZResourceType GetResourceType() const override;

	bool DoesSupportArray() const override;

	size_t GetRawDataSize() const override;
};
