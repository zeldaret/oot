glabel func_808B7BB0
/* 004A0 808B7BB0 A480020C */  sh      $zero, 0x020C($a0)         ## 0000020C
/* 004A4 808B7BB4 848F020C */  lh      $t7, 0x020C($a0)           ## 0000020C
/* 004A8 808B7BB8 3C0E808B */  lui     $t6, %hi(func_808B7BCC)    ## $t6 = 808B0000
/* 004AC 808B7BBC 25CE7BCC */  addiu   $t6, $t6, %lo(func_808B7BCC) ## $t6 = 808B7BCC
/* 004B0 808B7BC0 AC8E0204 */  sw      $t6, 0x0204($a0)           ## 00000204
/* 004B4 808B7BC4 03E00008 */  jr      $ra                        
/* 004B8 808B7BC8 A48F0210 */  sh      $t7, 0x0210($a0)           ## 00000210
