.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .bss

.balign 16

glabel D_8016B6E0
    .space 0x18

glabel D_8016B6F8
    .space 0x40

glabel D_8016B738
    .space 0x48

glabel D_8016B780
    .space 0x20

glabel sOcarinaUpdateStartTime
    .space 0x4

glabel sOcarinaUpdateEndTime
    .space 0x4

glabel D_8016B7A8
    .space 0x4

glabel D_8016B7AC
    .space 0x4

glabel D_8016B7B0
    .space 0x8

glabel D_8016B7B8
    .space 0x10

glabel D_8016B7C8
    .space 0x10

glabel D_8016B7D8
    .space 0x4

glabel D_8016B7DC
    .space 0x4

glabel D_8016B7E0
    .space 0x8

glabel D_8016B7E8
    .space 0x6

glabel D_8016B7EE
    .space 0xC2

glabel D_8016B8B0
    .space 0x1

glabel D_8016B8B1
    .space 0x1

glabel D_8016B8B2
    .space 0x1

glabel D_8016B8B3
    .space 0x1

glabel D_8016B8B4
    .space 0x4

glabel D_8016B8B8
    .space 0xA

glabel D_8016B8C2
    .space 0xF6

glabel D_8016B9B8
    .space 0x20

glabel D_8016B9D8
    .space 0x8

glabel D_8016B9E0
    .space 0x12

glabel D_8016B9F2
    .space 0x1

glabel D_8016B9F3
    .space 0x1

glabel D_8016B9F4
    .space 0x2

glabel D_8016B9F6
    .space 0x2

glabel D_8016B9F8
    .space 0x1

glabel D_8016B9F9
    .space 0x3

glabel D_8016B9FC
    .space 0x4

glabel D_8016BA00
    .space 0x4

glabel D_8016BA04
    .space 0x4

glabel D_8016BA08
    .space 0x1

glabel D_8016BA09
    .space 0x3

glabel sCurOcarinaBtnPress
    .space 0x4

glabel D_8016BA10
    .space 0x4

glabel sPrevOcarinaBtnPress
    .space 0x4

glabel D_8016BA18
    .space 0x8

glabel sCurOcarinaSong
    .space 0x8

glabel sOcarinaSongAppendPos
    .space 0x1

glabel sOcarinaHasStartedSong
    .space 0x1

glabel sOcarinaSongNotestartIdx
    .space 0x1

glabel sOcarinaSongCnt
    .space 0x1

glabel sOcarinaAvailSongs
    .space 0x2

glabel D_8016BA2E
    .space 0x2

glabel D_8016BA30
    .space 0x20

glabel D_8016BA50
    .space 0x20

glabel D_8016BA70
    .space 0x20

glabel D_8016BA90
    .space 0x10

glabel D_8016BAA0
    .space 0x8

glabel D_8016BAA8
    .space 0x4

glabel D_8016BAAC
    .space 0x4

glabel D_8016BAB0
    .space 0x4

glabel sDebugPadPressRaw
    .space 0x4

glabel sDebugPadPress
    .space 0x4

glabel sOcarinaUpdateTaskCntStart
    .space 0x4

glabel sOcarinaUpdateTaskCntEnd
    .space 0x10

glabel D_8016BAD0
    .space 0x1B0

glabel D_8016BC80
    .space 0x240

glabel D_8016BEC0
    .space 0x420

glabel D_8016C2E0
    .space 0x3C0

glabel D_8016C6A0
    .space 0x180

glabel D_8016C820
    .space 0x90

glabel D_8016C8B0
    .space 0xF0

glabel D_8016C9A0
    .space 0x1800

glabel D_8016E1A0
    .space 0x8

glabel D_8016E1A8
    .space 0x8

glabel D_8016E1B0
    .space 0x8

glabel D_8016E1B8
    .space 0xA8

glabel D_8016E260
    .space 0x4

glabel D_8016E264
    .space 0xC

glabel D_8016E270
    .space 0x70

glabel D_8016E2E0
    .space 0x18

glabel D_8016E2F8
    .space 0x18

glabel D_8016E310
    .space 0x10

glabel D_8016E320
    .space 0x28

glabel D_8016E348
    .space 0x8

glabel D_8016E350
    .space 0x400

glabel D_8016E750
    .space 0x990

glabel D_8016F0E0 # unused? 
    .space 0xA0

glabel gAudioContext
    .space 0x6450

glabel D_801755D0
    .space 0x20
