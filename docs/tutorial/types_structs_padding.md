# Types, structs, and padding

Reminders:
- In N64 MIPS, 1 word is 4 bytes (yes, the N64 is meant to be 64-bit, but it mostly isn't used like it in OoT)
- A byte is 8 bits, or 2 hex digits


## Types

The following are the common data types used everywhere:

| Name  | Size            | Comment        |
| ----  | -----           | --------       |
| char  | 1 byte          | character      |
| u8    | 1 byte          | unsigned byte  |
| s8    | 1 byte          | signed byte    |
| u16   | 2 bytes         | unsigned short |
| s16   | 2 bytes         | signed short   |
| u32   | 4 bytes/1 word  | unsigned int   |
| s32   | 4 bytes/1 word  | signed int     |
| void* | 4 bytes/1 word  | pointer        |

A pointer is sometimes mistaken for an s32. s32 is the default thing to use in the absence of any other information about the data.

Useful data for guessing types:
- u8 is about 7 times more common than s8 (so the tutorial is a bit misleading)
- s16 is about 16 times more common than u16
- s32 is about 8 times more common than u32

Another useful thing to put here: the prototype for an action function is
```C
typedef void (*ActorNameActionFunc)(struct ActorName*, PlayState*);
```
where you replace `ActorName` by the actual actor name as used elsewhere in the actor, e.g. `EnJj`.


## Some Common Structs



Here are the usual names and the sizes of some of the most common structs used in actors and their structs:
| Type                    | Usual name            | Size            |
| ----------------------- | --------------------- | --------------- |
| `Actor`                 | `actor`               | 0x14C           |
| `DynaPolyActor`         | `dyna`                | 0x164           |
| `Vec3f`                 |                       | 0xC             |
| `Vec3s`                 |                       | 0x6             |
| `SkelAnime`             | `skelAnime`           | 0x44            |
| `Vec3s[limbCount]`      | `jointTable`          | 0x6 * limbCount |
| `Vec3s[limbCount]`      | `morphTable`          | 0x6 * limbCount |
| `ColliderCylinder`      | `collider`            | 0x4C            |
| `ColliderQuad`          | `collider`            | 0x80            |
| `ColliderJntSph`        | `collider`            | 0x20            |
| `ColliderJntSphElement` | `colliderElements[n]` | 0x40 * n        |
| `ColliderTris`          | `collider`            | 0x20            |
| `ColliderTrisElement`   | `colliderElements[n]` | 0x5C * n        |

(`colliderElements` used to be called `colliderItems`, and we have not switched over fully in the repo yet.)

## Padding

### Alignment

A stored variable or piece of data does not always start immediately after the previous one: there may be padding in between: `0`s that are never written or referred to, and so ignored. This is to do with how the processor accesses memory: it reads 1 word at a time, so multibyte objects are aligned so they cross as few word boundaries as possible.

The clearest example of this is that variables with types that are 1 word in size (`s32`s and pointers, for example) are automatically shifted so that they start at the beginning of the next word, i.e. at an offset ending with one of `0,4,8,C`: this is called 4-alignment. This will also happen to `s16`s, but with 2-alignment

### Struct padding

In actor structs, this manifests as some of the char arrays not being completely replaced by actual variables. For example, BgIceTurara, the actor for icicles, has the following actor struct:

```C
typedef struct BgIceTurara {
    /* 0x0000 */ DynaPolyActor dyna;
    /* 0x0164 */ BgIceTuraraActionFunc actionFunc;
    /* 0x0168 */ s16 shiverTimer;
    /* 0x016C */ ColliderCylinder collider;
} BgIceTurara; // size = 0x01B8
```

Notice that even though `timer` is an `s16`, `collider` is at `this + 0x16C`: there was originally a `char unk_166[0x2]` left over from the original char array, but it has been removed without affecting the alignment.

How do structs themselves align? A struct has the same alignment properties as its longest constituent (that is not itself a struct). For example, a `Vec3f` has 4-alignment, while a `Vec3s` has 2-alignment.

A struct may also pad at the end: it will pad to the size of its largest non-struct element. Notably, every actor struct has size a whole number of words as well, so this phenomenon also occurs at the ends of structs: see, for example, EnJj's actor struct that we filled out in the tutorial: the `char unk_312[0x2]` is unnecessary, because it is used nowhere, and the struct pads to `0x314` anyway.

For more information on this topic, there are plenty of guides elsewhere on the Internet. *The main thing to bear in mind for decomp purposes is that after finishing the functions, there may be some small parts of the actor struct that are just not used, because they were originally just struct padding.*

### Padding at the end of sections

<!-- a file is made up of multiple sections
.text (instructions)
.data
.rodata (read only data, includes strings, floats, jumptables etc)
.bss (zero initialized variables, not assigned a value when declared)
.reloc (only relevant for overlays, used to reloc pointers when loaded dynamically)

each of these sections are 0x10/16 aligned, meaning the compiler will insert padding between each section to align them to an address that ends in 0

any new entry in .data must be 4 aligned no matter its size
(i forgot if rodata bss is 4 aligned for each new entry, should find that out)

additionally, if an object is split into multiple c files, you will see a 16 alignment in the different sections at the point of the file split -->



In the ROM, each actor is layed out in the following order:

- .text (Function instructions, separated into .s files, aka .text)
- .data (contents of the .data.s file)
- .rodata (read-only data, includes strings, floats, jumptables etc., moved to the appropriate function files in the OoT repo)
- .bss (varibles initialised to 0, not assigned a value when declared)
- .reloc (relocation information: you can ignore this)

Each section is 0x10/16-aligned (qword aligned): each new section begins at an address with last digit `0`. This means that there can occur up to three words of padding at the end of each section.

(The same occurs with any object divided into multiple .c files: each new file becomes 0x10 aligned.)

#### Padding at the end of .text (function instructions)

In function instructions, this manifests as a set of `nop`s at the end of the last function, and once the rest of the functions match, this is automatic. So you never need to worry about these.

#### Padding at the end of .data

In data, the last entry may contain up to 3 words of 0s as padding. These can safely be removed when migrating data, but make sure that you don't remove something that actually is accessed by the function and happens to be 0!

For example, in `EnJj` we found that the last symbol in the data,
```C
glabel D_80A88CFC
 .word 0x06007698, 0x06007A98, 0x06007E98, 0x00000000, 0x00000000
```
had 2 words of padding: only the first 3 entries are actually used.

### Padding within the .data section

Every distinct symbol in data is 4-aligned (word-aligned). So in the data, even if you have two `u8`s, they will be stored in addresses starting successive words:

```C
u8 byte1 = 1 // will go to address ending in 0
u8 byte2 = 2 // Will go to address ending in 4
```

#### Fake symbols

The process of separating the data is not flawless, and sometimes gives rise to symbols that are fake: that is, containing data that should not be stored by itself, but part of a different earlier symbol.

Since `D_address` corresponds to the address where the symbol is stored, every address should be word-aligned, i.e. end in one of `0,4,8,C`. Any symbols that do not are fake, and the data attached to them should be joined to the data of previous symbol, with all references to them adjusted to the correct offset from the previous symbol.

Thankfully most of the fake symbols have now been automatically eliminated, but that does not mean that there are none left. Symbols can also be fake if they have the correct alignment, but are rather harder to spot.
