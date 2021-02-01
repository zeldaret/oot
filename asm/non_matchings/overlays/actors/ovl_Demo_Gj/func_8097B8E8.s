glabel func_8097B8E8
/* 02FB8 8097B8E8 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 02FBC 8097B8EC AFBF001C */  sw      $ra, 0x001C($sp)           
/* 02FC0 8097B8F0 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 02FC4 8097B8F4 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 02FC8 8097B8F8 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 02FCC 8097B8FC 24060011 */  addiu   $a2, $zero, 0x0011         ## $a2 = 00000011
/* 02FD0 8097B900 0C25E3F3 */  jal     func_80978FCC              
/* 02FD4 8097B904 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 02FD8 8097B908 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 02FDC 8097B90C 3C078098 */  lui     $a3, %hi(D_8097BE38)       ## $a3 = 80980000
/* 02FE0 8097B910 24E7BE38 */  addiu   $a3, $a3, %lo(D_8097BE38)  ## $a3 = 8097BE38
/* 02FE4 8097B914 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 02FE8 8097B918 0C25E257 */  jal     func_8097895C              
/* 02FEC 8097B91C 24860184 */  addiu   $a2, $a0, 0x0184           ## $a2 = 00000184
/* 02FF0 8097B920 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 02FF4 8097B924 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 02FF8 8097B928 03E00008 */  jr      $ra                        
/* 02FFC 8097B92C 00000000 */  nop
