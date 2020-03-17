glabel func_80AEEBD4
/* 03FC4 80AEEBD4 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 03FC8 80AEEBD8 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 03FCC 80AEEBDC AFB10018 */  sw      $s1, 0x0018($sp)           
/* 03FD0 80AEEBE0 AFB00014 */  sw      $s0, 0x0014($sp)           
/* 03FD4 80AEEBE4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 03FD8 80AEEBE8 0C2BB60F */  jal     func_80AED83C              
/* 03FDC 80AEEBEC 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 03FE0 80AEEBF0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03FE4 80AEEBF4 0C2BAB15 */  jal     func_80AEAC54              
/* 03FE8 80AEEBF8 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 03FEC 80AEEBFC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03FF0 80AEEC00 0C2BABB3 */  jal     func_80AEAECC              
/* 03FF4 80AEEC04 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 03FF8 80AEEC08 0C2BACC8 */  jal     func_80AEB320              
/* 03FFC 80AEEC0C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 04000 80AEEC10 0C2BAB87 */  jal     func_80AEAE1C              
/* 04004 80AEEC14 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 04008 80AEEC18 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0400C 80AEEC1C 0C2BBAED */  jal     func_80AEEBB4              
/* 04010 80AEEC20 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 04014 80AEEC24 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 04018 80AEEC28 0C2BB922 */  jal     func_80AEE488              
/* 0401C 80AEEC2C 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 04020 80AEEC30 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 04024 80AEEC34 0C2BB589 */  jal     func_80AED624              
/* 04028 80AEEC38 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 0402C 80AEEC3C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 04030 80AEEC40 0C2BB6B8 */  jal     func_80AEDAE0              
/* 04034 80AEEC44 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 04038 80AEEC48 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0403C 80AEEC4C 8FB00014 */  lw      $s0, 0x0014($sp)           
/* 04040 80AEEC50 8FB10018 */  lw      $s1, 0x0018($sp)           
/* 04044 80AEEC54 03E00008 */  jr      $ra                        
/* 04048 80AEEC58 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000


