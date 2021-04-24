#pragma once

#include <stdint.h>
#include <string>
#include <vector>
#include "Vec3s.h"
#include "ZResource.h"
#include "ZSkeleton.h"
#include "tinyxml2.h"

struct RotationIndex
{
	// uint16_t transX, transY, transZ;
	uint16_t x, y, z;

	RotationIndex(uint16_t nX, uint16_t nY, uint16_t nZ)
	{
		x = nX;
		y = nY;
		z = nZ;
	};
};

class ZAnimation : public ZResource
{
public:
	int16_t frameCount;

	ZAnimation(ZFile* nParent);

	std::string GetSourceOutputCode(const std::string& prefix) override;
	ZResourceType GetResourceType() override;

protected:
	void ParseRawData() override;
	void Save(const std::string& outFolder) override;
	void ParseXML(tinyxml2::XMLElement* reader) override;
};

class ZNormalAnimation : public ZAnimation
{
public:
	std::vector<uint16_t> rotationValues;
	std::vector<RotationIndex> rotationIndices;
	uint32_t rotationValuesSeg;
	uint32_t rotationIndicesSeg;
	int16_t limit;

	ZNormalAnimation(ZFile* nParent);

	std::string GetSourceOutputCode(const std::string& prefix) override;
	size_t GetRawDataSize() override;
	std::string GetSourceTypeName() override;

	void ExtractFromXML(tinyxml2::XMLElement* reader, const std::vector<uint8_t>& nRawData,
	                    const uint32_t nRawDataIndex, const std::string& nRelPath) override;

protected:
	virtual void ParseRawData() override;
};

class ZLinkAnimation : public ZAnimation
{
public:
	segptr_t segmentAddress;

	ZLinkAnimation(ZFile* nParent);

	std::string GetSourceOutputCode(const std::string& prefix) override;
	size_t GetRawDataSize() override;
	std::string GetSourceTypeName() override;

	void ExtractFromXML(tinyxml2::XMLElement* reader, const std::vector<uint8_t>& nRawData,
	                    const uint32_t nRawDataIndex, const std::string& nRelPath) override;

protected:
	virtual void ParseRawData() override;
};

class TransformData
{
protected:
	ZFile* parent;

	///* 0x0000 */ u16 unk_00; // appears to be flags
	uint16_t unk_00;
	///* 0x0002 */ s16 unk_02;
	int16_t unk_02;
	///* 0x0004 */ s16 unk_04;
	int16_t unk_04;
	///* 0x0006 */ s16 unk_06;
	int16_t unk_06;
	///* 0x0008 */ f32 unk_08;
	float unk_08;

public:
	TransformData() = default;
	TransformData(ZFile* parent, const std::vector<uint8_t>& rawData, uint32_t fileOffset);
	TransformData(ZFile* parent, const std::vector<uint8_t>& rawData, uint32_t fileOffset,
	              size_t index);

	[[nodiscard]] std::string GetBody(const std::string& prefix) const;

	static size_t GetRawDataSize();
	static std::string GetSourceTypeName();
};

class ZCurveAnimation : public ZAnimation
{
protected:
	segptr_t skelOffset = 0;

	///* 0x0000 */ u8* refIndex;
	segptr_t refIndex = 0;
	///* 0x0004 */ TransformData* transformData;
	segptr_t transformData = 0;
	///* 0x0008 */ s16* copyValues;
	segptr_t copyValues = 0;
	///* 0x000C */ s16 unk_0C;
	int16_t unk_0C;
	///* 0x000E */ s16 unk_10;
	int16_t unk_10;

	ZSkeleton* skel;

	std::vector<uint8_t> refIndexArr;
	std::vector<TransformData> transformDataArr;
	std::vector<int16_t> copyValuesArr;

public:
	ZCurveAnimation();
	ZCurveAnimation(ZFile* nParent);
	~ZCurveAnimation();
	void ParseXML(tinyxml2::XMLElement* reader) override;
	void ParseRawData() override;
	void ExtractFromXML(tinyxml2::XMLElement* reader, const std::vector<uint8_t>& nRawData,
	                    const uint32_t nRawDataIndex, const std::string& nRelPath) override;

	void PreGenValues(const std::string& prefix);
	size_t GetRawDataSize() override;
	std::string GetSourceOutputCode(const std::string& prefix) override;

	std::string GetSourceTypeName() override;
};
// TransformUpdateIndex
