.late_rodata
glabel D_80B626B4
    .float 6.28

.text
glabel func_80B60EB0
/* 00C90 80B60EB0 27BDFF78 */  addiu   $sp, $sp, 0xFF78           ## $sp = FFFFFF78
/* 00C94 80B60EB4 F7BE0038 */  sdc1    $f30, 0x0038($sp)          
/* 00C98 80B60EB8 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 00C9C 80B60EBC 4481F000 */  mtc1    $at, $f30                  ## $f30 = 0.50
/* 00CA0 80B60EC0 F7BC0030 */  sdc1    $f28, 0x0030($sp)          
/* 00CA4 80B60EC4 3C013FC0 */  lui     $at, 0x3FC0                ## $at = 3FC00000
/* 00CA8 80B60EC8 4481E000 */  mtc1    $at, $f28                  ## $f28 = 1.50
/* 00CAC 80B60ECC F7BA0028 */  sdc1    $f26, 0x0028($sp)          
/* 00CB0 80B60ED0 3C0140C0 */  lui     $at, 0x40C0                ## $at = 40C00000
/* 00CB4 80B60ED4 4481D000 */  mtc1    $at, $f26                  ## $f26 = 6.00
/* 00CB8 80B60ED8 F7B80020 */  sdc1    $f24, 0x0020($sp)          
/* 00CBC 80B60EDC 3C014040 */  lui     $at, 0x4040                ## $at = 40400000
/* 00CC0 80B60EE0 AFB50058 */  sw      $s5, 0x0058($sp)           
/* 00CC4 80B60EE4 AFB40054 */  sw      $s4, 0x0054($sp)           
/* 00CC8 80B60EE8 AFB30050 */  sw      $s3, 0x0050($sp)           
/* 00CCC 80B60EEC AFB2004C */  sw      $s2, 0x004C($sp)           
/* 00CD0 80B60EF0 AFB10048 */  sw      $s1, 0x0048($sp)           
/* 00CD4 80B60EF4 AFB00044 */  sw      $s0, 0x0044($sp)           
/* 00CD8 80B60EF8 4481C000 */  mtc1    $at, $f24                  ## $f24 = 3.00
/* 00CDC 80B60EFC 00808825 */  or      $s1, $a0, $zero            ## $s1 = 00000000
/* 00CE0 80B60F00 AFBF005C */  sw      $ra, 0x005C($sp)           
/* 00CE4 80B60F04 F7B60018 */  sdc1    $f22, 0x0018($sp)          
/* 00CE8 80B60F08 F7B40010 */  sdc1    $f20, 0x0010($sp)          
/* 00CEC 80B60F0C 00008025 */  or      $s0, $zero, $zero          ## $s0 = 00000000
/* 00CF0 80B60F10 27B2007C */  addiu   $s2, $sp, 0x007C           ## $s2 = FFFFFFF4
/* 00CF4 80B60F14 24930024 */  addiu   $s3, $a0, 0x0024           ## $s3 = 00000024
/* 00CF8 80B60F18 27B40070 */  addiu   $s4, $sp, 0x0070           ## $s4 = FFFFFFE8
/* 00CFC 80B60F1C 24150014 */  addiu   $s5, $zero, 0x0014         ## $s5 = 00000014
.L80B60F20:
/* 00D00 80B60F20 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00D04 80B60F24 00000000 */  nop
/* 00D08 80B60F28 461C0102 */  mul.s   $f4, $f0, $f28             
/* 00D0C 80B60F2C 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00D10 80B60F30 461E2500 */  add.s   $f20, $f4, $f30            
/* 00D14 80B60F34 3C0180B6 */  lui     $at, %hi(D_80B626B4)       ## $at = 80B60000
/* 00D18 80B60F38 C42626B4 */  lwc1    $f6, %lo(D_80B626B4)($at)  
/* 00D1C 80B60F3C 46060582 */  mul.s   $f22, $f0, $f6             
/* 00D20 80B60F40 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00D24 80B60F44 00000000 */  nop
/* 00D28 80B60F48 46180202 */  mul.s   $f8, $f0, $f24             
/* 00D2C 80B60F4C 4600B306 */  mov.s   $f12, $f22                 
/* 00D30 80B60F50 46184280 */  add.s   $f10, $f8, $f24            
/* 00D34 80B60F54 0C0400A4 */  jal     sinf
              
/* 00D38 80B60F58 E7AA0074 */  swc1    $f10, 0x0074($sp)          
/* 00D3C 80B60F5C 46140402 */  mul.s   $f16, $f0, $f20            
/* 00D40 80B60F60 4600B306 */  mov.s   $f12, $f22                 
/* 00D44 80B60F64 0C041184 */  jal     cosf
              
/* 00D48 80B60F68 E7B00070 */  swc1    $f16, 0x0070($sp)          
/* 00D4C 80B60F6C 46140482 */  mul.s   $f18, $f0, $f20            
/* 00D50 80B60F70 3C073DA3 */  lui     $a3, 0x3DA3                ## $a3 = 3DA30000
/* 00D54 80B60F74 34E7D70A */  ori     $a3, $a3, 0xD70A           ## $a3 = 3DA3D70A
/* 00D58 80B60F78 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00D5C 80B60F7C 02402825 */  or      $a1, $s2, $zero            ## $a1 = FFFFFFF4
/* 00D60 80B60F80 02803025 */  or      $a2, $s4, $zero            ## $a2 = FFFFFFE8
/* 00D64 80B60F84 E7B20078 */  swc1    $f18, 0x0078($sp)          
/* 00D68 80B60F88 8E6F0000 */  lw      $t7, 0x0000($s3)           ## 00000024
/* 00D6C 80B60F8C AE4F0000 */  sw      $t7, 0x0000($s2)           ## FFFFFFF4
/* 00D70 80B60F90 8E6E0004 */  lw      $t6, 0x0004($s3)           ## 00000028
/* 00D74 80B60F94 AE4E0004 */  sw      $t6, 0x0004($s2)           ## FFFFFFF8
/* 00D78 80B60F98 8E6F0008 */  lw      $t7, 0x0008($s3)           ## 0000002C
/* 00D7C 80B60F9C AE4F0008 */  sw      $t7, 0x0008($s2)           ## FFFFFFFC
/* 00D80 80B60FA0 C7A60070 */  lwc1    $f6, 0x0070($sp)           
/* 00D84 80B60FA4 C7B20078 */  lwc1    $f18, 0x0078($sp)          
/* 00D88 80B60FA8 C7A4007C */  lwc1    $f4, 0x007C($sp)           
/* 00D8C 80B60FAC 461A3202 */  mul.s   $f8, $f6, $f26             
/* 00D90 80B60FB0 C7B00084 */  lwc1    $f16, 0x0084($sp)          
/* 00D94 80B60FB4 461A9182 */  mul.s   $f6, $f18, $f26            
/* 00D98 80B60FB8 46082280 */  add.s   $f10, $f4, $f8             
/* 00D9C 80B60FBC C7A80080 */  lwc1    $f8, 0x0080($sp)           
/* 00DA0 80B60FC0 46068100 */  add.s   $f4, $f16, $f6             
/* 00DA4 80B60FC4 E7AA007C */  swc1    $f10, 0x007C($sp)          
/* 00DA8 80B60FC8 E7A40084 */  swc1    $f4, 0x0084($sp)           
/* 00DAC 80B60FCC C62A0084 */  lwc1    $f10, 0x0084($s1)          ## 00000084
/* 00DB0 80B60FD0 460A4480 */  add.s   $f18, $f8, $f10            
/* 00DB4 80B60FD4 0C2D80F9 */  jal     func_80B603E4              
/* 00DB8 80B60FD8 E7B20080 */  swc1    $f18, 0x0080($sp)          
/* 00DBC 80B60FDC 26100001 */  addiu   $s0, $s0, 0x0001           ## $s0 = 00000001
/* 00DC0 80B60FE0 1615FFCF */  bne     $s0, $s5, .L80B60F20       
/* 00DC4 80B60FE4 00000000 */  nop
/* 00DC8 80B60FE8 8FBF005C */  lw      $ra, 0x005C($sp)           
/* 00DCC 80B60FEC D7B40010 */  ldc1    $f20, 0x0010($sp)          
/* 00DD0 80B60FF0 D7B60018 */  ldc1    $f22, 0x0018($sp)          
/* 00DD4 80B60FF4 D7B80020 */  ldc1    $f24, 0x0020($sp)          
/* 00DD8 80B60FF8 D7BA0028 */  ldc1    $f26, 0x0028($sp)          
/* 00DDC 80B60FFC D7BC0030 */  ldc1    $f28, 0x0030($sp)          
/* 00DE0 80B61000 D7BE0038 */  ldc1    $f30, 0x0038($sp)          
/* 00DE4 80B61004 8FB00044 */  lw      $s0, 0x0044($sp)           
/* 00DE8 80B61008 8FB10048 */  lw      $s1, 0x0048($sp)           
/* 00DEC 80B6100C 8FB2004C */  lw      $s2, 0x004C($sp)           
/* 00DF0 80B61010 8FB30050 */  lw      $s3, 0x0050($sp)           
/* 00DF4 80B61014 8FB40054 */  lw      $s4, 0x0054($sp)           
/* 00DF8 80B61018 8FB50058 */  lw      $s5, 0x0058($sp)           
/* 00DFC 80B6101C 03E00008 */  jr      $ra                        
/* 00E00 80B61020 27BD0088 */  addiu   $sp, $sp, 0x0088           ## $sp = 00000000
