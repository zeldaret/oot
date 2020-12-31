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
	std::vector<uint16_t> rotationValues;
	std::vector<RotationIndex> rotationIndices;
	uint32_t rotationValuesSeg;
	uint32_t rotationIndicesSeg;
	int16_t limit;
	
	ZAnimation();

	std::string GetSourceOutputCode(std::string prefix);

	static ZAnimation* ExtractFromXML(tinyxml2::XMLElement* reader, std::vector<uint8_t> nRawData, int rawDataIndex, std::string nRelPath);
protected:

	void ParseRawData();
	void Save(std::string outFolder);
	void ParseXML(tinyxml2::XMLElement* reader);
};