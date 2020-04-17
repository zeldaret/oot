glabel func_80AECAD4
/* 01EC4 80AECAD4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01EC8 80AECAD8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01ECC 80AECADC AFA40018 */  sw      $a0, 0x0018($sp)           
/* 01ED0 80AECAE0 0C2BACC8 */  jal     func_80AEB320              
/* 01ED4 80AECAE4 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 01ED8 80AECAE8 0C2BAB87 */  jal     func_80AEAE1C              
/* 01EDC 80AECAEC 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 01EE0 80AECAF0 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 01EE4 80AECAF4 0C2BABB3 */  jal     func_80AEAECC              
/* 01EE8 80AECAF8 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 01EEC 80AECAFC 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 01EF0 80AECB00 0C2BB22E */  jal     func_80AEC8B8              
/* 01EF4 80AECB04 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 01EF8 80AECB08 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01EFC 80AECB0C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01F00 80AECB10 03E00008 */  jr      $ra                        
/* 01F04 80AECB14 00000000 */  nop
