glabel func_800F3ED4
/* B6B074 800F3ED4 3C013F80 */  lui   $at, 0x3f80
/* B6B078 800F3ED8 3C048017 */  lui   $a0, %hi(D_8016B8B8)
/* B6B07C 800F3EDC 44810000 */  mtc1  $at, $f0
/* B6B080 800F3EE0 2484B8B8 */  addiu $a0, %lo(D_8016B8B8)
/* B6B084 800F3EE4 00001025 */  move  $v0, $zero
/* B6B088 800F3EE8 240600FF */  li    $a2, 255
/* B6B08C 800F3EEC 24050040 */  li    $a1, 64
.L800F3EF0:
/* B6B090 800F3EF0 00027100 */  sll   $t6, $v0, 4
/* B6B094 800F3EF4 008E1821 */  addu  $v1, $a0, $t6
/* B6B098 800F3EF8 24420001 */  addiu $v0, $v0, 1
/* B6B09C 800F3EFC 304200FF */  andi  $v0, $v0, 0xff
/* B6B0A0 800F3F00 28410010 */  slti  $at, $v0, 0x10
/* B6B0A4 800F3F04 E4600000 */  swc1  $f0, ($v1)
/* B6B0A8 800F3F08 E4600004 */  swc1  $f0, 4($v1)
/* B6B0AC 800F3F0C A0600008 */  sb    $zero, 8($v1)
/* B6B0B0 800F3F10 A0650009 */  sb    $a1, 9($v1)
/* B6B0B4 800F3F14 A060000A */  sb    $zero, 0xa($v1)
/* B6B0B8 800F3F18 A066000B */  sb    $a2, 0xb($v1)
/* B6B0BC 800F3F1C 1420FFF4 */  bnez  $at, .L800F3EF0
/* B6B0C0 800F3F20 A066000C */   sb    $a2, 0xc($v1)
/* B6B0C4 800F3F24 A08000DC */  sb    $zero, 0xdc($a0)
/* B6B0C8 800F3F28 3C018013 */  lui   $at, %hi(D_8013061C) # $at, 0x8013
/* B6B0CC 800F3F2C A020061C */  sb    $zero, %lo(D_8013061C)($at)
/* B6B0D0 800F3F30 3C018013 */  lui   $at, %hi(D_80130618)
/* B6B0D4 800F3F34 03E00008 */  jr    $ra
/* B6B0D8 800F3F38 A0200618 */   sb    $zero, %lo(D_80130618)($at)

