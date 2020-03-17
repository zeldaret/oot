glabel func_80A68DB0
/* 00750 80A68DB0 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00754 80A68DB4 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00758 80A68DB8 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 0075C 80A68DBC AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00760 80A68DC0 8C8E0150 */  lw      $t6, 0x0150($a0)           ## 00000150
/* 00764 80A68DC4 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 00768 80A68DC8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0076C 80A68DCC 55C10004 */  bnel    $t6, $at, .L80A68DE0       
/* 00770 80A68DD0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00774 80A68DD4 0C29A21C */  jal     func_80A68870              
/* 00778 80A68DD8 00000000 */  nop
/* 0077C 80A68DDC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80A68DE0:
/* 00780 80A68DE0 0C29A1AA */  jal     func_80A686A8              
/* 00784 80A68DE4 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 00788 80A68DE8 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 0078C 80A68DEC 260401A0 */  addiu   $a0, $s0, 0x01A0           ## $a0 = 000001A0
/* 00790 80A68DF0 50400004 */  beql    $v0, $zero, .L80A68E04     
/* 00794 80A68DF4 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00798 80A68DF8 0C29A2C8 */  jal     func_80A68B20              
/* 0079C 80A68DFC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 007A0 80A68E00 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80A68E04:
/* 007A4 80A68E04 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 007A8 80A68E08 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 007AC 80A68E0C 03E00008 */  jr      $ra                        
/* 007B0 80A68E10 00000000 */  nop


