glabel func_80AB242C
/* 0169C 80AB242C 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 016A0 80AB2430 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 016A4 80AB2434 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 016A8 80AB2438 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 016AC 80AB243C 0C2AC459 */  jal     func_80AB1164              
/* 016B0 80AB2440 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 016B4 80AB2444 0C2AC4B3 */  jal     func_80AB12CC              
/* 016B8 80AB2448 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 016BC 80AB244C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 016C0 80AB2450 0C2AC860 */  jal     func_80AB2180              
/* 016C4 80AB2454 00402825 */  or      $a1, $v0, $zero            ## $a1 = 00000000
/* 016C8 80AB2458 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 016CC 80AB245C 0C2AC819 */  jal     func_80AB2064              
/* 016D0 80AB2460 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 016D4 80AB2464 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 016D8 80AB2468 0C2AC8B3 */  jal     func_80AB22CC              
/* 016DC 80AB246C 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 016E0 80AB2470 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 016E4 80AB2474 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 016E8 80AB2478 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 016EC 80AB247C 03E00008 */  jr      $ra                        
/* 016F0 80AB2480 00000000 */  nop
