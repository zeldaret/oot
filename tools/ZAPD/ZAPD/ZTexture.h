#pragma once

#include "HighLevel/HLTexture.h"
#include "ZResource.h"
#include "tinyxml2.h"

#include <vector>

enum class TextureType
{
	RGBA32bpp,
	RGBA16bpp,
	Palette4bpp,
	Palette8bpp,
	Grayscale4bpp,
	Grayscale8bpp,
	GrayscaleAlpha4bpp,
	GrayscaleAlpha8bpp,
	GrayscaleAlpha16bpp,
	Error
};

class ZTexture : public ZResource
{
protected:
	TextureType type;
	uint16_t width, height;

	uint8_t* bmpRgb;
	uint8_t* bmpRgba;
	bool isRawDataFixed;

	void ParseXML(tinyxml2::XMLElement* reader) override;
	void FixRawData();
	void ExtractFromXML(tinyxml2::XMLElement* reader, const std::vector<uint8_t>& nRawData,
	                    const uint32_t nRawDataIndex,
	                    const std::string& nRelPath) override;  // Extract Mode

	void PrepareBitmap();
	void PrepareBitmapRGBA16();
	void PrepareBitmapRGBA32();
	void PrepareBitmapGrayscale8();
	void PrepareBitmapGrayscaleAlpha8();
	void PrepareBitmapGrayscale4();
	void PrepareBitmapGrayscaleAlpha4();
	void PrepareBitmapGrayscaleAlpha16();
	void PrepareBitmapPalette4();
	void PrepareBitmapPalette8();
	void PrepareRawData(std::string inFolder);
	void PrepareRawDataRGBA16(std::string rgbaPath);
	void PrepareRawDataRGBA32(std::string rgbaPath);
	void PrepareRawDataGrayscale4(std::string grayPath);
	void PrepareRawDataGrayscale8(std::string grayPath);
	void PrepareRawDataGrayscaleAlpha4(std::string grayAlphaPath);
	void PrepareRawDataGrayscaleAlpha8(std::string grayAlphaPath);
	void PrepareRawDataGrayscaleAlpha16(std::string grayAlphaPath);
	void PrepareRawDataPalette4(std::string palPath);
	void PrepareRawDataPalette8(std::string palPath);
	float GetPixelMultiplyer();

public:
	ZTexture(ZFile* nParent);
	~ZTexture();

	bool isPalette;

	static ZTexture* BuildFromXML(tinyxml2::XMLElement* reader, std::string inFolder,
	                              bool readFile);
	// static ZTexture* ExtractFromXML(tinyxml2::XMLElement* reader, std::vector<uint8_t> nRawData,
	// uint32_t rawDataIndex, std::string nRelPath, ZFile* nParent);
	static ZTexture* FromBinary(TextureType nType, std::vector<uint8_t> nRawData,
	                            uint32_t rawDataIndex, std::string nName, int32_t nWidth,
	                            int32_t nHeight, ZFile* nParent);
	static ZTexture* FromPNG(std::string pngFilePath, TextureType texType);
	static ZTexture* FromHLTexture(HLTexture* hlTex);
	static TextureType GetTextureTypeFromString(std::string str);

	std::string GetSourceOutputCode(const std::string& prefix) override;
	std::string GetSourceOutputHeader(const std::string& prefix) override;

	size_t GetRawDataSize() override;
	std::string GetIMFmtFromType();
	std::string GetIMSizFromType();
	uint16_t GetWidth();
	uint16_t GetHeight();
	void SetWidth(uint16_t nWidth);
	void SetHeight(uint16_t nHeight);
	TextureType GetTextureType();
	void Save(const std::string& outFolder) override;
	std::string GetExternalExtension() override;
	std::string GetPoolOutPath(std::string defaultValue);
	void CalcHash() override;

	bool IsExternalResource() override;
	std::string GetSourceTypeName() override;
	ZResourceType GetResourceType() override;
};
