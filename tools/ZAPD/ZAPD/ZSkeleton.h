#pragma once

#include <cstdint>
#include <string>
#include <vector>
#include "ZDisplayList.h"
#include "ZFile.h"
#include "ZLimb.h"

enum class ZSkeletonType
{
	Normal,
	Flex,
	Curve,
};

class ZSkeleton : public ZResource
{
public:
	ZSkeletonType type;
	ZLimbType limbType;
	std::vector<ZLimb*> limbs;
	segptr_t limbsArrayAddress;
	uint8_t limbCount;
	uint8_t dListCount;  // FLEX SKELETON ONLY

	ZSkeleton(ZFile* nParent);
	ZSkeleton(ZSkeletonType nType, ZLimbType nLimbType, const std::string& prefix,
	          const std::vector<uint8_t>& nRawData, uint32_t nRawDataIndex, ZFile* nParent);
	~ZSkeleton();
	void ParseXML(tinyxml2::XMLElement* reader) override;
	void ParseRawData() override;
	void ExtractFromXML(tinyxml2::XMLElement* reader, const std::vector<uint8_t>& nRawData,
	                    const uint32_t nRawDataIndex, const std::string& nRelPath) override;
	void Save(const std::string& outFolder) override;
	void GenerateHLIntermediette(HLFileIntermediette& hlFile) override;

	size_t GetRawDataSize() override;
	std::string GetSourceOutputCode(const std::string& prefix) override;

	std::string GetSourceTypeName() override;
	ZResourceType GetResourceType() override;

	segptr_t GetAddress();
	uint8_t GetLimbCount();
};
