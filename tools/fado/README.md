# fado
*Fairy-Assisted (relocations for) Decomplied Overlays*
<!-- Nice backronym... -->

Contains
- **Fairy** a library for reading N64 ELF files (big-endian)
- **Fado** a program for generating the `.ovl`/relocation section for Zelda64 overlay files

Compatible with both IDO and GCC.

Format is the standard .ovl section, with the relocs divided by section. It will also print the name the associated variable if it can find it in the ELF (for IDO, this is only if it is not static, whereas GCC sometimes seems to retain all of them).
