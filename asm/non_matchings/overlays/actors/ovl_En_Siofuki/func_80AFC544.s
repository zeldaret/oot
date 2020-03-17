glabel func_80AFC544
/* 009C4 80AFC544 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 009C8 80AFC548 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 009CC 80AFC54C AFA40018 */  sw      $a0, 0x0018($sp)           
/* 009D0 80AFC550 0C2BEF72 */  jal     func_80AFBDC8              
/* 009D4 80AFC554 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 009D8 80AFC558 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 009DC 80AFC55C 0C2BF074 */  jal     func_80AFC1D0              
/* 009E0 80AFC560 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 009E4 80AFC564 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 009E8 80AFC568 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 009EC 80AFC56C 03E00008 */  jr      $ra                        
/* 009F0 80AFC570 00000000 */  nop


