.late_rodata
glabel D_80AC9604
    .float 0.85

.text
glabel func_80AC6490
/* 037F0 80AC6490 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 037F4 80AC6494 44810000 */  mtc1    $at, $f0                   ## $f0 = 1.00
/* 037F8 80AC6498 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 037FC 80AC649C AFB00018 */  sw      $s0, 0x0018($sp)           
/* 03800 80AC64A0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 03804 80AC64A4 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 03808 80AC64A8 3C073E19 */  lui     $a3, 0x3E19                ## $a3 = 3E190000
/* 0380C 80AC64AC 44050000 */  mfc1    $a1, $f0                   
/* 03810 80AC64B0 44060000 */  mfc1    $a2, $f0                   
/* 03814 80AC64B4 34E7999A */  ori     $a3, $a3, 0x999A           ## $a3 = 3E19999A
/* 03818 80AC64B8 0C01E107 */  jal     Math_ApproachF
              
/* 0381C 80AC64BC 248402D0 */  addiu   $a0, $a0, 0x02D0           ## $a0 = 000002D0
/* 03820 80AC64C0 3C0180AD */  lui     $at, %hi(D_80AC9604)       ## $at = 80AD0000
/* 03824 80AC64C4 C4269604 */  lwc1    $f6, %lo(D_80AC9604)($at)  
/* 03828 80AC64C8 C60402D0 */  lwc1    $f4, 0x02D0($s0)           ## 000002D0
/* 0382C 80AC64CC 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 03830 80AC64D0 4604303E */  c.le.s  $f6, $f4                   
/* 03834 80AC64D4 00000000 */  nop
/* 03838 80AC64D8 45000004 */  bc1f    .L80AC64EC                 
/* 0383C 80AC64DC 00000000 */  nop
/* 03840 80AC64E0 44814000 */  mtc1    $at, $f8                   ## $f8 = 1.00
/* 03844 80AC64E4 00000000 */  nop
/* 03848 80AC64E8 E60802D0 */  swc1    $f8, 0x02D0($s0)           ## 000002D0
.L80AC64EC:
/* 0384C 80AC64EC 0C2B18E1 */  jal     func_80AC6384              
/* 03850 80AC64F0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03854 80AC64F4 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 03858 80AC64F8 44815000 */  mtc1    $at, $f10                  ## $f10 = 1.00
/* 0385C 80AC64FC C61002D0 */  lwc1    $f16, 0x02D0($s0)          ## 000002D0
/* 03860 80AC6500 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 03864 80AC6504 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 03868 80AC6508 46105032 */  c.eq.s  $f10, $f16                 
/* 0386C 80AC650C 00000000 */  nop
/* 03870 80AC6510 45000003 */  bc1f    .L80AC6520                 
/* 03874 80AC6514 00000000 */  nop
/* 03878 80AC6518 10000001 */  beq     $zero, $zero, .L80AC6520   
/* 0387C 80AC651C 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80AC6520:
/* 03880 80AC6520 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 03884 80AC6524 03E00008 */  jr      $ra                        
/* 03888 80AC6528 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
