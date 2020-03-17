glabel func_80A7E460
/* 00000 80A7E460 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00004 80A7E464 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00008 80A7E468 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 0000C 80A7E46C 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00010 80A7E470 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00014 80A7E474 24C50150 */  addiu   $a1, $a2, 0x0150           ## $a1 = 00000150
/* 00018 80A7E478 AFA50018 */  sw      $a1, 0x0018($sp)           
/* 0001C 80A7E47C 0C0170D9 */  jal     ActorCollider_AllocCylinder
              
/* 00020 80A7E480 AFA60020 */  sw      $a2, 0x0020($sp)           
/* 00024 80A7E484 8FA60020 */  lw      $a2, 0x0020($sp)           
/* 00028 80A7E488 3C1980A8 */  lui     $t9, %hi(D_80A87338)       ## $t9 = 80A80000
/* 0002C 80A7E48C 27397338 */  addiu   $t9, $t9, %lo(D_80A87338)  ## $t9 = 80A87338
/* 00030 80A7E490 84CE001C */  lh      $t6, 0x001C($a2)           ## 0000001C
/* 00034 80A7E494 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 00038 80A7E498 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 0003C 80A7E49C 31CF0001 */  andi    $t7, $t6, 0x0001           ## $t7 = 00000000
/* 00040 80A7E4A0 000FC080 */  sll     $t8, $t7,  2               
/* 00044 80A7E4A4 030FC023 */  subu    $t8, $t8, $t7              
/* 00048 80A7E4A8 0018C080 */  sll     $t8, $t8,  2               
/* 0004C 80A7E4AC 030FC023 */  subu    $t8, $t8, $t7              
/* 00050 80A7E4B0 0018C080 */  sll     $t8, $t8,  2               
/* 00054 80A7E4B4 0C01712B */  jal     ActorCollider_InitCylinder
              
/* 00058 80A7E4B8 03193821 */  addu    $a3, $t8, $t9              
/* 0005C 80A7E4BC 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 00060 80A7E4C0 0C0189B7 */  jal     ActorCollider_Cylinder_Update
              
/* 00064 80A7E4C4 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 00068 80A7E4C8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0006C 80A7E4CC 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00070 80A7E4D0 03E00008 */  jr      $ra                        
/* 00074 80A7E4D4 00000000 */  nop


