glabel __osPfsRequestOneChannel
/* B78B80 801019E0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B78B84 801019E4 3C068017 */  lui   $a2, %hi(pifMempakBuf)
/* B78B88 801019E8 240700FE */  li    $a3, 254
/* B78B8C 801019EC 3C018017 */  lui   $at, %hi(__osContLastPoll) # $at, 0x8017
/* B78B90 801019F0 24C25960 */  addiu $v0, $a2, %lo(pifMempakBuf)
/* B78B94 801019F4 AFA5001C */  sw    $a1, 0x1c($sp)
/* B78B98 801019F8 A0275810 */  sb    $a3, %lo(__osContLastPoll)($at)
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

