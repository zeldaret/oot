#pragma once

#include "ZResource.h"
#include "tinyxml2.h"

class ZBlob : public ZResource
{
public:
	ZBlob(ZFile* nParent);
	ZBlob(const std::vector<uint8_t>& nRawData, uint32_t rawDataIndex, size_t size,
	      std::string nName, ZFile* nParent);

	void ExtractFromXML(tinyxml2::XMLElement* reader, const std::vector<uint8_t>& nRawData,
	                    const uint32_t nRawDataIndex) override;  // Extract Mode

	static ZBlob* BuildFromXML(tinyxml2::XMLElement* reader, const std::string& inFolder,
	                           bool readFile);
	static ZBlob* FromFile(const std::string& filePath);
	std::string GetSourceOutputCode(const std::string& prefix) override;
	std::string GetSourceOutputHeader(const std::string& prefix) override;
	void Save(const fs::path& outFolder) override;
	bool IsExternalResource() const override;
	std::string GetExternalExtension() const override;
	std::string GetSourceTypeName() const override;
	ZResourceType GetResourceType() const override;
};
