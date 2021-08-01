# ZAPD: Zelda Asset Processor for Decomp

## Compiling

### Dependencies

ZAPD needs a compiler with C++17 support.

ZAPD has the following library dependencies:

- `libpng`

In a Debian/Ubuntu based environment, those could be installed with the following command:

```bash
sudo apt install libpng-dev
```

### Building

#### Linux / *nix

ZAPD uses the clasic `Makefile` approach. To build just run `make` (or even better `make -j` for faster compilations).

You can configure a bit your ZAPD build with the following options:

- `OPTIMIZATION_ON`: If set to `0` optimizations will be disabled (compile with `-O0`). Any other value compiles with `-O2`. Defaults to `1`.
- `ASAN`: If it is set to a non-zero then ZAPD will be compiled with Address Sanitizer enabled (`-fsanitize=address`). Defaults to `0`.
- `DEPRECATION_ON`: If it is set to a zero then deprecation warnings will be disabled. Defaults to `1`.
- `DEBUG`: If non-zero, ZAPD will be compiled in _development mode_. This implies the following:
  - Debugging symbols enabled (`-g3`). They are disabled by default.
  - `OPTIMIZATION_ON=0`: Disables optimizations (`-O0`).
  - `DEPRECATION_OFF=1`: Disables deprecation warnings.

As an example, if you want to build ZAPD with optimizations disabled and use the address sanitizer, you could use the following command:

```bash
make -j OPTIMIZATION_ON=0 ASAN=1
```

#### Windows

This repository contains `vcxproj` files for compiling under Visual Studio environments. See `ZAPD/ZAPD.vcxproj`.

## Invoking ZAPD

ZAPD needs a _File parsing mode_ to be passed as first parameter. The options are:

- `e`: "Extraction" mode.
  - In this mode, ZAPD expects a XML file as input, a folder as ouput and a path to the baserom files.
  - ZAPD will read the XML and use it as a guide to extract the contents of the specified asset file from the baserom folder.
    - For more info of the format of those XMLs, see the [ZAPD extraction XML reference](docs/zapd_extraction_xml_reference.md).
- `bsf`: "Build source file" mode.
  - This is an experimental mode.
  - It was going to be used to let you have XMLs that aren't just for extraction. Might get used, might not. Still need to experiment on that.
- `btex`: "Build texture" mode.
  - In this mode, ZAPD expects a PNG file as input, a filename as ouput and a texture type parameter (`-tt`).
  - ZAPD will try to convert the given PNG into the contents of a `uint64_t` C array.
- `bren`: "Build (render) background" mode.
  - In this mode, ZAPD expects a JPG file as input and a filename as ouput.
  - ZAPD will try to convert the given JPG into the contents of a `uint64_t` C array.
- `blb`: "Build blob" mode.
  - In this mode, ZAPD expects a BIN file as input and a filename as ouput.
  - ZAPD will try to convert the given BIN into the contents of a `uint8_t` C array.
- `bovl`: "Build overlay" mode.
  - In this mode, ZAPD expects an overlay C file as input, a filename as ouput and an overlay configuration path (`-cfg`).
  - ZAPD will generate a reloc `.s` file.

ZAPD also accepts the following list of extra parameters:

- `-i PATH` / `--inputpath PATH`: Set input path.
- `-o PATH` / `--outputpath PATH`: Set output path.
- `-b PATH` / `--baserompath`: Set baserom path.
  - Can be used only in `e` or `bsf` modes.
- `-osf PATH`: Set source output path. This is the path where the `.c` and `.h` files will be extracted to. If omitted, it will use the value passed to `--outputpath` parameter.
- `-gsf MODE`: Generate source file during extraction. If `MODE` is `1`, C source files will be generated.
  - Can be used only in `e` mode.
- `-crc` / `--output-crc`: Outputs a CRC file for each extracted texture.
  - Can be used only in `e` or `bsf` modes.
- `-ulzdl MODE`: Use "Legacy ZDisplayList" instead of `libgfxd`. Set `MODE` to `1` to enable it.
  - Can be used only in `e` or `bsf` modes.
- `-profile MODE`: Enable profiling. Set `MODE` to `1` to enable it.
- `-uer MODE`: Split resources into their individual components (enabled by default). Set `MODE` to non-`1` to disable it.
- `-tt TYPE`: Set texture type.
  - Can be used only in mode `btex`.
  - Valid values:
    - `rgba32`
    - `rgb5a1`
    - `i4`
    - `i8`
    - `ia4`
    - `ia8`
    - `ia16`
    - `ci4`
    - `ci8`
- `-cfg PATH`: Set cfg path (for overlays).
  - Can be used only in `bovl` mode.
- `-rconf PATH` Read Config File.
- `-eh`: Enable error handler.
  - Only available in non-Windows environments.
- `-v MODE`: Enable verbosity. Currently there are 3 possible values:
  - `0`: Default. Completely silent (except for warnings and errors).
  - `1`: Information.
  - `2` (and higher): Debug.
- `-wu` / `--warn-unaccounted`: Enable warnings for each unaccounted block of data found.
  - Can be used only in `e` or `bsf` modes.
- `-vu` / `--verbose-unaccounted`: Changes how unaccounteds are outputted. Max 4 bytes per line (a word) and add a comment with the offset of each of those lines.
  - Could be useful for looking at raw data or testing.
  - Can be used only in `e` or `bsf` modes.
- `-tm MODE`: Test Mode (enables certain experimental features). To enable it, set `MODE` to `1`.
- `-wno` / `--warn-no-offsets` : Enable warnings for nodes that dont have offsets specified. Takes priority over `-eno`/ `--error-no-offsets`.
- `-eno`/ `--error-no-offsets` : Enable errors for nodes that dont have offsets specified.

Additionally, you can pass the flag `--version` to see the current ZAPD version. If that flag is passed, ZAPD will ignore any other parameter passed.
