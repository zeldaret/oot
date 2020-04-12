.late_rodata
glabel D_80B91038
    .float 0.17434467
glabel D_80B9103C
    .float 0.12207746

.text
glabel func_80B8F8E4
/* 00E64 80B8F8E4 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00E68 80B8F8E8 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00E6C 80B8F8EC 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00E70 80B8F8F0 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00E74 80B8F8F4 248401D0 */  addiu   $a0, $a0, 0x01D0           ## $a0 = 000001D0
/* 00E78 80B8F8F8 240533E9 */  addiu   $a1, $zero, 0x33E9         ## $a1 = 000033E9
/* 00E7C 80B8F8FC 0C01DE5F */  jal     Math_ApproxS
              
/* 00E80 80B8F900 24060168 */  addiu   $a2, $zero, 0x0168         ## $a2 = 00000168
/* 00E84 80B8F904 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 00E88 80B8F908 860401D0 */  lh      $a0, 0x01D0($s0)           ## 000001D0
/* 00E8C 80B8F90C 3C0180B9 */  lui     $at, %hi(D_80B91038)       ## $at = 80B90000
/* 00E90 80B8F910 C4241038 */  lwc1    $f4, %lo(D_80B91038)($at)  
/* 00E94 80B8F914 860401D0 */  lh      $a0, 0x01D0($s0)           ## 000001D0
/* 00E98 80B8F918 46040182 */  mul.s   $f6, $f0, $f4              
/* 00E9C 80B8F91C 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 00EA0 80B8F920 E6060054 */  swc1    $f6, 0x0054($s0)           ## 00000054
/* 00EA4 80B8F924 3C0180B9 */  lui     $at, %hi(D_80B9103C)       ## $at = 80B90000
/* 00EA8 80B8F928 C428103C */  lwc1    $f8, %lo(D_80B9103C)($at)  
/* 00EAC 80B8F92C 46080082 */  mul.s   $f2, $f0, $f8              
/* 00EB0 80B8F930 E6020058 */  swc1    $f2, 0x0058($s0)           ## 00000058
/* 00EB4 80B8F934 E6020050 */  swc1    $f2, 0x0050($s0)           ## 00000050
/* 00EB8 80B8F938 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00EBC 80B8F93C 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00EC0 80B8F940 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00EC4 80B8F944 03E00008 */  jr      $ra                        
/* 00EC8 80B8F948 00000000 */  nop
