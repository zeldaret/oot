#pragma once

#include <vector>
#include <string>
#include <stdint.h>
#include "ZResource.h"
#include "Vec3s.h"
#include "tinyxml2.h"

struct RotationIndex
{
	//uint16_t transX, transY, transZ;
	uint16_t x, y, z;

	RotationIndex(uint16_t nX, uint16_t nY, uint16_t nZ) { x = nX; y = nY; z = nZ; };
};

class ZAnimation : public ZResource
{
public:

	int16_t frameCount;

	ZAnimation();

	std::string GetSourceOutputCode(const std::string& prefix) override;
	ZResourceType GetResourceType() override;
protected:

	virtual void ParseRawData();
	void Save(const std::string& outFolder);
	void ParseXML(tinyxml2::XMLElement* reader);
};

class ZNormalAnimation : public ZAnimation
{
public:
	std::vector<uint16_t> rotationValues;
	std::vector<RotationIndex> rotationIndices;
	uint32_t rotationValuesSeg;
	uint32_t rotationIndicesSeg;
	int16_t limit;

	ZNormalAnimation();

	std::string GetSourceOutputCode(const std::string& prefix);
	int GetRawDataSize() override;

	static ZNormalAnimation* ExtractFromXML(tinyxml2::XMLElement* reader, std::vector<uint8_t> nRawData, int rawDataIndex, const std::string& nRelPath);

protected:
	virtual void ParseRawData();
};

class ZLinkAnimation : public ZAnimation
{
public:
	uint32_t segmentAddress;

	ZLinkAnimation();

	std::string GetSourceOutputCode(const std::string& prefix);
	int GetRawDataSize() override;

	static ZLinkAnimation* ExtractFromXML(tinyxml2::XMLElement* reader, std::vector<uint8_t> nRawData, int rawDataIndex, const std::string& nRelPath);

protected:
	virtual void ParseRawData();
};
