glabel func_80AEF354
/* 04744 80AEF354 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 04748 80AEF358 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 0474C 80AEF35C AFB00018 */  sw      $s0, 0x0018($sp)           
/* 04750 80AEF360 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 04754 80AEF364 0C2BBBFB */  jal     func_80AEEFEC              
/* 04758 80AEF368 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 0475C 80AEF36C 0C2BACC8 */  jal     func_80AEB320              
/* 04760 80AEF370 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 04764 80AEF374 0C2BAB87 */  jal     func_80AEAE1C              
/* 04768 80AEF378 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0476C 80AEF37C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 04770 80AEF380 0C2BABB3 */  jal     func_80AEAECC              
/* 04774 80AEF384 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 04778 80AEF388 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0477C 80AEF38C 0C2BBC62 */  jal     func_80AEF188              
/* 04780 80AEF390 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 04784 80AEF394 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 04788 80AEF398 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 0478C 80AEF39C 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 04790 80AEF3A0 03E00008 */  jr      $ra                        
/* 04794 80AEF3A4 00000000 */  nop


