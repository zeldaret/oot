.rdata
glabel D_801401BC
    .asciz "\x1b[31m"
    .balign 4

glabel D_801401C4
    .asciz "Si2_draw_SV():skelがNULLです。\n"
    # EUC-JP: がNULLです。| Is null
    .balign 4

glabel D_801401E4
    .asciz "\x1b[m"
    .balign 4

glabel D_801401E8
    .asciz "../z_skelanime.c"
    .balign 4

glabel D_801401FC
    .asciz "../z_skelanime.c"
    .balign 4

glabel D_80140210
    .asciz "../z_skelanime.c"
    .balign 4

glabel D_80140224
    .asciz "../z_skelanime.c"
    .balign 4

.text
glabel SkelAnime_DrawSV
/* B18C68 800A1AC8 27BDFF88 */  addiu $sp, $sp, -0x78
/* B18C6C 800A1ACC AFBF0024 */  sw    $ra, 0x24($sp)
/* B18C70 800A1AD0 AFA40078 */  sw    $a0, 0x78($sp)
/* B18C74 800A1AD4 AFA5007C */  sw    $a1, 0x7c($sp)
/* B18C78 800A1AD8 AFA60080 */  sw    $a2, 0x80($sp)
/* B18C7C 800A1ADC 8C840000 */  lw    $a0, ($a0)
/* B18C80 800A1AE0 0C031A73 */  jal   Graph_Alloc
/* B18C84 800A1AE4 00072980 */   sll   $a1, $a3, 6
/* B18C88 800A1AE8 8FAF007C */  lw    $t7, 0x7c($sp)
/* B18C8C 800A1AEC AFA20050 */  sw    $v0, 0x50($sp)
/* B18C90 800A1AF0 8FB80078 */  lw    $t8, 0x78($sp)
/* B18C94 800A1AF4 15E0000C */  bnez  $t7, .L800A1B28
/* B18C98 800A1AF8 27A4003C */   addiu $a0, $sp, 0x3c
/* B18C9C 800A1AFC 3C048014 */  lui   $a0, %hi(D_801401BC) # $a0, 0x8014
/* B18CA0 800A1B00 0C00084C */  jal   osSyncPrintf
/* B18CA4 800A1B04 248401BC */   addiu $a0, %lo(D_801401BC) # addiu $a0, $a0, 0x1bc
/* B18CA8 800A1B08 3C048014 */  lui   $a0, %hi(D_801401C4) # $a0, 0x8014
/* B18CAC 800A1B0C 0C00084C */  jal   osSyncPrintf
/* B18CB0 800A1B10 248401C4 */   addiu $a0, %lo(D_801401C4) # addiu $a0, $a0, 0x1c4
/* B18CB4 800A1B14 3C048014 */  lui   $a0, %hi(D_801401E4) # $a0, 0x8014
/* B18CB8 800A1B18 0C00084C */  jal   osSyncPrintf
/* B18CBC 800A1B1C 248401E4 */   addiu $a0, %lo(D_801401E4) # addiu $a0, $a0, 0x1e4
/* B18CC0 800A1B20 10000097 */  b     .L800A1D80
/* B18CC4 800A1B24 8FBF0024 */   lw    $ra, 0x24($sp)
.L800A1B28:
/* B18CC8 800A1B28 8F050000 */  lw    $a1, ($t8)
/* B18CCC 800A1B2C 3C068014 */  lui   $a2, %hi(D_801401E8) # $a2, 0x8014
/* B18CD0 800A1B30 24C601E8 */  addiu $a2, %lo(D_801401E8) # addiu $a2, $a2, 0x1e8
/* B18CD4 800A1B34 2407050E */  li    $a3, 1294
/* B18CD8 800A1B38 0C031AB1 */  jal   func_800C6AC4
/* B18CDC 800A1B3C AFA5004C */   sw    $a1, 0x4c($sp)
/* B18CE0 800A1B40 8FA8004C */  lw    $t0, 0x4c($sp)
/* B18CE4 800A1B44 3C09DB06 */  lui   $t1, (0xDB060034 >> 16) # lui $t1, 0xdb06
/* B18CE8 800A1B48 35290034 */  ori   $t1, (0xDB060034 & 0xFFFF) # ori $t1, $t1, 0x34
/* B18CEC 800A1B4C 8D0202C0 */  lw    $v0, 0x2c0($t0)
/* B18CF0 800A1B50 24590008 */  addiu $t9, $v0, 8
/* B18CF4 800A1B54 AD1902C0 */  sw    $t9, 0x2c0($t0)
/* B18CF8 800A1B58 AC490000 */  sw    $t1, ($v0)
/* B18CFC 800A1B5C 8FAA0050 */  lw    $t2, 0x50($sp)
/* B18D00 800A1B60 AC4A0004 */  sw    $t2, 4($v0)
/* B18D04 800A1B64 0C034213 */  jal   Matrix_Push
/* B18D08 800A1B68 AFA8004C */   sw    $t0, 0x4c($sp)
/* B18D0C 800A1B6C 8FAB007C */  lw    $t3, 0x7c($sp)
/* B18D10 800A1B70 3C188016 */  lui   $t8, %hi(gSegments)
/* B18D14 800A1B74 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* B18D18 800A1B78 8D620000 */  lw    $v0, ($t3)
/* B18D1C 800A1B7C 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* B18D20 800A1B80 8FA30080 */  lw    $v1, 0x80($sp)
/* B18D24 800A1B84 00026900 */  sll   $t5, $v0, 4
/* B18D28 800A1B88 000D7702 */  srl   $t6, $t5, 0x1c
/* B18D2C 800A1B8C 000E7880 */  sll   $t7, $t6, 2
/* B18D30 800A1B90 030FC021 */  addu  $t8, $t8, $t7
/* B18D34 800A1B94 8F186FA8 */  lw    $t8, %lo(gSegments)($t8)
/* B18D38 800A1B98 00416024 */  and   $t4, $v0, $at
/* B18D3C 800A1B9C 3C018000 */  lui   $at, 0x8000
/* B18D40 800A1BA0 0198C821 */  addu  $t9, $t4, $t8
/* B18D44 800A1BA4 03214821 */  addu  $t1, $t9, $at
/* B18D48 800A1BA8 AFA90074 */  sw    $t1, 0x74($sp)
/* B18D4C 800A1BAC 846A0000 */  lh    $t2, ($v1)
/* B18D50 800A1BB0 8FA8004C */  lw    $t0, 0x4c($sp)
/* B18D54 800A1BB4 27AE0054 */  addiu $t6, $sp, 0x54
/* B18D58 800A1BB8 448A2000 */  mtc1  $t2, $f4
/* B18D5C 800A1BBC 27AA0054 */  addiu $t2, $sp, 0x54
/* B18D60 800A1BC0 24050001 */  li    $a1, 1
/* B18D64 800A1BC4 468021A0 */  cvt.s.w $f6, $f4
/* B18D68 800A1BC8 27A6006C */  addiu $a2, $sp, 0x6c
/* B18D6C 800A1BCC 27A7005C */  addiu $a3, $sp, 0x5c
/* B18D70 800A1BD0 E7A6005C */  swc1  $f6, 0x5c($sp)
/* B18D74 800A1BD4 846B0002 */  lh    $t3, 2($v1)
/* B18D78 800A1BD8 448B4000 */  mtc1  $t3, $f8
/* B18D7C 800A1BDC 00000000 */  nop
/* B18D80 800A1BE0 468042A0 */  cvt.s.w $f10, $f8
/* B18D84 800A1BE4 E7AA0060 */  swc1  $f10, 0x60($sp)
/* B18D88 800A1BE8 846D0004 */  lh    $t5, 4($v1)
/* B18D8C 800A1BEC 448D8000 */  mtc1  $t5, $f16
/* B18D90 800A1BF0 00000000 */  nop
/* B18D94 800A1BF4 468084A0 */  cvt.s.w $f18, $f16
/* B18D98 800A1BF8 E7B20064 */  swc1  $f18, 0x64($sp)
/* B18D9C 800A1BFC 886C0006 */  lwl   $t4, 6($v1)
/* B18DA0 800A1C00 986C0009 */  lwr   $t4, 9($v1)
/* B18DA4 800A1C04 ADCC0000 */  sw    $t4, ($t6)
/* B18DA8 800A1C08 946C000A */  lhu   $t4, 0xa($v1)
/* B18DAC 800A1C0C A5CC0004 */  sh    $t4, 4($t6)
/* B18DB0 800A1C10 8FB80074 */  lw    $t8, 0x74($sp)
/* B18DB4 800A1C14 8FA90088 */  lw    $t1, 0x88($sp)
/* B18DB8 800A1C18 8FA40078 */  lw    $a0, 0x78($sp)
/* B18DBC 800A1C1C 8F190008 */  lw    $t9, 8($t8)
/* B18DC0 800A1C20 AFB90068 */  sw    $t9, 0x68($sp)
/* B18DC4 800A1C24 11200008 */  beqz  $t1, .L800A1C48
/* B18DC8 800A1C28 AFB9006C */   sw    $t9, 0x6c($sp)
/* B18DCC 800A1C2C 8FAB0090 */  lw    $t3, 0x90($sp)
/* B18DD0 800A1C30 AFAA0010 */  sw    $t2, 0x10($sp)
/* B18DD4 800A1C34 AFA8004C */  sw    $t0, 0x4c($sp)
/* B18DD8 800A1C38 0120F809 */  jalr  $t1
/* B18DDC 800A1C3C AFAB0014 */  sw    $t3, 0x14($sp)
/* B18DE0 800A1C40 1440002C */  bnez  $v0, .L800A1CF4
/* B18DE4 800A1C44 8FA8004C */   lw    $t0, 0x4c($sp)
.L800A1C48:
/* B18DE8 800A1C48 27A4005C */  addiu $a0, $sp, 0x5c
/* B18DEC 800A1C4C 27A50054 */  addiu $a1, $sp, 0x54
/* B18DF0 800A1C50 0C0344D0 */  jal   Matrix_TranslateThenRotateZYX
/* B18DF4 800A1C54 AFA8004C */   sw    $t0, 0x4c($sp)
/* B18DF8 800A1C58 8FAD006C */  lw    $t5, 0x6c($sp)
/* B18DFC 800A1C5C 8FA8004C */  lw    $t0, 0x4c($sp)
/* B18E00 800A1C60 8FA40050 */  lw    $a0, 0x50($sp)
/* B18E04 800A1C64 11A00019 */  beqz  $t5, .L800A1CCC
/* B18E08 800A1C68 3C058014 */   lui   $a1, %hi(D_801401FC) # $a1, 0x8014
/* B18E0C 800A1C6C 24A501FC */  addiu $a1, %lo(D_801401FC) # addiu $a1, $a1, 0x1fc
/* B18E10 800A1C70 2406052F */  li    $a2, 1327
/* B18E14 800A1C74 0C034695 */  jal   Matrix_ToMtx
/* B18E18 800A1C78 AFA8004C */   sw    $t0, 0x4c($sp)
/* B18E1C 800A1C7C 8FA8004C */  lw    $t0, 0x4c($sp)
/* B18E20 800A1C80 3C0FDA38 */  lui   $t7, (0xDA380003 >> 16) # lui $t7, 0xda38
/* B18E24 800A1C84 35EF0003 */  ori   $t7, (0xDA380003 & 0xFFFF) # ori $t7, $t7, 3
/* B18E28 800A1C88 8D0202C0 */  lw    $v0, 0x2c0($t0)
/* B18E2C 800A1C8C 3C19DE00 */  lui   $t9, 0xde00
/* B18E30 800A1C90 244E0008 */  addiu $t6, $v0, 8
/* B18E34 800A1C94 AD0E02C0 */  sw    $t6, 0x2c0($t0)
/* B18E38 800A1C98 AC4F0000 */  sw    $t7, ($v0)
/* B18E3C 800A1C9C 8FAC0050 */  lw    $t4, 0x50($sp)
/* B18E40 800A1CA0 AC4C0004 */  sw    $t4, 4($v0)
/* B18E44 800A1CA4 8D0202C0 */  lw    $v0, 0x2c0($t0)
/* B18E48 800A1CA8 24580008 */  addiu $t8, $v0, 8
/* B18E4C 800A1CAC AD1802C0 */  sw    $t8, 0x2c0($t0)
/* B18E50 800A1CB0 AC590000 */  sw    $t9, ($v0)
/* B18E54 800A1CB4 8FAA006C */  lw    $t2, 0x6c($sp)
/* B18E58 800A1CB8 AC4A0004 */  sw    $t2, 4($v0)
/* B18E5C 800A1CBC 8FAB0050 */  lw    $t3, 0x50($sp)
/* B18E60 800A1CC0 25690040 */  addiu $t1, $t3, 0x40
/* B18E64 800A1CC4 1000000B */  b     .L800A1CF4
/* B18E68 800A1CC8 AFA90050 */   sw    $t1, 0x50($sp)
.L800A1CCC:
/* B18E6C 800A1CCC 8FAD0068 */  lw    $t5, 0x68($sp)
/* B18E70 800A1CD0 3C058014 */  lui   $a1, %hi(D_80140210) # $a1, 0x8014
/* B18E74 800A1CD4 24A50210 */  addiu $a1, %lo(D_80140210) # addiu $a1, $a1, 0x210
/* B18E78 800A1CD8 11A00006 */  beqz  $t5, .L800A1CF4
/* B18E7C 800A1CDC 8FA40050 */   lw    $a0, 0x50($sp)
/* B18E80 800A1CE0 0C034695 */  jal   Matrix_ToMtx
/* B18E84 800A1CE4 24060536 */   li    $a2, 1334
/* B18E88 800A1CE8 8FAE0050 */  lw    $t6, 0x50($sp)
/* B18E8C 800A1CEC 25CF0040 */  addiu $t7, $t6, 0x40
/* B18E90 800A1CF0 AFAF0050 */  sw    $t7, 0x50($sp)
.L800A1CF4:
/* B18E94 800A1CF4 8FA2008C */  lw    $v0, 0x8c($sp)
/* B18E98 800A1CF8 8FA40078 */  lw    $a0, 0x78($sp)
/* B18E9C 800A1CFC 24050001 */  li    $a1, 1
/* B18EA0 800A1D00 10400006 */  beqz  $v0, .L800A1D1C
/* B18EA4 800A1D04 27A60068 */   addiu $a2, $sp, 0x68
/* B18EA8 800A1D08 8FAC0090 */  lw    $t4, 0x90($sp)
/* B18EAC 800A1D0C 27A70054 */  addiu $a3, $sp, 0x54
/* B18EB0 800A1D10 0040F809 */  jalr  $v0
/* B18EB4 800A1D14 AFAC0010 */  sw    $t4, 0x10($sp)
/* B18EB8 800A1D18 8FA2008C */  lw    $v0, 0x8c($sp)
.L800A1D1C:
/* B18EBC 800A1D1C 8FB80074 */  lw    $t8, 0x74($sp)
/* B18EC0 800A1D20 240100FF */  li    $at, 255
/* B18EC4 800A1D24 8FA40078 */  lw    $a0, 0x78($sp)
/* B18EC8 800A1D28 93050006 */  lbu   $a1, 6($t8)
/* B18ECC 800A1D2C 8FA6007C */  lw    $a2, 0x7c($sp)
/* B18ED0 800A1D30 8FA70080 */  lw    $a3, 0x80($sp)
/* B18ED4 800A1D34 10A10008 */  beq   $a1, $at, .L800A1D58
/* B18ED8 800A1D38 8FB90088 */   lw    $t9, 0x88($sp)
/* B18EDC 800A1D3C 8FAA0090 */  lw    $t2, 0x90($sp)
/* B18EE0 800A1D40 27AB0050 */  addiu $t3, $sp, 0x50
/* B18EE4 800A1D44 AFAB001C */  sw    $t3, 0x1c($sp)
/* B18EE8 800A1D48 AFB90010 */  sw    $t9, 0x10($sp)
/* B18EEC 800A1D4C AFA20014 */  sw    $v0, 0x14($sp)
/* B18EF0 800A1D50 0C028603 */  jal   SkelAnime_DrawLimbSV
/* B18EF4 800A1D54 AFAA0018 */   sw    $t2, 0x18($sp)
.L800A1D58:
/* B18EF8 800A1D58 0C034221 */  jal   Matrix_Pull
/* B18EFC 800A1D5C 00000000 */   nop
/* B18F00 800A1D60 8FA90078 */  lw    $t1, 0x78($sp)
/* B18F04 800A1D64 3C068014 */  lui   $a2, %hi(D_80140224) # $a2, 0x8014
/* B18F08 800A1D68 24C60224 */  addiu $a2, %lo(D_80140224) # addiu $a2, $a2, 0x224
/* B18F0C 800A1D6C 27A4003C */  addiu $a0, $sp, 0x3c
/* B18F10 800A1D70 24070543 */  li    $a3, 1347
/* B18F14 800A1D74 0C031AD5 */  jal   func_800C6B54
/* B18F18 800A1D78 8D250000 */   lw    $a1, ($t1)
/* B18F1C 800A1D7C 8FBF0024 */  lw    $ra, 0x24($sp)
.L800A1D80:
/* B18F20 800A1D80 27BD0078 */  addiu $sp, $sp, 0x78
/* B18F24 800A1D84 03E00008 */  jr    $ra
/* B18F28 800A1D88 00000000 */   nop

