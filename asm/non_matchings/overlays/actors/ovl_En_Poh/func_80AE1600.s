glabel func_80AE1600
/* 038B0 80AE1600 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 038B4 80AE1604 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 038B8 80AE1608 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 038BC 80AE160C 8C990190 */  lw      $t9, 0x0190($a0)           ## 00000190
/* 038C0 80AE1610 0320F809 */  jalr    $ra, $t9                   
/* 038C4 80AE1614 00000000 */  nop
/* 038C8 80AE1618 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 038CC 80AE161C 3C0E80AE */  lui     $t6, %hi(func_80ADF994)    ## $t6 = 80AE0000
/* 038D0 80AE1620 25CEF994 */  addiu   $t6, $t6, %lo(func_80ADF994) ## $t6 = 80ADF994
/* 038D4 80AE1624 8C8F0190 */  lw      $t7, 0x0190($a0)           ## 00000190
/* 038D8 80AE1628 11CF0004 */  beq     $t6, $t7, .L80AE163C       
/* 038DC 80AE162C 00000000 */  nop
/* 038E0 80AE1630 8498019A */  lh      $t8, 0x019A($a0)           ## 0000019A
/* 038E4 80AE1634 27080001 */  addiu   $t0, $t8, 0x0001           ## $t0 = 00000001
/* 038E8 80AE1638 A488019A */  sh      $t0, 0x019A($a0)           ## 0000019A
.L80AE163C:
/* 038EC 80AE163C 0C2B8227 */  jal     func_80AE089C              
/* 038F0 80AE1640 00000000 */  nop
/* 038F4 80AE1644 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 038F8 80AE1648 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 038FC 80AE164C 03E00008 */  jr      $ra                        
/* 03900 80AE1650 00000000 */  nop
