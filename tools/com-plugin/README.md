# COMMON symbol ordering linker plugin

This repository contains a plugin for linkers that support the External Linker Plugin API that allows providing a manual specification for COMMON symbol ordering, intended to support matching decompilations that must reproduce an order for COMMON symbols whose names are unknown. Currently only 32-bit Big-Endian MIPS ELF object files are supported.

## How it works

The plugin expects a symbol order txt file listing the COMMON symbols in order on each line. The plugin searches each input file for the symbol definitions for these and emits a new ELF file containing BSS definitions for each COMMON symbol found with the appropriate size and alignment. This ELF file is then added as an extra input file to the linker, overriding the COMMON definitions in the other input files.

## Usage

Add `-plugin common-plugin.so -plugin-opt order=bss_order.txt` to the linker invocation, replacing `bss_order.txt` with an alternative path if desired.

Also add any bss output files mentioned in the order file to the linker script (e.g. `bss.o` would be added as `*bss.o(.bss*)`) so that the additional input file is not discarded, if required.

### **Symbol order file syntax**

```
<ofile> {
    <sym1>;
    <sym2>;
    <sym3>;
    [...]
}
[...]
```

The order file supports 2 styles of single-line comments (`//` and `#`) and C-style multi-line comments and ignores whitespace.

## Building

Run `make` to build `common-plugin.so`.
