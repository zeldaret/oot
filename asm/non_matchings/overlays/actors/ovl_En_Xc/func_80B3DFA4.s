glabel func_80B3DFA4
/* 01DC4 80B3DFA4 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 01DC8 80B3DFA8 44813000 */  mtc1    $at, $f6                   ## $f6 = 1.00
/* 01DCC 80B3DFAC C4840268 */  lwc1    $f4, 0x0268($a0)           ## 00000268
/* 01DD0 80B3DFB0 3C014140 */  lui     $at, 0x4140                ## $at = 41400000
/* 01DD4 80B3DFB4 44818000 */  mtc1    $at, $f16                  ## $f16 = 12.00
/* 01DD8 80B3DFB8 46062200 */  add.s   $f8, $f4, $f6              
/* 01DDC 80B3DFBC 3C0E8016 */  lui     $t6, 0x8016                ## $t6 = 80160000
/* 01DE0 80B3DFC0 E4880268 */  swc1    $f8, 0x0268($a0)           ## 00000268
/* 01DE4 80B3DFC4 C48A0268 */  lwc1    $f10, 0x0268($a0)          ## 00000268
/* 01DE8 80B3DFC8 460A803E */  c.le.s  $f16, $f10                 
/* 01DEC 80B3DFCC 00000000 */  nop
/* 01DF0 80B3DFD0 4500000E */  bc1f    .L80B3E00C                 
/* 01DF4 80B3DFD4 00000000 */  nop
/* 01DF8 80B3DFD8 8DCEFA90 */  lw      $t6, -0x0570($t6)          ## 8015FA90
/* 01DFC 80B3DFDC 3C0180B4 */  lui     $at, %hi(D_80B42234)       ## $at = 80B40000
/* 01E00 80B3DFE0 C4262234 */  lwc1    $f6, %lo(D_80B42234)($at)  
/* 01E04 80B3DFE4 85CF1458 */  lh      $t7, 0x1458($t6)           ## 80161458
/* 01E08 80B3DFE8 3C0180B4 */  lui     $at, %hi(D_80B42238)       ## $at = 80B40000
/* 01E0C 80B3DFEC C42A2238 */  lwc1    $f10, %lo(D_80B42238)($at) 
/* 01E10 80B3DFF0 448F9000 */  mtc1    $t7, $f18                  ## $f18 = 0.00
/* 01E14 80B3DFF4 2418000F */  addiu   $t8, $zero, 0x000F         ## $t8 = 0000000F
/* 01E18 80B3DFF8 AC980260 */  sw      $t8, 0x0260($a0)           ## 00000260
/* 01E1C 80B3DFFC 46809120 */  cvt.s.w $f4, $f18                  
/* 01E20 80B3E000 46062202 */  mul.s   $f8, $f4, $f6              
/* 01E24 80B3E004 460A4400 */  add.s   $f16, $f8, $f10            
/* 01E28 80B3E008 E4900068 */  swc1    $f16, 0x0068($a0)          ## 00000068
.L80B3E00C:
/* 01E2C 80B3E00C 03E00008 */  jr      $ra                        
/* 01E30 80B3E010 00000000 */  nop


