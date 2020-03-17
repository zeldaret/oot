glabel func_8097A59C
/* 01C6C 8097A59C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01C70 8097A5A0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01C74 8097A5A4 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 01C78 8097A5A8 0C25E91D */  jal     func_8097A474              
/* 01C7C 8097A5AC AFA5001C */  sw      $a1, 0x001C($sp)           
/* 01C80 8097A5B0 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 01C84 8097A5B4 0C25E94F */  jal     func_8097A53C              
/* 01C88 8097A5B8 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 01C8C 8097A5BC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01C90 8097A5C0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01C94 8097A5C4 03E00008 */  jr      $ra                        
/* 01C98 8097A5C8 00000000 */  nop


