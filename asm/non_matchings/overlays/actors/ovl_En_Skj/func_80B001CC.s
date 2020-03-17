glabel func_80B001CC
/* 01F1C 80B001CC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01F20 80B001D0 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 01F24 80B001D4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01F28 80B001D8 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 01F2C 80B001DC 2405101C */  addiu   $a1, $zero, 0x101C         ## $a1 = 0000101C
/* 01F30 80B001E0 0C042DA0 */  jal     func_8010B680              
/* 01F34 80B001E4 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 01F38 80B001E8 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 01F3C 80B001EC 0C2BF8AC */  jal     func_80AFE2B0              
/* 01F40 80B001F0 24050009 */  addiu   $a1, $zero, 0x0009         ## $a1 = 00000009
/* 01F44 80B001F4 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 01F48 80B001F8 0C2BF8CE */  jal     func_80AFE338              
/* 01F4C 80B001FC 24050014 */  addiu   $a1, $zero, 0x0014         ## $a1 = 00000014
/* 01F50 80B00200 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01F54 80B00204 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01F58 80B00208 03E00008 */  jr      $ra                        
/* 01F5C 80B0020C 00000000 */  nop


