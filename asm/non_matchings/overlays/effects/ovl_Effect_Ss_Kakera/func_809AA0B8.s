glabel func_809AA0B8
/* 00A38 809AA0B8 AFA50004 */  sw      $a1, 0x0004($sp)           
/* 00A3C 809AA0BC AFA60008 */  sw      $a2, 0x0008($sp)           
/* 00A40 809AA0C0 848E0042 */  lh      $t6, 0x0042($a0)           ## 00000042
/* 00A44 809AA0C4 3C013B80 */  lui     $at, 0x3B80                ## $at = 3B800000
/* 00A48 809AA0C8 44814000 */  mtc1    $at, $f8                   ## $f8 = 0.00
/* 00A4C 809AA0CC 448E2000 */  mtc1    $t6, $f4                   ## $f4 = 0.00
/* 00A50 809AA0D0 C490001C */  lwc1    $f16, 0x001C($a0)          ## 0000001C
/* 00A54 809AA0D4 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 00A58 809AA0D8 468021A0 */  cvt.s.w $f6, $f4                   
/* 00A5C 809AA0DC 46083282 */  mul.s   $f10, $f6, $f8             
/* 00A60 809AA0E0 460A8480 */  add.s   $f18, $f16, $f10           
/* 00A64 809AA0E4 03E00008 */  jr      $ra                        
/* 00A68 809AA0E8 E492001C */  swc1    $f18, 0x001C($a0)          ## 0000001C
