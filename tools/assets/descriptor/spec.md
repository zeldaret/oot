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
<Blob Name="gNameBlob" Offset="0x1230" Size="0x421">
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
## `Texture`
## `Array`
## `Scene`
## `Room`
## `Collision`
## `Cutscene`
## `Path`
## `Skeleton`
## `LimbTable`
## `Limb`
## `Animation`
## `CurveAnimation`
## `LegacyAnimation`
## `PlayerAnimation`
## `PlayerAnimationData`
