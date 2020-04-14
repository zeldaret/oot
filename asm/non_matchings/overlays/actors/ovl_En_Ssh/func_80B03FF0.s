glabel func_80B03FF0
/* 01D80 80B03FF0 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 01D84 80B03FF4 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 01D88 80B03FF8 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 01D8C 80B03FFC 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01D90 80B04000 0C2C0BB7 */  jal     func_80B02EDC              
/* 01D94 80B04004 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 01D98 80B04008 14400009 */  bne     $v0, $zero, .L80B04030     
/* 01D9C 80B0400C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01DA0 80B04010 3C0580B0 */  lui     $a1, %hi(func_80B03968)    ## $a1 = 80B00000
/* 01DA4 80B04014 0C2C089C */  jal     func_80B02270              
/* 01DA8 80B04018 24A53968 */  addiu   $a1, $a1, %lo(func_80B03968) ## $a1 = 80B03968
/* 01DAC 80B0401C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01DB0 80B04020 0C2C0E5A */  jal     func_80B03968              
/* 01DB4 80B04024 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 01DB8 80B04028 1000000E */  beq     $zero, $zero, .L80B04064   
/* 01DBC 80B0402C 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80B04030:
/* 01DC0 80B04030 0C2C0A21 */  jal     func_80B02884              
/* 01DC4 80B04034 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01DC8 80B04038 960E05CA */  lhu     $t6, 0x05CA($s0)           ## 000005CA
/* 01DCC 80B0403C 3C0580B0 */  lui     $a1, %hi(func_80B03C8C)    ## $a1 = 80B00000
/* 01DD0 80B04040 24A53C8C */  addiu   $a1, $a1, %lo(func_80B03C8C) ## $a1 = 80B03C8C
/* 01DD4 80B04044 35CF0004 */  ori     $t7, $t6, 0x0004           ## $t7 = 00000004
/* 01DD8 80B04048 A60F05CA */  sh      $t7, 0x05CA($s0)           ## 000005CA
/* 01DDC 80B0404C 0C2C089C */  jal     func_80B02270              
/* 01DE0 80B04050 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01DE4 80B04054 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01DE8 80B04058 0C2C0F23 */  jal     func_80B03C8C              
/* 01DEC 80B0405C 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 01DF0 80B04060 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80B04064:
/* 01DF4 80B04064 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 01DF8 80B04068 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 01DFC 80B0406C 03E00008 */  jr      $ra                        
/* 01E00 80B04070 00000000 */  nop
