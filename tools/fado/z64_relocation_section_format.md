# Zelda 64 overlay relocation section format

Both Zelda 64 titles use the same custom dynamic overlay relocation format, which is 


All elements are 4 bytes in width.

| Offset  | Description                                 | Notes                                                         |
| ------- | ------------------------------------------- | ------------------------------------------------------------- |
| 0x00    | Size of overlay .text section               |                                                               |
| 0x04    | Size of overlay .data section               |                                                               |
| 0x08    | Size of overlay .rodata section             |                                                               |
| 0x0C    | Size of overlay .bss section                |                                                               |
| 0x10    | Number of relocation entries                |                                                               |
| 0x14-   | Relocation entries                          | Must be sorted in increasing order by section, then offset    |
| ...     |                                             |                                                               |
|         | (zero padding of section to 0x10 alignment) |                                                               |
| End - 4 | Size of overlay .ovl section                | Also the offset from the end of the rest of the section sizes |


## Relocation entries

The only element that is not a single number are the relocation entries, which are bitpacked as follows:

| 0x1F..0x1E | 0x1D..0x18 | 0x17..0x0                     |
| ---------- | ---------- | ----------------------------- |
| ss         | tttttt     | oooo oooo oooo oooo oooo oooo |
| Section    | Type       | Offset                        |


### Section 

2 bits. Section where the instruction or data to be relocated is.

| Value | Section |
| ----- | ------- |
| 1     | .text   |
| 2     | .data   |
| 3     | .rodata |


### Type

6 bits. Four types of standard MIPS relocation are supported. They use the same values as the standard elf formats:

| Value | Type          | Description                                                                       |
| ----- | ------------- | --------------------------------------------------------------------------------- |
| 2     | `R_MIPS_32`   | A full word address (such as a pointer in data or an address in a jumptable)      |
| 4     | `R_MIPS_26`   | 26-bit direct relocation, for a J-type instruction                                |
| 5     | `R_MIPS_HI16` | High 16-bit, generally the top half of an address in an `li`/`lui`                |
| 6     | `R_MIPS_LO16` | Low 16-bit, the bottom half of an address, such as in an `addiu`,`ori`,`lh`, etc. |


### Offset

0x18 bits. Offset in bytes from the start of the section where the relocation occurs.


### Example

```
0x82000A30 = 0b1000 0010 0000 0000 0000 1010 0011 0000
```

This splits as

```
0b10, 0b000010, 0b0000 0000 0000 1010 0011 0000 = 0x2, 0x2, 0xA30
```

i.e. a full-word (`R_MIPS_32`) relocation at `.data + 0xA30`.


## Compiler compatibility

### HI/LO

The MIPS ELF format standard specifies that each LO be preceded by a unique HI associated to it (but multiple LOs may associate to the same HI), and the overlay relocation function acts based on this assumption.

IDO complies with this consistently, but GCC in its wisdom decided that it was appropriate to violate this by default, and allow multiple HIs to associate to the same LO. GCC also likes to reorder relocations in the `.rel.*` sections.

To prevent these you must pass *both* of the following compiler flags:

```
-mno-explicit-relocs -mno-split-addresses
```

(GNU do not document this behaviour themselves, although apparently it has been present for many years. It is also not even consistent between versions.)

### rodata

It should be clear from the description above that this system expects a single rodata section. Again, IDO will only ever produce one rodata section, but GCC will produce several, albeit only one containing relocatable rodata: the others are for "mergeable" strings and floats/doubles. The cleanest way to deal with this is to pass 

```
-fno-merge-constants
```

which will force GCC to generate a single combined rodata section. If, however, you really think you will benefit from merging constants, to obtain relocations correctly offset from the start of the entire rodata section(s), the actual `.rodata` section must be explicitly linked first.

For multi-file overlays, the situation is even more complicated, and Fado gets around this by adding up the sizes of all the rodata sections so that we may simply place one files' in one chunk: this means that each individual `.rodata` section should be linked before the others, i.e.

```
.text(1)
.text(2)
.data(1)
.data(2)
.rodata(1)
.rodata.cst4(1)
...
.rodata(2)
.rodata.cst4(2)
```

or similar.
