glabel func_80AEB4A8
/* 00898 80AEB4A8 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 0089C 80AEB4AC AFBF001C */  sw      $ra, 0x001C($sp)           
/* 008A0 80AEB4B0 AFA40030 */  sw      $a0, 0x0030($sp)           
/* 008A4 80AEB4B4 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 008A8 80AEB4B8 AFA60038 */  sw      $a2, 0x0038($sp)           
/* 008AC 80AEB4BC AFA7003C */  sw      $a3, 0x003C($sp)           
/* 008B0 80AEB4C0 C4840024 */  lwc1    $f4, 0x0024($a0)           ## 00000024
/* 008B4 80AEB4C4 87AF003E */  lh      $t7, 0x003E($sp)           
/* 008B8 80AEB4C8 87A7003A */  lh      $a3, 0x003A($sp)           
/* 008BC 80AEB4CC E7A40024 */  swc1    $f4, 0x0024($sp)           
/* 008C0 80AEB4D0 C4880084 */  lwc1    $f8, 0x0084($a0)           ## 00000084
/* 008C4 80AEB4D4 C4860028 */  lwc1    $f6, 0x0028($a0)           ## 00000028
/* 008C8 80AEB4D8 24060064 */  addiu   $a2, $zero, 0x0064         ## $a2 = 00000064
/* 008CC 80AEB4DC 46083280 */  add.s   $f10, $f6, $f8             
/* 008D0 80AEB4E0 E7AA0028 */  swc1    $f10, 0x0028($sp)          
/* 008D4 80AEB4E4 C490002C */  lwc1    $f16, 0x002C($a0)          ## 0000002C
/* 008D8 80AEB4E8 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 008DC 80AEB4EC 27A50024 */  addiu   $a1, $sp, 0x0024           ## $a1 = FFFFFFF4
/* 008E0 80AEB4F0 AFAF0010 */  sw      $t7, 0x0010($sp)           
/* 008E4 80AEB4F4 0C00A511 */  jal     func_80029444              
/* 008E8 80AEB4F8 E7B0002C */  swc1    $f16, 0x002C($sp)          
/* 008EC 80AEB4FC 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 008F0 80AEB500 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 008F4 80AEB504 03E00008 */  jr      $ra                        
/* 008F8 80AEB508 00000000 */  nop


