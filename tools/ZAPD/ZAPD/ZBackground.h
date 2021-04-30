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
	                    uint32_t nRawDataIndex, const std::string& nRelPath) override;

	void CheckValidJpeg(const std::string& filepath);

	size_t GetRawDataSize() override;

	void DeclareVar(const std::string& prefix, const std::string& bodyStr);

	bool IsExternalResource() override;
	std::string GetExternalExtension() override;
	void Save(const std::string& outFolder) override;

	std::string GetBodySourceCode();
	std::string GetSourceOutputCode(const std::string& prefix) override;
	static std::string GetDefaultName(const std::string& prefix, uint32_t address);

	std::string GetSourceTypeName() override;
	ZResourceType GetResourceType() override;
};
