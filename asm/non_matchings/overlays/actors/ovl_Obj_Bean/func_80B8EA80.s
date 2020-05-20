glabel func_80B8EA80
/* 00000 80B8EA80 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00004 80B8EA84 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00008 80B8EA88 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 0000C 80B8EA8C 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00010 80B8EA90 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00014 80B8EA94 24C50168 */  addiu   $a1, $a2, 0x0168           ## $a1 = 00000168
/* 00018 80B8EA98 AFA50018 */  sw      $a1, 0x0018($sp)           
/* 0001C 80B8EA9C 0C0170D9 */  jal     Collider_InitCylinder
              
/* 00020 80B8EAA0 AFA60020 */  sw      $a2, 0x0020($sp)           
/* 00024 80B8EAA4 3C0780B9 */  lui     $a3, %hi(D_80B90E54)       ## $a3 = 80B90000
/* 00028 80B8EAA8 8FA60020 */  lw      $a2, 0x0020($sp)           
/* 0002C 80B8EAAC 24E70E54 */  addiu   $a3, $a3, %lo(D_80B90E54)  ## $a3 = 80B90E54
/* 00030 80B8EAB0 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 00034 80B8EAB4 0C01712B */  jal     Collider_SetCylinder
              
/* 00038 80B8EAB8 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 0003C 80B8EABC 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 00040 80B8EAC0 0C0189B7 */  jal     Collider_CylinderUpdate
              
/* 00044 80B8EAC4 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 00048 80B8EAC8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0004C 80B8EACC 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00050 80B8EAD0 03E00008 */  jr      $ra                        
/* 00054 80B8EAD4 00000000 */  nop
