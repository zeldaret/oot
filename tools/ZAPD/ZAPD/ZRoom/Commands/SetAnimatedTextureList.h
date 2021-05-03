#pragma once

#include "../ZRoomCommand.h"

// TODO move into header and add all types
class AnitmatedTextureParams
{
public:
	virtual ~AnitmatedTextureParams();
	virtual std::string GenerateSourceCode(ZRoom* zRoom, uint32_t baseAddress) = 0;
	virtual size_t GetParamsSize() = 0;
};

class ScrollingTexture : public AnitmatedTextureParams
{
public:
	ScrollingTexture(std::vector<uint8_t> rawData, uint32_t rawDataIndex);
	std::string GenerateSourceCode(ZRoom* zRoom, uint32_t baseAddress) override;
	size_t GetParamsSize() override;

	int8_t xStep;
	int8_t yStep;
	uint8_t width;
	uint8_t height;
};

class FlashingTexturePrimColor
{
public:
	FlashingTexturePrimColor(std::vector<uint8_t> rawData, uint32_t rawDataIndex);

	uint8_t r;
	uint8_t g;
	uint8_t b;
	uint8_t a;
	uint8_t lodFrac;
};

class FlashingTextureEnvColor
{
public:
	FlashingTextureEnvColor(std::vector<uint8_t> rawData, uint32_t rawDataIndex);

	uint8_t r;
	uint8_t g;
	uint8_t b;
	uint8_t a;
};

class FlashingTexture : public AnitmatedTextureParams
{
public:
	FlashingTexture(std::vector<uint8_t> rawData, uint32_t rawDataIndex, int32_t type);
	std::string GenerateSourceCode(ZRoom* zRoom, uint32_t baseAddress) override;
	size_t GetParamsSize() override;

	uint16_t cycleLength;
	uint16_t numKeyFrames;
	uint32_t primColorSegmentOffset;
	uint32_t envColorSegmentOffset;
	uint32_t keyFrameSegmentOffset;

	std::vector<FlashingTexturePrimColor> primColors;
	std::vector<FlashingTextureEnvColor> envColors;
	std::vector<uint16_t> keyFrames;
};

class CyclingTextureParams : public AnitmatedTextureParams
{
public:
	CyclingTextureParams(std::vector<uint8_t> rawData, uint32_t rawDataIndex);
	std::string GenerateSourceCode(ZRoom* zRoom, uint32_t baseAddress) override;
	size_t GetParamsSize() override;

	uint16_t cycleLength;
	uint32_t textureSegmentOffsetsSegmentOffset;
	uint32_t textureIndicesSegmentOffset;

	std::vector<uint32_t> textureSegmentOffsets;
	std::vector<uint8_t> textureIndices;
};

class AnimatedTexture
{
public:
	AnimatedTexture(std::vector<uint8_t> rawData, uint32_t rawDataIndex);
	virtual ~AnimatedTexture();

	int8_t segment;
	int16_t type;
	uint32_t segmentOffset;
	std::vector<AnitmatedTextureParams*> params;
};

class SetAnimatedTextureList : public ZRoomCommand
{
public:
	SetAnimatedTextureList(ZRoom* nZRoom, std::vector<uint8_t> rawData, uint32_t rawDataIndex);
	~SetAnimatedTextureList();

	std::string GetSourceOutputCode(std::string prefix);
	virtual std::string GenerateSourceCodePass1(std::string roomName, uint32_t baseAddress) override;
	virtual RoomCommand GetRoomCommand() override;
	virtual size_t GetRawDataSize() override;
	virtual std::string GetCommandCName() override;
	virtual std::string GenerateExterns() override;

private:
	uint32_t segmentOffset;
	std::vector<AnimatedTexture*> textures;
	std::vector<uint8_t> _rawData;
	int32_t _rawDataIndex;
};