.rdata
glabel D_8013FF8C
    .asciz "\x1b[31m"
    .balign 4

glabel D_8013FF94
    .asciz "Si2_Lod_draw():skelがNULLです。\n"
    # EUC-JP: がNULLです。| Is null
    .balign 4

glabel D_8013FFB8
    .asciz "\x1b[m"
    .balign 4

glabel D_8013FFBC
    .asciz "../z_skelanime.c"
    .balign 4

glabel D_8013FFD0
    .asciz "../z_skelanime.c"
    .balign 4

glabel D_8013FFE4
    .asciz "../z_skelanime.c"
    .balign 4

.text
glabel func_800A0B40
/* B17CE0 800A0B40 27BDFF98 */  addiu $sp, $sp, -0x68
/* B17CE4 800A0B44 AFBF0024 */  sw    $ra, 0x24($sp)
/* B17CE8 800A0B48 AFA40068 */  sw    $a0, 0x68($sp)
/* B17CEC 800A0B4C AFA5006C */  sw    $a1, 0x6c($sp)
/* B17CF0 800A0B50 AFA60070 */  sw    $a2, 0x70($sp)
/* B17CF4 800A0B54 14A0000C */  bnez  $a1, .L800A0B88
/* B17CF8 800A0B58 AFA70074 */   sw    $a3, 0x74($sp)
/* B17CFC 800A0B5C 3C048014 */  lui   $a0, %hi(D_8013FF8C) # $a0, 0x8014
/* B17D00 800A0B60 0C00084C */  jal   osSyncPrintf
/* B17D04 800A0B64 2484FF8C */   addiu $a0, %lo(D_8013FF8C) # addiu $a0, $a0, -0x74
/* B17D08 800A0B68 3C048014 */  lui   $a0, %hi(D_8013FF94) # $a0, 0x8014
/* B17D0C 800A0B6C 0C00084C */  jal   osSyncPrintf
/* B17D10 800A0B70 2484FF94 */   addiu $a0, %lo(D_8013FF94) # addiu $a0, $a0, -0x6c
/* B17D14 800A0B74 3C048014 */  lui   $a0, %hi(D_8013FFB8) # $a0, 0x8014
/* B17D18 800A0B78 0C00084C */  jal   osSyncPrintf
/* B17D1C 800A0B7C 2484FFB8 */   addiu $a0, %lo(D_8013FFB8) # addiu $a0, $a0, -0x48
/* B17D20 800A0B80 10000081 */  b     .L800A0D88
/* B17D24 800A0B84 8FBF0024 */   lw    $ra, 0x24($sp)
.L800A0B88:
/* B17D28 800A0B88 8FAF0068 */  lw    $t7, 0x68($sp)
/* B17D2C 800A0B8C 3C068014 */  lui   $a2, %hi(D_8013FFBC) # $a2, 0x8014
/* B17D30 800A0B90 24C6FFBC */  addiu $a2, %lo(D_8013FFBC) # addiu $a2, $a2, -0x44
/* B17D34 800A0B94 8DE50000 */  lw    $a1, ($t7)
/* B17D38 800A0B98 27A40034 */  addiu $a0, $sp, 0x34
/* B17D3C 800A0B9C 24070351 */  li    $a3, 849
/* B17D40 800A0BA0 0C031AB1 */  jal   func_800C6AC4
/* B17D44 800A0BA4 AFA50044 */   sw    $a1, 0x44($sp)
/* B17D48 800A0BA8 0C034213 */  jal   Matrix_Push
/* B17D4C 800A0BAC 00000000 */   nop
/* B17D50 800A0BB0 8FB8006C */  lw    $t8, 0x6c($sp)
/* B17D54 800A0BB4 3C0B8016 */  lui   $t3, %hi(gSegments)
/* B17D58 800A0BB8 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* B17D5C 800A0BBC 8F020000 */  lw    $v0, ($t8)
/* B17D60 800A0BC0 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* B17D64 800A0BC4 8FA30070 */  lw    $v1, 0x70($sp)
/* B17D68 800A0BC8 00024100 */  sll   $t0, $v0, 4
/* B17D6C 800A0BCC 00084F02 */  srl   $t1, $t0, 0x1c
/* B17D70 800A0BD0 00095080 */  sll   $t2, $t1, 2
/* B17D74 800A0BD4 016A5821 */  addu  $t3, $t3, $t2
/* B17D78 800A0BD8 8D6B6FA8 */  lw    $t3, %lo(gSegments)($t3)
/* B17D7C 800A0BDC 0041C824 */  and   $t9, $v0, $at
/* B17D80 800A0BE0 3C018000 */  lui   $at, 0x8000
/* B17D84 800A0BE4 032B6021 */  addu  $t4, $t9, $t3
/* B17D88 800A0BE8 01816821 */  addu  $t5, $t4, $at
/* B17D8C 800A0BEC AFAD0064 */  sw    $t5, 0x64($sp)
/* B17D90 800A0BF0 846E0000 */  lh    $t6, ($v1)
/* B17D94 800A0BF4 27A80048 */  addiu $t0, $sp, 0x48
/* B17D98 800A0BF8 24050001 */  li    $a1, 1
/* B17D9C 800A0BFC 448E2000 */  mtc1  $t6, $f4
/* B17DA0 800A0C00 27A6005C */  addiu $a2, $sp, 0x5c
/* B17DA4 800A0C04 27A70050 */  addiu $a3, $sp, 0x50
/* B17DA8 800A0C08 468021A0 */  cvt.s.w $f6, $f4
/* B17DAC 800A0C0C E7A60050 */  swc1  $f6, 0x50($sp)
/* B17DB0 800A0C10 846F0002 */  lh    $t7, 2($v1)
/* B17DB4 800A0C14 448F4000 */  mtc1  $t7, $f8
/* B17DB8 800A0C18 00000000 */  nop
/* B17DBC 800A0C1C 468042A0 */  cvt.s.w $f10, $f8
/* B17DC0 800A0C20 E7AA0054 */  swc1  $f10, 0x54($sp)
/* B17DC4 800A0C24 84780004 */  lh    $t8, 4($v1)
/* B17DC8 800A0C28 44988000 */  mtc1  $t8, $f16
/* B17DCC 800A0C2C 27B80048 */  addiu $t8, $sp, 0x48
/* B17DD0 800A0C30 468084A0 */  cvt.s.w $f18, $f16
/* B17DD4 800A0C34 E7B20058 */  swc1  $f18, 0x58($sp)
/* B17DD8 800A0C38 886A0006 */  lwl   $t2, 6($v1)
/* B17DDC 800A0C3C 986A0009 */  lwr   $t2, 9($v1)
/* B17DE0 800A0C40 AD0A0000 */  sw    $t2, ($t0)
/* B17DE4 800A0C44 946A000A */  lhu   $t2, 0xa($v1)
/* B17DE8 800A0C48 A50A0004 */  sh    $t2, 4($t0)
/* B17DEC 800A0C4C 8FAB0080 */  lw    $t3, 0x80($sp)
/* B17DF0 800A0C50 8FB90064 */  lw    $t9, 0x64($sp)
/* B17DF4 800A0C54 8FAF0074 */  lw    $t7, 0x74($sp)
/* B17DF8 800A0C58 000B6080 */  sll   $t4, $t3, 2
/* B17DFC 800A0C5C 032C6821 */  addu  $t5, $t9, $t4
/* B17E00 800A0C60 8DAE0008 */  lw    $t6, 8($t5)
/* B17E04 800A0C64 8FA40068 */  lw    $a0, 0x68($sp)
/* B17E08 800A0C68 11E00006 */  beqz  $t7, .L800A0C84
/* B17E0C 800A0C6C AFAE005C */   sw    $t6, 0x5c($sp)
/* B17E10 800A0C70 8FA8007C */  lw    $t0, 0x7c($sp)
/* B17E14 800A0C74 AFB80010 */  sw    $t8, 0x10($sp)
/* B17E18 800A0C78 01E0F809 */  jalr  $t7
/* B17E1C 800A0C7C AFA80014 */  sw    $t0, 0x14($sp)
/* B17E20 800A0C80 1440001E */  bnez  $v0, .L800A0CFC
.L800A0C84:
/* B17E24 800A0C84 27A40050 */   addiu $a0, $sp, 0x50
/* B17E28 800A0C88 0C0344D0 */  jal   Matrix_TranslateThenRotateZYX
/* B17E2C 800A0C8C 27A50048 */   addiu $a1, $sp, 0x48
/* B17E30 800A0C90 8FA9005C */  lw    $t1, 0x5c($sp)
/* B17E34 800A0C94 8FA70044 */  lw    $a3, 0x44($sp)
/* B17E38 800A0C98 3C0BDA38 */  lui   $t3, (0xDA380003 >> 16) # lui $t3, 0xda38
/* B17E3C 800A0C9C 51200018 */  beql  $t1, $zero, .L800A0D00
/* B17E40 800A0CA0 8FA20078 */   lw    $v0, 0x78($sp)
/* B17E44 800A0CA4 8CE202C0 */  lw    $v0, 0x2c0($a3)
/* B17E48 800A0CA8 356B0003 */  ori   $t3, (0xDA380003 & 0xFFFF) # ori $t3, $t3, 3
/* B17E4C 800A0CAC 3C058014 */  lui   $a1, %hi(D_8013FFD0) # $a1, 0x8014
/* B17E50 800A0CB0 244A0008 */  addiu $t2, $v0, 8
/* B17E54 800A0CB4 ACEA02C0 */  sw    $t2, 0x2c0($a3)
/* B17E58 800A0CB8 AC4B0000 */  sw    $t3, ($v0)
/* B17E5C 800A0CBC 8FB90068 */  lw    $t9, 0x68($sp)
/* B17E60 800A0CC0 24A5FFD0 */  addiu $a1, %lo(D_8013FFD0) # addiu $a1, $a1, -0x30
/* B17E64 800A0CC4 24060371 */  li    $a2, 881
/* B17E68 800A0CC8 8F240000 */  lw    $a0, ($t9)
/* B17E6C 800A0CCC 0C0346A2 */  jal   Matrix_NewMtx
/* B17E70 800A0CD0 AFA20030 */   sw    $v0, 0x30($sp)
/* B17E74 800A0CD4 8FA30030 */  lw    $v1, 0x30($sp)
/* B17E78 800A0CD8 3C0EDE00 */  lui   $t6, 0xde00
/* B17E7C 800A0CDC AC620004 */  sw    $v0, 4($v1)
/* B17E80 800A0CE0 8FAC0044 */  lw    $t4, 0x44($sp)
/* B17E84 800A0CE4 8D8202C0 */  lw    $v0, 0x2c0($t4)
/* B17E88 800A0CE8 244D0008 */  addiu $t5, $v0, 8
/* B17E8C 800A0CEC AD8D02C0 */  sw    $t5, 0x2c0($t4)
/* B17E90 800A0CF0 AC4E0000 */  sw    $t6, ($v0)
/* B17E94 800A0CF4 8FB8005C */  lw    $t8, 0x5c($sp)
/* B17E98 800A0CF8 AC580004 */  sw    $t8, 4($v0)
.L800A0CFC:
/* B17E9C 800A0CFC 8FA20078 */  lw    $v0, 0x78($sp)
.L800A0D00:
/* B17EA0 800A0D00 8FA40068 */  lw    $a0, 0x68($sp)
/* B17EA4 800A0D04 24050001 */  li    $a1, 1
/* B17EA8 800A0D08 10400006 */  beqz  $v0, .L800A0D24
/* B17EAC 800A0D0C 27A6005C */   addiu $a2, $sp, 0x5c
/* B17EB0 800A0D10 8FA8007C */  lw    $t0, 0x7c($sp)
/* B17EB4 800A0D14 27A70048 */  addiu $a3, $sp, 0x48
/* B17EB8 800A0D18 0040F809 */  jalr  $v0
/* B17EBC 800A0D1C AFA80010 */  sw    $t0, 0x10($sp)
/* B17EC0 800A0D20 8FA20078 */  lw    $v0, 0x78($sp)
.L800A0D24:
/* B17EC4 800A0D24 8FAF0064 */  lw    $t7, 0x64($sp)
/* B17EC8 800A0D28 240100FF */  li    $at, 255
/* B17ECC 800A0D2C 8FA40068 */  lw    $a0, 0x68($sp)
/* B17ED0 800A0D30 91E50006 */  lbu   $a1, 6($t7)
/* B17ED4 800A0D34 8FA6006C */  lw    $a2, 0x6c($sp)
/* B17ED8 800A0D38 8FA70070 */  lw    $a3, 0x70($sp)
/* B17EDC 800A0D3C 10A10008 */  beq   $a1, $at, .L800A0D60
/* B17EE0 800A0D40 8FA90074 */   lw    $t1, 0x74($sp)
/* B17EE4 800A0D44 8FAA007C */  lw    $t2, 0x7c($sp)
/* B17EE8 800A0D48 8FAB0080 */  lw    $t3, 0x80($sp)
/* B17EEC 800A0D4C AFA90010 */  sw    $t1, 0x10($sp)
/* B17EF0 800A0D50 AFA20014 */  sw    $v0, 0x14($sp)
/* B17EF4 800A0D54 AFAA0018 */  sw    $t2, 0x18($sp)
/* B17EF8 800A0D58 0C028228 */  jal   func_800A08A0
/* B17EFC 800A0D5C AFAB001C */   sw    $t3, 0x1c($sp)
.L800A0D60:
/* B17F00 800A0D60 0C034221 */  jal   Matrix_Pull
/* B17F04 800A0D64 00000000 */   nop
/* B17F08 800A0D68 8FB90068 */  lw    $t9, 0x68($sp)
/* B17F0C 800A0D6C 3C068014 */  lui   $a2, %hi(D_8013FFE4) # $a2, 0x8014
/* B17F10 800A0D70 24C6FFE4 */  addiu $a2, %lo(D_8013FFE4) # addiu $a2, $a2, -0x1c
/* B17F14 800A0D74 27A40034 */  addiu $a0, $sp, 0x34
/* B17F18 800A0D78 2407037E */  li    $a3, 894
/* B17F1C 800A0D7C 0C031AD5 */  jal   func_800C6B54
/* B17F20 800A0D80 8F250000 */   lw    $a1, ($t9)
/* B17F24 800A0D84 8FBF0024 */  lw    $ra, 0x24($sp)
.L800A0D88:
/* B17F28 800A0D88 27BD0068 */  addiu $sp, $sp, 0x68
/* B17F2C 800A0D8C 03E00008 */  jr    $ra
/* B17F30 800A0D90 00000000 */   nop

