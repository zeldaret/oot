glabel func_80AEB364
/* 00754 80AEB364 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00758 80AEB368 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 0075C 80AEB36C AFA40018 */  sw      $a0, 0x0018($sp)
/* 00760 80AEB370 AFA5001C */  sw      $a1, 0x001C($sp)
/* 00764 80AEB374 908E0181 */  lbu     $t6, 0x0181($a0)           ## 00000181
/* 00768 80AEB378 00802825 */  or      $a1, $a0, $zero            ## $a1 = 00000000
/* 0076C 80AEB37C 24A6014C */  addiu   $a2, $a1, 0x014C           ## $a2 = 0000014C
/* 00770 80AEB380 35CF0001 */  ori     $t7, $t6, 0x0001           ## $t7 = 00000001
/* 00774 80AEB384 A08F0181 */  sb      $t7, 0x0181($a0)           ## 00000181
/* 00778 80AEB388 8FA4001C */  lw      $a0, 0x001C($sp)
/* 0077C 80AEB38C 0C028D88 */  jal     SkelAnime_LoadAnimationType5
/* 00780 80AEB390 3C073F80 */  lui     $a3, 0x3F80                ## $a3 = 3F800000
/* 00784 80AEB394 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 00788 80AEB398 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0078C 80AEB39C 03E00008 */  jr      $ra
/* 00790 80AEB3A0 00000000 */  nop
