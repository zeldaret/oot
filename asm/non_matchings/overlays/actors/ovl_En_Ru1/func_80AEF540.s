glabel func_80AEF540
/* 04930 80AEF540 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 04934 80AEF544 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 04938 80AEF548 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 0493C 80AEF54C 0C2BAC41 */  jal     func_80AEB104              
/* 04940 80AEF550 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 04944 80AEF554 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 04948 80AEF558 14410012 */  bne     $v0, $at, .L80AEF5A4       
/* 0494C 80AEF55C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 04950 80AEF560 0C2BABA9 */  jal     func_80AEAEA4              
/* 04954 80AEF564 24050003 */  addiu   $a1, $zero, 0x0003         ## $a1 = 00000003
/* 04958 80AEF568 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0495C 80AEF56C 0C2BABAE */  jal     func_80AEAEB8              
/* 04960 80AEF570 24050002 */  addiu   $a1, $zero, 0x0002         ## $a1 = 00000002
/* 04964 80AEF574 920E014D */  lbu     $t6, 0x014D($s0)           ## 0000014D
/* 04968 80AEF578 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 0496C 80AEF57C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 04970 80AEF580 11C10008 */  beq     $t6, $at, .L80AEF5A4       
/* 04974 80AEF584 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 04978 80AEF588 24A54BF0 */  addiu   $a1, $a1, 0x4BF0           ## $a1 = 06004BF0
/* 0497C 80AEF58C 24060002 */  addiu   $a2, $zero, 0x0002         ## $a2 = 00000002
/* 04980 80AEF590 3C07C100 */  lui     $a3, 0xC100                ## $a3 = C1000000
/* 04984 80AEF594 0C2BAC99 */  jal     func_80AEB264              
/* 04988 80AEF598 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 0498C 80AEF59C 0C2BBD47 */  jal     func_80AEF51C              
/* 04990 80AEF5A0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80AEF5A4:
/* 04994 80AEF5A4 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 04998 80AEF5A8 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 0499C 80AEF5AC 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 049A0 80AEF5B0 03E00008 */  jr      $ra                        
/* 049A4 80AEF5B4 00000000 */  nop


