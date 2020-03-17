glabel func_80B3E294
/* 020B4 80B3E294 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 020B8 80B3E298 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 020BC 80B3E29C AFB10018 */  sw      $s1, 0x0018($sp)           
/* 020C0 80B3E2A0 AFB00014 */  sw      $s0, 0x0014($sp)           
/* 020C4 80B3E2A4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 020C8 80B3E2A8 0C2CF12C */  jal     func_80B3C4B0              
/* 020CC 80B3E2AC 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 020D0 80B3E2B0 AFA20024 */  sw      $v0, 0x0024($sp)           
/* 020D4 80B3E2B4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 020D8 80B3E2B8 0C2CF11A */  jal     func_80B3C468              
/* 020DC 80B3E2BC 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 020E0 80B3E2C0 0C2CF0C7 */  jal     func_80B3C31C              
/* 020E4 80B3E2C4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 020E8 80B3E2C8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 020EC 80B3E2CC 0C2CF3E4 */  jal     func_80B3CF90              
/* 020F0 80B3E2D0 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 020F4 80B3E2D4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 020F8 80B3E2D8 0C2CF405 */  jal     func_80B3D014              
/* 020FC 80B3E2DC 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 02100 80B3E2E0 0C2CF456 */  jal     func_80B3D158              
/* 02104 80B3E2E4 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 02108 80B3E2E8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0210C 80B3E2EC 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 02110 80B3E2F0 0C2CF629 */  jal     func_80B3D8A4              
/* 02114 80B3E2F4 8FA60024 */  lw      $a2, 0x0024($sp)           
/* 02118 80B3E2F8 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0211C 80B3E2FC 8FB00014 */  lw      $s0, 0x0014($sp)           
/* 02120 80B3E300 8FB10018 */  lw      $s1, 0x0018($sp)           
/* 02124 80B3E304 03E00008 */  jr      $ra                        
/* 02128 80B3E308 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000


