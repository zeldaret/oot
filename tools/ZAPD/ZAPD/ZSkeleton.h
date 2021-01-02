#pragma once

#include <vector>
#include <string>
#include <stdint.h>
#include "ZFile.h"

enum class ZLimbType
{
	Standard,
	LOD
};

struct ZLimbStandard : public ZResource
{
	uint32_t address;
	std::string name;

	int16_t transX, transY, transZ;
	uint8_t childIndex, siblingIndex;
	uint32_t dListPtr;

	std::vector<ZLimbStandard*> children;

	ZLimbStandard();
	static ZLimbStandard* FromXML(tinyxml2::XMLElement* reader, std::vector<uint8_t> nRawData, int rawDataIndex, std::string nRelPath, ZFile* parent);
	static ZLimbStandard* FromRawData(std::vector<uint8_t> nRawData, int rawDataIndex);
	std::string GetSourceOutputCode(std::string prefix);
	virtual int GetRawDataSize();
};

struct ZLimbLOD : ZLimbStandard
{
	uint32_t farDListPtr;

	ZLimbLOD();
	//static ZLimbLOD* FromXML(tinyxml2::XMLElement* reader, std::vector<uint8_t> nRawData, int rawDataIndex, std::string nRelPath, ZFile* parent);
	static ZLimbLOD* FromRawData(std::vector<uint8_t> nRawData, int rawDataIndex);
	std::string GetSourceOutputCode(std::string prefix);
	virtual int GetRawDataSize();
};

enum ZSkeletonType
{
	Normal,
	Flex,
	Skin
};

class ZSkeleton : public ZResource
{
public:
	ZSkeletonType type;
	std::vector<ZLimbStandard*> limbs;
	ZLimbStandard* rootLimb;
	uint8_t dListCount; // FLEX SKELETON ONLY

	ZSkeleton();
	virtual void GenerateHLIntermediette(HLFileIntermediette& hlFile);
	static ZSkeleton* FromXML(tinyxml2::XMLElement* reader, std::vector<uint8_t> nRawData, int rawDataIndex, std::string nRelPath, ZFile* nParent);
	void Save(std::string outFolder);

	std::string GetSourceOutputCode(std::string prefix);
};