# Object Decompilation

Object decompilation is the process of taking an object file and writing instructions to extract the various assets from it in the correct format, with appropriate labelling to distinguish their nature and/or use.

## What is an object file?

An object file is generally where most of the information used by overlays is stored. Its contents can include

- Vertices (positional/normal/color data used by displaylists)
- Textures
- DisplayLists (instructions to the graphics processor on how to put together textures and vertices)
- Skeleton (The underlying structure of an actor's shape, that can be manipulated to change its "pose")
- Animations
- Prerendered backgrounds

## How we work with objects

Because these are regarded as copyrighted, we do not want them in the repository. We instead extract them from the ROM. To do this we use a system called ZAPD (Zelda Asset Processor for Decompilation). The main aim of object decompilation is to give ZAPD an XML file that tells it what the assets it is supposed to be extracting actually are, so it can put them in the right format and name them.


## How to decomp an object

Choose an object to decomp. As usual, some will be easier than others. For reasons explained shortly, it is much easier to decomp an object if all actors that use it are decompiled.

### Files and folders

Select the XML file of your selected object, which should be in `assets/xml/objects/object_name.xml`.

The ZAPD output will go in the folder `assets/objects/object_name/`. You'll want this folder open later to check the output is correct.

### Examining actor files

Most objects are used by at least one actor. For those used by an actor, we can use the script `tools/xmlcreate.py` on the actor to separate all the blobs of data in the object that we already know about. (While it is possible to do this manually, it is much simpler to run the script first and sort it out afterwards, since it won't miss anything accidentally.)

Many objects have been added in an automated way, so most constituent parts of each object are already identified, but will still need to be named and documented properly. Also, these objects usually have some blobs unreferenced by the object's own contents and hence not automatically extracted; most of the time these can be identified by looking at references in the actor which uses said object.

### Extracting assets

You can run `extract_assets.py` to extract the object's assets. Running it with no arguments extracts *everything* all over again, though. A better way is to run it with `-s` (for single file), and give it the location of the object you want to extract relative to `assets`, i.e.

```bash
./extract_assets.py -s objects/object_name
```

This should populate the folder you created earlier. ZAPD produces a C file containing the extracted object data, which will be `assets/objects/object_name/object_name.c`. Any data that you have not specified the type of, or is not referenced elsewhere in the object, is extracted as unknown blobs  (usually named `unaccounted_XXXXXX`).  Open the C file to see if there are any such blobs. (Some are just padding with 0s and can be ignored.)

You now have to try and decipher these blobs using the [list of tools given below](#tools) to work out what they might be. In the case of unused parts of the object, this can be very difficult.

### Naming

A significant question is how deep into the object you want to explicitly categorise and name things.

1. As a minimum, you need to include every piece of data that is directly accessed by another part of the repo (generally, but not always, actors). This allows for elimination of entries in [`undefined_syms.txt`](../../undefined_syms.txt). For most objects, this includes several of a skeleton, animations, some textures, and collision information.

2. Naming display lists that are associated to limbs in the skeleton. This is usually straightforward, providing Z64Utils or Hylian Toolbox can show the skeleton properly.

3. The next level is to name and give a format to any texture files that are produced from the extraction that are so far unnamed.

4. If you really want to you can name the limbs themselves.

5. In very rare cases, you may also want to name a particular set of vertices.

Current naming practice is to name each item in the xml using camelCase as usual, with the `g` prefix (for "global"), and the type of data last (Skel, Anim, DL, Tex), while output texture files are named in `snake_case`.

Each pass of a successive level will require extracting the single asset again.

### Textures

Textures are especially troublesome due to the abundance of formats they can be in. Some are simple RGBA textures, while others use external palettes, and can look meaningless without. If the texture is used in a displaylist, it will tell you the format, but if not, you have to use your best judgement based on anything you know about its context.

The order of operations is that palettes are loaded first, then the texture, and then the vertices to which it is applied.

The first argument of `gsDPLoadTextureBlock` tells you the offset, the second the format, the third the bit depth, fourth the width and fifth the height

The following is a list of the texture formats the Nintendo 64 supports, with their gfxdis names and ZAPD format names.


| Format name                                     | Typing in `gsDPLoadTextureBlock` | "Format" in xml |
| ----------------------------------------------- | -------------------------------- | --------------- |
| 4-bit intensity (I)                             | `G_IM_FMT_I, G_IM_SIZ_4b`        | i4              |
| 4-bit intensity with alpha (I/A) (3/1)          | `G_IM_FMT_IA, G_IM_SIZ_4b`       | ia4             |
| 4-bit color index (CI)                          | `G_IM_FMT_CI, G_IM_SIZ_4b`       | ci4             |
| 8-bit I                                         | `G_IM_FMT_I, G_IM_SIZ_8b`        | i8              |
| 8-bit IA (4/4)                                  | `G_IM_FMT_IA, G_IM_SIZ_8b`       | ia8             |
| 8-bit CI                                        | `G_IM_FMT_CI, G_IM_SIZ_8b`       | ci8             |
| 16-bit red, green, blue, alpha (RGBA) (5/5/5/1) | `G_IM_FMT_RGBA, G_IM_SIZ_16b`    | rgba16          |
| 16-bit IA (8/8)                                 | `G_IM_FMT_IA, G_IM_SIZ_16b`      | ia16            |
| 16-bit YUV (Luminance, Blue-Y, Red-Y)           | `G_IM_FMT_YUV, G_IM_SIZ_16b`     | (not used)      |
| 32-bit RGBA (8/8/8/8)                           | `G_IM_FMT_RGBA, G_IM_SIZ_32b`    | rgba32          |

The 4-bit formats are loaded using `gDPLoadTextureBlock_4b`. The others use `gDPLoadTextureBlock`.

For example,

```c
gsDPLoadTextureBlock(D_06006110, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, 0, 0),
```

says that there is a texture at offset `0x6110`, its Format is `rgba16`, Width is `16` and Height is `16`, so we can declare

```XML
<Texture Name="gObjectNameSomethingTex" OutName="object_name_something" Format="rgba16" Width="16" Height="16" Offset="0x6110"/>
```

See [this web page](http://n64devkit.square7.ch/tutorial/graphics/3/3_3.htm) for more information about these formats, and [gSP functions](http://n64devkit.square7.ch/n64man/gsp/gSP_INDEX.htm) and [gDP functions](http://n64devkit.square7.ch/n64man/gdp/gDP_INDEX.htm) for more about the graphics functions used.

The `ci` formats use palettes, which are declared separately. The shape you give the palette does not matter, but to avoid overlap errors it needs to fit into a rectangle; choose the one you think looks best.

If in doubt, look at completed objects in the repo, and if still in doubt, ask.

### Telling the repo to use the new files

Just as when you decomp an actor you have to change the `spec` to tell it to use the new files, you have to do a similar thing for the object. Find the appropriate section for the object you have decompiled, and replace the line

```c
include "build/baserom/object_name.o"
```

by

```c
include "build/assets/objects/object_name/object_name.o"
number 6
```

(the second line tells it to assign the object to segment 6 for the actors that use it: some objects use other segments, but you'll know this from the generated XML already: the `Segment` argument in the `File` tag will be different).

Now, add

```c
#include "assets/objects/object_name/object_name.h"
```

to every actor that uses the file, to tell it about the new symbols you have defined.

Finally, replace all the symbols in the actors that use the file by the new names you gave them, and remove the corresponding sections in `undefined_syms.txt` and any `extern`s to the object's data in the actor files.

If you did everything correctly, you should still get OK when running `make`.

## Tools

Object decompilation is essentially a descriptive process, but it requires that we know what each blob of data in the object file actually is, and sometimes, the actor files that use an object are not sufficient to determine what everything is. Therefore it is useful to have a battery of romhacking and examination tools to bring to bear on the file to read its contents.

- The state-of-the-art is random's [Z64Utils](https://github.com/Random06457/Z64Utils). This can find and analyze the displaylists, textures and vertices in an object file, and even has an skeleton and animation viewer. It is not perfect; the best model viewer remains the debug rom itself.
- The old solution to look at skeletons and animations is [Hylian Toolbox](http://wiki.maco64.com/Tools/Hylian_Toolbox). This suffers from numerous issues, but is usually suitable for looking at object files that contain one skeleton and a few animations.
- To look at textures that you know something about, a texture viewer such as [Texture64](https://github.com/queueRAM/Texture64) is often useful. You may have trouble determining things like the palette a texture uses, depending on the format.

## Building and investigative modding

Thankfully it is not necessary to do a full make from clean to check that a particular object file has been decompiled successfully.

- With a valid xml file, run `extract_assets.py -s` on its object.
- `make`

If you want to change a texture, for example to see precisely where it is used, the following steps ensure it will be used in the build

- Make sure the `spec` is updated to use the generated assets (see above)
- Change and save the texture
- Touch the C file in the same directory (that includes it)
- make
- Ironically, ERROR 1 implies success (your new texture has changed the checksum).

If you'd rather not have it tell you about the checksum, you can run `make COMPARE=0` instead.

---

To revert to the original texture, you can just run `extract_assets.py -s` on the object again.

N.B. doing this will overwrite every custom texture, as will running `make setup`.


## Example

An example of decompiling a particular object is given [here](object_decomp_example.md).
