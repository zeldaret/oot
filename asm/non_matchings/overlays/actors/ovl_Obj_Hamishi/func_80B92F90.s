glabel func_80B92F90
/* 00000 80B92F90 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00004 80B92F94 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00008 80B92F98 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 0000C 80B92F9C 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00010 80B92FA0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00014 80B92FA4 24C5014C */  addiu   $a1, $a2, 0x014C           ## $a1 = 0000014C
/* 00018 80B92FA8 AFA50018 */  sw      $a1, 0x0018($sp)           
/* 0001C 80B92FAC 0C0170D9 */  jal     Collider_InitCylinder
              
/* 00020 80B92FB0 AFA60020 */  sw      $a2, 0x0020($sp)           
/* 00024 80B92FB4 3C0780B9 */  lui     $a3, %hi(D_80B93750)       ## $a3 = 80B90000
/* 00028 80B92FB8 8FA60020 */  lw      $a2, 0x0020($sp)           
/* 0002C 80B92FBC 24E73750 */  addiu   $a3, $a3, %lo(D_80B93750)  ## $a3 = 80B93750
/* 00030 80B92FC0 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 00034 80B92FC4 0C01712B */  jal     Collider_SetCylinder
              
/* 00038 80B92FC8 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 0003C 80B92FCC 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 00040 80B92FD0 0C0189B7 */  jal     Collider_CylinderUpdate
              
/* 00044 80B92FD4 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 00048 80B92FD8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0004C 80B92FDC 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00050 80B92FE0 03E00008 */  jr      $ra                        
/* 00054 80B92FE4 00000000 */  nop
