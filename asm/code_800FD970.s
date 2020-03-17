.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

.align 4

glabel func_800FD970
/* B74B10 800FD970 3C038013 */  lui   $v1, %hi(D_801344C0) # $v1, 0x8013
/* B74B14 800FD974 246344C0 */  addiu $v1, %lo(D_801344C0) # addiu $v1, $v1, 0x44c0
/* B74B18 800FD978 8C6E0000 */  lw    $t6, ($v1)
/* B74B1C 800FD97C 3C010019 */  lui   $at, (0x0019660D >> 16) # lui $at, 0x19
/* B74B20 800FD980 3421660D */  ori   $at, (0x0019660D & 0xFFFF) # ori $at, $at, 0x660d
/* B74B24 800FD984 01C10019 */  multu $t6, $at
/* B74B28 800FD988 3C013C6E */  lui   $at, (0x3C6EF35F >> 16) # lui $at, 0x3c6e
/* B74B2C 800FD98C 3421F35F */  ori   $at, (0x3C6EF35F & 0xFFFF) # ori $at, $at, 0xf35f
/* B74B30 800FD990 00007812 */  mflo  $t7
/* B74B34 800FD994 01E11021 */  addu  $v0, $t7, $at
/* B74B38 800FD998 03E00008 */  jr    $ra
/* B74B3C 800FD99C AC620000 */   sw    $v0, ($v1)

glabel func_800FD9A0
/* B74B40 800FD9A0 3C018013 */  lui   $at, %hi(D_801344C0)
/* B74B44 800FD9A4 03E00008 */  jr    $ra
/* B74B48 800FD9A8 AC2444C0 */   sw    $a0, %lo(D_801344C0)($at)

glabel Math_Rand_ZeroOne
/* B74B4C 800FD9AC 3C028013 */  lui   $v0, %hi(D_801344C0) # $v0, 0x8013
/* B74B50 800FD9B0 244244C0 */  addiu $v0, %lo(D_801344C0) # addiu $v0, $v0, 0x44c0
/* B74B54 800FD9B4 8C4E0000 */  lw    $t6, ($v0)
/* B74B58 800FD9B8 3C010019 */  lui   $at, (0x0019660D >> 16) # lui $at, 0x19
/* B74B5C 800FD9BC 3421660D */  ori   $at, (0x0019660D & 0xFFFF) # ori $at, $at, 0x660d
/* B74B60 800FD9C0 01C10019 */  multu $t6, $at
/* B74B64 800FD9C4 3C013C6E */  lui   $at, (0x3C6EF35F >> 16) # lui $at, 0x3c6e
/* B74B68 800FD9C8 3421F35F */  ori   $at, (0x3C6EF35F & 0xFFFF) # ori $at, $at, 0xf35f
/* B74B6C 800FD9CC 3C038017 */  lui   $v1, %hi(D_80175640) # $v1, 0x8017
/* B74B70 800FD9D0 24635640 */  addiu $v1, %lo(D_80175640) # addiu $v1, $v1, 0x5640
/* B74B74 800FD9D4 00007812 */  mflo  $t7
/* B74B78 800FD9D8 01E1C021 */  addu  $t8, $t7, $at
/* B74B7C 800FD9DC 00184242 */  srl   $t0, $t8, 9
/* B74B80 800FD9E0 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* B74B84 800FD9E4 01014825 */  or    $t1, $t0, $at
/* B74B88 800FD9E8 AC690000 */  sw    $t1, ($v1)
/* B74B8C 800FD9EC C4640000 */  lwc1  $f4, ($v1)
/* B74B90 800FD9F0 44813000 */  mtc1  $at, $f6
/* B74B94 800FD9F4 AC580000 */  sw    $t8, ($v0)
/* B74B98 800FD9F8 03E00008 */  jr    $ra
/* B74B9C 800FD9FC 46062001 */   sub.s $f0, $f4, $f6

glabel func_800FDA00
/* B74BA0 800FDA00 3C028013 */  lui   $v0, %hi(D_801344C0) # $v0, 0x8013
/* B74BA4 800FDA04 244244C0 */  addiu $v0, %lo(D_801344C0) # addiu $v0, $v0, 0x44c0
/* B74BA8 800FDA08 8C4E0000 */  lw    $t6, ($v0)
/* B74BAC 800FDA0C 3C010019 */  lui   $at, (0x0019660D >> 16) # lui $at, 0x19
/* B74BB0 800FDA10 3421660D */  ori   $at, (0x0019660D & 0xFFFF) # ori $at, $at, 0x660d
/* B74BB4 800FDA14 01C10019 */  multu $t6, $at
/* B74BB8 800FDA18 3C013C6E */  lui   $at, (0x3C6EF35F >> 16) # lui $at, 0x3c6e
/* B74BBC 800FDA1C 3421F35F */  ori   $at, (0x3C6EF35F & 0xFFFF) # ori $at, $at, 0xf35f
/* B74BC0 800FDA20 3C038017 */  lui   $v1, %hi(D_80175640) # $v1, 0x8017
/* B74BC4 800FDA24 24635640 */  addiu $v1, %lo(D_80175640) # addiu $v1, $v1, 0x5640
/* B74BC8 800FDA28 00007812 */  mflo  $t7
/* B74BCC 800FDA2C 01E1C021 */  addu  $t8, $t7, $at
/* B74BD0 800FDA30 00184242 */  srl   $t0, $t8, 9
/* B74BD4 800FDA34 3C013F80 */  lui   $at, 0x3f80
/* B74BD8 800FDA38 01014825 */  or    $t1, $t0, $at
/* B74BDC 800FDA3C AC690000 */  sw    $t1, ($v1)
/* B74BE0 800FDA40 3C013FC0 */  li    $at, 0x3FC00000 # 0.000000
/* B74BE4 800FDA44 44813000 */  mtc1  $at, $f6
/* B74BE8 800FDA48 C4640000 */  lwc1  $f4, ($v1)
/* B74BEC 800FDA4C AC580000 */  sw    $t8, ($v0)
/* B74BF0 800FDA50 03E00008 */  jr    $ra
/* B74BF4 800FDA54 46062001 */   sub.s $f0, $f4, $f6

glabel func_800FDA58
/* B74BF8 800FDA58 03E00008 */  jr    $ra
/* B74BFC 800FDA5C AC850000 */   sw    $a1, ($a0)

glabel func_800FDA60
/* B74C00 800FDA60 8C830000 */  lw    $v1, ($a0)
/* B74C04 800FDA64 3C010019 */  lui   $at, (0x0019660D >> 16) # lui $at, 0x19
/* B74C08 800FDA68 3421660D */  ori   $at, (0x0019660D & 0xFFFF) # ori $at, $at, 0x660d
/* B74C0C 800FDA6C 00610019 */  multu $v1, $at
/* B74C10 800FDA70 3C013C6E */  lui   $at, (0x3C6EF35F >> 16) # lui $at, 0x3c6e
/* B74C14 800FDA74 3421F35F */  ori   $at, (0x3C6EF35F & 0xFFFF) # ori $at, $at, 0xf35f
/* B74C18 800FDA78 00001812 */  mflo  $v1
/* B74C1C 800FDA7C 00611021 */  addu  $v0, $v1, $at
/* B74C20 800FDA80 03E00008 */  jr    $ra
/* B74C24 800FDA84 AC820000 */   sw    $v0, ($a0)

glabel func_800FDA88
/* B74C28 800FDA88 8C820000 */  lw    $v0, ($a0)
/* B74C2C 800FDA8C 3C010019 */  lui   $at, (0x0019660D >> 16) # lui $at, 0x19
/* B74C30 800FDA90 3421660D */  ori   $at, (0x0019660D & 0xFFFF) # ori $at, $at, 0x660d
/* B74C34 800FDA94 00410019 */  multu $v0, $at
/* B74C38 800FDA98 3C013C6E */  lui   $at, (0x3C6EF35F >> 16) # lui $at, 0x3c6e
/* B74C3C 800FDA9C 3421F35F */  ori   $at, (0x3C6EF35F & 0xFFFF) # ori $at, $at, 0xf35f
/* B74C40 800FDAA0 3C038017 */  lui   $v1, %hi(D_80175640) # $v1, 0x8017
/* B74C44 800FDAA4 24635640 */  addiu $v1, %lo(D_80175640) # addiu $v1, $v1, 0x5640
/* B74C48 800FDAA8 00001012 */  mflo  $v0
/* B74C4C 800FDAAC 00411021 */  addu  $v0, $v0, $at
/* B74C50 800FDAB0 00027242 */  srl   $t6, $v0, 9
/* B74C54 800FDAB4 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* B74C58 800FDAB8 01C17825 */  or    $t7, $t6, $at
/* B74C5C 800FDABC AC820000 */  sw    $v0, ($a0)
/* B74C60 800FDAC0 AC6F0000 */  sw    $t7, ($v1)
/* B74C64 800FDAC4 C4640000 */  lwc1  $f4, ($v1)
/* B74C68 800FDAC8 44813000 */  mtc1  $at, $f6
/* B74C6C 800FDACC 03E00008 */  jr    $ra
/* B74C70 800FDAD0 46062001 */   sub.s $f0, $f4, $f6

glabel func_800FDAD4
/* B74C74 800FDAD4 8C820000 */  lw    $v0, ($a0)
/* B74C78 800FDAD8 3C010019 */  lui   $at, (0x0019660D >> 16) # lui $at, 0x19
/* B74C7C 800FDADC 3421660D */  ori   $at, (0x0019660D & 0xFFFF) # ori $at, $at, 0x660d
/* B74C80 800FDAE0 00410019 */  multu $v0, $at
/* B74C84 800FDAE4 3C013C6E */  lui   $at, (0x3C6EF35F >> 16) # lui $at, 0x3c6e
/* B74C88 800FDAE8 3421F35F */  ori   $at, (0x3C6EF35F & 0xFFFF) # ori $at, $at, 0xf35f
/* B74C8C 800FDAEC 3C038017 */  lui   $v1, %hi(D_80175640) # $v1, 0x8017
/* B74C90 800FDAF0 24635640 */  addiu $v1, %lo(D_80175640) # addiu $v1, $v1, 0x5640
/* B74C94 800FDAF4 00001012 */  mflo  $v0
/* B74C98 800FDAF8 00411021 */  addu  $v0, $v0, $at
/* B74C9C 800FDAFC 00027242 */  srl   $t6, $v0, 9
/* B74CA0 800FDB00 3C013F80 */  lui   $at, 0x3f80
/* B74CA4 800FDB04 01C17825 */  or    $t7, $t6, $at
/* B74CA8 800FDB08 AC820000 */  sw    $v0, ($a0)
/* B74CAC 800FDB0C AC6F0000 */  sw    $t7, ($v1)
/* B74CB0 800FDB10 3C013FC0 */  li    $at, 0x3FC00000 # 0.000000
/* B74CB4 800FDB14 44813000 */  mtc1  $at, $f6
/* B74CB8 800FDB18 C4640000 */  lwc1  $f4, ($v1)
/* B74CBC 800FDB1C 03E00008 */  jr    $ra
/* B74CC0 800FDB20 46062001 */   sub.s $f0, $f4, $f6
