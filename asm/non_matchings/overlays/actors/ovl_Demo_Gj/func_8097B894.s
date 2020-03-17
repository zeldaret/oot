glabel func_8097B894
/* 02F64 8097B894 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 02F68 8097B898 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 02F6C 8097B89C AFA40018 */  sw      $a0, 0x0018($sp)           
/* 02F70 8097B8A0 0C25EDD4 */  jal     func_8097B750              
/* 02F74 8097B8A4 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 02F78 8097B8A8 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 02F7C 8097B8AC 0C25ED11 */  jal     func_8097B444              
/* 02F80 8097B8B0 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 02F84 8097B8B4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02F88 8097B8B8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 02F8C 8097B8BC 03E00008 */  jr      $ra                        
/* 02F90 8097B8C0 00000000 */  nop


