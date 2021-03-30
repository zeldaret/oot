#include "HLTexture.h"
#include <stb_image.h>
#include "../StringHelper.h"

using namespace std;

HLTexture* HLTexture::FromPNG(std::string pngFilePath, HLTextureType texType)
{
	int comp;
	HLTexture* tex = new HLTexture();
	tex->type = texType;
	tex->bmpRgba = (uint8_t*)stbi_load((pngFilePath).c_str(), (int*)&tex->width, (int*)&tex->height,
	                                   &comp, STBI_rgb_alpha);

	return tex;
}
