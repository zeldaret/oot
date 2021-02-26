glabel MagicFire_Init
/* 00000 80B88D70 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00004 80B88D74 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 00008 80B88D78 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 0000C 80B88D7C AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00010 80B88D80 3C0580B9 */  lui     $a1, %hi(D_80B8AF7C)       ## $a1 = 80B90000
/* 00014 80B88D84 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00018 80B88D88 0C01E037 */  jal     Actor_ProcessInitChain
              
/* 0001C 80B88D8C 24A5AF7C */  addiu   $a1, $a1, %lo(D_80B8AF7C)  ## $a1 = 80B8AF7C
/* 00020 80B88D90 3C01C040 */  lui     $at, 0xC040                ## $at = C0400000
/* 00024 80B88D94 44812000 */  mtc1    $at, $f4                   ## $f4 = -3.00
/* 00028 80B88D98 A60001A4 */  sh      $zero, 0x01A4($s0)         ## 000001A4
/* 0002C 80B88D9C A60001A6 */  sh      $zero, 0x01A6($s0)         ## 000001A6
/* 00030 80B88DA0 A60001A8 */  sh      $zero, 0x01A8($s0)         ## 000001A8
/* 00034 80B88DA4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00038 80B88DA8 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 0003C 80B88DAC 0C00B58B */  jal     Actor_SetScale
              
/* 00040 80B88DB0 E6040198 */  swc1    $f4, 0x0198($s0)           ## 00000198
/* 00044 80B88DB4 2605014C */  addiu   $a1, $s0, 0x014C           ## $a1 = 0000014C
/* 00048 80B88DB8 AFA50020 */  sw      $a1, 0x0020($sp)           
/* 0004C 80B88DBC 0C0170D9 */  jal     Collider_InitCylinder
              
/* 00050 80B88DC0 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 00054 80B88DC4 3C0780B9 */  lui     $a3, %hi(D_80B8AF50)       ## $a3 = 80B90000
/* 00058 80B88DC8 24E7AF50 */  addiu   $a3, $a3, %lo(D_80B8AF50)  ## $a3 = 80B8AF50
/* 0005C 80B88DCC 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 00060 80B88DD0 8FA50020 */  lw      $a1, 0x0020($sp)           
/* 00064 80B88DD4 0C01712B */  jal     Collider_SetCylinder
              
/* 00068 80B88DD8 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 0006C 80B88DDC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00070 80B88DE0 0C0189B7 */  jal     Collider_UpdateCylinder
              
/* 00074 80B88DE4 8FA50020 */  lw      $a1, 0x0020($sp)           
/* 00078 80B88DE8 3C0E80B9 */  lui     $t6, %hi(func_80B88E3C)    ## $t6 = 80B90000
/* 0007C 80B88DEC 25CE8E3C */  addiu   $t6, $t6, %lo(func_80B88E3C) ## $t6 = 80B88E3C
/* 00080 80B88DF0 240F0014 */  addiu   $t7, $zero, 0x0014         ## $t7 = 00000014
/* 00084 80B88DF4 2418FFFF */  addiu   $t8, $zero, 0xFFFF         ## $t8 = FFFFFFFF
/* 00088 80B88DF8 AE0E0130 */  sw      $t6, 0x0130($s0)           ## 00000130
/* 0008C 80B88DFC A60F01A8 */  sh      $t7, 0x01A8($s0)           ## 000001A8
/* 00090 80B88E00 A2180003 */  sb      $t8, 0x0003($s0)           ## 00000003
/* 00094 80B88E04 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00098 80B88E08 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 0009C 80B88E0C 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 000A0 80B88E10 03E00008 */  jr      $ra                        
/* 000A4 80B88E14 00000000 */  nop
