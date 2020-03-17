glabel func_80B3E368
/* 02188 80B3E368 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 0218C 80B3E36C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 02190 80B3E370 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 02194 80B3E374 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 02198 80B3E378 0C2CF591 */  jal     func_80B3D644              
/* 0219C 80B3E37C AFA50024 */  sw      $a1, 0x0024($sp)           
/* 021A0 80B3E380 0C2CF12C */  jal     func_80B3C4B0              
/* 021A4 80B3E384 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 021A8 80B3E388 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 021AC 80B3E38C 0C2CF11A */  jal     func_80B3C468              
/* 021B0 80B3E390 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 021B4 80B3E394 0C2CF0C7 */  jal     func_80B3C31C              
/* 021B8 80B3E398 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 021BC 80B3E39C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 021C0 80B3E3A0 0C2CF3A1 */  jal     func_80B3CE84              
/* 021C4 80B3E3A4 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 021C8 80B3E3A8 0C2CF680 */  jal     func_80B3DA00              
/* 021CC 80B3E3AC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 021D0 80B3E3B0 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 021D4 80B3E3B4 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 021D8 80B3E3B8 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 021DC 80B3E3BC 03E00008 */  jr      $ra                        
/* 021E0 80B3E3C0 00000000 */  nop


