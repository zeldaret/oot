glabel func_80A9B630
/* 00690 80A9B630 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00694 80A9B634 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00698 80A9B638 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 0069C 80A9B63C 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 006A0 80A9B640 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 006A4 80A9B644 24C50150 */  addiu   $a1, $a2, 0x0150           ## $a1 = 00000150
/* 006A8 80A9B648 AFA50018 */  sw      $a1, 0x0018($sp)           
/* 006AC 80A9B64C 0C0170D9 */  jal     ActorCollider_AllocCylinder
              
/* 006B0 80A9B650 AFA60020 */  sw      $a2, 0x0020($sp)           
/* 006B4 80A9B654 3C0780AA */  lui     $a3, %hi(D_80A9C208)       ## $a3 = 80AA0000
/* 006B8 80A9B658 8FA60020 */  lw      $a2, 0x0020($sp)           
/* 006BC 80A9B65C 24E7C208 */  addiu   $a3, $a3, %lo(D_80A9C208)  ## $a3 = 80A9C208
/* 006C0 80A9B660 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 006C4 80A9B664 0C01712B */  jal     ActorCollider_InitCylinder
              
/* 006C8 80A9B668 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 006CC 80A9B66C 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 006D0 80A9B670 0C0189B7 */  jal     ActorCollider_Cylinder_Update
              
/* 006D4 80A9B674 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 006D8 80A9B678 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 006DC 80A9B67C 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 006E0 80A9B680 03E00008 */  jr      $ra                        
/* 006E4 80A9B684 00000000 */  nop
