#pragma once

#include <stdint.h>
#include <string>
#include <vector>
#include "ZResource.h"
#include "tinyxml2.h"

class ZArray : public ZResource
{
public:
	ZArray(ZFile* nParent);
	~ZArray();

	void ParseXML(tinyxml2::XMLElement* reader) override;
	std::string GetSourceOutputCode(const std::string& prefix) override;
	size_t GetRawDataSize() override;

	void ExtractFromXML(tinyxml2::XMLElement* reader, const std::vector<uint8_t>& nRawData,
	                    const uint32_t nRawDataIndex, const std::string& nRelPath) override;

protected:
	size_t arrayCnt;
	ZFile* testFile;

	// void ParseRawData(const std::vector<uint8_t>& data, const int32_t offset);
};