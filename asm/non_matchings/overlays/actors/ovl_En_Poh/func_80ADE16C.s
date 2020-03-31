glabel func_80ADE16C
/* 0041C 80ADE16C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00420 80ADE170 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 00424 80ADE174 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00428 80ADE178 8CCE02A4 */  lw      $t6, 0x02A4($a2)           ## 000002A4
/* 0042C 80ADE17C 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00430 80ADE180 8DC50010 */  lw      $a1, 0x0010($t6)           ## 00000010
/* 00434 80ADE184 0C0294BE */  jal     SkelAnime_ChangeAnimationDefaultRepeat
/* 00438 80ADE188 AFA60018 */  sw      $a2, 0x0018($sp)
/* 0043C 80ADE18C 2404000F */  addiu   $a0, $zero, 0x000F         ## $a0 = 0000000F
/* 00440 80ADE190 0C01DF64 */  jal     Math_Rand_S16Offset

/* 00444 80ADE194 24050003 */  addiu   $a1, $zero, 0x0003         ## $a1 = 00000003
/* 00448 80ADE198 8FA60018 */  lw      $a2, 0x0018($sp)
/* 0044C 80ADE19C 3C0F80AE */  lui     $t7, %hi(func_80ADEB80)    ## $t7 = 80AE0000
/* 00450 80ADE1A0 25EFEB80 */  addiu   $t7, $t7, %lo(func_80ADEB80) ## $t7 = 80ADEB80
/* 00454 80ADE1A4 A4C20198 */  sh      $v0, 0x0198($a2)           ## 00000198
/* 00458 80ADE1A8 ACCF0190 */  sw      $t7, 0x0190($a2)           ## 00000190
/* 0045C 80ADE1AC 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 00460 80ADE1B0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00464 80ADE1B4 03E00008 */  jr      $ra
/* 00468 80ADE1B8 00000000 */  nop


