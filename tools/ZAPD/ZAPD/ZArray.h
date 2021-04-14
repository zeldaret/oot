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

	void ParseXML(tinyxml2::XMLElement* reader) override;
	std::string GetSourceOutputCode(const std::string& prefix) override;
	int GetRawDataSize() override;

	void ExtractFromXML(tinyxml2::XMLElement* reader, const std::vector<uint8_t>& nRawData,
	                    const int nRawDataIndex, const std::string& nRelPath) override;

protected:
	int arrayCnt;
	ZFile* testFile;

	// void ParseRawData(const std::vector<uint8_t>& data, const int offset);
};