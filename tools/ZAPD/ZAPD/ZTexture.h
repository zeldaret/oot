#pragma once

#include "ImageBackend.h"
#include "ZResource.h"
#include "tinyxml2.h"

enum class TextureType
{
	Error,
	RGBA32bpp,
	RGBA16bpp,
	Palette4bpp,
	Palette8bpp,
	Grayscale4bpp,
	Grayscale8bpp,
	GrayscaleAlpha4bpp,
	GrayscaleAlpha8bpp,
	GrayscaleAlpha16bpp,
};

class ZTexture : public ZResource
{
protected:
	TextureType format = TextureType::Error;
	uint32_t width, height;

	ImageBackend textureData;
	std::vector<uint8_t> textureDataRaw;  // When reading from a PNG file.
	uint32_t tlutOffset = static_cast<uint32_t>(-1);
	ZTexture* tlut = nullptr;
	bool splitTlut;

	// The following functions convert from N64 binary data to a bitmap to be saved to a PNG.
	void ConvertN64ToBitmap_RGBA16();
	void ConvertN64ToBitmap_RGBA32();
	void ConvertN64ToBitmap_Grayscale8();
	void ConvertN64ToBitmap_GrayscaleAlpha8();
	void ConvertN64ToBitmap_Grayscale4();
	void ConvertN64ToBitmap_GrayscaleAlpha4();
	void ConvertN64ToBitmap_GrayscaleAlpha16();
	void ConvertN64ToBitmap_Palette4();
	void ConvertN64ToBitmap_Palette8();

	// The following functions convert from a bitmap to N64 binary data.
	void PrepareRawDataFromFile(const fs::path& inFolder);
	void ConvertBitmapToN64_RGBA16();
	void ConvertBitmapToN64_RGBA32();
	void ConvertBitmapToN64_Grayscale4();
	void ConvertBitmapToN64_Grayscale8();
	void ConvertBitmapToN64_GrayscaleAlpha4();
	void ConvertBitmapToN64_GrayscaleAlpha8();
	void ConvertBitmapToN64_GrayscaleAlpha16();
	void ConvertBitmapToN64_Palette4();
	void ConvertBitmapToN64_Palette8();

public:
	ZTexture(ZFile* nParent);

	bool isPalette = false;
	bool dWordAligned = true;

	void ExtractFromBinary(uint32_t nRawDataIndex, int32_t nWidth, int32_t nHeight,
	                       TextureType nType, bool nIsPalette);
	void FromPNG(const fs::path& pngFilePath, TextureType texType);
	static TextureType GetTextureTypeFromString(const std::string& str);

	void ParseXML(tinyxml2::XMLElement* reader) override;
	void ParseRawData() override;
	void DeclareReferences(const std::string& prefix) override;

	Declaration* DeclareVar(const std::string& prefix, const std::string& bodyStr) override;
	std::string GetBodySourceCode() const override;

	/// <summary>
	/// Calculates the hash of this texture, for use with the texture pool.
	/// </summary>
	void CalcHash() override;

	void Save(const fs::path& outFolder) override;

	std::string GetHeaderDefines() const;
	bool IsExternalResource() const override;
	std::string GetSourceTypeName() const override;
	ZResourceType GetResourceType() const override;
	std::string GetExternalExtension() const override;

	size_t GetRawDataSize() const override;
	std::string GetIMFmtFromType();
	std::string GetIMSizFromType();
	std::string GetDefaultName(const std::string& prefix) const override;
	uint32_t GetWidth() const;
	uint32_t GetHeight() const;
	void SetDimensions(uint32_t nWidth, uint32_t nHeight);

	/// <summary>
	/// Returns how many bytes each pixel takes up.
	/// </summary>
	/// <returns></returns>
	float GetPixelMultiplyer() const;

	TextureType GetTextureType() const;

	/// <summary>
	/// Returns the path to the texture pool, taken from the config file.
	/// </summary>
	/// <param name="defaultValue"></param>
	/// <returns></returns>
	fs::path GetPoolOutPath(const fs::path& defaultValue);

	/// <summary>
	/// Returns if this texture uses a palette.
	/// </summary>
	/// <returns></returns>
	bool IsColorIndexed() const;

	void SetTlut(ZTexture* nTlut);
	bool HasTlut() const;
	void ParseRawDataLate() override;
};
