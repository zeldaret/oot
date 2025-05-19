This document describes the expected structure of xml files describing assets.

# Top elements

## `Root`

```xml
<Root>
    ...
</Root>
```

This is the root element in the file, containing exclusively `<File>` and `<ExternalFile>` elements as direct children.

## `File`

```xml
<File Name="baserom_file" Segment="11">
    ...
</File>
```

A `<File>` contains resources elements as children.

- Required attributes: `Name`
- Optional attributes: `Segment`

`Name` is the name of the baserom file from which the data is to be extracted.

`Segment` (decimal) is the segment number for the file.

## `ExternalFile`

```xml
<ExternalFile OutPath="assets/name"/>
```

Declare the `<File>`s in the xml may reference symbols from an external file.

The external file is located by matching its name against the list of assets in the version's `config.yml`.

For example, `baseroms/gc-eu/config.yml` contains

```yml
assets:
- name: objects/gameplay_keep
  xml_path: assets/xml/objects/gameplay_keep_pal.xml
```

then `<ExternalFile OutPath="assets/objects/gameplay_keep/"/>` refers to that gameplay_keep entry, which uses the `gameplay_keep_pal.xml` xml file when extracting assets for version gc-eu.


# Resource elements

Resource elements describe resources. Resources are pieces of data corresponding to a symbol each.

Two attributes are required on all resource elements: `Name` and `Offset`.

- `Name` is the name of the symbol associated to the resource.
- `Offset` is the location in bytes from the start of the file data.

## `Blob`

```xml
<Blob Name="gNameBlob" Size="0x421" Offset="0x1230">
```

Unstructured binary data.

- Required attributes: `Size`

`Size` is the size of the binary blob in bytes.

## `DList`

```xml
<DList Name="gNameDL" Offset="0x1230" Ucode="f3dex2" RawPointers="0x08000000,0x09000000"/>
```

A display list.

- Optional attributes: `Ucode`, `RawPointers`

`Ucode` (defaults to `f3dex2`) picks the graphics microcode for which to disassemble the dlist. It may be `f3dex` or `f3dex2`.

`RawPointers` (defaults to an empty value) is a comma-separated list of values the display list uses as raw pointers ("hex" instead of a symbol). The purpose of this attribute is to silence extraction warnings.

## `Mtx`

```xml
<Mtx Name="gNameMtx" Offset="0x1230"/>
```

A fixed-point matrix.

## `Texture`

```xml
<Texture Name="gNameTex" Format="rgba16" Width="16" Height="16" Offset="0x1230"/>
<Texture Name="gNameTex" Format="ci8" Width="16" Height="16" Offset="0x1230" TlutOffset="0x2340"/>
<Texture Name="gNameTex" Format="ci8" Width="16" Height="16" Offset="0x1230" ExternalTlut="baserom_file" ExternalTlutOffset="0x2340"/>
```

A texture, an image in one of the native N64 formats.

- Required attributes for all formats: `Format`, `Width`, `Height`
- Required attributes for CI formats (`ci4`, `ci8`): `TlutOffset`, or `ExternalTlut` and `ExternalTlutOffset`

`Format` is the format of the texture, one of `rgba32`, `rgba16`, `i4`, `i8`, `ia4`, `ia8`, `ia16`, `ci4` or `ci8`.

`Width` and `Height` specify the dimensions of the texture.

For CI formats, the TLUT (Texture Look Up Table, or palette) must be specified with either `TlutOffset` if the TLUT is in the same file as the texture, or both of `ExternalTlut` and `ExternalTlutOffset` if the TLUT is in a different file. `ExternalTlut` is the name of the baserom file where the TLUT is. In both cases, the TLUT must also be declared as a resource.

## `Array`

```xml
<Array Name="gNameVtx" Count="42" Offset="0x1230">
    <Vtx/>
</Array>
<Array Name="gNameVec3sArray" Count="42" Offset="0x1230">
    <Vector Type="s16" Dimensions="3"/>
</Array>
<Array Name="gNameS16Array" Count="42" Offset="0x1230">
    <Scalar Type="s16"/>
</Array>
```

An array of vertices, vectors or scalars. The child element determines the array's element type.

- Required attributes: `Count`

`Count` is the length of the array.

The child element may be one of `<Vtx/>` (for `Vtx[]`), `<Vector Type="s16" Dimensions="3"/>` (for `Vec3s[]`) or `<Scalar Type="s16">` (for `s16[]`).

## `Scene`

```xml
<Scene Name="name" Offset="0x1230"/>
```

Scene commands.

## `Room`

```xml
<Room Name="name" Offset="0x1230"/>
```

Room commands.

## `Collision`

```xml
<Collision Name="gNameCol" Offset="0x1230"/>
```

Collision header.

## `Cutscene`

```xml
<Cutscene Name="gNameCs" Offset="0x1230"/>
```

Cutscene script.

## `Path`

```xml
<Path Name="gNamePathList" Offset="0x1230" NumPaths="12"/>
```

Path list.

- Required attributes: `NumPaths`

`NumPaths` is the length of the path list.

## `Skeleton`

```xml
<Skeleton Name="gNameSkel" Type="Normal" LimbType="Standard" LimbNone="NAME_LIMB_NONE" LimbMax="NAME_LIMB_MAX" EnumName="NameLimb" Offset="0x1230"/>
```

Skeleton header.

- Required attributes: `Type`, `LimbType`
- Optional attributes: `LimbNone`, `LimbMax`, `EnumName`

`Type` is the type of the skeleton, one of `Normal`, `Flex` or `Curve`.

`LimbType` is the type of limb used in the skeleton, one of `Standard`, `LOD`, `Skin`, `Curve` or `Legacy`.

Not all skeleton types are compatible with all limb types:

`LimbType` | Compatible skeleton `Type`
-----------|---------------------------
`Standard` | `Normal`, `Flex`
`LOD`      | `Normal`, `Flex`
`Skin`     | `Normal`
`Curve`    | `Curve`
`Legacy`   | none

`LimbNone`, `LimbMax`, `EnumName` can be set to override the corresponding names in the generated limb enum:

```c
typedef enum NameLimb {
    NAME_LIMB_NONE,
    ...
    NAME_LIMB_MAX
} NameLimb;
```

## `LimbTable`

```xml
<LimbTable Name="gNameLimbs" LimbType="Standard" Count="12" Offset="0x1230"/>
```

Limb table.

- Required attributes: `LimbType`, `Count`

`LimbType` is one of `Standard`, `LOD`, `Skin`, `Curve` or `Legacy`.

`Count` is the amount of limbs.

## `Limb`

```xml
<Limb Name="gNameLimb" LimbType="Standard" EnumName="NAME_LIMB_NAME" Offset="0x1230"/>
```

Limb of a skeleton.

- Required attributes: `LimbType`
- Optional attributes: `EnumName`

`LimbType` is one of `Standard`, `LOD`, `Skin`, `Curve` or `Legacy`.

`EnumName` can be set to override the limb name in the generated limb enum.

## `Animation`

```xml
<Animation Name="gNameAnim" Offset="0x1230"/>
```

Animation header.

## `CurveAnimation`

```xml
<CurveAnimation Name="gNameAnim" SkelOffset="0x120" Offset="0x1230"/>
```

Curve animation header.

- Required attributes: `SkelOffset`

`SkelOffset` is the offset of the skeleton which uses this animation. The skeleton must also be declared as a resource.

## `LegacyAnimation`

```xml
<LegacyAnimation Name="gNameAnim" Offset="0x1230"/>
```

Legacy animation header.

## `PlayerAnimation`

```xml
<PlayerAnimation Name="gNamePlayerAnim" Offset="0x1230"/>
```

Player animation header.

## `PlayerAnimationData`

```xml
<PlayerAnimationData Name="gNamePlayerAnimData" FrameCount="20" Offset="0x1230"/>
```

Player animation data.

- Required attributes: `FrameCount`

`FrameCount` is the amount of frames in the animation.
