glabel func_80BA0E98
/* 00138 80BA0E98 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 0013C 80BA0E9C 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00140 80BA0EA0 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00144 80BA0EA4 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00148 80BA0EA8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0014C 80BA0EAC 24C50150 */  addiu   $a1, $a2, 0x0150           ## $a1 = 00000150
/* 00150 80BA0EB0 AFA50018 */  sw      $a1, 0x0018($sp)           
/* 00154 80BA0EB4 0C0170D9 */  jal     Collider_InitCylinder
              
/* 00158 80BA0EB8 AFA60020 */  sw      $a2, 0x0020($sp)           
/* 0015C 80BA0EBC 3C0780BA */  lui     $a3, %hi(D_80BA1B94)       ## $a3 = 80BA0000
/* 00160 80BA0EC0 8FA60020 */  lw      $a2, 0x0020($sp)           
/* 00164 80BA0EC4 24E71B94 */  addiu   $a3, $a3, %lo(D_80BA1B94)  ## $a3 = 80BA1B94
/* 00168 80BA0EC8 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 0016C 80BA0ECC 0C01712B */  jal     Collider_SetCylinder
              
/* 00170 80BA0ED0 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 00174 80BA0ED4 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 00178 80BA0ED8 0C0189B7 */  jal     Collider_CylinderUpdate
              
/* 0017C 80BA0EDC 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 00180 80BA0EE0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00184 80BA0EE4 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00188 80BA0EE8 03E00008 */  jr      $ra                        
/* 0018C 80BA0EEC 00000000 */  nop
