glabel func_800DB480
/* B52620 800DB480 3C0E0A00 */  lui   $t6, (0x0A000C80 >> 16) # lui $t6, 0xa00
/* B52624 800DB484 3C0F0720 */  lui   $t7, (0x072001A0 >> 16) # lui $t7, 0x720
/* B52628 800DB488 35EF01A0 */  ori   $t7, (0x072001A0 & 0xFFFF) # ori $t7, $t7, 0x1a0
/* B5262C 800DB48C 35CE0C80 */  ori   $t6, (0x0A000C80 & 0xFFFF) # ori $t6, $t6, 0xc80
/* B52630 800DB490 AC8E0000 */  sw    $t6, ($a0)
/* B52634 800DB494 AC8F0004 */  sw    $t7, 4($a0)
/* B52638 800DB498 84B80010 */  lh    $t8, 0x10($a1)
/* B5263C 800DB49C 3C080C1A */  lui   $t0, 0xc1a
/* B52640 800DB4A0 24860008 */  addiu $a2, $a0, 8
/* B52644 800DB4A4 3C0A0E20 */  lui   $t2, (0x0E200C80 >> 16) # lui $t2, 0xe20
/* B52648 800DB4A8 3319FFFF */  andi  $t9, $t8, 0xffff
/* B5264C 800DB4AC 03284825 */  or    $t1, $t9, $t0
/* B52650 800DB4B0 354A0C80 */  ori   $t2, (0x0E200C80 & 0xFFFF) # ori $t2, $t2, 0xc80
/* B52654 800DB4B4 ACCA0004 */  sw    $t2, 4($a2)
/* B52658 800DB4B8 ACC90000 */  sw    $t1, ($a2)
/* B5265C 800DB4BC 84AB0012 */  lh    $t3, 0x12($a1)
/* B52660 800DB4C0 24C70008 */  addiu $a3, $a2, 8
/* B52664 800DB4C4 3C0E0720 */  lui   $t6, (0x07200E20 >> 16) # lui $t6, 0x720
/* B52668 800DB4C8 316CFFFF */  andi  $t4, $t3, 0xffff
/* B5266C 800DB4CC 01886825 */  or    $t5, $t4, $t0
/* B52670 800DB4D0 35CE0E20 */  ori   $t6, (0x07200E20 & 0xFFFF) # ori $t6, $t6, 0xe20
/* B52674 800DB4D4 ACEE0004 */  sw    $t6, 4($a3)
/* B52678 800DB4D8 ACED0000 */  sw    $t5, ($a3)
/* B5267C 800DB4DC 03E00008 */  jr    $ra
/* B52680 800DB4E0 24E20008 */   addiu $v0, $a3, 8

