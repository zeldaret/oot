glabel func_80B3C1E0
/* 00000 80B3C1E0 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00004 80B3C1E4 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00008 80B3C1E8 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 0000C 80B3C1EC 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00010 80B3C1F0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00014 80B3C1F4 24C502C0 */  addiu   $a1, $a2, 0x02C0           ## $a1 = 000002C0
/* 00018 80B3C1F8 AFA50018 */  sw      $a1, 0x0018($sp)           
/* 0001C 80B3C1FC 0C0170D9 */  jal     Collider_InitCylinder
              
/* 00020 80B3C200 AFA60020 */  sw      $a2, 0x0020($sp)           
/* 00024 80B3C204 3C0780B4 */  lui     $a3, %hi(D_80B41D40)       ## $a3 = 80B40000
/* 00028 80B3C208 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 0002C 80B3C20C 8FA60020 */  lw      $a2, 0x0020($sp)           
/* 00030 80B3C210 24E71D40 */  addiu   $a3, $a3, %lo(D_80B41D40)  ## $a3 = 80B41D40
/* 00034 80B3C214 0C017114 */  jal     Collider_SetCylinderType1              
/* 00038 80B3C218 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 0003C 80B3C21C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00040 80B3C220 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00044 80B3C224 03E00008 */  jr      $ra                        
/* 00048 80B3C228 00000000 */  nop
