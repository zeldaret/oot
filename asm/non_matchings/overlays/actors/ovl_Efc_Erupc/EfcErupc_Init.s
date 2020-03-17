glabel EfcErupc_Init
/* 00008 8099CCB8 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 0000C 8099CCBC AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00010 8099CCC0 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00014 8099CCC4 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00018 8099CCC8 3C05809A */  lui     $a1, %hi(func_8099CD2C)    ## $a1 = 809A0000
/* 0001C 8099CCCC 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00020 8099CCD0 0C26732C */  jal     func_8099CCB0              
/* 00024 8099CCD4 24A5CD2C */  addiu   $a1, $a1, %lo(func_8099CD2C) ## $a1 = 8099CD2C
/* 00028 8099CCD8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0002C 8099CCDC 0C00B58B */  jal     Actor_SetScale
              
/* 00030 8099CCE0 3C053F80 */  lui     $a1, 0x3F80                ## $a1 = 3F800000
/* 00034 8099CCE4 0C2675C7 */  jal     func_8099D71C              
/* 00038 8099CCE8 26040158 */  addiu   $a0, $s0, 0x0158           ## $a0 = 00000158
/* 0003C 8099CCEC A6000150 */  sh      $zero, 0x0150($s0)         ## 00000150
/* 00040 8099CCF0 86020150 */  lh      $v0, 0x0150($s0)           ## 00000150
/* 00044 8099CCF4 240E0005 */  addiu   $t6, $zero, 0x0005         ## $t6 = 00000005
/* 00048 8099CCF8 240FFF9C */  addiu   $t7, $zero, 0xFF9C         ## $t7 = FFFFFF9C
/* 0004C 8099CCFC A60E0152 */  sh      $t6, 0x0152($s0)           ## 00000152
/* 00050 8099CD00 A60F0154 */  sh      $t7, 0x0154($s0)           ## 00000154
/* 00054 8099CD04 A602014E */  sh      $v0, 0x014E($s0)           ## 0000014E
/* 00058 8099CD08 A602014C */  sh      $v0, 0x014C($s0)           ## 0000014C
/* 0005C 8099CD0C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00060 8099CD10 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00064 8099CD14 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00068 8099CD18 03E00008 */  jr      $ra                        
/* 0006C 8099CD1C 00000000 */  nop


