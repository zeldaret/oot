glabel func_80B00068
/* 01DB8 80B00068 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01DBC 80B0006C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01DC0 80B00070 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 01DC4 80B00074 0C2BF8AC */  jal     func_80AFE2B0              
/* 01DC8 80B00078 24050005 */  addiu   $a1, $zero, 0x0005         ## $a1 = 00000005
/* 01DCC 80B0007C 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 01DD0 80B00080 0C2BF8CE */  jal     func_80AFE338              
/* 01DD4 80B00084 24050012 */  addiu   $a1, $zero, 0x0012         ## $a1 = 00000012
/* 01DD8 80B00088 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01DDC 80B0008C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01DE0 80B00090 03E00008 */  jr      $ra                        
/* 01DE4 80B00094 00000000 */  nop


