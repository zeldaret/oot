glabel EnSt_Draw
/* 02654 80B06EE4 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 02658 80B06EE8 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 0265C 80B06EEC AFA40020 */  sw      $a0, 0x0020($sp)           
/* 02660 80B06EF0 0C2C1478 */  jal     func_80B051E0              
/* 02664 80B06EF4 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 02668 80B06EF8 8FAE0024 */  lw      $t6, 0x0024($sp)           
/* 0266C 80B06EFC 0C024F46 */  jal     func_80093D18              
/* 02670 80B06F00 8DC40000 */  lw      $a0, 0x0000($t6)           ## 00000000
/* 02674 80B06F04 8FA20020 */  lw      $v0, 0x0020($sp)           
/* 02678 80B06F08 3C0F80B0 */  lui     $t7, %hi(func_80B06EAC)    ## $t7 = 80B00000
/* 0267C 80B06F0C 25EF6EAC */  addiu   $t7, $t7, %lo(func_80B06EAC) ## $t7 = 80B06EAC
/* 02680 80B06F10 3C0780B0 */  lui     $a3, %hi(func_80B06D88)    ## $a3 = 80B00000
/* 02684 80B06F14 8C450150 */  lw      $a1, 0x0150($v0)           ## 00000150
/* 02688 80B06F18 8C46016C */  lw      $a2, 0x016C($v0)           ## 0000016C
/* 0268C 80B06F1C AFAF0010 */  sw      $t7, 0x0010($sp)           
/* 02690 80B06F20 24E76D88 */  addiu   $a3, $a3, %lo(func_80B06D88) ## $a3 = 80B06D88
/* 02694 80B06F24 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 02698 80B06F28 0C028572 */  jal     SkelAnime_Draw
              
/* 0269C 80B06F2C AFA20014 */  sw      $v0, 0x0014($sp)           
/* 026A0 80B06F30 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 026A4 80B06F34 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 026A8 80B06F38 03E00008 */  jr      $ra                        
/* 026AC 80B06F3C 00000000 */  nop
