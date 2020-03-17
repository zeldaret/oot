glabel func_80AE7C64
/* 009B4 80AE7C64 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 009B8 80AE7C68 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 009BC 80AE7C6C AFA40018 */  sw      $a0, 0x0018($sp)           
/* 009C0 80AE7C70 0C2B9E55 */  jal     func_80AE7954              
/* 009C4 80AE7C74 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 009C8 80AE7C78 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 009CC 80AE7C7C 0C2B9CF6 */  jal     func_80AE73D8              
/* 009D0 80AE7C80 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 009D4 80AE7C84 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 009D8 80AE7C88 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 009DC 80AE7C8C 03E00008 */  jr      $ra                        
/* 009E0 80AE7C90 00000000 */  nop


