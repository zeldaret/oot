glabel func_80AB3C1C
/* 02E8C 80AB3C1C 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 02E90 80AB3C20 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 02E94 80AB3C24 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 02E98 80AB3C28 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 02E9C 80AB3C2C 0C2AC4A1 */  jal     func_80AB1284              
/* 02EA0 80AB3C30 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 02EA4 80AB3C34 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02EA8 80AB3C38 0C2AC3D4 */  jal     func_80AB0F50              
/* 02EAC 80AB3C3C 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 02EB0 80AB3C40 0C2AC4B3 */  jal     func_80AB12CC              
/* 02EB4 80AB3C44 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02EB8 80AB3C48 AFA20024 */  sw      $v0, 0x0024($sp)           
/* 02EBC 80AB3C4C 0C2AC459 */  jal     func_80AB1164              
/* 02EC0 80AB3C50 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02EC4 80AB3C54 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02EC8 80AB3C58 0C2ACDF8 */  jal     func_80AB37E0              
/* 02ECC 80AB3C5C 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 02ED0 80AB3C60 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 02ED4 80AB3C64 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 02ED8 80AB3C68 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 02EDC 80AB3C6C 03E00008 */  jr      $ra                        
/* 02EE0 80AB3C70 00000000 */  nop


