glabel func_80AB2C18
/* 01E88 80AB2C18 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01E8C 80AB2C1C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01E90 80AB2C20 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 01E94 80AB2C24 0C2AC459 */  jal     func_80AB1164              
/* 01E98 80AB2C28 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 01E9C 80AB2C2C 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 01EA0 80AB2C30 0C2AC9A2 */  jal     func_80AB2688              
/* 01EA4 80AB2C34 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 01EA8 80AB2C38 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 01EAC 80AB2C3C 0C2AC4A1 */  jal     func_80AB1284              
/* 01EB0 80AB2C40 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 01EB4 80AB2C44 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 01EB8 80AB2C48 0C2ACABF */  jal     func_80AB2AFC              
/* 01EBC 80AB2C4C 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 01EC0 80AB2C50 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01EC4 80AB2C54 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01EC8 80AB2C58 03E00008 */  jr      $ra                        
/* 01ECC 80AB2C5C 00000000 */  nop
