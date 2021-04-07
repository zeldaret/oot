#pragma once

#include <cstdint>
#include <string>
#include <vector>
#include "ZDisplayList.h"
#include "ZFile.h"
#include "ZLimb.h"

enum ZSkeletonType
{
	Normal,
	Flex,
	Curve,
};

class ZSkeleton : public ZResource
{
public:
	ZSkeletonType type = ZSkeletonType::Normal;
	ZLimbType limbType = ZLimbType::Standard;
	std::vector<ZLimb*> limbs;
	segptr_t limbsArrayAddress;
	uint8_t limbCount;
	uint8_t dListCount;  // FLEX SKELETON ONLY

	ZSkeleton() = default;
	ZSkeleton(tinyxml2::XMLElement* reader, const std::vector<uint8_t>& nRawData, int nRawDataIndex,
	          ZFile* nParent);
	ZSkeleton(ZSkeletonType nType, ZLimbType nLimbType, const std::string& prefix,
	          const std::vector<uint8_t>& nRawData, int nRawDataIndex, ZFile* nParent);
	~ZSkeleton();
	void ParseXML(tinyxml2::XMLElement* reader) override;
	void ParseRawData() override;
	static ZSkeleton* FromXML(tinyxml2::XMLElement* reader, std::vector<uint8_t> nRawData,
	                          int rawDataIndex, std::string nRelPath, ZFile* nParent);
	void Save(const std::string& outFolder) override;
	void GenerateHLIntermediette(HLFileIntermediette& hlFile) override;

	int GetRawDataSize() override;
	std::string GetSourceOutputCode(const std::string& prefix) override;

	std::string GetSourceTypeName() override;
	ZResourceType GetResourceType() override;

	segptr_t GetAddress();
	uint8_t GetLimbCount();
};
