#pragma once

#include "ZResource.h"
#include "HighLevel/HLTexture.h"
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
	int width, height;

	uint8_t* bmpRgb;
	uint8_t* bmpRgba;

	virtual void ParseXML(tinyxml2::XMLElement* reader);
	void FixRawData();
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
	bool IsExternalResource();
	ZResourceType GetResourceType();
	void CalcHash();

public:
	ZTexture();
	~ZTexture();

	bool isPalette;

	static ZTexture* BuildFromXML(tinyxml2::XMLElement* reader, std::string inFolder, bool readFile);
	static ZTexture* ExtractFromXML(tinyxml2::XMLElement* reader, std::vector<uint8_t> nRawData, int rawDataIndex, std::string nRelPath);
	static ZTexture* FromBinary(TextureType nType, std::vector<uint8_t> nRawData, int rawDataIndex, std::string nName, int nWidth, int nHeight);
	static ZTexture* FromPNG(std::string pngFilePath, TextureType texType);
	static ZTexture* FromHLTexture(HLTexture* hlTex);
	static TextureType GetTextureTypeFromString(std::string str);

	std::string GetSourceOutputCode(const std::string& prefix) override;
	std::string GetSourceOutputHeader(const std::string& prefix) override;

	std::vector<uint8_t> GetRawData();
	int GetRawDataSize();
	std::string GetIMFmtFromType();
	std::string GetIMSizFromType();
	int GetWidth();
	int GetHeight();
	void SetWidth(int nWidth);
	void SetHeight(int nHeight);
	TextureType GetTextureType();
	void Save(const std::string& outFolder);
	std::string GetExternalExtension();
};
