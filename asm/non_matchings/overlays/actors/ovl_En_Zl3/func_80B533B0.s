glabel func_80B533B0
/* 00000 80B533B0 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00004 80B533B4 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00008 80B533B8 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 0000C 80B533BC 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00010 80B533C0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00014 80B533C4 24C50378 */  addiu   $a1, $a2, 0x0378           ## $a1 = 00000378
/* 00018 80B533C8 AFA50018 */  sw      $a1, 0x0018($sp)           
/* 0001C 80B533CC 0C0170D9 */  jal     ActorCollider_AllocCylinder
              
/* 00020 80B533D0 AFA60020 */  sw      $a2, 0x0020($sp)           
/* 00024 80B533D4 3C0780B6 */  lui     $a3, %hi(D_80B5A410)       ## $a3 = 80B60000
/* 00028 80B533D8 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 0002C 80B533DC 8FA60020 */  lw      $a2, 0x0020($sp)           
/* 00030 80B533E0 24E7A410 */  addiu   $a3, $a3, %lo(D_80B5A410)  ## $a3 = 80B5A410
/* 00034 80B533E4 0C017114 */  jal     func_8005C450              
/* 00038 80B533E8 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 0003C 80B533EC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00040 80B533F0 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00044 80B533F4 03E00008 */  jr      $ra                        
/* 00048 80B533F8 00000000 */  nop
