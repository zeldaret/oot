.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .bss

glabel D_8015CF00
    .space 0x4

glabel D_8015CF04
    .space 0x4

glabel D_8015CF08
    .space 0x8

glabel D_8015CF10
    .space 0x2

glabel D_8015CF12
    .space 0x2

glabel D_8015CF14
    .space 0x488

glabel D_8015D39C
    .space 0x4

glabel D_8015D3A0
    .space 0x4

glabel D_8015D3A4
    .space 0x4

glabel D_8015D3A8
    .space 0x24

glabel D_8015D3CC
    .space 0x4

glabel D_8015D3D0
    .space 0x8

glabel D_8015D3D8
    .space 0x2

glabel D_8015D3DA
    .space 0x2

glabel D_8015D3DC
    .space 0x488

glabel D_8015D864
    .space 0x4

glabel D_8015D868
    .space 0x4

glabel D_8015D86C
    .space 0x4

glabel D_8015D870
    .space 0x24

glabel D_8015D894
    .space 0x4

glabel D_8015D898
    .space 0x8

glabel D_8015D8A0
    .space 0x2

glabel D_8015D8A2
    .space 0x2

glabel D_8015D8A4
    .space 0x488

glabel D_8015DD2C
    .space 0x4

glabel D_8015DD30
    .space 0x4

glabel D_8015DD34
    .space 0x4

glabel D_8015DD38
    .space 0x24

glabel D_8015DD5C
    .space 0x4

glabel D_8015DD60
    .space 0x8

glabel D_8015DD68
    .space 0x2

glabel D_8015DD6A
    .space 0x2

glabel D_8015DD6C
    .space 0x488

glabel D_8015E1F4
    .space 0x4

glabel D_8015E1F8
    .space 0x4

glabel D_8015E1FC
    .space 0x4

glabel D_8015E200
    .space 0x24

glabel D_8015E224
    .space 0x4

glabel D_8015E228
    .space 0x8

glabel D_8015E230
    .space 0x38

glabel D_8015E268
    .space 0x38

glabel D_8015E2A0
    .space 0x38

glabel D_8015E2D8
    .space 0x38

glabel D_8015E310
    .space 0x10

glabel D_8015E320
    .space 0x38

glabel D_8015E358
    .space 0x38

glabel D_8015E390
    .space 0x10

glabel D_8015E3A0
    .space 0x38

glabel D_8015E3D8
    .space 0x38

glabel D_8015E410
    .space 0x10

glabel D_8015E420
    .space 0x10

glabel D_8015E430
    .space 0x10

glabel D_8015E440
    .space 0x38

glabel D_8015E478
    .space 0x38

glabel D_8015E4B0
    .space 0x10

glabel D_8015E4C0
    .space 0x38

glabel D_8015E4F8
    .space 0x38

glabel D_8015E530
    .space 0x34

glabel D_8015E564
    .space 0x34

glabel D_8015E598
    .space 0x10

glabel D_8015E5A8
    .space 0x34

glabel D_8015E5DC
    .space 0x34

glabel D_8015E610
    .space 0xC

glabel D_8015E61C
    .space 0xC

glabel D_8015E628
    .space 0x10

glabel D_8015E638
    .space 0x10

glabel D_8015E648
    .space 0x4

glabel D_8015E64C
    .space 0x4

glabel D_8015E650
    .space 0x10
