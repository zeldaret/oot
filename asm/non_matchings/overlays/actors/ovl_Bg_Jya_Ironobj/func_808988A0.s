glabel func_808988A0
/* 00000 808988A0 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00004 808988A4 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00008 808988A8 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 0000C 808988AC 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00010 808988B0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00014 808988B4 24C50168 */  addiu   $a1, $a2, 0x0168           ## $a1 = 00000168
/* 00018 808988B8 AFA50018 */  sw      $a1, 0x0018($sp)           
/* 0001C 808988BC 0C0170D9 */  jal     CollisionCheck_AllocCylinder
              
/* 00020 808988C0 AFA60020 */  sw      $a2, 0x0020($sp)           
/* 00024 808988C4 3C07808A */  lui     $a3, %hi(D_808994AC)       ## $a3 = 808A0000
/* 00028 808988C8 8FA60020 */  lw      $a2, 0x0020($sp)           
/* 0002C 808988CC 24E794AC */  addiu   $a3, $a3, %lo(D_808994AC)  ## $a3 = 808994AC
/* 00030 808988D0 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 00034 808988D4 0C01712B */  jal     ActorCollider_InitCylinder
              
/* 00038 808988D8 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 0003C 808988DC 8FA60020 */  lw      $a2, 0x0020($sp)           
/* 00040 808988E0 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00044 808988E4 24180028 */  addiu   $t8, $zero, 0x0028         ## $t8 = 00000028
/* 00048 808988E8 84CE001C */  lh      $t6, 0x001C($a2)           ## 0000001C
/* 0004C 808988EC 24190064 */  addiu   $t9, $zero, 0x0064         ## $t9 = 00000064
/* 00050 808988F0 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 00054 808988F4 31CF0001 */  andi    $t7, $t6, 0x0001           ## $t7 = 00000000
/* 00058 808988F8 15E10003 */  bne     $t7, $at, .L80898908       
/* 0005C 808988FC 00000000 */  nop
/* 00060 80898900 A4D801A8 */  sh      $t8, 0x01A8($a2)           ## 000001A8
/* 00064 80898904 A4D901AA */  sh      $t9, 0x01AA($a2)           ## 000001AA
.L80898908:
/* 00068 80898908 0C0189B7 */  jal     ActorCollider_Cylinder_Update
              
/* 0006C 8089890C 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 00070 80898910 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00074 80898914 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00078 80898918 03E00008 */  jr      $ra                        
/* 0007C 8089891C 00000000 */  nop
