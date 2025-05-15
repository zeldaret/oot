# Images

Images in the rom are in N64 image formats.
On extraction, they are converted to png and written to `extracted/VERSION/`.
On build, they are converted back to N64 formats and written as C arrays to `.inc.c` files in `build/VERSION/`.

The build system will also pick up images in `assets/`, allowing modders to add or even [replace](#replacing-images) images.

PNG files have suffixes indicating how they are to be converted. For example, a `gDekuStickTex.i8.png` file will be converted to `i8`.

The valid formats are `rgba32`, `rgba16`, `i4`, `i8`, `ia4`, `ia8`, `ia16`, `ci4` and `ci8`.

An optional suffix can be used to indicate the element type of the C array written out, for example `.u32` in `gHylianMan1ShirtTex.i8.u32.png`. The valid array element types are `u64` and `u32`. If omitted, the element type defaults to `u64`. `u32` is only used for unaligned textures.

The tool implementing png->n64 conversion is [build_from_png](../../tools/assets/build_from_png/build_from_png.c), using [n64texconv](../../tools/assets/n64texconv/) as its backbone.

# Replacing images

The contents of `extracted/` are meant to hold the baserom assets and should not be modified. Instead, replacing an image can be done by creating a png file at the same relative path under `assets/` as the image to replace.

For example, replacing `gLinkHairTex` (`extracted/VERSION/assets/objects/gameplay_keep/gLinkHairTex.rgba16.png`) with the texture for `gHylianMan1BeardedEyeOpenTex` (`extracted/VERSION/assets/objects/object_ahg/gHylianMan1BeardedEyeOpenTex.ci8.tlut_gHylianMan1TLUT_u32.u32.png`):

```sh
# for VERSION=gc-eu-mq-dbg

mkdir -p assets/objects/gameplay_keep/
cp \
    extracted/gc-eu-mq-dbg/assets/objects/object_ahg/gHylianMan1BeardedEyeOpenTex.ci8.tlut_gHylianMan1TLUT_u32.u32.png \
    assets/objects/gameplay_keep/gLinkHairTex.rgba16.png

# Cause make to rebuild gameplay_keep, where gLinkHairTex is
touch extracted/gc-eu-mq-dbg/assets/objects/gameplay_keep/gameplay_keep.c

make VERSION=gc-eu-mq-dbg
```

# CI images

CI (Color Indexed) images also have a palette or TLUT (Texture Look-Up Table).

PNG images to be converted to CI formats may have a `.tlut_gNameTLUT[_<u32|u64>]` suffix indicating the name and element type (optional, defaults to u64) of the TLUT `gNameTLUT.tlut.rgba16[.<u32|u64>].inc.c` file to write the palette to.

If this suffix is omitted, the TLUT will be written to a `gNameTex.tlut.rgba16.inc.c` file named after the CI image.

For example without the `.tlut_` suffix, `gGanonHairFringeTex.ci8.png`:

- extracted to `extracted/VERSION/assets/objects/object_ganon2/gGanonHairFringeTex.ci8.png`
- texture written to `build/VERSION/assets/objects/object_ganon2/gGanonHairFringeTex.ci8.inc.c`
- palette written to `build/VERSION/assets/objects/object_ganon2/gGanonHairFringeTex.tlut.rgba16.inc.c`

For example with the `.tlut_` suffix, `gCowNoseTex.ci8.tlut_gCowTLUT.png`:

- extracted to `extracted/gc-eu-mq-dbg/assets/objects/object_cow/gCowNoseTex.ci8.tlut_gCowTLUT.png`
- texture written to `build/gc-eu-mq-dbg/assets/objects/object_cow/gCowNoseTex.ci8.tlut_gCowTLUT.inc.c`
- palette written to `build/gc-eu-mq-dbg/assets/objects/object_cow/gCowTLUT.tlut.rgba16.bin`

CI images with a `.tlut_` suffix have a shared palette: there are several CI images using the same palette.
The build system (`build_from_png`) will find images sharing the same palette by looking at the `.tlut_` suffixes of png files in the same folder and in the corresponding `assets/` folder.

In the matching case of shared palettes, all png files have the same palette, which is written out.
Otherwise the images are automatically co-quantized and the resulting images and palette are written out.

Note the N64 supports CI images with IA16 palettes instead of RGBA16 palettes, but OoT doesn't have such textures.
For simplicity, CI images with IA16 palettes are not supported in the build system, and all CI images are assumed to use RGBA16 palettes.

# Skybox textures

Skybox textures, located in (`extracted/VERSION/`)`assets/textures/skyboxes`, are ci8 images with the additional specificity of being limited to a palette of 128 colors that can be loaded as either the first or last 128 colors of a 256-colors palette, depending on the skybox.

The build system identifies such textures with the additional "sub-format" suffix `.split_lo` or `.split_hi` right after the `.ci8` suffix. `split_lo` corresponds to textures where the half palette is mapped to the lower half, and `split_hi` to the higher half.

Like for regular ci images, images are automatically converted, quantized and written within those restrictions by the build system.
