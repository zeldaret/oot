#pragma once

#include "ZResource.h"
#include "tinyxml2.h"

class ZBlob : public ZResource
{
public:
	ZBlob(std::vector<uint8_t> nRawData, int rawDataIndex, int size, std::string nName);

	static ZBlob* ExtractFromXML(tinyxml2::XMLElement* reader, std::vector<uint8_t> nRawData, int rawDataIndex, std::string nRelPath);
	static ZBlob* BuildFromXML(tinyxml2::XMLElement* reader, std::string inFolder, bool readFile);
	static ZBlob* FromFile(std::string filePath);
	std::string GetSourceOutputCode(std::string prefix);
	std::string GetSourceOutputHeader(std::string prefix);
	void Save(std::string outFolder);
	bool IsExternalResource();
	std::string GetExternalExtension();
	ZResourceType GetResourceType();

private:
	ZBlob();
};