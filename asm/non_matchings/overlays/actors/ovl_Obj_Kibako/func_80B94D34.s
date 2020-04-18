glabel func_80B94D34
/* 00094 80B94D34 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00098 80B94D38 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 0009C 80B94D3C AFA50024 */  sw      $a1, 0x0024($sp)           
/* 000A0 80B94D40 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 000A4 80B94D44 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 000A8 80B94D48 24C50150 */  addiu   $a1, $a2, 0x0150           ## $a1 = 00000150
/* 000AC 80B94D4C AFA50018 */  sw      $a1, 0x0018($sp)           
/* 000B0 80B94D50 0C0170D9 */  jal     Collider_InitCylinder
              
/* 000B4 80B94D54 AFA60020 */  sw      $a2, 0x0020($sp)           
/* 000B8 80B94D58 3C0780B9 */  lui     $a3, %hi(D_80B95850)       ## $a3 = 80B90000
/* 000BC 80B94D5C 8FA60020 */  lw      $a2, 0x0020($sp)           
/* 000C0 80B94D60 24E75850 */  addiu   $a3, $a3, %lo(D_80B95850)  ## $a3 = 80B95850
/* 000C4 80B94D64 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 000C8 80B94D68 0C01712B */  jal     Collider_SetCylinder
              
/* 000CC 80B94D6C 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 000D0 80B94D70 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 000D4 80B94D74 0C0189B7 */  jal     Collider_CylinderUpdate
              
/* 000D8 80B94D78 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 000DC 80B94D7C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 000E0 80B94D80 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 000E4 80B94D84 03E00008 */  jr      $ra                        
/* 000E8 80B94D88 00000000 */  nop
