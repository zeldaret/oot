.rdata
glabel D_80139C34
    .asciz "+=+=+=+ recive asking -> %s (%s)\n"
    .balign 4

.text
glabel func_8005A470
/* AD1610 8005A470 3C0E8016 */  lui   $t6, %hi(gGameInfo) # $t6, 0x8016
/* AD1614 8005A474 8DCEFA90 */  lw    $t6, %lo(gGameInfo)($t6)
/* AD1618 8005A478 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AD161C 8005A47C AFBF0014 */  sw    $ra, 0x14($sp)
/* AD1620 8005A480 AFA5001C */  sw    $a1, 0x1c($sp)
/* AD1624 8005A484 85CF03C6 */  lh    $t7, 0x3c6($t6)
/* AD1628 8005A488 00803825 */  move  $a3, $a0
/* AD162C 8005A48C 87B8001E */  lh    $t8, 0x1e($sp)
/* AD1630 8005A490 11E00013 */  beqz  $t7, .L8005A4E0
/* AD1634 8005A494 2402000C */   li    $v0, 12
/* AD1638 8005A498 03020019 */  multu $t8, $v0
/* AD163C 8005A49C 84E90142 */  lh    $t1, 0x142($a3)
/* AD1640 8005A4A0 3C088012 */  lui   $t0, %hi(D_8011A2A4) # $t0, 0x8012
/* AD1644 8005A4A4 3C0B8012 */  lui   $t3, %hi(D_80119F8C) # $t3, 0x8012
/* AD1648 8005A4A8 256B9F8C */  addiu $t3, %lo(D_80119F8C) # addiu $t3, $t3, -0x6074
/* AD164C 8005A4AC 2508A2A4 */  addiu $t0, %lo(D_8011A2A4) # addiu $t0, $t0, -0x5d5c
/* AD1650 8005A4B0 3C048014 */  lui   $a0, %hi(D_80139C34) # $a0, 0x8014
/* AD1654 8005A4B4 24849C34 */  addiu $a0, %lo(D_80139C34) # addiu $a0, $a0, -0x63cc
/* AD1658 8005A4B8 AFA70018 */  sw    $a3, 0x18($sp)
/* AD165C 8005A4BC 0000C812 */  mflo  $t9
/* AD1660 8005A4C0 03282821 */  addu  $a1, $t9, $t0
/* AD1664 8005A4C4 00000000 */  nop   
/* AD1668 8005A4C8 01220019 */  multu $t1, $v0
/* AD166C 8005A4CC 00005012 */  mflo  $t2
/* AD1670 8005A4D0 014B3021 */  addu  $a2, $t2, $t3
/* AD1674 8005A4D4 0C00084C */  jal   osSyncPrintf
/* AD1678 8005A4D8 00000000 */   nop   
/* AD167C 8005A4DC 8FA70018 */  lw    $a3, 0x18($sp)
.L8005A4E0:
/* AD1680 8005A4E0 84EC0142 */  lh    $t4, 0x142($a3)
/* AD1684 8005A4E4 3C0E8012 */  lui   $t6, %hi(D_8011D064)
/* AD1688 8005A4E8 87B8001E */  lh    $t8, 0x1e($sp)
/* AD168C 8005A4EC 000C68C0 */  sll   $t5, $t4, 3
/* AD1690 8005A4F0 01CD7021 */  addu  $t6, $t6, $t5
/* AD1694 8005A4F4 8DCED064 */  lw    $t6, %lo(D_8011D064)($t6)
/* AD1698 8005A4F8 3C013FFF */  lui   $at, (0x3FFFFFFF >> 16) # lui $at, 0x3fff
/* AD169C 8005A4FC 3421FFFF */  ori   $at, (0x3FFFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* AD16A0 8005A500 24190001 */  li    $t9, 1
/* AD16A4 8005A504 03194004 */  sllv  $t0, $t9, $t8
/* AD16A8 8005A508 01C17824 */  and   $t7, $t6, $at
/* AD16AC 8005A50C 01E84824 */  and   $t1, $t7, $t0
/* AD16B0 8005A510 15200003 */  bnez  $t1, .L8005A520
/* AD16B4 8005A514 8FBF0014 */   lw    $ra, 0x14($sp)
/* AD16B8 8005A518 10000009 */  b     .L8005A540
/* AD16BC 8005A51C 00001025 */   move  $v0, $zero
.L8005A520:
/* AD16C0 8005A520 87AA001E */  lh    $t2, 0x1e($sp)
/* AD16C4 8005A524 84EB0144 */  lh    $t3, 0x144($a3)
/* AD16C8 8005A528 87A2001E */  lh    $v0, 0x1e($sp)
/* AD16CC 8005A52C 3C018000 */  lui   $at, 0x8000
/* AD16D0 8005A530 154B0003 */  bne   $t2, $t3, .L8005A540
/* AD16D4 8005A534 00411025 */   or    $v0, $v0, $at
/* AD16D8 8005A538 10000001 */  b     .L8005A540
/* AD16DC 8005A53C 2402FFFF */   li    $v0, -1
.L8005A540:
/* AD16E0 8005A540 03E00008 */  jr    $ra
/* AD16E4 8005A544 27BD0018 */   addiu $sp, $sp, 0x18

