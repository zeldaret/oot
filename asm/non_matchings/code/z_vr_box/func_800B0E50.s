.rdata
glabel D_80142C6C
    .asciz "\x1b[32m"
    .balign 4

glabel D_80142C74
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_80142C84
    .asciz "vr_box->dpList != NULL"
    .balign 4

glabel D_80142C9C
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_80142CAC
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_80142CBC
    .asciz "vr_box->roomVtx != NULL"
    .balign 4

glabel D_80142CD4
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_80142CE4
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_80142CF4
    .asciz "vr_box->dpList != NULL"
    .balign 4

glabel D_80142D0C
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_80142D1C
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_80142D2C
    .asciz "vr_box->roomVtx != NULL"
    .balign 4

glabel D_80142D44
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_80142D54
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_80142D64
    .asciz "vr_box->roomVtx != NULL"
    .balign 4

glabel D_80142D7C
    .asciz "../z_vr_box.c"
    .balign 4

glabel D_80142D8C
    .asciz "\x1b[m"
    .balign 4

.text
glabel func_800B0E50
/* B27FF0 800B0E50 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B27FF4 800B0E54 44800000 */  mtc1  $zero, $f0
/* B27FF8 800B0E58 AFBF001C */  sw    $ra, 0x1c($sp)
/* B27FFC 800B0E5C AFB00018 */  sw    $s0, 0x18($sp)
/* B28000 800B0E60 AFA40020 */  sw    $a0, 0x20($sp)
/* B28004 800B0E64 AFA60028 */  sw    $a2, 0x28($sp)
/* B28008 800B0E68 A4A00140 */  sh    $zero, 0x140($a1)
/* B2800C 800B0E6C E4A00144 */  swc1  $f0, 0x144($a1)
/* B28010 800B0E70 E4A00148 */  swc1  $f0, 0x148($a1)
/* B28014 800B0E74 E4A0014C */  swc1  $f0, 0x14c($a1)
/* B28018 800B0E78 00A08025 */  move  $s0, $a1
/* B2801C 800B0E7C 87A6002A */  lh    $a2, 0x2a($sp)
/* B28020 800B0E80 0C02BC86 */  jal   func_800AF218
/* B28024 800B0E84 8FA40020 */   lw    $a0, 0x20($sp)
/* B28028 800B0E88 3C048014 */  lui   $a0, %hi(D_80142C00) # $a0, 0x8014
/* B2802C 800B0E8C 24842C00 */  addiu $a0, %lo(D_80142C00) # addiu $a0, $a0, 0x2c00
/* B28030 800B0E90 0C00084C */  jal   osSyncPrintf
/* B28034 800B0E94 87A5002A */   lh    $a1, 0x2a($sp)
/* B28038 800B0E98 87AE002A */  lh    $t6, 0x2a($sp)
/* B2803C 800B0E9C 3C048014 */  lui   $a0, %hi(D_80142C6C) # $a0, 0x8014
/* B28040 800B0EA0 51C0005F */  beql  $t6, $zero, .L800B1020
/* B28044 800B0EA4 8FBF001C */   lw    $ra, 0x1c($sp)
/* B28048 800B0EA8 0C00084C */  jal   osSyncPrintf
/* B2804C 800B0EAC 24842C6C */   addiu $a0, %lo(D_80142C6C) # addiu $a0, $a0, 0x2c6c
/* B28050 800B0EB0 860F0140 */  lh    $t7, 0x140($s0)
/* B28054 800B0EB4 8FA40020 */  lw    $a0, 0x20($sp)
/* B28058 800B0EB8 24053840 */  li    $a1, 14400
/* B2805C 800B0EBC 11E00022 */  beqz  $t7, .L800B0F48
/* B28060 800B0EC0 3C068014 */   lui   $a2, %hi(D_80142CE4)
/* B28064 800B0EC4 3C068014 */  lui   $a2, %hi(D_80142C74) # $a2, 0x8014
/* B28068 800B0EC8 24C62C74 */  addiu $a2, %lo(D_80142C74) # addiu $a2, $a2, 0x2c74
/* B2806C 800B0ECC 8FA40020 */  lw    $a0, 0x20($sp)
/* B28070 800B0ED0 24052580 */  li    $a1, 9600
/* B28074 800B0ED4 0C031521 */  jal   GameState_AllocEnd
/* B28078 800B0ED8 24070664 */   li    $a3, 1636
/* B2807C 800B0EDC 14400007 */  bnez  $v0, .L800B0EFC
/* B28080 800B0EE0 AE020134 */   sw    $v0, 0x134($s0)
/* B28084 800B0EE4 3C048014 */  lui   $a0, %hi(D_80142C84) # $a0, 0x8014
/* B28088 800B0EE8 3C058014 */  lui   $a1, %hi(D_80142C9C) # $a1, 0x8014
/* B2808C 800B0EEC 24A52C9C */  addiu $a1, %lo(D_80142C9C) # addiu $a1, $a1, 0x2c9c
/* B28090 800B0EF0 24842C84 */  addiu $a0, %lo(D_80142C84) # addiu $a0, $a0, 0x2c84
/* B28094 800B0EF4 0C0007FC */  jal   __assert
/* B28098 800B0EF8 24060665 */   li    $a2, 1637
.L800B0EFC:
/* B2809C 800B0EFC 3C068014 */  lui   $a2, %hi(D_80142CAC) # $a2, 0x8014
/* B280A0 800B0F00 24C62CAC */  addiu $a2, %lo(D_80142CAC) # addiu $a2, $a2, 0x2cac
/* B280A4 800B0F04 8FA40020 */  lw    $a0, 0x20($sp)
/* B280A8 800B0F08 24051000 */  li    $a1, 4096
/* B280AC 800B0F0C 0C031521 */  jal   GameState_AllocEnd
/* B280B0 800B0F10 24070667 */   li    $a3, 1639
/* B280B4 800B0F14 14400007 */  bnez  $v0, .L800B0F34
/* B280B8 800B0F18 AE02013C */   sw    $v0, 0x13c($s0)
/* B280BC 800B0F1C 3C048014 */  lui   $a0, %hi(D_80142CBC) # $a0, 0x8014
/* B280C0 800B0F20 3C058014 */  lui   $a1, %hi(D_80142CD4) # $a1, 0x8014
/* B280C4 800B0F24 24A52CD4 */  addiu $a1, %lo(D_80142CD4) # addiu $a1, $a1, 0x2cd4
/* B280C8 800B0F28 24842CBC */  addiu $a0, %lo(D_80142CBC) # addiu $a0, $a0, 0x2cbc
/* B280CC 800B0F2C 0C0007FC */  jal   __assert
/* B280D0 800B0F30 24060668 */   li    $a2, 1640
.L800B0F34:
/* B280D4 800B0F34 02002025 */  move  $a0, $s0
/* B280D8 800B0F38 0C02BBF2 */  jal   func_800AEFC8
/* B280DC 800B0F3C 87A5002A */   lh    $a1, 0x2a($sp)
/* B280E0 800B0F40 10000033 */  b     .L800B1010
/* B280E4 800B0F44 00000000 */   nop
.L800B0F48:
/* B280E8 800B0F48 24C62CE4 */  addiu $a2, %lo(D_80142CE4)
/* B280EC 800B0F4C 0C031521 */  jal   GameState_AllocEnd
/* B280F0 800B0F50 2407066B */   li    $a3, 1643
/* B280F4 800B0F54 14400007 */  bnez  $v0, .L800B0F74
/* B280F8 800B0F58 AE020134 */   sw    $v0, 0x134($s0)
/* B280FC 800B0F5C 3C048014 */  lui   $a0, %hi(D_80142CF4) # $a0, 0x8014
/* B28100 800B0F60 3C058014 */  lui   $a1, %hi(D_80142D0C) # $a1, 0x8014
/* B28104 800B0F64 24A52D0C */  addiu $a1, %lo(D_80142D0C) # addiu $a1, $a1, 0x2d0c
/* B28108 800B0F68 24842CF4 */  addiu $a0, %lo(D_80142CF4) # addiu $a0, $a0, 0x2cf4
/* B2810C 800B0F6C 0C0007FC */  jal   __assert
/* B28110 800B0F70 2406066C */   li    $a2, 1644
.L800B0F74:
/* B28114 800B0F74 87B8002A */  lh    $t8, 0x2a($sp)
/* B28118 800B0F78 24010005 */  li    $at, 5
/* B2811C 800B0F7C 8FA40020 */  lw    $a0, 0x20($sp)
/* B28120 800B0F80 17010014 */  bne   $t8, $at, .L800B0FD4
/* B28124 800B0F84 24050A00 */   li    $a1, 2560
/* B28128 800B0F88 3C068014 */  lui   $a2, %hi(D_80142D1C) # $a2, 0x8014
/* B2812C 800B0F8C 24C62D1C */  addiu $a2, %lo(D_80142D1C) # addiu $a2, $a2, 0x2d1c
/* B28130 800B0F90 8FA40020 */  lw    $a0, 0x20($sp)
/* B28134 800B0F94 24050C00 */  li    $a1, 3072
/* B28138 800B0F98 0C031521 */  jal   GameState_AllocEnd
/* B2813C 800B0F9C 24070670 */   li    $a3, 1648
/* B28140 800B0FA0 14400007 */  bnez  $v0, .L800B0FC0
/* B28144 800B0FA4 AE02013C */   sw    $v0, 0x13c($s0)
/* B28148 800B0FA8 3C048014 */  lui   $a0, %hi(D_80142D2C) # $a0, 0x8014
/* B2814C 800B0FAC 3C058014 */  lui   $a1, %hi(D_80142D44) # $a1, 0x8014
/* B28150 800B0FB0 24A52D44 */  addiu $a1, %lo(D_80142D44) # addiu $a1, $a1, 0x2d44
/* B28154 800B0FB4 24842D2C */  addiu $a0, %lo(D_80142D2C) # addiu $a0, $a0, 0x2d2c
/* B28158 800B0FB8 0C0007FC */  jal   __assert
/* B2815C 800B0FBC 24060671 */   li    $a2, 1649
.L800B0FC0:
/* B28160 800B0FC0 02002025 */  move  $a0, $s0
/* B28164 800B0FC4 0C02BC5E */  jal   func_800AF178
/* B28168 800B0FC8 24050006 */   li    $a1, 6
/* B2816C 800B0FCC 10000010 */  b     .L800B1010
/* B28170 800B0FD0 00000000 */   nop
.L800B0FD4:
/* B28174 800B0FD4 3C068014 */  lui   $a2, %hi(D_80142D54) # $a2, 0x8014
/* B28178 800B0FD8 24C62D54 */  addiu $a2, %lo(D_80142D54) # addiu $a2, $a2, 0x2d54
/* B2817C 800B0FDC 0C031521 */  jal   GameState_AllocEnd
/* B28180 800B0FE0 24070675 */   li    $a3, 1653
/* B28184 800B0FE4 14400007 */  bnez  $v0, .L800B1004
/* B28188 800B0FE8 AE02013C */   sw    $v0, 0x13c($s0)
/* B2818C 800B0FEC 3C048014 */  lui   $a0, %hi(D_80142D64) # $a0, 0x8014
/* B28190 800B0FF0 3C058014 */  lui   $a1, %hi(D_80142D7C) # $a1, 0x8014
/* B28194 800B0FF4 24A52D7C */  addiu $a1, %lo(D_80142D7C) # addiu $a1, $a1, 0x2d7c
/* B28198 800B0FF8 24842D64 */  addiu $a0, %lo(D_80142D64) # addiu $a0, $a0, 0x2d64
/* B2819C 800B0FFC 0C0007FC */  jal   __assert
/* B281A0 800B1000 24060676 */   li    $a2, 1654
.L800B1004:
/* B281A4 800B1004 02002025 */  move  $a0, $s0
/* B281A8 800B1008 0C02BC5E */  jal   func_800AF178
/* B281AC 800B100C 24050005 */   li    $a1, 5
.L800B1010:
/* B281B0 800B1010 3C048014 */  lui   $a0, %hi(D_80142D8C) # $a0, 0x8014
/* B281B4 800B1014 0C00084C */  jal   osSyncPrintf
/* B281B8 800B1018 24842D8C */   addiu $a0, %lo(D_80142D8C) # addiu $a0, $a0, 0x2d8c
/* B281BC 800B101C 8FBF001C */  lw    $ra, 0x1c($sp)
.L800B1020:
/* B281C0 800B1020 8FB00018 */  lw    $s0, 0x18($sp)
/* B281C4 800B1024 27BD0020 */  addiu $sp, $sp, 0x20
/* B281C8 800B1028 03E00008 */  jr    $ra
/* B281CC 800B102C 00000000 */   nop
