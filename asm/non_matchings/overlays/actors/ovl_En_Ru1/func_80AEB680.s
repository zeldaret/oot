glabel func_80AEB680
/* 00A70 80AEB680 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00A74 80AEB684 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00A78 80AEB688 AFA40030 */  sw      $a0, 0x0030($sp)           
/* 00A7C 80AEB68C AFA50034 */  sw      $a1, 0x0034($sp)           
/* 00A80 80AEB690 C4840024 */  lwc1    $f4, 0x0024($a0)           ## 00000024
/* 00A84 80AEB694 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 00A88 80AEB698 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 00A8C 80AEB69C E7A40024 */  swc1    $f4, 0x0024($sp)           
/* 00A90 80AEB6A0 C4880084 */  lwc1    $f8, 0x0084($a0)           ## 00000084
/* 00A94 80AEB6A4 C4860028 */  lwc1    $f6, 0x0028($a0)           ## 00000028
/* 00A98 80AEB6A8 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 00A9C 80AEB6AC 46083280 */  add.s   $f10, $f6, $f8             
/* 00AA0 80AEB6B0 E7AA0028 */  swc1    $f10, 0x0028($sp)          
/* 00AA4 80AEB6B4 C490002C */  lwc1    $f16, 0x002C($a0)          ## 0000002C
/* 00AA8 80AEB6B8 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00AAC 80AEB6BC 27A50024 */  addiu   $a1, $sp, 0x0024           ## $a1 = FFFFFFF4
/* 00AB0 80AEB6C0 AFA00014 */  sw      $zero, 0x0014($sp)         
/* 00AB4 80AEB6C4 AFAF0010 */  sw      $t7, 0x0010($sp)           
/* 00AB8 80AEB6C8 0C00A527 */  jal     func_8002949C              
/* 00ABC 80AEB6CC E7B0002C */  swc1    $f16, 0x002C($sp)          
/* 00AC0 80AEB6D0 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00AC4 80AEB6D4 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 00AC8 80AEB6D8 03E00008 */  jr      $ra                        
/* 00ACC 80AEB6DC 00000000 */  nop
