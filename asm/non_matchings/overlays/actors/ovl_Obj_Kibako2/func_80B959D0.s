glabel func_80B959D0
/* 00000 80B959D0 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00004 80B959D4 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00008 80B959D8 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 0000C 80B959DC 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00010 80B959E0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00014 80B959E4 24C50164 */  addiu   $a1, $a2, 0x0164           ## $a1 = 00000164
/* 00018 80B959E8 AFA50018 */  sw      $a1, 0x0018($sp)           
/* 0001C 80B959EC 0C0170D9 */  jal     ActorCollider_AllocCylinder
              
/* 00020 80B959F0 AFA60020 */  sw      $a2, 0x0020($sp)           
/* 00024 80B959F4 3C0780B9 */  lui     $a3, %hi(D_80B95FD0)       ## $a3 = 80B90000
/* 00028 80B959F8 8FA60020 */  lw      $a2, 0x0020($sp)           
/* 0002C 80B959FC 24E75FD0 */  addiu   $a3, $a3, %lo(D_80B95FD0)  ## $a3 = 80B95FD0
/* 00030 80B95A00 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 00034 80B95A04 0C01712B */  jal     ActorCollider_InitCylinder
              
/* 00038 80B95A08 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 0003C 80B95A0C 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 00040 80B95A10 0C0189B7 */  jal     ActorCollider_Cylinder_Update
              
/* 00044 80B95A14 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 00048 80B95A18 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0004C 80B95A1C 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00050 80B95A20 03E00008 */  jr      $ra                        
/* 00054 80B95A24 00000000 */  nop


