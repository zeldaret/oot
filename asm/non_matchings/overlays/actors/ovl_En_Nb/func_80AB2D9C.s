glabel func_80AB2D9C
/* 0200C 80AB2D9C 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 02010 80AB2DA0 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 02014 80AB2DA4 AFB10018 */  sw      $s1, 0x0018($sp)           
/* 02018 80AB2DA8 AFB00014 */  sw      $s0, 0x0014($sp)           
/* 0201C 80AB2DAC 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 02020 80AB2DB0 0C2AC933 */  jal     func_80AB24CC              
/* 02024 80AB2DB4 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 02028 80AB2DB8 0C2AC459 */  jal     func_80AB1164              
/* 0202C 80AB2DBC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02030 80AB2DC0 0C2AC4B3 */  jal     func_80AB12CC              
/* 02034 80AB2DC4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02038 80AB2DC8 AFA20024 */  sw      $v0, 0x0024($sp)           
/* 0203C 80AB2DCC 0C2AC96F */  jal     func_80AB25BC              
/* 02040 80AB2DD0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02044 80AB2DD4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02048 80AB2DD8 0C2AC9A2 */  jal     func_80AB2688              
/* 0204C 80AB2DDC 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 02050 80AB2DE0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02054 80AB2DE4 0C2AC4A1 */  jal     func_80AB1284              
/* 02058 80AB2DE8 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 0205C 80AB2DEC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02060 80AB2DF0 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 02064 80AB2DF4 0C2ACA8A */  jal     func_80AB2A28              
/* 02068 80AB2DF8 8FA60024 */  lw      $a2, 0x0024($sp)           
/* 0206C 80AB2DFC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02070 80AB2E00 0C2ACABF */  jal     func_80AB2AFC              
/* 02074 80AB2E04 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 02078 80AB2E08 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0207C 80AB2E0C 8FB00014 */  lw      $s0, 0x0014($sp)           
/* 02080 80AB2E10 8FB10018 */  lw      $s1, 0x0018($sp)           
/* 02084 80AB2E14 03E00008 */  jr      $ra                        
/* 02088 80AB2E18 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
