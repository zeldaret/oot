.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel En_Lightbox_InitVars
 .word 0x007C0600, 0x00000010, 0x00810000, 0x00000164
.word EnLightbox_Init
.word EnLightbox_Destroy
.word EnLightbox_Update
.word EnLightbox_Draw

