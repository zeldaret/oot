glabel func_80AF2550
/* 00000 80AF2550 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00004 80AF2554 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00008 80AF2558 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 0000C 80AF255C 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00010 80AF2560 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00014 80AF2564 24C502C8 */  addiu   $a1, $a2, 0x02C8           ## $a1 = 000002C8
/* 00018 80AF2568 AFA50018 */  sw      $a1, 0x0018($sp)           
/* 0001C 80AF256C 0C0170D9 */  jal     ActorCollider_AllocCylinder
              
/* 00020 80AF2570 AFA60020 */  sw      $a2, 0x0020($sp)           
/* 00024 80AF2574 3C0780AF */  lui     $a3, %hi(D_80AF40E0)       ## $a3 = 80AF0000
/* 00028 80AF2578 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 0002C 80AF257C 8FA60020 */  lw      $a2, 0x0020($sp)           
/* 00030 80AF2580 24E740E0 */  addiu   $a3, $a3, %lo(D_80AF40E0)  ## $a3 = 80AF40E0
/* 00034 80AF2584 0C017114 */  jal     func_8005C450              
/* 00038 80AF2588 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 0003C 80AF258C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00040 80AF2590 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00044 80AF2594 03E00008 */  jr      $ra                        
/* 00048 80AF2598 00000000 */  nop


