#pragma once

#include <cstdint>
#include <vector>
#include "ZResource.h"

class ZBackground : public ZResource
{
protected:
	std::vector<uint8_t> data;

public:
	ZBackground(ZFile* nParent);
	ZBackground(const std::string& prefix, const std::vector<uint8_t>& nRawData,
	            uint32_t nRawDataIndex, ZFile* nParent);
	void ParseRawData() override;
	void ParseBinaryFile(const std::string& inFolder, bool appendOutName);
	void ExtractFromXML(tinyxml2::XMLElement* reader, const std::vector<uint8_t>& nRawData,
	                    uint32_t nRawDataIndex) override;

	void CheckValidJpeg(const std::string& filepath);

	size_t GetRawDataSize() const override;

	void DeclareVar(const std::string& prefix, const std::string& bodyStr) const;

	bool IsExternalResource() const override;
	std::string GetExternalExtension() const override;
	void Save(const fs::path& outFolder) override;
	std::string GetBodySourceCode();
	std::string GetSourceOutputCode(const std::string& prefix) override;
	static std::string GetDefaultName(const std::string& prefix, uint32_t address);

	std::string GetSourceTypeName() const override;
	ZResourceType GetResourceType() const override;
};
