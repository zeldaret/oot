#include "ZTexture.h"

#include <cassert>

#include "CRC32.h"
#include "Globals.h"
#include "Utils/BitConverter.h"
#include "Utils/Directory.h"
#include "Utils/File.h"
#include "Utils/Path.h"
#include "WarningHandler.h"

REGISTER_ZFILENODE(Texture, ZTexture);

ZTexture::ZTexture(ZFile* nParent) : ZResource(nParent)
{
	width = 0;
	height = 0;
	dWordAligned = true;
	splitTlut = false;

	RegisterRequiredAttribute("Width");
	RegisterRequiredAttribute("Height");
	RegisterRequiredAttribute("Format");
	RegisterOptionalAttribute("TlutOffset");
	RegisterOptionalAttribute("ExternalTlut");
	RegisterOptionalAttribute("ExternalTlutOffset");
	RegisterOptionalAttribute("SplitTlut");
}

void ZTexture::ExtractFromBinary(uint32_t nRawDataIndex, int32_t nWidth, int32_t nHeight,
                                 TextureType nType, bool nIsPalette)
{
	width = nWidth;
	height = nHeight;
	format = nType;
	rawDataIndex = nRawDataIndex;
	isPalette = nIsPalette;
	name = GetDefaultName(parent->GetName());
	outName = name;

	// Don't parse raw data of external files
	if (parent->GetMode() == ZFileMode::ExternalFile)
		return;

	ParseRawData();
	CalcHash();
}

void ZTexture::FromPNG(const fs::path& pngFilePath, TextureType texType)
{
	format = texType;
	name = StringHelper::Split(Path::GetFileNameWithoutExtension(pngFilePath.string()), ".")[0];
	PrepareRawDataFromFile(pngFilePath);
}

void ZTexture::ParseXML(tinyxml2::XMLElement* reader)
{
	ZResource::ParseXML(reader);

	std::string widthXml = registeredAttributes.at("Width").value;
	std::string heightXml = registeredAttributes.at("Height").value;
	std::string SplitTlutXml = registeredAttributes.at("SplitTlut").value;

	if (!StringHelper::HasOnlyDigits(widthXml))
	{
		std::string errorHeader = StringHelper::Sprintf(
			"value of 'Width' attribute has non-decimal digits: '%s'", widthXml.c_str());
		HANDLE_ERROR_RESOURCE(WarningType::InvalidAttributeValue, parent, this, rawDataIndex,
		                      errorHeader, "");
	}
	if (!StringHelper::HasOnlyDigits(heightXml))
	{
		std::string errorHeader = StringHelper::Sprintf(
			"value of 'Height' attribute has non-decimal digits: '%s'", heightXml.c_str());
		HANDLE_ERROR_RESOURCE(WarningType::InvalidAttributeValue, parent, this, rawDataIndex,
		                      errorHeader, "");
	}

	if (!registeredAttributes.at("ExternalTlut").wasSet &&
	    registeredAttributes.at("SplitTlut").wasSet)
	{
		std::string errorHeader =
			StringHelper::Sprintf("SplitTlut set without using an external tlut");
		HANDLE_WARNING_RESOURCE(WarningType::InvalidAttributeValue, parent, this, rawDataIndex,
		                        errorHeader, "");
	}

	if (!SplitTlutXml.empty())
	{
		if (!tinyxml2::XMLUtil::ToBool(SplitTlutXml.c_str(), &splitTlut))
		{
			std::string errorHeader = StringHelper::Sprintf(
				"Invalid value passed to SplitTlut: '%s'. Valid values are true, false, 1, 0",
				SplitTlutXml.c_str());
			HANDLE_ERROR_RESOURCE(WarningType::InvalidAttributeValue, parent, this, rawDataIndex,
			                      errorHeader, "");
		}
	}

	width = StringHelper::StrToL(widthXml);
	height = StringHelper::StrToL(heightXml);

	std::string formatStr = registeredAttributes.at("Format").value;
	format = GetTextureTypeFromString(formatStr);

	if (format == TextureType::Error)
	{
		HANDLE_ERROR_RESOURCE(WarningType::InvalidAttributeValue, parent, this, rawDataIndex,
		                      "invalid value found for 'Format' attribute", "");
	}

	const auto& tlutOffsetAttr = registeredAttributes.at("TlutOffset");
	if (tlutOffsetAttr.wasSet)
	{
		switch (format)
		{
		case TextureType::Palette4bpp:
		case TextureType::Palette8bpp:
			tlutOffset = StringHelper::StrToL(tlutOffsetAttr.value, 16);
			break;

		default:
			HANDLE_ERROR_RESOURCE(WarningType::InvalidXML, parent, this, rawDataIndex,
			                      "'TlutOffset' declared in non color-indexed (ci4 or ci8) texture",
			                      "");
			break;
		}
	}
}

void ZTexture::ParseRawData()
{
	if (rawDataIndex % 8 != 0)
		dWordAligned = false;

	switch (format)
	{
	case TextureType::RGBA16bpp:
		ConvertN64ToBitmap_RGBA16();
		break;
	case TextureType::RGBA32bpp:
		ConvertN64ToBitmap_RGBA32();
		break;
	case TextureType::Grayscale4bpp:
		ConvertN64ToBitmap_Grayscale4();
		break;
	case TextureType::Grayscale8bpp:
		ConvertN64ToBitmap_Grayscale8();
		break;
	case TextureType::GrayscaleAlpha4bpp:
		ConvertN64ToBitmap_GrayscaleAlpha4();
		break;
	case TextureType::GrayscaleAlpha8bpp:
		ConvertN64ToBitmap_GrayscaleAlpha8();
		break;
	case TextureType::GrayscaleAlpha16bpp:
		ConvertN64ToBitmap_GrayscaleAlpha16();
		break;
	case TextureType::Palette4bpp:
		ConvertN64ToBitmap_Palette4();
		break;
	case TextureType::Palette8bpp:
		ConvertN64ToBitmap_Palette8();
		break;
	case TextureType::Error:
		HANDLE_ERROR_RESOURCE(WarningType::InvalidAttributeValue, parent, this, rawDataIndex,
		                      StringHelper::Sprintf("Invalid texture format", format), "");
		assert(!"TODO");
		break;
	}
}

void ZTexture::ParseRawDataLate()
{
	if (registeredAttributes["ExternalTlut"].wasSet)
	{
		const std::string externPalette = registeredAttributes["ExternalTlut"].value;
		for (const auto& file : Globals::Instance->files)
		{
			if (file->GetName() == externPalette)
			{
				offset_t palOffset = 0;
				if (registeredAttributes["ExternalTlutOffset"].wasSet)
				{
					palOffset =
						StringHelper::StrToL(registeredAttributes["ExternalTlutOffset"].value, 16);
				}
				else
				{
					HANDLE_WARNING_RESOURCE(
						WarningType::MissingOffsets, parent, this, rawDataIndex,
						StringHelper::Sprintf(
							"No ExternalTlutOffset Given. Assuming offset of 0x0"),
						"");
				}
				for (const auto& res : file->resources)
				{
					if (res->GetRawDataIndex() == palOffset)
					{
						ZTexture* palette = (ZTexture*)res;
						ZTexture tlutTemp(file);

						tlut = &tlutTemp;
						tlut->ExtractFromBinary(palOffset, palette->width, palette->height,
						                        TextureType::RGBA16bpp, true);
						SetTlut(tlut);
					}
				}
			}
		}
	}
}

void ZTexture::ConvertN64ToBitmap_RGBA16()
{
	textureData.InitEmptyRGBImage(width, height, true);
	const auto& parentRawData = parent->GetRawData();
	for (size_t y = 0; y < height; y++)
	{
		for (size_t x = 0; x < width; x++)
		{
			int32_t pos = rawDataIndex + ((y * width) + x) * 2;
			uint16_t data = parentRawData.at(pos + 1) | (parentRawData.at(pos) << 8);
			uint8_t r = (data & 0xF800) >> 11;
			uint8_t g = (data & 0x07C0) >> 6;
			uint8_t b = (data & 0x003E) >> 1;
			uint8_t alpha = data & 0x01;

			textureData.SetRGBPixel(y, x, (r << 3) | (r >> 2), (g << 3) | (g >> 2),
			                        (b << 3) | (b >> 2), alpha * 255);
		}
	}
}

void ZTexture::ConvertN64ToBitmap_RGBA32()
{
	textureData.InitEmptyRGBImage(width, height, true);
	const auto& parentRawData = parent->GetRawData();
	for (size_t y = 0; y < height; y++)
	{
		for (size_t x = 0; x < width; x++)
		{
			size_t pos = rawDataIndex + ((y * width) + x) * 4;
			uint8_t r = parentRawData.at(pos + 0);
			uint8_t g = parentRawData.at(pos + 1);
			uint8_t b = parentRawData.at(pos + 2);
			uint8_t alpha = parentRawData.at(pos + 3);

			textureData.SetRGBPixel(y, x, r, g, b, alpha);
		}
	}
}

void ZTexture::ConvertN64ToBitmap_Grayscale4()
{
	textureData.InitEmptyRGBImage(width, height, false);
	const auto& parentRawData = parent->GetRawData();
	for (size_t y = 0; y < height; y++)
	{
		for (size_t x = 0; x < width; x += 2)
		{
			for (uint8_t i = 0; i < 2; i++)
			{
				size_t pos = rawDataIndex + ((y * width) + x) / 2;
				uint8_t grayscale = 0;

				if (i == 0)
					grayscale = parentRawData.at(pos) & 0xF0;
				else
					grayscale = (parentRawData.at(pos) & 0x0F) << 4;

				textureData.SetGrayscalePixel(y, x + i, (grayscale << 4) | grayscale);
			}
		}
	}
}

void ZTexture::ConvertN64ToBitmap_Grayscale8()
{
	textureData.InitEmptyRGBImage(width, height, false);
	const auto& parentRawData = parent->GetRawData();
	for (size_t y = 0; y < height; y++)
	{
		for (size_t x = 0; x < width; x++)
		{
			size_t pos = rawDataIndex + ((y * width) + x) * 1;

			textureData.SetGrayscalePixel(y, x, parentRawData.at(pos));
		}
	}
}

void ZTexture::ConvertN64ToBitmap_GrayscaleAlpha4()
{
	textureData.InitEmptyRGBImage(width, height, true);
	const auto& parentRawData = parent->GetRawData();
	for (size_t y = 0; y < height; y++)
	{
		for (size_t x = 0; x < width; x += 2)
		{
			for (uint16_t i = 0; i < 2; i++)
			{
				size_t pos = rawDataIndex + ((y * width) + x) / 2;
				uint8_t data = 0;

				if (i == 0)
					data = (parentRawData.at(pos) & 0xF0) >> 4;
				else
					data = parentRawData.at(pos) & 0x0F;

				uint8_t grayscale = data & 0b1110;
				grayscale = (grayscale << 4) | (grayscale << 1) | (grayscale >> 2);
				uint8_t alpha = (data & 0x01) ? 255 : 0;

				textureData.SetGrayscalePixel(y, x + i, grayscale, alpha);
			}
		}
	}
}

void ZTexture::ConvertN64ToBitmap_GrayscaleAlpha8()
{
	textureData.InitEmptyRGBImage(width, height, true);
	const auto& parentRawData = parent->GetRawData();
	for (size_t y = 0; y < height; y++)
	{
		for (size_t x = 0; x < width; x++)
		{
			size_t pos = rawDataIndex + ((y * width) + x) * 1;
			uint8_t pixel = parentRawData.at(pos);
			uint8_t data = (pixel >> 4) & 0xF;

			data = (data << 4) | data;
			uint8_t grayscale = data;
			uint8_t alpha = (pixel & 0xF);
			alpha = (alpha << 4) | alpha;

			textureData.SetGrayscalePixel(y, x, grayscale, alpha);
		}
	}
}

void ZTexture::ConvertN64ToBitmap_GrayscaleAlpha16()
{
	textureData.InitEmptyRGBImage(width, height, true);
	const auto& parentRawData = parent->GetRawData();
	for (size_t y = 0; y < height; y++)
	{
		for (size_t x = 0; x < width; x++)
		{
			size_t pos = rawDataIndex + ((y * width) + x) * 2;
			uint8_t grayscale = parentRawData.at(pos + 0);
			uint8_t alpha = parentRawData.at(pos + 1);

			textureData.SetGrayscalePixel(y, x, grayscale, alpha);
		}
	}
}

void ZTexture::ConvertN64ToBitmap_Palette4()
{
	textureData.InitEmptyPaletteImage(width, height);
	const auto& parentRawData = parent->GetRawData();
	for (size_t y = 0; y < height; y++)
	{
		for (size_t x = 0; x < width; x += 2)
		{
			for (uint16_t i = 0; i < 2; i++)
			{
				size_t pos = rawDataIndex + ((y * width) + x) / 2;
				uint8_t paletteIndex = 0;

				if (i == 0)
					paletteIndex = (parentRawData.at(pos) & 0xF0) >> 4;
				else
					paletteIndex = (parentRawData.at(pos) & 0x0F);

				textureData.SetIndexedPixel(y, x + i, paletteIndex, paletteIndex * 16);
			}
		}
	}
}

void ZTexture::ConvertN64ToBitmap_Palette8()
{
	textureData.InitEmptyPaletteImage(width, height);
	const auto& parentRawData = parent->GetRawData();
	for (size_t y = 0; y < height; y++)
	{
		for (size_t x = 0; x < width; x++)
		{
			size_t pos = rawDataIndex + ((y * width) + x) * 1;
			uint8_t grayscale = parentRawData.at(pos);

			textureData.SetIndexedPixel(y, x, grayscale, grayscale);
		}
	}
}

void ZTexture::DeclareReferences([[maybe_unused]] const std::string& prefix)
{
	if (tlutOffset != static_cast<uint32_t>(-1))
	{
		tlut = parent->GetTextureResource(tlutOffset);
		if (tlut == nullptr)
		{
			int32_t tlutDim = 16;
			if (format == TextureType::Palette4bpp)
				tlutDim = 4;

			tlut = new ZTexture(parent);
			tlut->ExtractFromBinary(tlutOffset, tlutDim, tlutDim, TextureType::RGBA16bpp, true);
			parent->AddTextureResource(tlutOffset, tlut);
			tlut->DeclareVar(prefix, "");
		}
		else
		{
			tlut->isPalette = true;
		}
		SetTlut(tlut);
	}
}

void ZTexture::PrepareRawDataFromFile(const fs::path& pngFilePath)
{
	textureData.ReadPng(pngFilePath);

	width = textureData.GetWidth();
	height = textureData.GetHeight();

	textureDataRaw.clear();
	textureDataRaw.resize(ALIGN8(GetRawDataSize()));

	switch (format)
	{
	case TextureType::RGBA16bpp:
		ConvertBitmapToN64_RGBA16();
		break;
	case TextureType::RGBA32bpp:
		ConvertBitmapToN64_RGBA32();
		break;
	case TextureType::Grayscale4bpp:
		ConvertBitmapToN64_Grayscale4();
		break;
	case TextureType::Grayscale8bpp:
		ConvertBitmapToN64_Grayscale8();
		break;
	case TextureType::GrayscaleAlpha4bpp:
		ConvertBitmapToN64_GrayscaleAlpha4();
		break;
	case TextureType::GrayscaleAlpha8bpp:
		ConvertBitmapToN64_GrayscaleAlpha8();
		break;
	case TextureType::GrayscaleAlpha16bpp:
		ConvertBitmapToN64_GrayscaleAlpha16();
		break;
	case TextureType::Palette4bpp:
		ConvertBitmapToN64_Palette4();
		break;
	case TextureType::Palette8bpp:
		ConvertBitmapToN64_Palette8();
		break;
	case TextureType::Error:
		HANDLE_ERROR_PROCESS(WarningType::InvalidPNG, "Input PNG file has invalid format type", "");
		break;
	}
}

void ZTexture::ConvertBitmapToN64_RGBA16()
{
	for (uint16_t y = 0; y < height; y++)
	{
		for (uint16_t x = 0; x < width; x++)
		{
			size_t pos = ((y * width) + x) * 2;
			RGBAPixel pixel = textureData.GetPixel(y, x);

			uint8_t r = pixel.r >> 3;
			uint8_t g = pixel.g >> 3;
			uint8_t b = pixel.b >> 3;

			uint8_t alphaBit = pixel.a != 0;

			uint16_t data = (r << 11) | (g << 6) | (b << 1) | alphaBit;

			textureDataRaw[pos + 0] = (data & 0xFF00) >> 8;
			textureDataRaw[pos + 1] = (data & 0x00FF);
		}
	}
}

void ZTexture::ConvertBitmapToN64_RGBA32()
{
	for (uint16_t y = 0; y < height; y++)
	{
		for (uint16_t x = 0; x < width; x++)
		{
			size_t pos = ((y * width) + x) * 4;
			RGBAPixel pixel = textureData.GetPixel(y, x);

			textureDataRaw[pos + 0] = pixel.r;
			textureDataRaw[pos + 1] = pixel.g;
			textureDataRaw[pos + 2] = pixel.b;
			textureDataRaw[pos + 3] = pixel.a;
		}
	}
}

void ZTexture::ConvertBitmapToN64_Grayscale4()
{
	for (uint16_t y = 0; y < height; y++)
	{
		for (uint16_t x = 0; x < width; x += 2)
		{
			size_t pos = ((y * width) + x) / 2;
			uint8_t r1 = textureData.GetPixel(y, x).r;
			uint8_t r2 = textureData.GetPixel(y, x + 1).r;

			textureDataRaw[pos] = (uint8_t)(((r1 / 16) << 4) + (r2 / 16));
		}
	}
}

void ZTexture::ConvertBitmapToN64_Grayscale8()
{
	for (uint16_t y = 0; y < height; y++)
	{
		for (uint16_t x = 0; x < width; x++)
		{
			size_t pos = (y * width) + x;
			RGBAPixel pixel = textureData.GetPixel(y, x);
			textureDataRaw[pos] = pixel.r;
		}
	}
}

void ZTexture::ConvertBitmapToN64_GrayscaleAlpha4()
{
	for (uint16_t y = 0; y < height; y++)
	{
		for (uint16_t x = 0; x < width; x += 2)
		{
			size_t pos = ((y * width) + x) / 2;
			uint8_t data = 0;

			for (uint16_t i = 0; i < 2; i++)
			{
				RGBAPixel pixel = textureData.GetPixel(y, x + i);
				uint8_t cR = pixel.r;
				uint8_t alphaBit = pixel.a != 0;

				if (i == 0)
					data = (((cR >> 5) << 1) | alphaBit) << 4;
				else
					data |= ((cR >> 5) << 1) | alphaBit;
			}

			textureDataRaw[pos] = data;
		}
	}
}

void ZTexture::ConvertBitmapToN64_GrayscaleAlpha8()
{
	for (uint16_t y = 0; y < height; y++)
	{
		for (uint16_t x = 0; x < width; x++)
		{
			size_t pos = ((y * width) + x) * 1;
			RGBAPixel pixel = textureData.GetPixel(y, x);

			uint8_t r = (pixel.r >> 4) & 0xF;
			uint8_t a = (pixel.a >> 4) & 0xF;

			textureDataRaw[pos] = (r << 4) | a;
		}
	}
}

void ZTexture::ConvertBitmapToN64_GrayscaleAlpha16()
{
	for (uint16_t y = 0; y < height; y++)
	{
		for (uint16_t x = 0; x < width; x++)
		{
			size_t pos = ((y * width) + x) * 2;
			RGBAPixel pixel = textureData.GetPixel(y, x);

			uint8_t cR = pixel.r;
			uint8_t aR = pixel.a;

			textureDataRaw[pos + 0] = cR;
			textureDataRaw[pos + 1] = aR;
		}
	}
}

void ZTexture::ConvertBitmapToN64_Palette4()
{
	for (uint16_t y = 0; y < height; y++)
	{
		for (uint16_t x = 0; x < width; x += 2)
		{
			size_t pos = ((y * width) + x) / 2;

			uint8_t cR1 = textureData.GetIndexedPixel(y, x);
			uint8_t cR2 = textureData.GetIndexedPixel(y, x + 1);

			textureDataRaw[pos] = (cR1 << 4) | (cR2);
		}
	}
}

void ZTexture::ConvertBitmapToN64_Palette8()
{
	for (uint16_t y = 0; y < height; y++)
	{
		for (uint16_t x = 0; x < width; x++)
		{
			size_t pos = ((y * width) + x);
			uint8_t cR = textureData.GetIndexedPixel(y, x);

			textureDataRaw[pos] = cR;
		}
	}
}

float ZTexture::GetPixelMultiplyer() const
{
	switch (format)
	{
	case TextureType::Grayscale4bpp:
	case TextureType::GrayscaleAlpha4bpp:
	case TextureType::Palette4bpp:
		return 0.5f;
	case TextureType::Grayscale8bpp:
	case TextureType::GrayscaleAlpha8bpp:
	case TextureType::Palette8bpp:
		return 1;
	case TextureType::GrayscaleAlpha16bpp:
	case TextureType::RGBA16bpp:
		return 2;
	case TextureType::RGBA32bpp:
		return 4;
	default:
		return -1;
	}
}

size_t ZTexture::GetRawDataSize() const
{
	return (width * height * GetPixelMultiplyer());
}

std::string ZTexture::GetIMFmtFromType()
{
	switch (format)
	{
	case TextureType::RGBA32bpp:
	case TextureType::RGBA16bpp:
		return "G_IM_FMT_RGBA";
	case TextureType::Grayscale4bpp:
	case TextureType::Grayscale8bpp:
		return "G_IM_FMT_I";
	case TextureType::Palette4bpp:
	case TextureType::Palette8bpp:
		return "G_IM_FMT_CI";
	case TextureType::GrayscaleAlpha4bpp:
	case TextureType::GrayscaleAlpha8bpp:
	case TextureType::GrayscaleAlpha16bpp:
		return "G_IM_FMT_IA";
	default:
		return "ERROR";
	}
}

std::string ZTexture::GetIMSizFromType()
{
	switch (format)
	{
	case TextureType::Grayscale4bpp:
	case TextureType::Palette4bpp:
	case TextureType::GrayscaleAlpha4bpp:
		return "G_IM_SIZ_4b";
	case TextureType::Palette8bpp:
	case TextureType::Grayscale8bpp:
		return "G_IM_SIZ_8b";
	case TextureType::GrayscaleAlpha16bpp:
	case TextureType::RGBA16bpp:
		return "G_IM_SIZ_16b";
	case TextureType::RGBA32bpp:
		return "G_IM_SIZ_32b";
	default:
		return "ERROR";
	}
}

std::string ZTexture::GetDefaultName(const std::string& prefix) const
{
	const char* suffix = "Tex";
	if (isPalette)
		suffix = "TLUT";
	return StringHelper::Sprintf("%s%s_%06X", prefix.c_str(), suffix, rawDataIndex);
}

uint32_t ZTexture::GetWidth() const
{
	return width;
}

uint32_t ZTexture::GetHeight() const
{
	return height;
}

void ZTexture::SetDimensions(uint32_t nWidth, uint32_t nHeight)
{
	width = nWidth;
	height = nHeight;
	ParseRawData();
}

TextureType ZTexture::GetTextureType() const
{
	return format;
}

void ZTexture::Save(const fs::path& outFolder)
{
	// Optionally generate text file containing CRC information. This is going to be a one time
	// process for generating the Texture Pool XML.
	if (Globals::Instance->outputCrc)
	{
		File::WriteAllText((Globals::Instance->outputPath / (outName + ".txt")).string(),
		                   StringHelper::Sprintf("%08lX", hash));
	}

	auto outPath = GetPoolOutPath(outFolder);

	if (!Directory::Exists(outPath.string()))
		Directory::CreateDirectory(outPath.string());

	fs::path outFileName;

	if (!dWordAligned)
		outFileName = outPath / (outName + ".u32" + "." + GetExternalExtension() + ".png");
	else
		outFileName = outPath / (outName + +"." + GetExternalExtension() + ".png");

#ifdef TEXTURE_DEBUG
	printf("Saving PNG: %s\n", outFileName.c_str());
	printf("\t Var name: %s\n", name.c_str());
	if (tlut != nullptr)
		printf("\t TLUT name: %s\n", tlut->name.c_str());
#endif

	textureData.WritePng(outFileName);

#ifdef TEXTURE_DEBUG
	printf("\n");
#endif
}

Declaration* ZTexture::DeclareVar(const std::string& prefix,
                                  [[maybe_unused]] const std::string& bodyStr)
{
	std::string auxName = name;
	std::string auxOutName = outName;
	std::string incStr;
	if (auxName == "")
		auxName = GetDefaultName(prefix);

	if (auxOutName == "")
		auxOutName = GetDefaultName(prefix);

	auto filepath = Globals::Instance->outputPath / fs::path(auxOutName).stem();

	if (dWordAligned)
		incStr = StringHelper::Sprintf("%s.%s.inc.c", filepath.string().c_str(),
		                               GetExternalExtension().c_str());
	else
		incStr = StringHelper::Sprintf("%s.u32.%s.inc.c", filepath.string().c_str(),
		                               GetExternalExtension().c_str());

	if (!Globals::Instance->cfg.texturePool.empty())
	{
		CalcHash();

		// TEXTURE POOL CHECK
		const auto& poolEntry = Globals::Instance->cfg.texturePool.find(hash);
		if (poolEntry != Globals::Instance->cfg.texturePool.end())
		{
			if (dWordAligned)
				incStr =
					StringHelper::Sprintf("%s.%s.inc.c", poolEntry->second.path.string().c_str(),
				                          GetExternalExtension().c_str());
			else
				incStr = StringHelper::Sprintf("%s.u32.%s.inc.c",
				                               poolEntry->second.path.string().c_str(),
				                               GetExternalExtension().c_str());
		}
	}
	size_t texSizeDivisor = (dWordAligned) ? 8 : 4;

	Declaration* decl;

	if (parent->makeDefines)
	{
		decl = parent->AddDeclarationIncludeArray(rawDataIndex, incStr, GetRawDataSize(),
		                                          GetSourceTypeName(), auxName, GetHeaderDefines(),
		                                          GetRawDataSize() / texSizeDivisor);
	}
	else
	{
		decl = parent->AddDeclarationIncludeArray(rawDataIndex, incStr, GetRawDataSize(),
		                                          GetSourceTypeName(), auxName,
		                                          GetRawDataSize() / texSizeDivisor);
	}
	decl->staticConf = staticConf;
	return decl;
}

std::string ZTexture::GetBodySourceCode() const
{
	std::string sourceOutput;
	size_t texSizeInc = (dWordAligned) ? 8 : 4;
	for (size_t i = 0; i < textureDataRaw.size(); i += texSizeInc)
	{
		if (i % 32 == 0)
			sourceOutput += "    ";
		if (dWordAligned)
			sourceOutput +=
				StringHelper::Sprintf("0x%016llX, ", BitConverter::ToUInt64BE(textureDataRaw, i));
		else
			sourceOutput +=
				StringHelper::Sprintf("0x%08llX, ", BitConverter::ToUInt32BE(textureDataRaw, i));
		if (i % 32 == 24)
			sourceOutput += StringHelper::Sprintf(" // 0x%06X \n", rawDataIndex + ((i / 32) * 32));
	}

	// Ensure there's always a trailing line feed to prevent dumb warnings.
	// Please don't remove this line, unless you somehow made a way to prevent
	// that warning when building the OoT repo.
	sourceOutput += "\n";

	return sourceOutput;
}

std::string ZTexture::GetHeaderDefines() const
{
	std::string definePrefix = StringHelper::camelCaseTo_SCREAMING_SNAKE_CASE(name.c_str(), true);
	std::string ret = StringHelper::Sprintf("#define %s_WIDTH %d\n", definePrefix.c_str(), width);

	ret += StringHelper::Sprintf("#define %s_HEIGHT %d\n", definePrefix.c_str(), height);
	ret += StringHelper::Sprintf("#define %s_SIZE 0x%zX\n", definePrefix.c_str(), GetRawDataSize());

	return ret;
}

bool ZTexture::IsExternalResource() const
{
	return true;
}

ZResourceType ZTexture::GetResourceType() const
{
	return ZResourceType::Texture;
}

std::string ZTexture::GetSourceTypeName() const
{
	return dWordAligned ? "u64" : "u32";
}

void ZTexture::CalcHash()
{
	const auto& parentRawData = parent->GetRawData();
	hash = CRC32B(parentRawData.data() + rawDataIndex, GetRawDataSize());
}

std::string ZTexture::GetExternalExtension() const
{
	switch (format)
	{
	case TextureType::RGBA32bpp:
		return "rgba32";
	case TextureType::RGBA16bpp:
		return "rgba16";
	case TextureType::Grayscale4bpp:
		return "i4";
	case TextureType::Grayscale8bpp:
		return "i8";
	case TextureType::GrayscaleAlpha4bpp:
		return "ia4";
	case TextureType::GrayscaleAlpha8bpp:
		return "ia8";
	case TextureType::GrayscaleAlpha16bpp:
		return "ia16";
	case TextureType::Palette4bpp:
		return "ci4";
	case TextureType::Palette8bpp:
		return "ci8";
	default:
		return "ERROR";
	}
}

fs::path ZTexture::GetPoolOutPath(const fs::path& defaultValue)
{
	if (Globals::Instance->cfg.texturePool.find(hash) != Globals::Instance->cfg.texturePool.end())
		return Path::GetDirectoryName(Globals::Instance->cfg.texturePool[hash].path.string());

	return defaultValue;
}

TextureType ZTexture::GetTextureTypeFromString(const std::string& str)
{
	TextureType texType = TextureType::Error;

	if (str == "rgba32")
		texType = TextureType::RGBA32bpp;
	else if (str == "rgba16")
		texType = TextureType::RGBA16bpp;
	else if (str == "rgb5a1")
	{
		texType = TextureType::RGBA16bpp;
		HANDLE_WARNING(WarningType::Deprecated,
		               "the texture format 'rgb5a1' is currently deprecated",
		               "It will be removed in a future version. Use the format 'rgba16' instead.");
	}
	else if (str == "i4")
		texType = TextureType::Grayscale4bpp;
	else if (str == "i8")
		texType = TextureType::Grayscale8bpp;
	else if (str == "ia4")
		texType = TextureType::GrayscaleAlpha4bpp;
	else if (str == "ia8")
		texType = TextureType::GrayscaleAlpha8bpp;
	else if (str == "ia16")
		texType = TextureType::GrayscaleAlpha16bpp;
	else if (str == "ci4")
		texType = TextureType::Palette4bpp;
	else if (str == "ci8")
		texType = TextureType::Palette8bpp;
	else
		// TODO: handle this case in a more coherent way
		HANDLE_WARNING(WarningType::InvalidAttributeValue,
		               "invalid value found for 'Type' attribute", "Defaulting to ''.");
	return texType;
}

bool ZTexture::IsColorIndexed() const
{
	switch (format)
	{
	case TextureType::Palette4bpp:
	case TextureType::Palette8bpp:
		return true;

	default:
		return false;
	}
}

void ZTexture::SetTlut(ZTexture* nTlut)
{
	assert(IsColorIndexed());
	assert(nTlut->isPalette);
	tlut = nTlut;

	textureData.SetPalette(tlut->textureData, splitTlut ? 128 : 0);
}

bool ZTexture::HasTlut() const
{
	return tlut != nullptr;
}
