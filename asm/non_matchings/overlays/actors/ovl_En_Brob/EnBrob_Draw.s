glabel EnBrob_Draw
/* 00ED0 809CB9E0 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00ED4 809CB9E4 AFB00028 */  sw      $s0, 0x0028($sp)
/* 00ED8 809CB9E8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00EDC 809CB9EC AFBF002C */  sw      $ra, 0x002C($sp)
/* 00EE0 809CB9F0 AFA50034 */  sw      $a1, 0x0034($sp)
/* 00EE4 809CB9F4 0C024F46 */  jal     func_80093D18
/* 00EE8 809CB9F8 8CA40000 */  lw      $a0, 0x0000($a1)           ## 00000000
/* 00EEC 809CB9FC 860F01AE */  lh      $t7, 0x01AE($s0)           ## 000001AE
/* 00EF0 809CBA00 44806000 */  mtc1    $zero, $f12                ## $f12 = 0.00
/* 00EF4 809CBA04 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 00EF8 809CBA08 448F2000 */  mtc1    $t7, $f4                   ## $f4 = 0.00
/* 00EFC 809CBA0C 44066000 */  mfc1    $a2, $f12
/* 00F00 809CBA10 0C034261 */  jal     Matrix_Translate
/* 00F04 809CBA14 468023A0 */  cvt.s.w $f14, $f4
/* 00F08 809CBA18 8E050168 */  lw      $a1, 0x0168($s0)           ## 00000168
/* 00F0C 809CBA1C 8E060184 */  lw      $a2, 0x0184($s0)           ## 00000184
/* 00F10 809CBA20 92070166 */  lbu     $a3, 0x0166($s0)           ## 00000166
/* 00F14 809CBA24 3C18809D */  lui     $t8, %hi(func_809CB90C)    ## $t8 = 809D0000
/* 00F18 809CBA28 2718B90C */  addiu   $t8, $t8, %lo(func_809CB90C) ## $t8 = 809CB90C
/* 00F1C 809CBA2C AFB80014 */  sw      $t8, 0x0014($sp)
/* 00F20 809CBA30 AFB00018 */  sw      $s0, 0x0018($sp)
/* 00F24 809CBA34 AFA00010 */  sw      $zero, 0x0010($sp)
/* 00F28 809CBA38 0C0286B2 */  jal     SkelAnime_DrawSV
/* 00F2C 809CBA3C 8FA40034 */  lw      $a0, 0x0034($sp)
/* 00F30 809CBA40 8FBF002C */  lw      $ra, 0x002C($sp)
/* 00F34 809CBA44 8FB00028 */  lw      $s0, 0x0028($sp)
/* 00F38 809CBA48 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 00F3C 809CBA4C 03E00008 */  jr      $ra
/* 00F40 809CBA50 00000000 */  nop
/* 00F44 809CBA54 00000000 */  nop
/* 00F48 809CBA58 00000000 */  nop
/* 00F4C 809CBA5C 00000000 */  nop

