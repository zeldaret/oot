.rdata
glabel D_80143A30
    .asciz "../db_camera.c"
    .balign 4

glabel D_80143A40
    .asciz "%s: %d: デバッグカメラ メモリ確保失敗！！\n"
    # EUC-JP: デバッグカメラ メモリ確保失敗！！ | Debug camera memory allocation failure
    .balign 4

glabel D_80143A6C
    .asciz "../db_camera.c"
    .balign 4

glabel D_80143A7C
    .asciz "../db_camera.c"
    .balign 4

glabel D_80143A8C
    .asciz "%s: %d: デバッグカメラ メモリ確保失敗！！\n"
    # EUC-JP: デバッグカメラ メモリ確保失敗！！ | Debug camera memory allocation failure
    .balign 4

glabel D_80143AB8
    .asciz "../db_camera.c"
    .balign 4

.text
glabel func_800B8BB0
/* B2FD50 800B8BB0 27BDFFB8 */  addiu $sp, $sp, -0x48
/* B2FD54 800B8BB4 AFB00020 */  sw    $s0, 0x20($sp)
/* B2FD58 800B8BB8 AFB50034 */  sw    $s5, 0x34($sp)
/* B2FD5C 800B8BBC AFB40030 */  sw    $s4, 0x30($sp)
/* B2FD60 800B8BC0 AFB3002C */  sw    $s3, 0x2c($sp)
/* B2FD64 800B8BC4 AFB10024 */  sw    $s1, 0x24($sp)
/* B2FD68 800B8BC8 3C108016 */  lui   $s0, %hi(sDbgEditorSlots) # $s0, 0x8016
/* B2FD6C 800B8BCC 0080A025 */  move  $s4, $a0
/* B2FD70 800B8BD0 AFBF0044 */  sw    $ra, 0x44($sp)
/* B2FD74 800B8BD4 AFBE0040 */  sw    $fp, 0x40($sp)
/* B2FD78 800B8BD8 AFB7003C */  sw    $s7, 0x3c($sp)
/* B2FD7C 800B8BDC AFB60038 */  sw    $s6, 0x38($sp)
/* B2FD80 800B8BE0 AFB20028 */  sw    $s2, 0x28($sp)
/* B2FD84 800B8BE4 26101150 */  addiu $s0, %lo(sDbgEditorSlots) # addiu $s0, $s0, 0x1150
/* B2FD88 800B8BE8 00008825 */  move  $s1, $zero
/* B2FD8C 800B8BEC 24130058 */  li    $s3, 88
/* B2FD90 800B8BF0 2415003F */  li    $s5, 63
.L800B8BF4:
/* B2FD94 800B8BF4 920E0000 */  lbu   $t6, ($s0)
/* B2FD98 800B8BF8 02202025 */  move  $a0, $s1
/* B2FD9C 800B8BFC 24050001 */  li    $a1, 1
/* B2FDA0 800B8C00 12AE0005 */  beq   $s5, $t6, .L800B8C18
/* B2FDA4 800B8C04 3C0F8016 */   lui   $t7, %hi(D_801612D0) # $t7, 0x8016
/* B2FDA8 800B8C08 25EF12D0 */  addiu $t7, %lo(D_801612D0) # addiu $t7, $t7, 0x12d0
/* B2FDAC 800B8C0C 0C02E25E */  jal   func_800B8978
/* B2FDB0 800B8C10 022F9021 */   addu  $s2, $s1, $t7
/* B2FDB4 800B8C14 A2530000 */  sb    $s3, ($s2)
.L800B8C18:
/* B2FDB8 800B8C18 26310001 */  addiu $s1, $s1, 1
/* B2FDBC 800B8C1C 2A21000F */  slti  $at, $s1, 0xf
/* B2FDC0 800B8C20 1420FFF4 */  bnez  $at, .L800B8BF4
/* B2FDC4 800B8C24 26100010 */   addiu $s0, $s0, 0x10
/* B2FDC8 800B8C28 92850000 */  lbu   $a1, ($s4)
/* B2FDCC 800B8C2C 3C068016 */  lui   $a2, %hi(sDbgEditorSlots) # $a2, 0x8016
/* B2FDD0 800B8C30 24180100 */  li    $t8, 256
/* B2FDD4 800B8C34 AFB80010 */  sw    $t8, 0x10($sp)
/* B2FDD8 800B8C38 24C61150 */  addiu $a2, %lo(sDbgEditorSlots) # addiu $a2, $a2, 0x1150
/* B2FDDC 800B8C3C 24040002 */  li    $a0, 2
/* B2FDE0 800B8C40 0C02EE0E */  jal   Mempak_Read
/* B2FDE4 800B8C44 00003825 */   move  $a3, $zero
/* B2FDE8 800B8C48 14400003 */  bnez  $v0, .L800B8C58
/* B2FDEC 800B8C4C 24120100 */   li    $s2, 256
/* B2FDF0 800B8C50 1000004B */  b     .L800B8D80
/* B2FDF4 800B8C54 00001025 */   move  $v0, $zero
.L800B8C58:
/* B2FDF8 800B8C58 3C108016 */  lui   $s0, %hi(sDbgEditorSlots) # $s0, 0x8016
/* B2FDFC 800B8C5C 3C1E8014 */  lui   $fp, %hi(D_80143A7C) # $fp, 0x8014
/* B2FE00 800B8C60 3C178014 */  lui   $s7, %hi(D_80143A30) # $s7, 0x8014
/* B2FE04 800B8C64 26F73A30 */  addiu $s7, %lo(D_80143A30) # addiu $s7, $s7, 0x3a30
/* B2FE08 800B8C68 27DE3A7C */  addiu $fp, %lo(D_80143A7C) # addiu $fp, $fp, 0x3a7c
/* B2FE0C 800B8C6C 26101150 */  addiu $s0, %lo(sDbgEditorSlots) # addiu $s0, $s0, 0x1150
/* B2FE10 800B8C70 2416FFE0 */  li    $s6, -32
/* B2FE14 800B8C74 92190000 */  lbu   $t9, ($s0)
.L800B8C78:
/* B2FE18 800B8C78 12B9003B */  beq   $s5, $t9, .L800B8D68
/* B2FE1C 800B8C7C 00000000 */   nop   
/* B2FE20 800B8C80 8602000E */  lh    $v0, 0xe($s0)
/* B2FE24 800B8C84 02E02825 */  move  $a1, $s7
/* B2FE28 800B8C88 24060B1C */  li    $a2, 2844
/* B2FE2C 800B8C8C 00021100 */  sll   $v0, $v0, 4
/* B2FE30 800B8C90 2448001F */  addiu $t0, $v0, 0x1f
/* B2FE34 800B8C94 01168824 */  and   $s1, $t0, $s6
/* B2FE38 800B8C98 02209825 */  move  $s3, $s1
/* B2FE3C 800B8C9C 0C034ED8 */  jal   DebugArena_MallocDebug
/* B2FE40 800B8CA0 02202025 */   move  $a0, $s1
/* B2FE44 800B8CA4 14400009 */  bnez  $v0, .L800B8CCC
/* B2FE48 800B8CA8 AE020008 */   sw    $v0, 8($s0)
/* B2FE4C 800B8CAC 3C048014 */  lui   $a0, %hi(D_80143A40) # $a0, 0x8014
/* B2FE50 800B8CB0 3C058014 */  lui   $a1, %hi(D_80143A6C) # $a1, 0x8014
/* B2FE54 800B8CB4 24A53A6C */  addiu $a1, %lo(D_80143A6C) # addiu $a1, $a1, 0x3a6c
/* B2FE58 800B8CB8 24843A40 */  addiu $a0, %lo(D_80143A40) # addiu $a0, $a0, 0x3a40
/* B2FE5C 800B8CBC 0C00084C */  jal   osSyncPrintf
/* B2FE60 800B8CC0 24060B1F */   li    $a2, 2847
/* B2FE64 800B8CC4 1000002E */  b     .L800B8D80
/* B2FE68 800B8CC8 00001025 */   move  $v0, $zero
.L800B8CCC:
/* B2FE6C 800B8CCC 92850000 */  lbu   $a1, ($s4)
/* B2FE70 800B8CD0 AFB10010 */  sw    $s1, 0x10($sp)
/* B2FE74 800B8CD4 24040002 */  li    $a0, 2
/* B2FE78 800B8CD8 8E060008 */  lw    $a2, 8($s0)
/* B2FE7C 800B8CDC 0C02EE0E */  jal   Mempak_Read
/* B2FE80 800B8CE0 02403825 */   move  $a3, $s2
/* B2FE84 800B8CE4 14400003 */  bnez  $v0, .L800B8CF4
/* B2FE88 800B8CE8 02519021 */   addu  $s2, $s2, $s1
/* B2FE8C 800B8CEC 10000024 */  b     .L800B8D80
/* B2FE90 800B8CF0 00001025 */   move  $v0, $zero
.L800B8CF4:
/* B2FE94 800B8CF4 02602025 */  move  $a0, $s3
/* B2FE98 800B8CF8 03C02825 */  move  $a1, $fp
/* B2FE9C 800B8CFC 0C034ED8 */  jal   DebugArena_MallocDebug
/* B2FEA0 800B8D00 24060B27 */   li    $a2, 2855
/* B2FEA4 800B8D04 14400009 */  bnez  $v0, .L800B8D2C
/* B2FEA8 800B8D08 AE020004 */   sw    $v0, 4($s0)
/* B2FEAC 800B8D0C 3C048014 */  lui   $a0, %hi(D_80143A8C) # $a0, 0x8014
/* B2FEB0 800B8D10 3C058014 */  lui   $a1, %hi(D_80143AB8) # $a1, 0x8014
/* B2FEB4 800B8D14 24A53AB8 */  addiu $a1, %lo(D_80143AB8) # addiu $a1, $a1, 0x3ab8
/* B2FEB8 800B8D18 24843A8C */  addiu $a0, %lo(D_80143A8C) # addiu $a0, $a0, 0x3a8c
/* B2FEBC 800B8D1C 0C00084C */  jal   osSyncPrintf
/* B2FEC0 800B8D20 24060B2A */   li    $a2, 2858
/* B2FEC4 800B8D24 10000016 */  b     .L800B8D80
/* B2FEC8 800B8D28 00001025 */   move  $v0, $zero
.L800B8D2C:
/* B2FECC 800B8D2C 92850000 */  lbu   $a1, ($s4)
/* B2FED0 800B8D30 AFB10010 */  sw    $s1, 0x10($sp)
/* B2FED4 800B8D34 24040002 */  li    $a0, 2
/* B2FED8 800B8D38 8E060004 */  lw    $a2, 4($s0)
/* B2FEDC 800B8D3C 0C02EE0E */  jal   Mempak_Read
/* B2FEE0 800B8D40 02403825 */   move  $a3, $s2
/* B2FEE4 800B8D44 14400003 */  bnez  $v0, .L800B8D54
/* B2FEE8 800B8D48 02519021 */   addu  $s2, $s2, $s1
/* B2FEEC 800B8D4C 1000000C */  b     .L800B8D80
/* B2FEF0 800B8D50 00001025 */   move  $v0, $zero
.L800B8D54:
/* B2FEF4 800B8D54 920A0000 */  lbu   $t2, ($s0)
/* B2FEF8 800B8D58 3C018016 */  lui   $at, %hi(sDbgEditorStates)
/* B2FEFC 800B8D5C 2409004F */  li    $t1, 79
/* B2FF00 800B8D60 002A0821 */  addu  $at, $at, $t2
/* B2FF04 800B8D64 A029128F */  sb    $t1, %lo(sDbgEditorStates)($at)
.L800B8D68:
/* B2FF08 800B8D68 3C0B8016 */  lui   $t3, %hi(D_80161240) # $t3, 0x8016
/* B2FF0C 800B8D6C 256B1240 */  addiu $t3, %lo(D_80161240) # addiu $t3, $t3, 0x1240
/* B2FF10 800B8D70 26100010 */  addiu $s0, $s0, 0x10
/* B2FF14 800B8D74 560BFFC0 */  bnel  $s0, $t3, .L800B8C78
/* B2FF18 800B8D78 92190000 */   lbu   $t9, ($s0)
/* B2FF1C 800B8D7C 24020001 */  li    $v0, 1
.L800B8D80:
/* B2FF20 800B8D80 8FBF0044 */  lw    $ra, 0x44($sp)
/* B2FF24 800B8D84 8FB00020 */  lw    $s0, 0x20($sp)
/* B2FF28 800B8D88 8FB10024 */  lw    $s1, 0x24($sp)
/* B2FF2C 800B8D8C 8FB20028 */  lw    $s2, 0x28($sp)
/* B2FF30 800B8D90 8FB3002C */  lw    $s3, 0x2c($sp)
/* B2FF34 800B8D94 8FB40030 */  lw    $s4, 0x30($sp)
/* B2FF38 800B8D98 8FB50034 */  lw    $s5, 0x34($sp)
/* B2FF3C 800B8D9C 8FB60038 */  lw    $s6, 0x38($sp)
/* B2FF40 800B8DA0 8FB7003C */  lw    $s7, 0x3c($sp)
/* B2FF44 800B8DA4 8FBE0040 */  lw    $fp, 0x40($sp)
/* B2FF48 800B8DA8 03E00008 */  jr    $ra
/* B2FF4C 800B8DAC 27BD0048 */   addiu $sp, $sp, 0x48
