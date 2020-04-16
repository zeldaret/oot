glabel func_80AEB89C
/* 00C8C 80AEB89C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00C90 80AEB8A0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00C94 80AEB8A4 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00C98 80AEB8A8 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 00C9C 80AEB8AC 0C2BAD0E */  jal     func_80AEB438              
/* 00CA0 80AEB8B0 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00CA4 80AEB8B4 10400013 */  beq     $v0, $zero, .L80AEB904     
/* 00CA8 80AEB8B8 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 00CAC 80AEB8BC 84430008 */  lh      $v1, 0x0008($v0)           ## 00000008
/* 00CB0 80AEB8C0 A4C300B6 */  sh      $v1, 0x00B6($a2)           ## 000000B6
/* 00CB4 80AEB8C4 A4C30032 */  sh      $v1, 0x0032($a2)           ## 00000032
/* 00CB8 80AEB8C8 8C4E000C */  lw      $t6, 0x000C($v0)           ## 0000000C
/* 00CBC 80AEB8CC 448E2000 */  mtc1    $t6, $f4                   ## $f4 = 0.00
/* 00CC0 80AEB8D0 00000000 */  nop
/* 00CC4 80AEB8D4 468021A0 */  cvt.s.w $f6, $f4                   
/* 00CC8 80AEB8D8 E4C60024 */  swc1    $f6, 0x0024($a2)           ## 00000024
/* 00CCC 80AEB8DC 8C4F0010 */  lw      $t7, 0x0010($v0)           ## 00000010
/* 00CD0 80AEB8E0 448F4000 */  mtc1    $t7, $f8                   ## $f8 = 0.00
/* 00CD4 80AEB8E4 00000000 */  nop
/* 00CD8 80AEB8E8 468042A0 */  cvt.s.w $f10, $f8                  
/* 00CDC 80AEB8EC E4CA0028 */  swc1    $f10, 0x0028($a2)          ## 00000028
/* 00CE0 80AEB8F0 8C580014 */  lw      $t8, 0x0014($v0)           ## 00000014
/* 00CE4 80AEB8F4 44988000 */  mtc1    $t8, $f16                  ## $f16 = 0.00
/* 00CE8 80AEB8F8 00000000 */  nop
/* 00CEC 80AEB8FC 468084A0 */  cvt.s.w $f18, $f16                 
/* 00CF0 80AEB900 E4D2002C */  swc1    $f18, 0x002C($a2)          ## 0000002C
.L80AEB904:
/* 00CF4 80AEB904 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00CF8 80AEB908 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00CFC 80AEB90C 03E00008 */  jr      $ra                        
/* 00D00 80AEB910 00000000 */  nop
