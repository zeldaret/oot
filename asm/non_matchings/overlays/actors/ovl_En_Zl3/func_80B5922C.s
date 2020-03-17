glabel func_80B5922C
/* 05E7C 80B5922C 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 05E80 80B59230 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 05E84 80B59234 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 05E88 80B59238 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 05E8C 80B5923C 0C2D5378 */  jal     func_80B54DE0              
/* 05E90 80B59240 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 05E94 80B59244 0C2D4DB1 */  jal     func_80B536C4              
/* 05E98 80B59248 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 05E9C 80B5924C 0C2D5CA6 */  jal     func_80B57298              
/* 05EA0 80B59250 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 05EA4 80B59254 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 05EA8 80B59258 0C00B56E */  jal     Actor_SetHeight
              
/* 05EAC 80B5925C 3C054270 */  lui     $a1, 0x4270                ## $a1 = 42700000
/* 05EB0 80B59260 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 05EB4 80B59264 0C2D4CFF */  jal     func_80B533FC              
/* 05EB8 80B59268 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 05EBC 80B5926C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 05EC0 80B59270 0C2D4D9B */  jal     func_80B5366C              
/* 05EC4 80B59274 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 05EC8 80B59278 0C2D4D33 */  jal     func_80B534CC              
/* 05ECC 80B5927C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 05ED0 80B59280 0C2D4E53 */  jal     func_80B5394C              
/* 05ED4 80B59284 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 05ED8 80B59288 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 05EDC 80B5928C 0C2D62AB */  jal     func_80B58AAC              
/* 05EE0 80B59290 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 05EE4 80B59294 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 05EE8 80B59298 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 05EEC 80B5929C 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 05EF0 80B592A0 03E00008 */  jr      $ra                        
/* 05EF4 80B592A4 00000000 */  nop


