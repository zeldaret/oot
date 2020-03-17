glabel func_8097B340
/* 02A10 8097B340 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 02A14 8097B344 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 02A18 8097B348 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 02A1C 8097B34C 0C25E3B9 */  jal     func_80978EE4              
/* 02A20 8097B350 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 02A24 8097B354 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 02A28 8097B358 0C25EC4A */  jal     func_8097B128              
/* 02A2C 8097B35C 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 02A30 8097B360 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02A34 8097B364 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 02A38 8097B368 03E00008 */  jr      $ra                        
/* 02A3C 8097B36C 00000000 */  nop


