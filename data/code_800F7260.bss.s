.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .bss

.balign 16

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

glabel sSoundRequests
    .space 0x1800

glabel sSoundBankListEnd
    .space 0x8

glabel sSoundBankFreeListStart
    .space 0x8

glabel sSoundBankUnused
    .space 0x8

glabel gActiveSounds
    .space 0xA8

glabel sCurSfxPlayerChannelIdx
    .space 0x4

glabel gSoundBankMuted
    .space 0xC

glabel sUnusedBankLerp
    .space 0x70

glabel gAudioSfxSwapSource
    .space 0x18

glabel gAudioSfxSwapTarget
    .space 0x18

glabel gAudioSfxSwapMode
    .space 0x10

glabel D_8016E320
    .space 0x28

glabel D_8016E348
    .space 0x8

glabel sAudioSeqCmds
    .space 0x400

glabel D_8016E750
    .space 0x990

glabel D_8016F0E0 # unused? 
    .space 0xA0

glabel gAudioContext
    .space 0x6450

glabel D_801755D0
    .space 0x20
