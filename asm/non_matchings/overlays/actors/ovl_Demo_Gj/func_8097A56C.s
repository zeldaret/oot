glabel func_8097A56C
/* 01C3C 8097A56C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01C40 8097A570 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01C44 8097A574 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 01C48 8097A578 0C25E3B9 */  jal     func_80978EE4              
/* 01C4C 8097A57C AFA5001C */  sw      $a1, 0x001C($sp)           
/* 01C50 8097A580 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 01C54 8097A584 0C25E93C */  jal     func_8097A4F0              
/* 01C58 8097A588 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 01C5C 8097A58C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01C60 8097A590 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01C64 8097A594 03E00008 */  jr      $ra                        
/* 01C68 8097A598 00000000 */  nop


