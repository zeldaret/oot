glabel __osPfsGetOneChannelData
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
