#define STB_IMAGE_IMPLEMENTATION
#define STB_IMAGE_WRITE_IMPLEMENTATION
#define TINYGLTF_IMPLEMENTATION

#include "ZTexture.h"
#include "BitConverter.h"
#include "File.h"
#include "Path.h"
#include "StringHelper.h"

#include "stb_image.h"
#include "stb_image_write.h"

using namespace std;
using namespace tinyxml2;

ZTexture::ZTexture() : ZResource()
{
	bmpRgb = nullptr;
	bmpRgba = nullptr;
	width = 0;
	height = 0;
	type = TextureType::Error;
	isPalette = false;
}

ZTexture::~ZTexture()
{
	if (bmpRgb != nullptr)
	{
		stbi_image_free(bmpRgb);
		bmpRgb = nullptr;
	}

	if (bmpRgba != nullptr)
	{
		stbi_image_free(bmpRgba);
		bmpRgba = nullptr;
	}

	width = 0;
	height = 0;
	type = TextureType::Error;
}

// EXTRACT MODE
ZTexture* ZTexture::ExtractFromXML(XMLElement* reader, vector<uint8_t> nRawData, int nRawDataIndex,
                                   string nRelPath)
{
	ZTexture* tex = new ZTexture();

	tex->ParseXML(reader);
	tex->rawDataIndex = nRawDataIndex;
	tex->rawData = vector<uint8_t>(nRawData.data() + tex->rawDataIndex,
	                               nRawData.data() + tex->rawDataIndex + tex->GetRawDataSize());

	tex->relativePath = nRelPath;

	tex->FixRawData();
	tex->PrepareBitmap();

	return tex;
}

ZTexture* ZTexture::FromBinary(TextureType nType, std::vector<uint8_t> nRawData, int nRawDataIndex,
                               std::string nName, int nWidth, int nHeight)
{
	ZTexture* tex = new ZTexture();

	tex->width = nWidth;
	tex->height = nHeight;
	tex->type = nType;
	tex->name = nName;
	tex->outName = nName;
	tex->rawDataIndex = nRawDataIndex;

	int dataEnd = tex->rawDataIndex + tex->GetRawDataSize();
	tex->rawData = vector<uint8_t>(nRawData.data() + tex->rawDataIndex, nRawData.data() + dataEnd);

	tex->FixRawData();
	tex->PrepareBitmap();

	return tex;
}

// BUILD MODE
ZTexture* ZTexture::BuildFromXML(XMLElement* reader, string inFolder, bool readFile)
{
	ZTexture* tex = new ZTexture();

	tex->ParseXML(reader);

	if (readFile)
		tex->PrepareRawData(inFolder);

	return tex;
}

ZTexture* ZTexture::FromPNG(string pngFilePath, TextureType texType)
{
	int comp;
	ZTexture* tex = new ZTexture();
	tex->type = texType;
	tex->name = StringHelper::Split(Path::GetFileNameWithoutExtension(pngFilePath), ".")[0];

	tex->bmpRgb =
		(uint8_t*)stbi_load((pngFilePath).c_str(), &tex->width, &tex->height, &comp, STBI_rgb);
	stbi_image_free(tex->bmpRgb);
	tex->bmpRgb = nullptr;
	tex->rawData = vector<uint8_t>(tex->GetRawDataSize());

	switch (texType)
	{
	case TextureType::RGBA16bpp:
		tex->PrepareRawDataRGBA16(pngFilePath);
		break;
	case TextureType::RGBA32bpp:
		tex->PrepareRawDataRGBA32(pngFilePath);
		break;
	case TextureType::Grayscale4bpp:
		tex->PrepareRawDataGrayscale4(pngFilePath);
		break;
	case TextureType::Grayscale8bpp:
		tex->PrepareRawDataGrayscale8(pngFilePath);
		break;
	case TextureType::GrayscaleAlpha4bpp:
		tex->PrepareRawDataGrayscaleAlpha4(pngFilePath);
		break;
	case TextureType::GrayscaleAlpha8bpp:
		tex->PrepareRawDataGrayscaleAlpha8(pngFilePath);
		break;
	case TextureType::GrayscaleAlpha16bpp:
		tex->PrepareRawDataGrayscaleAlpha16(pngFilePath);
		break;
	case TextureType::Palette4bpp:
		tex->PrepareRawDataPalette4(pngFilePath);
		break;
	case TextureType::Palette8bpp:
		tex->PrepareRawDataPalette8(pngFilePath);
		break;
	default:
		throw std::runtime_error("Format is not supported!");
	}

	tex->FixRawData();

	return tex;
}

ZTexture* ZTexture::FromHLTexture(HLTexture* hlTex)
{
	ZTexture* tex = new ZTexture();

	tex->width = hlTex->width;
	tex->height = hlTex->height;
	tex->type = (TextureType)hlTex->type;

	return tex;
}

void ZTexture::ParseXML(XMLElement* reader)
{
	ZResource::ParseXML(reader);

	if (reader->Attribute("Width") != nullptr)
		width = atoi(reader->Attribute("Width"));

	if (reader->Attribute("Height") != nullptr)
		height = atoi(reader->Attribute("Height"));

	string formatStr = reader->Attribute("Format");

	type = GetTextureTypeFromString(formatStr);

	if (type == TextureType::Error)
		throw std::runtime_error("Format " + formatStr + " is not supported!");
}

void ZTexture::FixRawData()
{
	if (type == TextureType::RGBA32bpp)
	{
		for (size_t i = 0; i < rawData.size(); i += 4)
		{
			uint8_t tmp = rawData[i];
			rawData[i] = rawData[i + 2];
			rawData[i + 2] = tmp;
		}
	}
	else if (type == TextureType::RGBA16bpp)  // || type == TextureType::GrayscaleAlpha16bpp)
	{
		for (size_t i = 0; i < rawData.size(); i += 2)
		{
			uint8_t tmp = rawData[i];
			rawData[i] = rawData[i + 1];
			rawData[i + 1] = tmp;
		}
	}
}

void ZTexture::PrepareBitmap()
{
	bmpRgb = new uint8_t[width * height * 3];
	bmpRgba = new uint8_t[width * height * 4];

	switch (type)
	{
	case TextureType::RGBA16bpp:
		PrepareBitmapRGBA16();
		break;
	case TextureType::RGBA32bpp:
		PrepareBitmapRGBA32();
		break;
	case TextureType::Grayscale4bpp:
		PrepareBitmapGrayscale4();
		break;
	case TextureType::Grayscale8bpp:
		PrepareBitmapGrayscale8();
		break;
	case TextureType::GrayscaleAlpha4bpp:
		PrepareBitmapGrayscaleAlpha4();
		break;
	case TextureType::GrayscaleAlpha8bpp:
		PrepareBitmapGrayscaleAlpha8();
		break;
	case TextureType::GrayscaleAlpha16bpp:
		PrepareBitmapGrayscaleAlpha16();
		break;
	case TextureType::Palette4bpp:
		PrepareBitmapPalette4();
		break;
	case TextureType::Palette8bpp:
		PrepareBitmapPalette8();
		break;
	default:
		throw std::runtime_error("Format is not supported!");
	}
}

void ZTexture::PrepareBitmapRGBA16()
{
	for (int y = 0; y < height; y++)
	{
		for (int x = 0; x < width; x++)
		{
			int pos = ((y * width) + x) * 2;
			short data = (short)((rawData[pos + 1] << 8) + rawData[pos]);
			uint8_t r = (uint8_t)((data & 0xF800) >> 11);
			uint8_t g = (uint8_t)((data & 0x07C0) >> 6);
			uint8_t b = (uint8_t)((data & 0x003E) >> 1);
			uint8_t alpha = (uint8_t)(data & 0x01);

			bmpRgba[(((y * width) + x) * 4) + 0] = r * 8;
			bmpRgba[(((y * width) + x) * 4) + 1] = g * 8;
			bmpRgba[(((y * width) + x) * 4) + 2] = b * 8;
			bmpRgba[(((y * width) + x) * 4) + 3] = alpha * 255;
		}
	}
}

void ZTexture::PrepareBitmapRGBA32()
{
	for (int y = 0; y < height; y++)
	{
		for (int x = 0; x < width; x++)
		{
			int pos = ((y * width) + x) * 4;

			bmpRgba[(((y * width) + x) * 4) + 0] = rawData[pos + 2];
			bmpRgba[(((y * width) + x) * 4) + 1] = rawData[pos + 1];
			bmpRgba[(((y * width) + x) * 4) + 2] = rawData[pos + 0];
			bmpRgba[(((y * width) + x) * 4) + 3] = rawData[pos + 3];
		}
	}
}

void ZTexture::PrepareBitmapGrayscale4()
{
	for (int y = 0; y < height; y++)
	{
		for (int x = 0; x < width; x += 2)
		{
			for (int i = 0; i < 2; i++)
			{
				int pos = ((y * width) + x) / 2;
				uint8_t grayscale = 0;

				if (i == 0)
					grayscale = (uint8_t)(rawData[pos] & 0xF0);
				else
					grayscale = (uint8_t)((rawData[pos] & 0x0F) << 4);

				bmpRgb[(((y * width) + x + i) * 3) + 0] = grayscale;
				bmpRgb[(((y * width) + x + i) * 3) + 1] = grayscale;
				bmpRgb[(((y * width) + x + i) * 3) + 2] = grayscale;
			}
		}
	}
}

void ZTexture::PrepareBitmapGrayscale8()
{
	for (int y = 0; y < height; y++)
	{
		for (int x = 0; x < width; x++)
		{
			int pos = ((y * width) + x) * 1;

			bmpRgb[(((y * width) + x) * 3) + 0] = rawData[pos];
			bmpRgb[(((y * width) + x) * 3) + 1] = rawData[pos];
			bmpRgb[(((y * width) + x) * 3) + 2] = rawData[pos];
		}
	}
}

void ZTexture::PrepareBitmapGrayscaleAlpha4()
{
	for (int y = 0; y < height; y++)
	{
		for (int x = 0; x < width; x += 2)
		{
			for (int i = 0; i < 2; i++)
			{
				int pos = ((y * width) + x) / 2;
				uint8_t data = 0;

				if (i == 0)
					data = (uint8_t)((rawData[pos] & 0xF0) >> 4);
				else
					data = (uint8_t)(rawData[pos] & 0x0F);

				uint8_t grayscale = (uint8_t)(((data & 0x0E) >> 1) * 32);
				uint8_t alpha = (uint8_t)((data & 0x01) * 255);

				bmpRgba[(((y * width) + x + i) * 4) + 0] = grayscale;
				bmpRgba[(((y * width) + x + i) * 4) + 1] = grayscale;
				bmpRgba[(((y * width) + x + i) * 4) + 2] = grayscale;
				bmpRgba[(((y * width) + x + i) * 4) + 3] = alpha;
			}
		}
	}
}

void ZTexture::PrepareBitmapGrayscaleAlpha8()
{
	for (int y = 0; y < height; y++)
	{
		for (int x = 0; x < width; x++)
		{
			int pos = ((y * width) + x) * 1;
			uint8_t grayscale = (uint8_t)(rawData[pos] & 0xF0);
			uint8_t alpha = (uint8_t)((rawData[pos] & 0x0F) << 4);

			bmpRgba[(((y * width) + x) * 4) + 0] = grayscale;
			bmpRgba[(((y * width) + x) * 4) + 1] = grayscale;
			bmpRgba[(((y * width) + x) * 4) + 2] = grayscale;
			bmpRgba[(((y * width) + x) * 4) + 3] = alpha;
		}
	}
}

void ZTexture::PrepareBitmapGrayscaleAlpha16()
{
	for (int y = 0; y < height; y++)
	{
		for (int x = 0; x < width; x++)
		{
			int pos = ((y * width) + x) * 2;
			uint8_t grayscale = rawData[pos + 0];
			uint8_t alpha = rawData[pos + 1];

			bmpRgba[(((y * width) + x) * 4) + 0] = grayscale;
			bmpRgba[(((y * width) + x) * 4) + 1] = grayscale;
			bmpRgba[(((y * width) + x) * 4) + 2] = grayscale;
			bmpRgba[(((y * width) + x) * 4) + 3] = alpha;
		}
	}
}

void ZTexture::PrepareBitmapPalette4()
{
	for (int y = 0; y < height; y++)
	{
		for (int x = 0; x < width; x += 2)
		{
			for (int i = 0; i < 2; i++)
			{
				int pos = ((y * width) + x) / 2;
				uint8_t paletteIndex = 0;

				if (i == 0)
					paletteIndex = (uint8_t)((rawData[pos] & 0xF0) >> 4);
				else
					paletteIndex = (uint8_t)((rawData[pos] & 0x0F));

				bmpRgb[(((y * width) + x + i) * 3) + 0] = paletteIndex * 16;
				bmpRgb[(((y * width) + x + i) * 3) + 1] = paletteIndex * 16;
				bmpRgb[(((y * width) + x + i) * 3) + 2] = paletteIndex * 16;
			}
		}
	}
}

void ZTexture::PrepareBitmapPalette8()
{
	for (int y = 0; y < height; y++)
	{
		for (int x = 0; x < width; x++)
		{
			int pos = ((y * width) + x) * 1;

			bmpRgb[(((y * width) + x) * 3) + 0] = rawData[pos];
			bmpRgb[(((y * width) + x) * 3) + 1] = rawData[pos];
			bmpRgb[(((y * width) + x) * 3) + 2] = rawData[pos];
		}
	}
}

void ZTexture::PrepareRawData(string inFolder)
{
	rawData = vector<uint8_t>(GetRawDataSize());

	switch (type)
	{
	case TextureType::RGBA16bpp:
		PrepareRawDataRGBA16(inFolder + "/" + outName + ".rgba5a1.png");
		break;
	case TextureType::RGBA32bpp:
		PrepareRawDataRGBA32(inFolder + "/" + outName + ".rgba32.png");
		break;
	case TextureType::Grayscale4bpp:
		PrepareRawDataGrayscale4(inFolder + "/" + outName + ".i4.png");
		break;
	case TextureType::Grayscale8bpp:
		PrepareRawDataGrayscale8(inFolder + "/" + outName + ".i8.png");
		break;
	case TextureType::GrayscaleAlpha4bpp:
		PrepareRawDataGrayscaleAlpha4(inFolder + "/" + outName + ".ia4.png");
		break;
	case TextureType::GrayscaleAlpha8bpp:
		PrepareRawDataGrayscaleAlpha8(inFolder + "/" + outName + ".ia8.png");
		break;
	case TextureType::GrayscaleAlpha16bpp:
		PrepareRawDataGrayscaleAlpha16(inFolder + "/" + outName + ".ia16.png");
		break;
	case TextureType::Palette4bpp:
		PrepareRawDataPalette4(inFolder + "/" + outName + ".ci4.png");
		break;
	case TextureType::Palette8bpp:
		PrepareRawDataPalette8(inFolder + "/" + outName + ".ci8.png");
		break;
	default:
		throw std::runtime_error("Build Mode: Format is not supported!");
	}
}

void ZTexture::PrepareRawDataRGBA16(string rgbaPath)
{
	int width;
	int height;
	int comp;

	bmpRgba = (uint8_t*)stbi_load(rgbaPath.c_str(), &width, &height, &comp, STBI_rgb_alpha);

	for (int y = 0; y < height; y++)
	{
		for (int x = 0; x < width; x++)
		{
			int pos = ((y * width) + x) * 2;

			uint8_t r = (uint8_t)(bmpRgba[(((y * width) + x) * 4) + 0] / 8);
			uint8_t g = (uint8_t)(bmpRgba[(((y * width) + x) * 4) + 1] / 8);
			uint8_t b = (uint8_t)(bmpRgba[(((y * width) + x) * 4) + 2] / 8);

			uint8_t alphaBit = (bmpRgba[(((y * width) + x) * 4) + 3] != 0);

			uint16_t data = (uint16_t)((r << 11) + (g << 6) + (b << 1) + alphaBit);

			rawData[pos + 0] = (uint8_t)((data & 0xFF00) >> 8);
			rawData[pos + 1] = (uint8_t)((data & 0x00FF));
		}
	}
}

void ZTexture::PrepareRawDataRGBA32(string rgbaPath)
{
	int width;
	int height;
	int comp;

	bmpRgba = (uint8_t*)stbi_load(rgbaPath.c_str(), &width, &height, &comp, STBI_rgb_alpha);

	for (int y = 0; y < height; y++)
	{
		for (int x = 0; x < width; x++)
		{
			int pos = ((y * width) + x) * 4;

			rawData[pos + 0] = bmpRgba[(((y * width) + x) * 4) + 0];
			rawData[pos + 1] = bmpRgba[(((y * width) + x) * 4) + 1];
			rawData[pos + 2] = bmpRgba[(((y * width) + x) * 4) + 2];
			rawData[pos + 3] = bmpRgba[(((y * width) + x) * 4) + 3];
		}
	}
}

void ZTexture::PrepareRawDataGrayscale4(string grayPath)
{
	int width;
	int height;
	int comp;

	bmpRgb = (uint8_t*)stbi_load(grayPath.c_str(), &width, &height, &comp, STBI_rgb);

	for (int y = 0; y < height; y++)
	{
		for (int x = 0; x < width; x += 2)
		{
			int pos = ((y * width) + x) / 2;
			uint8_t r1 = (uint8_t)(bmpRgb[(((y * width) + x) * 3) + 0]);
			uint8_t r2 = (uint8_t)(bmpRgb[(((y * width) + x + 1) * 3) + 0]);

			rawData[pos] = (uint8_t)(((r1 / 16) << 4) + (r2 / 16));
		}
	}
}

void ZTexture::PrepareRawDataGrayscale8(string grayPath)
{
	int width;
	int height;
	int comp;

	bmpRgb = (uint8_t*)stbi_load(grayPath.c_str(), &width, &height, &comp, STBI_rgb);

	for (int y = 0; y < height; y++)
	{
		for (int x = 0; x < width; x++)
		{
			int pos = ((y * width) + x);
			rawData[pos] = bmpRgb[(((y * width) + x) * 3) + 0];
		}
	}
}

void ZTexture::PrepareRawDataGrayscaleAlpha4(string grayAlphaPath)
{
	int width;
	int height;
	int comp;

	bmpRgba = (uint8_t*)stbi_load(grayAlphaPath.c_str(), &width, &height, &comp, STBI_rgb_alpha);

	for (int y = 0; y < height; y++)
	{
		for (int x = 0; x < width; x += 2)
		{
			int pos = ((y * width) + x) / 2;
			uint8_t data = 0;

			for (int i = 0; i < 2; i++)
			{
				uint8_t cR = bmpRgba[(((y * width) + x + i) * 4) + 0];
				uint8_t alphaBit = (bmpRgba[(((y * width) + x + i) * 4) + 3] != 0);

				if (i == 0)
					data += (uint8_t)((((cR / 32) << 1) + alphaBit) << 4);
				else
					data += (uint8_t)(((cR / 32) << 1) + alphaBit);
			}

			rawData[pos] = data;
		}
	}
}

void ZTexture::PrepareRawDataGrayscaleAlpha8(string grayAlphaPath)
{
	int width;
	int height;
	int comp;

	bmpRgba = (uint8_t*)stbi_load(grayAlphaPath.c_str(), &width, &height, &comp, STBI_rgb_alpha);

	for (int y = 0; y < height; y++)
	{
		for (int x = 0; x < width; x++)
		{
			int pos = ((y * width) + x) * 1;

			uint8_t r = (uint8_t)(bmpRgba[(((y * width) + x) * 4) + 0]);
			uint8_t a = (uint8_t)(bmpRgba[(((y * width) + x) * 4) + 3]);

			rawData[pos] = (uint8_t)(((r / 16) << 4) + (a / 16));
		}
	}
}

void ZTexture::PrepareRawDataGrayscaleAlpha16(string grayAlphaPath)
{
	int width;
	int height;
	int comp;

	bmpRgba = (uint8_t*)stbi_load(grayAlphaPath.c_str(), &width, &height, &comp, STBI_rgb_alpha);

	for (int y = 0; y < height; y++)
	{
		for (int x = 0; x < width; x++)
		{
			int pos = ((y * width) + x) * 2;

			uint8_t cR = bmpRgba[(((y * width) + x) * 4) + 0];
			uint8_t aR = bmpRgba[(((y * width) + x) * 4) + 3];

			rawData[pos + 0] = (uint8_t)(cR);
			rawData[pos + 1] = (uint8_t)(aR);
		}
	}
}

void ZTexture::PrepareRawDataPalette4(string palPath)
{
	int width;
	int height;
	int comp;

	bmpRgb = (uint8_t*)stbi_load(palPath.c_str(), &width, &height, &comp, STBI_rgb);

	for (int y = 0; y < height; y++)
	{
		for (int x = 0; x < width; x += 2)
		{
			int pos = ((y * width) + x) / 2;

			uint8_t cR1 = bmpRgb[(((y * width) + x) * 3) + 0];
			uint8_t cR2 = bmpRgb[(((y * width) + x + 1) * 3) + 0];

			rawData[pos] = (uint8_t)(((cR1 / 16) << 4) + (cR2 / 16));
		}
	}
}

void ZTexture::PrepareRawDataPalette8(string palPath)
{
	int width;
	int height;
	int comp;

	bmpRgb = (uint8_t*)stbi_load(palPath.c_str(), &width, &height, &comp, STBI_rgb);

	for (int y = 0; y < height; y++)
	{
		for (int x = 0; x < width; x++)
		{
			int pos = ((y * width) + x);

			uint8_t cR = bmpRgb[(((y * width) + x) * 3) + 0];
			rawData[pos] = cR;
		}
	}
}

float ZTexture::GetPixelMultiplyer()
{
	switch (type)
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

vector<uint8_t> ZTexture::GetRawData()
{
	return rawData;
}

int ZTexture::GetRawDataSize()
{
	return (int)(width * height * GetPixelMultiplyer());
}

std::string ZTexture::GetIMFmtFromType()
{
	switch (type)
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
	switch (type)
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

int ZTexture::GetWidth()
{
	return width;
}

int ZTexture::GetHeight()
{
	return height;
}

void ZTexture::SetWidth(int nWidth)
{
	width = nWidth;
}

void ZTexture::SetHeight(int nHeight)
{
	height = nHeight;
}

TextureType ZTexture::GetTextureType()
{
	return type;
}

void ZTexture::Save(const std::string& outFolder)
{
	if (type == TextureType::RGBA32bpp)
		stbi_write_png((outFolder + "/" + outName + ".rgba32.png").c_str(), width, height, 4,
		               bmpRgba, width * 4);
	else if (type == TextureType::RGBA16bpp)
		stbi_write_png((outFolder + "/" + outName + ".rgb5a1.png").c_str(), width, height, 4,
		               bmpRgba, width * 4);
	else if (type == TextureType::Grayscale8bpp)
		stbi_write_png((outFolder + "/" + outName + ".i8.png").c_str(), width, height, 3, bmpRgb,
		               width * 3);
	else if (type == TextureType::Grayscale4bpp)
		stbi_write_png((outFolder + "/" + outName + ".i4.png").c_str(), width, height, 3, bmpRgb,
		               width * 3);
	else if (type == TextureType::GrayscaleAlpha16bpp)
		stbi_write_png((outFolder + "/" + outName + ".ia16.png").c_str(), width, height, 4, bmpRgba,
		               width * 4);
	else if (type == TextureType::GrayscaleAlpha8bpp)
		stbi_write_png((outFolder + "/" + outName + ".ia8.png").c_str(), width, height, 4, bmpRgba,
		               width * 4);
	else if (type == TextureType::GrayscaleAlpha4bpp)
		stbi_write_png((outFolder + "/" + outName + ".ia4.png").c_str(), width, height, 4, bmpRgba,
		               width * 4);
	else if (type == TextureType::Palette4bpp)
		stbi_write_png((outFolder + "/" + outName + ".ci4.png").c_str(), width, height, 3, bmpRgb,
		               width * 3);
	else if (type == TextureType::Palette8bpp)
		stbi_write_png((outFolder + "/" + outName + ".ci8.png").c_str(), width, height, 3, bmpRgb,
		               width * 3);

	// if (outName != name && outName != "")
	// File::WriteAllText(outFolder + "/" + outName + ".cfg", name.c_str());
}

// HOTSPOT
string ZTexture::GetSourceOutputCode(const std::string& prefix)
{
	sourceOutput = "";

	// sprintf(line, "%s:\n", name.c_str());
	// sourceOutput += line;

	// TODO: TEMP
	relativePath = "build/assets/" + relativePath;
	FixRawData();

	// sourceOutput += StringHelper::Sprintf("u64 %s[] = \n{\n", name.c_str());

	uint8_t* rawDataArr = rawData.data();

	for (size_t i = 0; i < rawData.size(); i += 8)
	{
		if (i % 32 == 0)
			sourceOutput += "\t";

		sourceOutput +=
			StringHelper::Sprintf("0x%016llX, ", BitConverter::ToUInt64BE(rawDataArr, i));

		if (i % 32 == 24)
			sourceOutput += StringHelper::Sprintf(" // 0x%06X \n", rawDataIndex + ((i / 32) * 32));
	}

	// Ensure there's always a trailing line feed to prevent dumb warnings.
	sourceOutput += "\n";

	// sourceOutput += "};\n";

	return sourceOutput;
}

bool ZTexture::IsExternalResource()
{
	return true;
}

ZResourceType ZTexture::GetResourceType()
{
	return ZResourceType::Texture;
}

void ZTexture::CalcHash()
{
	hash = 0;
}

std::string ZTexture::GetExternalExtension()
{
	switch (type)
	{
	case TextureType::RGBA32bpp:
		return "rgba32";
	case TextureType::RGBA16bpp:
		return "rgb5a1";
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

string ZTexture::GetSourceOutputHeader(const std::string& prefix)
{
	// return StringHelper::Sprintf("extern u64 %s[];\n", name.c_str());
	return "";
}

TextureType ZTexture::GetTextureTypeFromString(string str)
{
	TextureType texType = TextureType::Error;

	if (str == "rgba32")
		texType = TextureType::RGBA32bpp;
	else if (str == "rgb5a1")
		texType = TextureType::RGBA16bpp;
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
		fprintf(stderr, "Encountered Unknown Texture Type %s \n", str.c_str());
	return texType;
}
