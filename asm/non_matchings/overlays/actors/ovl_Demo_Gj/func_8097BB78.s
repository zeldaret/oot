glabel func_8097BB78
/* 03248 8097BB78 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0324C 8097BB7C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 03250 8097BB80 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 03254 8097BB84 0C25E3B9 */  jal     func_80978EE4              
/* 03258 8097BB88 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 0325C 8097BB8C 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 03260 8097BB90 0C25EE6F */  jal     func_8097B9BC              
/* 03264 8097BB94 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 03268 8097BB98 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0326C 8097BB9C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 03270 8097BBA0 03E00008 */  jr      $ra                        
/* 03274 8097BBA4 00000000 */  nop
