#pragma once

#include <vector>
#include <string>
#include <stdint.h>
#include "ZResource.h"
#include "tinyxml2.h"

class ZArray : public ZResource
{
public:
	ZArray();

	void ParseXML(tinyxml2::XMLElement* reader) override;
	std::string GetSourceOutputCode(const std::string& prefix) override;
	int GetRawDataSize() override;

	static ZArray* ExtractFromXML(tinyxml2::XMLElement* reader, const std::vector<uint8_t>& nRawData, const int rawDataIndex, const std::string& nRelPath, ZFile* nParent);

protected:
	int arrayCnt;
	ZFile* testFile;

	//void ParseRawData(const std::vector<uint8_t>& data, const int offset);
};