glabel func_80AB0F04
/* 00174 80AB0F04 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00178 80AB0F08 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 0017C 80AB0F0C AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00180 80AB0F10 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00184 80AB0F14 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00188 80AB0F18 24C50294 */  addiu   $a1, $a2, 0x0294           ## $a1 = 00000294
/* 0018C 80AB0F1C AFA50018 */  sw      $a1, 0x0018($sp)           
/* 00190 80AB0F20 0C0170D9 */  jal     Collider_InitCylinder
              
/* 00194 80AB0F24 AFA60020 */  sw      $a2, 0x0020($sp)           
/* 00198 80AB0F28 3C0780AB */  lui     $a3, %hi(D_80AB42E0)       ## $a3 = 80AB0000
/* 0019C 80AB0F2C 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 001A0 80AB0F30 8FA60020 */  lw      $a2, 0x0020($sp)           
/* 001A4 80AB0F34 24E742E0 */  addiu   $a3, $a3, %lo(D_80AB42E0)  ## $a3 = 80AB42E0
/* 001A8 80AB0F38 0C017114 */  jal     Collider_SetCylinder_Set3              
/* 001AC 80AB0F3C 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 001B0 80AB0F40 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 001B4 80AB0F44 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 001B8 80AB0F48 03E00008 */  jr      $ra                        
/* 001BC 80AB0F4C 00000000 */  nop
