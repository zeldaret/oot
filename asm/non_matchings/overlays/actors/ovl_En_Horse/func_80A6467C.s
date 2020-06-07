glabel func_80A6467C
/* 0938C 80A6467C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 09390 80A64680 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 09394 80A64684 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 09398 80A64688 E7AC0018 */  swc1    $f12, 0x0018($sp)          
/* 0939C 80A6468C C7A40018 */  lwc1    $f4, 0x0018($sp)           
/* 093A0 80A64690 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 093A4 80A64694 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 093A8 80A64698 46040182 */  mul.s   $f6, $f0, $f4              
/* 093AC 80A6469C 4600320D */  trunc.w.s $f8, $f6                   
/* 093B0 80A646A0 44024000 */  mfc1    $v0, $f8                   
/* 093B4 80A646A4 03E00008 */  jr      $ra                        
/* 093B8 80A646A8 00000000 */  nop
