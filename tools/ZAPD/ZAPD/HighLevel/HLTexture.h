#pragma once

#include <stdint.h>
#include <string>
#include <vector>

// TODO: This was duplicated from ZTexture. It's probably going to be modified to differentiate from
// ZTexture but if not, we're going to need to have the two share an enum.
enum class HLTextureType
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

class HLTexture
{
public:
	static HLTexture* FromPNG(std::string pngFilePath, HLTextureType texType);

	HLTextureType type;
	uint32_t width, height;
	uint8_t* bmpRgba;
};