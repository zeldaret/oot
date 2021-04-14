#pragma once

#include "ZResource.h"
#include "tinyxml2.h"

class ZBlob : public ZResource
{
public:
	ZBlob(ZFile* nParent);
	ZBlob(const std::vector<uint8_t>& nRawData, int rawDataIndex, int size, std::string nName,
	      ZFile* nParent);

	void ExtractFromXML(tinyxml2::XMLElement* reader, const std::vector<uint8_t>& nRawData,
	                    const int nRawDataIndex,
	                    const std::string& nRelPath) override;  // Extract Mode

	static ZBlob* BuildFromXML(tinyxml2::XMLElement* reader, const std::string& inFolder,
	                           bool readFile);
	static ZBlob* FromFile(const std::string& filePath);
	std::string GetSourceOutputCode(const std::string& prefix) override;
	std::string GetSourceOutputHeader(const std::string& prefix) override;
	void Save(const std::string& outFolder) override;
	bool IsExternalResource() override;
	std::string GetExternalExtension() override;
	std::string GetSourceTypeName() override;
	ZResourceType GetResourceType() override;

private:
};
