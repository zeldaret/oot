glabel func_80AADE60
/* 006F0 80AADE60 000670C0 */  sll     $t6, $a2,  3               
/* 006F4 80AADE64 008E7821 */  addu    $t7, $a0, $t6              
/* 006F8 80AADE68 8DE80004 */  lw      $t0, 0x0004($t7)           ## 00000004
/* 006FC 80AADE6C 3C0A8016 */  lui     $t2, 0x8016                ## $t2 = 80160000
/* 00700 80AADE70 3C0100FF */  lui     $at, 0x00FF                ## $at = 00FF0000
/* 00704 80AADE74 0008C100 */  sll     $t8, $t0,  4               
/* 00708 80AADE78 0018CF02 */  srl     $t9, $t8, 28               
/* 0070C 80AADE7C 00194880 */  sll     $t1, $t9,  2               
/* 00710 80AADE80 01495021 */  addu    $t2, $t2, $t1              
/* 00714 80AADE84 8D4A6FA8 */  lw      $t2, 0x6FA8($t2)           ## 80166FA8
/* 00718 80AADE88 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
/* 0071C 80AADE8C 00076880 */  sll     $t5, $a3,  2               
/* 00720 80AADE90 01A76823 */  subu    $t5, $t5, $a3              
/* 00724 80AADE94 01015824 */  and     $t3, $t0, $at              
/* 00728 80AADE98 000D6840 */  sll     $t5, $t5,  1               
/* 0072C 80AADE9C 014B6021 */  addu    $t4, $t2, $t3              
/* 00730 80AADEA0 018D1821 */  addu    $v1, $t4, $t5              
/* 00734 80AADEA4 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 00738 80AADEA8 00611821 */  addu    $v1, $v1, $at              
/* 0073C 80AADEAC 846E0000 */  lh      $t6, 0x0000($v1)           ## 00000000
/* 00740 80AADEB0 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 00744 80AADEB4 448E2000 */  mtc1    $t6, $f4                   ## $f4 = 0.00
/* 00748 80AADEB8 00000000 */  nop
/* 0074C 80AADEBC 468021A0 */  cvt.s.w $f6, $f4                   
/* 00750 80AADEC0 E4A60000 */  swc1    $f6, 0x0000($a1)           ## 00000000
/* 00754 80AADEC4 846F0002 */  lh      $t7, 0x0002($v1)           ## 00000002
/* 00758 80AADEC8 448F4000 */  mtc1    $t7, $f8                   ## $f8 = 0.00
/* 0075C 80AADECC 00000000 */  nop
/* 00760 80AADED0 468042A0 */  cvt.s.w $f10, $f8                  
/* 00764 80AADED4 E4AA0004 */  swc1    $f10, 0x0004($a1)          ## 00000004
/* 00768 80AADED8 84780004 */  lh      $t8, 0x0004($v1)           ## 00000004
/* 0076C 80AADEDC 44988000 */  mtc1    $t8, $f16                  ## $f16 = 0.00
/* 00770 80AADEE0 00000000 */  nop
/* 00774 80AADEE4 468084A0 */  cvt.s.w $f18, $f16                 
/* 00778 80AADEE8 03E00008 */  jr      $ra                        
/* 0077C 80AADEEC E4B20008 */  swc1    $f18, 0x0008($a1)          ## 00000008


