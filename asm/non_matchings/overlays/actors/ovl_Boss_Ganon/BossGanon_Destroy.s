glabel BossGanon_Destroy
/* 00EC8 808D7738 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00ECC 808D773C AFBF0014 */  sw      $ra, 0x0014($sp)
/* 00ED0 808D7740 AFA5001C */  sw      $a1, 0x001C($sp)
/* 00ED4 808D7744 8482001C */  lh      $v0, 0x001C($a0)           ## 0000001C
/* 00ED8 808D7748 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00EDC 808D774C 24C50610 */  addiu   $a1, $a2, 0x0610           ## $a1 = 00000610
/* 00EE0 808D7750 284100C8 */  slti    $at, $v0, 0x00C8
/* 00EE4 808D7754 14200004 */  bne     $at, $zero, .L808D7768
/* 00EE8 808D7758 8FA4001C */  lw      $a0, 0x001C($sp)
/* 00EEC 808D775C 28410104 */  slti    $at, $v0, 0x0104
/* 00EF0 808D7760 54200006 */  bnel    $at, $zero, .L808D777C
/* 00EF4 808D7764 28410064 */  slti    $at, $v0, 0x0064
.L808D7768:
/* 00EF8 808D7768 0C0170EB */  jal     ActorCollider_FreeCylinder

/* 00EFC 808D776C AFA60018 */  sw      $a2, 0x0018($sp)
/* 00F00 808D7770 8FA60018 */  lw      $a2, 0x0018($sp)
/* 00F04 808D7774 84C2001C */  lh      $v0, 0x001C($a2)           ## 0000001C
/* 00F08 808D7778 28410064 */  slti    $at, $v0, 0x0064
.L808D777C:
/* 00F0C 808D777C 10200003 */  beq     $at, $zero, .L808D778C
/* 00F10 808D7780 24C40150 */  addiu   $a0, $a2, 0x0150           ## $a0 = 00000150
/* 00F14 808D7784 0C0295BC */  jal     SkelAnime_Free
/* 00F18 808D7788 8FA5001C */  lw      $a1, 0x001C($sp)
.L808D778C:
/* 00F1C 808D778C 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 00F20 808D7790 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00F24 808D7794 03E00008 */  jr      $ra
/* 00F28 808D7798 00000000 */  nop
