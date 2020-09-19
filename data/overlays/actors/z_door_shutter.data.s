.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .data

.balign 16

glabel Door_Shutter_InitVars
 .word 0x002E0A00, 0x00000010, 0x00010000, 0x00000178
.word DoorShutter_Init
.word DoorShutter_Destroy
.word DoorShutter_Update
.word DoorShutter_Draw
glabel D_809980F0
 .byte 0x00, 0x37, 0x04, 0x04, 0x00, 0x1C, 0x05, 0x05, 0x00, 0x36, 0x00, 0x01, 0x00, 0x2B, 0x02, 0x02
glabel D_80998100
 .word 0x00960303, 0x00010808, 0x00B00707, 0x00010808, 0x002C090A, 0x01390B0B, 0x016D0606, 0x00590C0D, 0x01870E0F, 0x006B1010, 0x004D1111, 0x01791212, 0x018F1313
glabel D_80998134
 .word 0x060067A0, 0x0404B0D0, 0x820C140F, 0x06006910, 0x0404B0D0, 0x820C140F, 0x060000C0, 0x060001F0, 0xF00E460F, 0x06000590, 0x06006460, 0x006E320F, 0x06012AB0, 0x00000000, 0x820C320F, 0x0601EC20, 0x00000000, 0x820C320F, 0x06000100, 0x060001F0, 0xF00E320F, 0x060010C0, 0x00000000, 0x820C320F, 0x04049FE0, 0x0404B0D0, 0x820C140F, 0x06010CB0, 0x0404B0D0, 0x820C140F, 0x06011F20, 0x0404B0D0, 0x820C140F, 0x060000C0, 0x0404B0D0, 0x820C140F, 0x06005D90, 0x0404B0D0, 0x820C140F, 0x06007000, 0x0404B0D0, 0x820C140F, 0x06002620, 0x0404B0D0, 0x820C140F, 0x06003890, 0x0404B0D0, 0x820C140F, 0x06001D10, 0x0404B0D0, 0x820C140F, 0x060010D0, 0x0404B0D0, 0x820C140F, 0x060020D0, 0x0404B0D0, 0x820C140F, 0x060000C0, 0x0404B0D0, 0x820C140F
glabel D_80998224
 .word 0xFFFFFFFF, 0x000601FF, 0x00FFFFFF
glabel D_80998230
 .word 0xC0500001, 0xB0F40FA0, 0xB0F80064, 0x30FC0190
glabel D_80998240
 .word 0x00000200, 0x00010300, 0x00120300, 0x00020400, 0x00030500, 0x00040800, 0x000A0900, 0x00190900, 0x00060A00, 0x00170A00, 0x00050B00, 0x00070C00, 0x00080C00, 0x00090D00, 0x000B0E00, 0x000D0F00, 0x00411000, 0xFFFF0700
glabel D_80998288
 .word 0x00040015, 0x01000005, 0x00160200, 0x00070018, 0x0300000A, 0x00190400, 0x00030014, 0x05000006, 0x00170600, 0xFFFFFFFF, 0x00000000
glabel D_809982B4
 .word 0x06000590, 0x06000BF0, 0x06002BD0, 0x060018B0, 0x06001F10, 0x060018B0, 0x06001250, 0x06000BF0
glabel D_809982D4
 .word 0x060065C0, 0x060035C0, 0x060055C0, 0x060045C0, 0x06000000, 0x060025C0, 0x060015C0

