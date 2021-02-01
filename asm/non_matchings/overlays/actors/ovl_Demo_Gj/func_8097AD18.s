glabel func_8097AD18
/* 023E8 8097AD18 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 023EC 8097AD1C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 023F0 8097AD20 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 023F4 8097AD24 0C25E3B9 */  jal     func_80978EE4              
/* 023F8 8097AD28 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 023FC 8097AD2C 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 02400 8097AD30 0C25EB27 */  jal     func_8097AC9C              
/* 02404 8097AD34 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 02408 8097AD38 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0240C 8097AD3C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 02410 8097AD40 03E00008 */  jr      $ra                        
/* 02414 8097AD44 00000000 */  nop
