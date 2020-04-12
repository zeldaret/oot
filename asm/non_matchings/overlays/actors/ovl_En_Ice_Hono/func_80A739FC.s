.late_rodata
glabel D_80A74148
    .float 0.005

glabel D_80A7414C
 .word 0x3B83126F
glabel D_80A74150
    .float 1.6

glabel D_80A74154
    .float 0.005

glabel D_80A74158
 .word 0x3B449BA6

.text
glabel func_80A739FC
/* 00A0C 80A739FC 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00A10 80A73A00 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00A14 80A73A04 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00A18 80A73A08 8499001C */  lh      $t9, 0x001C($a0)           ## 0000001C
/* 00A1C 80A73A0C 3C0E80A7 */  lui     $t6, %hi(func_80A73AD0)    ## $t6 = 80A70000
/* 00A20 80A73A10 25CE3AD0 */  addiu   $t6, $t6, %lo(func_80A73AD0) ## $t6 = 80A73AD0
/* 00A24 80A73A14 240F002C */  addiu   $t7, $zero, 0x002C         ## $t7 = 0000002C
/* 00A28 80A73A18 241800FF */  addiu   $t8, $zero, 0x00FF         ## $t8 = 000000FF
/* 00A2C 80A73A1C 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00A30 80A73A20 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00A34 80A73A24 AC8E014C */  sw      $t6, 0x014C($a0)           ## 0000014C
/* 00A38 80A73A28 A48F0152 */  sh      $t7, 0x0152($a0)           ## 00000152
/* 00A3C 80A73A2C 17210013 */  bne     $t9, $at, .L80A73A7C       
/* 00A40 80A73A30 A4980150 */  sh      $t8, 0x0150($a0)           ## 00000150
/* 00A44 80A73A34 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00A48 80A73A38 00000000 */  nop
/* 00A4C 80A73A3C 3C0180A7 */  lui     $at, %hi(D_80A74148)       ## $at = 80A70000
/* 00A50 80A73A40 C4244148 */  lwc1    $f4, %lo(D_80A74148)($at)  
/* 00A54 80A73A44 3C0180A7 */  lui     $at, %hi(D_80A7414C)       ## $at = 80A70000
/* 00A58 80A73A48 C428414C */  lwc1    $f8, %lo(D_80A7414C)($at)  
/* 00A5C 80A73A4C 46040182 */  mul.s   $f6, $f0, $f4              
/* 00A60 80A73A50 46083280 */  add.s   $f10, $f6, $f8             
/* 00A64 80A73A54 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00A68 80A73A58 E60A0158 */  swc1    $f10, 0x0158($s0)          ## 00000158
/* 00A6C 80A73A5C 3C0180A7 */  lui     $at, %hi(D_80A74150)       ## $at = 80A70000
/* 00A70 80A73A60 C4304150 */  lwc1    $f16, %lo(D_80A74150)($at) 
/* 00A74 80A73A64 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 00A78 80A73A68 44812000 */  mtc1    $at, $f4                   ## $f4 = 0.50
/* 00A7C 80A73A6C 46100482 */  mul.s   $f18, $f0, $f16            
/* 00A80 80A73A70 46049180 */  add.s   $f6, $f18, $f4             
/* 00A84 80A73A74 10000011 */  beq     $zero, $zero, .L80A73ABC   
/* 00A88 80A73A78 E6060068 */  swc1    $f6, 0x0068($s0)           ## 00000068
.L80A73A7C:
/* 00A8C 80A73A7C 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00A90 80A73A80 00000000 */  nop
/* 00A94 80A73A84 3C0180A7 */  lui     $at, %hi(D_80A74154)       ## $at = 80A70000
/* 00A98 80A73A88 C4284154 */  lwc1    $f8, %lo(D_80A74154)($at)  
/* 00A9C 80A73A8C 3C0180A7 */  lui     $at, %hi(D_80A74158)       ## $at = 80A70000
/* 00AA0 80A73A90 C4304158 */  lwc1    $f16, %lo(D_80A74158)($at) 
/* 00AA4 80A73A94 46080282 */  mul.s   $f10, $f0, $f8             
/* 00AA8 80A73A98 46105480 */  add.s   $f18, $f10, $f16           
/* 00AAC 80A73A9C 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00AB0 80A73AA0 E6120158 */  swc1    $f18, 0x0158($s0)          ## 00000158
/* 00AB4 80A73AA4 46000100 */  add.s   $f4, $f0, $f0              
/* 00AB8 80A73AA8 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 00ABC 80A73AAC 44813000 */  mtc1    $at, $f6                   ## $f6 = 0.50
/* 00AC0 80A73AB0 00000000 */  nop
/* 00AC4 80A73AB4 46062200 */  add.s   $f8, $f4, $f6              
/* 00AC8 80A73AB8 E6080068 */  swc1    $f8, 0x0068($s0)           ## 00000068
.L80A73ABC:
/* 00ACC 80A73ABC 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00AD0 80A73AC0 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00AD4 80A73AC4 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00AD8 80A73AC8 03E00008 */  jr      $ra                        
/* 00ADC 80A73ACC 00000000 */  nop
