#pragma once

#include <memory>
#include "ZRoom/ZRoomCommand.h"

// TODO move into header and add all types
class AnitmatedTextureParams
{
public:
	virtual std::string GenerateSourceCode(ZRoom* zRoom, uint32_t baseAddress) = 0;
	virtual size_t GetParamsSize() = 0;
};

class ScrollingTexture : public AnitmatedTextureParams
{
public:
	ScrollingTexture(const std::vector<uint8_t>& rawData, uint32_t rawDataIndex);
	std::string GenerateSourceCode(ZRoom* zRoom, uint32_t baseAddress) override;
	size_t GetParamsSize() override;

	int8_t xStep;
	int8_t yStep;
	uint8_t width;
	uint8_t height;
};

class F3DPrimColor
{
public:
	F3DPrimColor(const std::vector<uint8_t>& rawData, uint32_t rawDataIndex);

	uint8_t r;
	uint8_t g;
	uint8_t b;
	uint8_t a;
	uint8_t lodFrac;
};

class FlashingTextureEnvColor
{
public:
	FlashingTextureEnvColor(const std::vector<uint8_t>& rawData, uint32_t rawDataIndex);

	uint8_t r;
	uint8_t g;
	uint8_t b;
	uint8_t a;
};

class FlashingTexture : public AnitmatedTextureParams
{
public:
	FlashingTexture(const std::vector<uint8_t>& rawData, uint32_t rawDataIndex, int32_t type);
	std::string GenerateSourceCode(ZRoom* zRoom, uint32_t baseAddress) override;
	size_t GetParamsSize() override;

	uint16_t cycleLength;
	uint16_t numKeyFrames;

	segptr_t primColorSegmentAddr;
	segptr_t envColorSegmentAddr;
	segptr_t keyFrameSegmentAddr;

	uint32_t primColorSegmentOffset;
	uint32_t envColorSegmentOffset;
	uint32_t keyFrameSegmentOffset;

	std::vector<F3DPrimColor> primColors;
	std::vector<FlashingTextureEnvColor> envColors;
	std::vector<uint16_t> keyFrames;
};

class AnimatedMatTexCycleParams : public AnitmatedTextureParams
{
public:
	AnimatedMatTexCycleParams(const std::vector<uint8_t>& rawData, uint32_t rawDataIndex);
	std::string GenerateSourceCode(ZRoom* zRoom, uint32_t baseAddress) override;
	size_t GetParamsSize() override;

	uint16_t cycleLength;

	segptr_t textureSegmentOffsetsSegmentAddress;
	segptr_t textureIndicesSegmentAddress;
	uint32_t textureSegmentOffsetsSegmentOffset;
	uint32_t textureIndicesSegmentOffset;

	std::vector<uint32_t> textureSegmentOffsets;
	std::vector<uint8_t> textureIndices;
};

class AnimatedMaterial
{
public:
	AnimatedMaterial(const std::vector<uint8_t>& rawData, uint32_t rawDataIndex);

	int8_t segment;
	int16_t type;
	segptr_t segmentAddress;
	uint32_t segmentOffset;
	std::vector<std::shared_ptr<AnitmatedTextureParams>> params;
};

class SetAnimatedMaterialList : public ZRoomCommand
{
public:
	SetAnimatedMaterialList(ZFile* nParent);

	void ParseRawData() override;
	void DeclareReferences(const std::string& prefix) override;

	std::string GetBodySourceCode() const override;

	RoomCommand GetRoomCommand() const override;
	size_t GetRawDataSize() const override;
	std::string GetCommandCName() const override;

private:
	std::vector<AnimatedMaterial> textures;
};
