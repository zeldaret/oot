.late_rodata
glabel D_80B91040
    .float 0.17434467
glabel D_80B91044
    .float 0.12207746

.text
glabel func_80B8F964
/* 00EE4 80B8F964 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00EE8 80B8F968 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00EEC 80B8F96C 848E01D0 */  lh      $t6, 0x01D0($a0)           ## 000001D0
/* 00EF0 80B8F970 00802825 */  or      $a1, $a0, $zero            ## $a1 = 00000000
/* 00EF4 80B8F974 25CFF6A0 */  addiu   $t7, $t6, 0xF6A0           ## $t7 = FFFFF6A0
/* 00EF8 80B8F978 A48F01D0 */  sh      $t7, 0x01D0($a0)           ## 000001D0
/* 00EFC 80B8F97C 848401D0 */  lh      $a0, 0x01D0($a0)           ## 000001D0
/* 00F00 80B8F980 0C01DE1C */  jal     Math_SinS
              ## sins?
/* 00F04 80B8F984 AFA50018 */  sw      $a1, 0x0018($sp)           
/* 00F08 80B8F988 3C0180B9 */  lui     $at, %hi(D_80B91040)       ## $at = 80B90000
/* 00F0C 80B8F98C C4241040 */  lwc1    $f4, %lo(D_80B91040)($at)  
/* 00F10 80B8F990 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 00F14 80B8F994 46040182 */  mul.s   $f6, $f0, $f4              
/* 00F18 80B8F998 84A401D0 */  lh      $a0, 0x01D0($a1)           ## 000001D0
/* 00F1C 80B8F99C 0C01DE0D */  jal     Math_CosS
              ## coss?
/* 00F20 80B8F9A0 E4A60054 */  swc1    $f6, 0x0054($a1)           ## 00000054
/* 00F24 80B8F9A4 3C0180B9 */  lui     $at, %hi(D_80B91044)       ## $at = 80B90000
/* 00F28 80B8F9A8 C4281044 */  lwc1    $f8, %lo(D_80B91044)($at)  
/* 00F2C 80B8F9AC 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 00F30 80B8F9B0 46080082 */  mul.s   $f2, $f0, $f8              
/* 00F34 80B8F9B4 84B801D0 */  lh      $t8, 0x01D0($a1)           ## 000001D0
/* 00F38 80B8F9B8 2B0118E4 */  slti    $at, $t8, 0x18E4           
/* 00F3C 80B8F9BC E4A20058 */  swc1    $f2, 0x0058($a1)           ## 00000058
/* 00F40 80B8F9C0 10200003 */  beq     $at, $zero, .L80B8F9D0     
/* 00F44 80B8F9C4 E4A20050 */  swc1    $f2, 0x0050($a1)           ## 00000050
/* 00F48 80B8F9C8 0C2E3E78 */  jal     func_80B8F9E0              
/* 00F4C 80B8F9CC 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
.L80B8F9D0:
/* 00F50 80B8F9D0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00F54 80B8F9D4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00F58 80B8F9D8 03E00008 */  jr      $ra                        
/* 00F5C 80B8F9DC 00000000 */  nop
