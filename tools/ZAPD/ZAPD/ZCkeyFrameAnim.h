#pragma once
#include <cstdint>
#include <string>
#include <vector>
#include <memory>

#include "ZFile.h"

class ZKeyFrameSkel;

typedef struct
{
	int16_t frame;
	int16_t value;
	int16_t velocity;
} KeyFrame;

class ZKeyFrameAnim : public ZResource
{
public:
	ZKeyFrameSkel* skel;
	std::vector<uint8_t> bitFlags; // Standard only
	std::vector<uint16_t> bitFlagsFlex; // Flex only

	std::vector<KeyFrame> keyFrames;
	std::vector<int16_t> kfNums;
	std::vector<int16_t> presetValues;

	uint16_t unk_10;
	int16_t duration;

	ZKeyFrameAnim(ZFile* nParent);
	~ZKeyFrameAnim();
	void ParseXML(tinyxml2::XMLElement* reader) override;
	void DeclareReferencesLate(const std::string& prefix) override;
	void ParseRawDataLate() override;
	std::string GetBodySourceCode() const override;

	std::string GetSourceTypeName() const override;
	ZResourceType GetResourceType() const override;

	size_t GetRawDataSize() const override;

private:
	offset_t skelOffset;
	segptr_t bitFlagsAddr;
	segptr_t keyFramesAddr;
	segptr_t kfNumsAddr;
	segptr_t presentValuesAddr;
	template <typename T>
	uint32_t GetSetBits(T data) const;
};
