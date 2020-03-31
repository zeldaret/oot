glabel func_808791BC
/* 0058C 808791BC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00590 808791C0 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00594 808791C4 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00598 808791C8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0059C 808791CC 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 005A0 808791D0 0C00D4C9 */  jal     Gfx_DrawDListXlu
              
/* 005A4 808791D4 24A588B0 */  addiu   $a1, $a1, 0x88B0           ## $a1 = 060088B0
/* 005A8 808791D8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 005AC 808791DC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 005B0 808791E0 03E00008 */  jr      $ra                        
/* 005B4 808791E4 00000000 */  nop


