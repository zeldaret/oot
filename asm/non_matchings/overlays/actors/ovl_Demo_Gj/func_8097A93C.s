glabel func_8097A93C
/* 0200C 8097A93C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 02010 8097A940 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 02014 8097A944 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 02018 8097A948 0C25EA05 */  jal     func_8097A814              
/* 0201C 8097A94C AFA5001C */  sw      $a1, 0x001C($sp)           
/* 02020 8097A950 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 02024 8097A954 0C25EA37 */  jal     func_8097A8DC              
/* 02028 8097A958 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 0202C 8097A95C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02030 8097A960 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 02034 8097A964 03E00008 */  jr      $ra                        
/* 02038 8097A968 00000000 */  nop


