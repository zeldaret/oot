#pragma once

#include "ZResource.h"
#include "tinyxml2.h"

class ZBlob : public ZResource
{
public:
	ZBlob(ZFile* nParent);

	static ZBlob* BuildFromXML(tinyxml2::XMLElement* reader, const std::string& inFolder,
	                           bool readFile);
	static ZBlob* FromFile(const std::string& filePath);

	void ParseXML(tinyxml2::XMLElement* reader) override;
	void ParseRawData() override;
	std::string GetSourceOutputCode(const std::string& prefix) override;
	std::string GetSourceOutputHeader(const std::string& prefix) override;
	void Save(const fs::path& outFolder) override;

	bool IsExternalResource() const override;
	std::string GetSourceTypeName() const override;
	ZResourceType GetResourceType() const override;
	std::string GetExternalExtension() const override;

	size_t GetRawDataSize() const override;

protected:
	std::vector<uint8_t> blobData;
	size_t blobSize = 0;
};
