.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

.align 4

glabel func_80101910
/* B78AB0 80101910 27BDFFD0 */  addiu $sp, $sp, -0x30
/* B78AB4 80101914 AFA40030 */  sw    $a0, 0x30($sp)
/* B78AB8 80101918 AFBF0014 */  sw    $ra, 0x14($sp)
/* B78ABC 8010191C AFA50034 */  sw    $a1, 0x34($sp)
/* B78AC0 80101920 240E00FA */  li    $t6, 250
/* B78AC4 80101924 3C018013 */  lui   $at, %hi(D_80134CF4) # $at, 0x8013
/* B78AC8 80101928 00A02025 */  move  $a0, $a1
/* B78ACC 8010192C A02E4CF4 */  sb    $t6, %lo(D_80134CF4)($at)
/* B78AD0 80101930 0C040678 */  jal   func_801019E0
/* B78AD4 80101934 00002825 */   move  $a1, $zero
/* B78AD8 80101938 3C058017 */  lui   $a1, %hi(pifMempakBuf) # $a1, 0x8017
/* B78ADC 8010193C 24A55960 */  addiu $a1, %lo(pifMempakBuf) # addiu $a1, $a1, 0x5960
/* B78AE0 80101940 0C0404FC */  jal   __osSiRawStartDma /*(s32 dir, void *addr)*/
/* B78AE4 80101944 24040001 */   li    $a0, 1
/* B78AE8 80101948 8FA40030 */  lw    $a0, 0x30($sp)
/* B78AEC 8010194C 27A50028 */  addiu $a1, $sp, 0x28
/* B78AF0 80101950 0C000CA0 */  jal   osRecvMesg
/* B78AF4 80101954 24060001 */   li    $a2, 1
/* B78AF8 80101958 3C058017 */  lui   $a1, %hi(pifMempakBuf) # $a1, 0x8017
/* B78AFC 8010195C 24A55960 */  addiu $a1, %lo(pifMempakBuf) # addiu $a1, $a1, 0x5960
/* B78B00 80101960 0C0404FC */  jal   __osSiRawStartDma /*(s32 dir, void *addr)*/
/* B78B04 80101964 00002025 */   move  $a0, $zero
/* B78B08 80101968 AFA2002C */  sw    $v0, 0x2c($sp)
/* B78B0C 8010196C 8FA40030 */  lw    $a0, 0x30($sp)
/* B78B10 80101970 27A50028 */  addiu $a1, $sp, 0x28
/* B78B14 80101974 0C000CA0 */  jal   osRecvMesg
/* B78B18 80101978 24060001 */   li    $a2, 1
/* B78B1C 8010197C 8FA40034 */  lw    $a0, 0x34($sp)
/* B78B20 80101980 0C0406A9 */  jal   func_80101AA4
/* B78B24 80101984 27A50024 */   addiu $a1, $sp, 0x24
/* B78B28 80101988 93A20026 */  lbu   $v0, 0x26($sp)
/* B78B2C 8010198C 93B80027 */  lbu   $t8, 0x27($sp)
/* B78B30 80101990 8FBF0014 */  lw    $ra, 0x14($sp)
/* B78B34 80101994 30430001 */  andi  $v1, $v0, 1
/* B78B38 80101998 10600005 */  beqz  $v1, .L801019B0
/* B78B3C 8010199C 304F0002 */   andi  $t7, $v0, 2
/* B78B40 801019A0 11E00003 */  beqz  $t7, .L801019B0
/* B78B44 801019A4 00000000 */   nop   
/* B78B48 801019A8 1000000B */  b     .L801019D8
/* B78B4C 801019AC 24020002 */   li    $v0, 2
.L801019B0:
/* B78B50 801019B0 17000003 */  bnez  $t8, .L801019C0
/* B78B54 801019B4 00000000 */   nop   
/* B78B58 801019B8 14600003 */  bnez  $v1, .L801019C8
/* B78B5C 801019BC 30590004 */   andi  $t9, $v0, 4
.L801019C0:
/* B78B60 801019C0 10000005 */  b     .L801019D8
/* B78B64 801019C4 24020001 */   li    $v0, 1
.L801019C8:
/* B78B68 801019C8 13200003 */  beqz  $t9, .L801019D8
/* B78B6C 801019CC 8FA2002C */   lw    $v0, 0x2c($sp)
/* B78B70 801019D0 10000001 */  b     .L801019D8
/* B78B74 801019D4 24020004 */   li    $v0, 4
.L801019D8:
/* B78B78 801019D8 03E00008 */  jr    $ra
/* B78B7C 801019DC 27BD0030 */   addiu $sp, $sp, 0x30

glabel func_801019E0
/* B78B80 801019E0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B78B84 801019E4 3C068017 */  lui   $a2, %hi(pifMempakBuf)
/* B78B88 801019E8 240700FE */  li    $a3, 254
/* B78B8C 801019EC 3C018017 */  lui   $at, %hi(_osCont_lastPollType) # $at, 0x8017
/* B78B90 801019F0 24C25960 */  addiu $v0, $a2, %lo(pifMempakBuf)
/* B78B94 801019F4 AFA5001C */  sw    $a1, 0x1c($sp)
/* B78B98 801019F8 A0275810 */  sb    $a3, %lo(_osCont_lastPollType)($at)
/* B78B9C 801019FC 240F0001 */  li    $t7, 1
/* B78BA0 80101A00 AC4F003C */  sw    $t7, 0x3c($v0)
/* B78BA4 80101A04 24180001 */  li    $t8, 1
/* B78BA8 80101A08 24190003 */  li    $t9, 3
/* B78BAC 80101A0C 240800FF */  li    $t0, 255
/* B78BB0 80101A10 240900FF */  li    $t1, 255
/* B78BB4 80101A14 240A00FF */  li    $t2, 255
/* B78BB8 80101A18 A3B8000C */  sb    $t8, 0xc($sp)
/* B78BBC 80101A1C A3B9000D */  sb    $t9, 0xd($sp)
/* B78BC0 80101A20 A3A5000E */  sb    $a1, 0xe($sp)
/* B78BC4 80101A24 A3A8000F */  sb    $t0, 0xf($sp)
/* B78BC8 80101A28 A3A90010 */  sb    $t1, 0x10($sp)
/* B78BCC 80101A2C A3AA0011 */  sb    $t2, 0x11($sp)
/* B78BD0 80101A30 18800010 */  blez  $a0, .L80101A74
/* B78BD4 80101A34 00001825 */   move  $v1, $zero
/* B78BD8 80101A38 30860003 */  andi  $a2, $a0, 3
/* B78BDC 80101A3C 10C00006 */  beqz  $a2, .L80101A58
/* B78BE0 80101A40 00C02825 */   move  $a1, $a2
.L80101A44:
/* B78BE4 80101A44 24630001 */  addiu $v1, $v1, 1
/* B78BE8 80101A48 A0400000 */  sb    $zero, ($v0)
/* B78BEC 80101A4C 14A3FFFD */  bne   $a1, $v1, .L80101A44
/* B78BF0 80101A50 24420001 */   addiu $v0, $v0, 1
/* B78BF4 80101A54 10640007 */  beq   $v1, $a0, .L80101A74
.L80101A58:
/* B78BF8 80101A58 24630004 */   addiu $v1, $v1, 4
/* B78BFC 80101A5C A0400001 */  sb    $zero, 1($v0)
/* B78C00 80101A60 A0400002 */  sb    $zero, 2($v0)
/* B78C04 80101A64 A0400003 */  sb    $zero, 3($v0)
/* B78C08 80101A68 24420004 */  addiu $v0, $v0, 4
/* B78C0C 80101A6C 1464FFFA */  bne   $v1, $a0, .L80101A58
/* B78C10 80101A70 A040FFFC */   sb    $zero, -4($v0)
.L80101A74:
/* B78C14 80101A74 27AB000C */  addiu $t3, $sp, 0xc
/* B78C18 80101A78 8D610000 */  lw    $at, ($t3)
/* B78C1C 80101A7C 24420006 */  addiu $v0, $v0, 6
/* B78C20 80101A80 A841FFFA */  swl   $at, -6($v0)
/* B78C24 80101A84 B841FFFD */  swr   $at, -3($v0)
/* B78C28 80101A88 91610004 */  lbu   $at, 4($t3)
/* B78C2C 80101A8C A041FFFE */  sb    $at, -2($v0)
/* B78C30 80101A90 916D0005 */  lbu   $t5, 5($t3)
/* B78C34 80101A94 A0470000 */  sb    $a3, ($v0)
/* B78C38 80101A98 27BD0018 */  addiu $sp, $sp, 0x18
/* B78C3C 80101A9C 03E00008 */  jr    $ra
/* B78C40 80101AA0 A04DFFFF */   sb    $t5, -1($v0)

glabel func_80101AA4
/* B78C44 80101AA4 3C028017 */  lui   $v0, %hi(pifMempakBuf) # $v0, 0x8017
/* B78C48 80101AA8 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B78C4C 80101AAC 24425960 */  addiu $v0, %lo(pifMempakBuf) # addiu $v0, $v0, 0x5960
/* B78C50 80101AB0 1880000B */  blez  $a0, .L80101AE0
/* B78C54 80101AB4 00001825 */   move  $v1, $zero
/* B78C58 80101AB8 30870003 */  andi  $a3, $a0, 3
/* B78C5C 80101ABC 10E00005 */  beqz  $a3, .L80101AD4
/* B78C60 80101AC0 00E03025 */   move  $a2, $a3
.L80101AC4:
/* B78C64 80101AC4 24630001 */  addiu $v1, $v1, 1
/* B78C68 80101AC8 14C3FFFE */  bne   $a2, $v1, .L80101AC4
/* B78C6C 80101ACC 24420001 */   addiu $v0, $v0, 1
/* B78C70 80101AD0 10640003 */  beq   $v1, $a0, .L80101AE0
.L80101AD4:
/* B78C74 80101AD4 24630004 */   addiu $v1, $v1, 4
/* B78C78 80101AD8 1464FFFE */  bne   $v1, $a0, .L80101AD4
/* B78C7C 80101ADC 24420004 */   addiu $v0, $v0, 4
.L80101AE0:
/* B78C80 80101AE0 88410000 */  lwl   $at, ($v0)
/* B78C84 80101AE4 98410003 */  lwr   $at, 3($v0)
/* B78C88 80101AE8 27AE000C */  addiu $t6, $sp, 0xc
/* B78C8C 80101AEC ADC10000 */  sw    $at, ($t6)
/* B78C90 80101AF0 90410004 */  lbu   $at, 4($v0)
/* B78C94 80101AF4 A1C10004 */  sb    $at, 4($t6)
/* B78C98 80101AF8 90580005 */  lbu   $t8, 5($v0)
/* B78C9C 80101AFC A1D80005 */  sb    $t8, 5($t6)
/* B78CA0 80101B00 93B9000D */  lbu   $t9, 0xd($sp)
/* B78CA4 80101B04 332800C0 */  andi  $t0, $t9, 0xc0
/* B78CA8 80101B08 00084903 */  sra   $t1, $t0, 4
/* B78CAC 80101B0C 312A00FF */  andi  $t2, $t1, 0xff
/* B78CB0 80101B10 15400008 */  bnez  $t2, .L80101B34
/* B78CB4 80101B14 A0A90003 */   sb    $t1, 3($a1)
/* B78CB8 80101B18 93AB0010 */  lbu   $t3, 0x10($sp)
/* B78CBC 80101B1C 93AD000F */  lbu   $t5, 0xf($sp)
/* B78CC0 80101B20 000B6200 */  sll   $t4, $t3, 8
/* B78CC4 80101B24 018D7825 */  or    $t7, $t4, $t5
/* B78CC8 80101B28 A4AF0000 */  sh    $t7, ($a1)
/* B78CCC 80101B2C 93AE0011 */  lbu   $t6, 0x11($sp)
/* B78CD0 80101B30 A0AE0002 */  sb    $t6, 2($a1)
.L80101B34:
/* B78CD4 80101B34 03E00008 */  jr    $ra
/* B78CD8 80101B38 27BD0018 */   addiu $sp, $sp, 0x18
