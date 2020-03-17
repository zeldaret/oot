.rdata
glabel D_8013D810
    .asciz "＊＊＊＊＊＊＊\n＊＊＊＊＊＊＊\nroom_no=%d (%d)(%d)\n＊＊＊＊＊＊＊\n＊＊＊＊＊＊＊\n"
    # EUC-JP: ＊＊＊＊＊＊＊ ＊＊＊＊＊＊＊ room_no=%d (%d)(%d) ＊＊＊＊＊＊＊ ＊＊＊＊＊＊＊
    .balign 4

glabel D_8013D864
    .asciz "ＲＯＯＭ＿ＩＮＦ＝%d\n"
    # EUC-JP: ＲＯＯＭ＿ＩＮＦ＝
    .balign 4

glabel D_8013D87C
    .asciz "\x1b[33m"
    .balign 4

glabel D_8013D884
    .asciz "部屋部屋＝%d\n"
    # EUC-JP: 部屋部屋＝ | Room Room = 
    .balign 4

glabel D_8013D894
    .asciz "\x1b[m"
    .balign 4

.late_rodata
glabel jtbl_8013DAF4
    .word L80080E74
    .word L80080E74
    .word L80080E74
    .word L80080E74
    .word L80080E74
    .word L80080E74
    .word L80080E74
    .word L80080E74
    .word L80080E74
    .word L80080E74
    .word L80080F1C
    .word L80080F1C
    .word L80080F1C
    .word L80080F1C
    .word L80080F1C
    .word L80080F1C
    .word L80080F1C
    .word L80080E74
    .word L80080E74
    .word L80080E74
    .word L80080E74
    .word L80080E74
    .word L80080E74
    .word L80080E74
    .word L80080E74

.text
glabel func_80080E04
/* AF7FA4 80080E04 27BDFFE0 */  addiu $sp, $sp, -0x20
/* AF7FA8 80080E08 AFA40020 */  sw    $a0, 0x20($sp)
/* AF7FAC 80080E0C 8FAE0020 */  lw    $t6, 0x20($sp)
/* AF7FB0 80080E10 3C068016 */  lui   $a2, %hi(gSaveContext+0x1402) # $a2, 0x8016
/* AF7FB4 80080E14 94C6FA62 */  lhu   $a2, %lo(gSaveContext+0x1402)($a2)
/* AF7FB8 80080E18 AFBF0014 */  sw    $ra, 0x14($sp)
/* AF7FBC 80080E1C AFA50024 */  sw    $a1, 0x24($sp)
/* AF7FC0 80080E20 3C048014 */  lui   $a0, %hi(D_8013D810) # $a0, 0x8014
/* AF7FC4 80080E24 85C700A4 */  lh    $a3, 0xa4($t6)
/* AF7FC8 80080E28 2484D810 */  addiu $a0, %lo(D_8013D810) # addiu $a0, $a0, -0x27f0
/* AF7FCC 80080E2C 87A50026 */  lh    $a1, 0x26($sp)
/* AF7FD0 80080E30 0C00084C */  jal   osSyncPrintf
/* AF7FD4 80080E34 AFA6001C */   sw    $a2, 0x1c($sp)
/* AF7FD8 80080E38 87A30026 */  lh    $v1, 0x26($sp)
/* AF7FDC 80080E3C 8FAF0020 */  lw    $t7, 0x20($sp)
/* AF7FE0 80080E40 3C010001 */  lui   $at, 1
/* AF7FE4 80080E44 04600034 */  bltz  $v1, .L80080F18
/* AF7FE8 80080E48 002F0821 */   addu  $at, $at, $t7
/* AF7FEC 80080E4C 8FAF0020 */  lw    $t7, 0x20($sp)
/* AF7FF0 80080E50 95F800A4 */  lhu   $t8, 0xa4($t7)
/* AF7FF4 80080E54 2F010019 */  sltiu $at, $t8, 0x19
/* AF7FF8 80080E58 10200030 */  beqz  $at, .L80080F1C
/* AF7FFC 80080E5C 0018C080 */   sll   $t8, $t8, 2
/* AF8000 80080E60 3C018014 */  lui   $at, %hi(jtbl_8013DAF4)
/* AF8004 80080E64 00380821 */  addu  $at, $at, $t8
/* AF8008 80080E68 8C38DAF4 */  lw    $t8, %lo(jtbl_8013DAF4)($at)
/* AF800C 80080E6C 03000008 */  jr    $t8
/* AF8010 80080E70 00000000 */   nop   
glabel L80080E74
/* AF8014 80080E74 8FB9001C */  lw    $t9, 0x1c($sp)
/* AF8018 80080E78 3C098016 */  lui   $t1, %hi(gSaveContext) # $t1, 0x8016
/* AF801C 80080E7C 2529E660 */  addiu $t1, %lo(gSaveContext) # addiu $t1, $t1, -0x19a0
/* AF8020 80080E80 001940C0 */  sll   $t0, $t9, 3
/* AF8024 80080E84 01194023 */  subu  $t0, $t0, $t9
/* AF8028 80080E88 00084080 */  sll   $t0, $t0, 2
/* AF802C 80080E8C 00035880 */  sll   $t3, $v1, 2
/* AF8030 80080E90 3C0C8012 */  lui   $t4, %hi(gBitFlags)
/* AF8034 80080E94 018B6021 */  addu  $t4, $t4, $t3
/* AF8038 80080E98 01091021 */  addu  $v0, $t0, $t1
/* AF803C 80080E9C 8C4A00E8 */  lw    $t2, 0xe8($v0)
/* AF8040 80080EA0 8D8C7120 */  lw    $t4, %lo(gBitFlags)($t4)
/* AF8044 80080EA4 3C048014 */  lui   $a0, %hi(D_8013D864) # $a0, 0x8014
/* AF8048 80080EA8 2484D864 */  addiu $a0, %lo(D_8013D864) # addiu $a0, $a0, -0x279c
/* AF804C 80080EAC 014C2825 */  or    $a1, $t2, $t4
/* AF8050 80080EB0 0C00084C */  jal   osSyncPrintf
/* AF8054 80080EB4 AC4500E8 */   sw    $a1, 0xe8($v0)
/* AF8058 80080EB8 8FA40020 */  lw    $a0, 0x20($sp)
/* AF805C 80080EBC 87A50026 */  lh    $a1, 0x26($sp)
/* AF8060 80080EC0 3C010001 */  lui   $at, (0x000104F0 >> 16) # lui $at, 1
/* AF8064 80080EC4 342104F0 */  ori   $at, (0x000104F0 & 0xFFFF) # ori $at, $at, 0x4f0
/* AF8068 80080EC8 00811021 */  addu  $v0, $a0, $at
/* AF806C 80080ECC A445025C */  sh    $a1, 0x25c($v0)
/* AF8070 80080ED0 8FAE001C */  lw    $t6, 0x1c($sp)
/* AF8074 80080ED4 0C0201FF */  jal   func_800807FC
/* AF8078 80080ED8 A44E025A */   sh    $t6, 0x25a($v0)
/* AF807C 80080EDC 3C048014 */  lui   $a0, %hi(D_8013D87C) # $a0, 0x8014
/* AF8080 80080EE0 0C00084C */  jal   osSyncPrintf
/* AF8084 80080EE4 2484D87C */   addiu $a0, %lo(D_8013D87C) # addiu $a0, $a0, -0x2784
/* AF8088 80080EE8 3C048014 */  lui   $a0, %hi(D_8013D884) # $a0, 0x8014
/* AF808C 80080EEC 2484D884 */  addiu $a0, %lo(D_8013D884) # addiu $a0, $a0, -0x277c
/* AF8090 80080EF0 0C00084C */  jal   osSyncPrintf
/* AF8094 80080EF4 87A50026 */   lh    $a1, 0x26($sp)
/* AF8098 80080EF8 3C048014 */  lui   $a0, %hi(D_8013D894) # $a0, 0x8014
/* AF809C 80080EFC 0C00084C */  jal   osSyncPrintf
/* AF80A0 80080F00 2484D894 */   addiu $a0, %lo(D_8013D894) # addiu $a0, $a0, -0x276c
/* AF80A4 80080F04 8FA40020 */  lw    $a0, 0x20($sp)
/* AF80A8 80080F08 0C0202AD */  jal   func_80080AB4
/* AF80AC 80080F0C 87A50026 */   lh    $a1, 0x26($sp)
/* AF80B0 80080F10 10000002 */  b     .L80080F1C
/* AF80B4 80080F14 00000000 */   nop   
.L80080F18:
/* AF80B8 80080F18 A420074C */  sh    $zero, 0x74c($at)
glabel L80080F1C
.L80080F1C:
/* AF80BC 80080F1C 3C188016 */  lui   $t8, %hi(gSaveContext+0x1422) # $t8, 0x8016
/* AF80C0 80080F20 8718FA82 */  lh    $t8, %lo(gSaveContext+0x1422)($t8)
/* AF80C4 80080F24 24010002 */  li    $at, 2
/* AF80C8 80080F28 13010002 */  beq   $t8, $at, .L80080F34
/* AF80CC 80080F2C 3C018016 */   lui   $at, %hi(gSaveContext+0x1422) # $at, 0x8016
/* AF80D0 80080F30 A420FA82 */  sh    $zero, %lo(gSaveContext+0x1422)($at)
.L80080F34:
/* AF80D4 80080F34 8FBF0014 */  lw    $ra, 0x14($sp)
/* AF80D8 80080F38 27BD0020 */  addiu $sp, $sp, 0x20
/* AF80DC 80080F3C 03E00008 */  jr    $ra
/* AF80E0 80080F40 00000000 */   nop   

