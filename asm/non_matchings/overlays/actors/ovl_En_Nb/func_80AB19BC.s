glabel func_80AB19BC
/* 00C2C 80AB19BC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00C30 80AB19C0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00C34 80AB19C4 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00C38 80AB19C8 0C2AC4A1 */  jal     func_80AB1284              
/* 00C3C 80AB19CC AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00C40 80AB19D0 0C2AC4B3 */  jal     func_80AB12CC              
/* 00C44 80AB19D4 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00C48 80AB19D8 0C2AC459 */  jal     func_80AB1164              
/* 00C4C 80AB19DC 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00C50 80AB19E0 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00C54 80AB19E4 0C2AC61E */  jal     func_80AB1878              
/* 00C58 80AB19E8 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 00C5C 80AB19EC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00C60 80AB19F0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00C64 80AB19F4 03E00008 */  jr      $ra                        
/* 00C68 80AB19F8 00000000 */  nop
