glabel func_80B915F0
/* 00000 80B915F0 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00004 80B915F4 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00008 80B915F8 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 0000C 80B915FC 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00010 80B91600 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00014 80B91604 24C5014C */  addiu   $a1, $a2, 0x014C           ## $a1 = 0000014C
/* 00018 80B91608 AFA50018 */  sw      $a1, 0x0018($sp)           
/* 0001C 80B9160C 0C0170D9 */  jal     ActorCollider_AllocCylinder
              
/* 00020 80B91610 AFA60020 */  sw      $a2, 0x0020($sp)           
/* 00024 80B91614 3C0780B9 */  lui     $a3, %hi(D_80B91AA0)       ## $a3 = 80B90000
/* 00028 80B91618 8FA60020 */  lw      $a2, 0x0020($sp)           
/* 0002C 80B9161C 24E71AA0 */  addiu   $a3, $a3, %lo(D_80B91AA0)  ## $a3 = 80B91AA0
/* 00030 80B91620 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 00034 80B91624 0C01712B */  jal     ActorCollider_InitCylinder
              
/* 00038 80B91628 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 0003C 80B9162C 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 00040 80B91630 0C0189B7 */  jal     ActorCollider_Cylinder_Update
              
/* 00044 80B91634 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 00048 80B91638 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0004C 80B9163C 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00050 80B91640 03E00008 */  jr      $ra                        
/* 00054 80B91644 00000000 */  nop


