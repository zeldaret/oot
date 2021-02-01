glabel func_8097A73C
/* 01E0C 8097A73C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01E10 8097A740 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01E14 8097A744 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 01E18 8097A748 0C25E3B9 */  jal     func_80978EE4              
/* 01E1C 8097A74C AFA5001C */  sw      $a1, 0x001C($sp)           
/* 01E20 8097A750 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 01E24 8097A754 0C25E9B0 */  jal     func_8097A6C0              
/* 01E28 8097A758 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 01E2C 8097A75C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01E30 8097A760 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01E34 8097A764 03E00008 */  jr      $ra                        
/* 01E38 8097A768 00000000 */  nop
