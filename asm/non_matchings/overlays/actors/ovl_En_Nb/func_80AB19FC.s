glabel func_80AB19FC
/* 00C6C 80AB19FC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00C70 80AB1A00 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00C74 80AB1A04 0C2AC4A1 */  jal     func_80AB1284              
/* 00C78 80AB1A08 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00C7C 80AB1A0C 0C2AC4B3 */  jal     func_80AB12CC              
/* 00C80 80AB1A10 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00C84 80AB1A14 0C2AC459 */  jal     func_80AB1164              
/* 00C88 80AB1A18 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00C8C 80AB1A1C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00C90 80AB1A20 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00C94 80AB1A24 03E00008 */  jr      $ra                        
/* 00C98 80AB1A28 00000000 */  nop
