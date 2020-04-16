glabel func_80AEB7E0
/* 00BD0 80AEB7E0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00BD4 80AEB7E4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00BD8 80AEB7E8 94A21D74 */  lhu     $v0, 0x1D74($a1)           ## 00001D74
/* 00BDC 80AEB7EC 94830004 */  lhu     $v1, 0x0004($a0)           ## 00000004
/* 00BE0 80AEB7F0 0043082A */  slt     $at, $v0, $v1              
/* 00BE4 80AEB7F4 5020001B */  beql    $at, $zero, .L80AEB864     
/* 00BE8 80AEB7F8 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 00BEC 80AEB7FC 94850002 */  lhu     $a1, 0x0002($a0)           ## 00000002
/* 00BF0 80AEB800 00653023 */  subu    $a2, $v1, $a1              
/* 00BF4 80AEB804 18C00016 */  blez    $a2, .L80AEB860            
/* 00BF8 80AEB808 00457023 */  subu    $t6, $v0, $a1              
/* 00BFC 80AEB80C 448E2000 */  mtc1    $t6, $f4                   ## $f4 = 0.00
/* 00C00 80AEB810 44864000 */  mtc1    $a2, $f8                   ## $f8 = 0.00
/* 00C04 80AEB814 3C014700 */  lui     $at, 0x4700                ## $at = 47000000
/* 00C08 80AEB818 468021A0 */  cvt.s.w $f6, $f4                   
/* 00C0C 80AEB81C 44819000 */  mtc1    $at, $f18                  ## $f18 = 32768.00
/* 00C10 80AEB820 468042A0 */  cvt.s.w $f10, $f8                  
/* 00C14 80AEB824 460A3403 */  div.s   $f16, $f6, $f10            
/* 00C18 80AEB828 46128102 */  mul.s   $f4, $f16, $f18            
/* 00C1C 80AEB82C 4600220D */  trunc.w.s $f8, $f4                   
/* 00C20 80AEB830 44044000 */  mfc1    $a0, $f8                   
/* 00C24 80AEB834 00000000 */  nop
/* 00C28 80AEB838 00042400 */  sll     $a0, $a0, 16               
/* 00C2C 80AEB83C 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 00C30 80AEB840 00042403 */  sra     $a0, $a0, 16               
/* 00C34 80AEB844 3C01BF00 */  lui     $at, 0xBF00                ## $at = BF000000
/* 00C38 80AEB848 44813000 */  mtc1    $at, $f6                   ## $f6 = -0.50
/* 00C3C 80AEB84C 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 00C40 80AEB850 44818000 */  mtc1    $at, $f16                  ## $f16 = 0.50
/* 00C44 80AEB854 46060282 */  mul.s   $f10, $f0, $f6             
/* 00C48 80AEB858 10000004 */  beq     $zero, $zero, .L80AEB86C   
/* 00C4C 80AEB85C 46105000 */  add.s   $f0, $f10, $f16            
.L80AEB860:
/* 00C50 80AEB860 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
.L80AEB864:
/* 00C54 80AEB864 44810000 */  mtc1    $at, $f0                   ## $f0 = 1.00
/* 00C58 80AEB868 00000000 */  nop
.L80AEB86C:
/* 00C5C 80AEB86C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00C60 80AEB870 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00C64 80AEB874 03E00008 */  jr      $ra                        
/* 00C68 80AEB878 00000000 */  nop
