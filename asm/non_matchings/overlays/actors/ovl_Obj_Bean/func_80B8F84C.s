glabel func_80B8F84C
/* 00DCC 80B8F84C 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00DD0 80B8F850 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00DD4 80B8F854 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00DD8 80B8F858 848E01C0 */  lh      $t6, 0x01C0($a0)           ## 000001C0
/* 00DDC 80B8F85C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00DE0 80B8F860 25CFFFFF */  addiu   $t7, $t6, 0xFFFF           ## $t7 = FFFFFFFF
/* 00DE4 80B8F864 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00DE8 80B8F868 A48F01C0 */  sh      $t7, 0x01C0($a0)           ## 000001C0
/* 00DEC 80B8F86C 3C0180B9 */  lui     $at, %hi(D_80B91034)       ## $at = 80B90000
/* 00DF0 80B8F870 C4241034 */  lwc1    $f4, %lo(D_80B91034)($at)  
/* 00DF4 80B8F874 24040898 */  addiu   $a0, $zero, 0x0898         ## $a0 = 00000898
/* 00DF8 80B8F878 4604003C */  c.lt.s  $f0, $f4                   
/* 00DFC 80B8F87C 00000000 */  nop
/* 00E00 80B8F880 45000008 */  bc1f    .L80B8F8A4                 
/* 00E04 80B8F884 00000000 */  nop
/* 00E08 80B8F888 0C01DF64 */  jal     Math_Rand_S16Offset
              
/* 00E0C 80B8F88C 240503E8 */  addiu   $a1, $zero, 0x03E8         ## $a1 = 000003E8
/* 00E10 80B8F890 A60201C4 */  sh      $v0, 0x01C4($s0)           ## 000001C4
/* 00E14 80B8F894 24042EE0 */  addiu   $a0, $zero, 0x2EE0         ## $a0 = 00002EE0
/* 00E18 80B8F898 0C01DF64 */  jal     Math_Rand_S16Offset
              
/* 00E1C 80B8F89C 24051F40 */  addiu   $a1, $zero, 0x1F40         ## $a1 = 00001F40
/* 00E20 80B8F8A0 A60201CA */  sh      $v0, 0x01CA($s0)           ## 000001CA
.L80B8F8A4:
/* 00E24 80B8F8A4 0C2E3D67 */  jal     func_80B8F59C              
/* 00E28 80B8F8A8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00E2C 80B8F8AC 861801C0 */  lh      $t8, 0x01C0($s0)           ## 000001C0
/* 00E30 80B8F8B0 07030004 */  bgezl   $t8, .L80B8F8C4            
/* 00E34 80B8F8B4 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00E38 80B8F8B8 0C2E3E35 */  jal     func_80B8F8D4              
/* 00E3C 80B8F8BC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00E40 80B8F8C0 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80B8F8C4:
/* 00E44 80B8F8C4 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00E48 80B8F8C8 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00E4C 80B8F8CC 03E00008 */  jr      $ra                        
/* 00E50 80B8F8D0 00000000 */  nop


