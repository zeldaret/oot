glabel func_8098F0E8
/* 00C88 8098F0E8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00C8C 8098F0EC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00C90 8098F0F0 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00C94 8098F0F4 0C263BAA */  jal     func_8098EEA8              
/* 00C98 8098F0F8 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00C9C 8098F0FC 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00CA0 8098F100 0C263955 */  jal     func_8098E554              
/* 00CA4 8098F104 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 00CA8 8098F108 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00CAC 8098F10C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00CB0 8098F110 03E00008 */  jr      $ra                        
/* 00CB4 8098F114 00000000 */  nop


