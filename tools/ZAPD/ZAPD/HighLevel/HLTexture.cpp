#include "HLTexture.h"
#include <stb_image.h>
#include "../StringHelper.h"

using namespace std;

HLTexture* HLTexture::FromPNG(std::string pngFilePath, HLTextureType texType)
{
	int32_t comp;
	HLTexture* tex = new HLTexture();
	tex->type = texType;
	tex->bmpRgba = (uint8_t*)stbi_load((pngFilePath).c_str(), (int32_t*)&tex->width,
	                                   (int32_t*)&tex->height, &comp, STBI_rgb_alpha);

	return tex;
}
