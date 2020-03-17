glabel func_8097A160
/* 01830 8097A160 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01834 8097A164 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01838 8097A168 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 0183C 8097A16C 0C25E3B9 */  jal     func_80978EE4              
/* 01840 8097A170 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 01844 8097A174 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 01848 8097A178 0C25E839 */  jal     func_8097A0E4              
/* 0184C 8097A17C 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 01850 8097A180 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01854 8097A184 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01858 8097A188 03E00008 */  jr      $ra                        
/* 0185C 8097A18C 00000000 */  nop


