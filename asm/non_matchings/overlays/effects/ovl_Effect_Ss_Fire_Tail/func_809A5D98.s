.late_rodata
glabel D_809A5E40
    .float 0.9
    .balign 4

.text
glabel func_809A5D98
/* 00658 809A5D98 AFA40000 */  sw      $a0, 0x0000($sp)           
/* 0065C 809A5D9C AFA50004 */  sw      $a1, 0x0004($sp)           
/* 00660 809A5DA0 84CE0040 */  lh      $t6, 0x0040($a2)           ## 00000040
/* 00664 809A5DA4 3C01809A */  lui     $at, %hi(D_809A5E40)       ## $at = 809A0000
/* 00668 809A5DA8 C4285E40 */  lwc1    $f8, %lo(D_809A5E40)($at)  
/* 0066C 809A5DAC 448E2000 */  mtc1    $t6, $f4                   ## $f4 = 0.00
/* 00670 809A5DB0 00000000 */  nop
/* 00674 809A5DB4 468021A0 */  cvt.s.w $f6, $f4                   
/* 00678 809A5DB8 46083282 */  mul.s   $f10, $f6, $f8             
/* 0067C 809A5DBC 4600540D */  trunc.w.s $f16, $f10                 
/* 00680 809A5DC0 44188000 */  mfc1    $t8, $f16                  
/* 00684 809A5DC4 03E00008 */  jr      $ra                        
/* 00688 809A5DC8 A4D80040 */  sh      $t8, 0x0040($a2)           ## 00000040
/* 0068C 809A5DCC 00000000 */  nop
