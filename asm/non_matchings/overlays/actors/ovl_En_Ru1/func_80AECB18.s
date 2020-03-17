glabel func_80AECB18
/* 01F08 80AECB18 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 01F0C 80AECB1C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01F10 80AECB20 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 01F14 80AECB24 0C2BACC8 */  jal     func_80AEB320              
/* 01F18 80AECB28 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 01F1C 80AECB2C AFA2001C */  sw      $v0, 0x001C($sp)           
/* 01F20 80AECB30 0C2BAB87 */  jal     func_80AEAE1C              
/* 01F24 80AECB34 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 01F28 80AECB38 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 01F2C 80AECB3C 0C2BABB3 */  jal     func_80AEAECC              
/* 01F30 80AECB40 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 01F34 80AECB44 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 01F38 80AECB48 0C2BB24F */  jal     func_80AEC93C              
/* 01F3C 80AECB4C 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 01F40 80AECB50 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01F44 80AECB54 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 01F48 80AECB58 03E00008 */  jr      $ra                        
/* 01F4C 80AECB5C 00000000 */  nop


