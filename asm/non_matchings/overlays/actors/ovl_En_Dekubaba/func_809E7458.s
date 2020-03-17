glabel func_809E7458
/* 01C88 809E7458 27BDFFB8 */  addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
/* 01C8C 809E745C AFB10020 */  sw      $s1, 0x0020($sp)           
/* 01C90 809E7460 00808825 */  or      $s1, $a0, $zero            ## $s1 = 00000000
/* 01C94 809E7464 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 01C98 809E7468 AFB0001C */  sw      $s0, 0x001C($sp)           
/* 01C9C 809E746C AFA5004C */  sw      $a1, 0x004C($sp)           
/* 01CA0 809E7470 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 01CA4 809E7474 2484017C */  addiu   $a0, $a0, 0x017C           ## $a0 = 0000017C
/* 01CA8 809E7478 862301C6 */  lh      $v1, 0x01C6($s1)           ## 000001C6
/* 01CAC 809E747C 262400B4 */  addiu   $a0, $s1, 0x00B4           ## $a0 = 000000B4
/* 01CB0 809E7480 2405F6C2 */  addiu   $a1, $zero, 0xF6C2         ## $a1 = FFFFF6C2
/* 01CB4 809E7484 1460004E */  bne     $v1, $zero, .L809E75C0     
/* 01CB8 809E7488 2401000B */  addiu   $at, $zero, 0x000B         ## $at = 0000000B
/* 01CBC 809E748C 0C01DE2B */  jal     Math_ApproxUpdateScaledS
              
/* 01CC0 809E7490 2406038E */  addiu   $a2, $zero, 0x038E         ## $a2 = 0000038E
/* 01CC4 809E7494 262401CA */  addiu   $a0, $s1, 0x01CA           ## $a0 = 000001CA
/* 01CC8 809E7498 2405F778 */  addiu   $a1, $zero, 0xF778         ## $a1 = FFFFF778
/* 01CCC 809E749C 0C01DE2B */  jal     Math_ApproxUpdateScaledS
              
/* 01CD0 809E74A0 2406016C */  addiu   $a2, $zero, 0x016C         ## $a2 = 0000016C
/* 01CD4 809E74A4 262401CC */  addiu   $a0, $s1, 0x01CC           ## $a0 = 000001CC
/* 01CD8 809E74A8 2405F778 */  addiu   $a1, $zero, 0xF778         ## $a1 = FFFFF778
/* 01CDC 809E74AC 0C01DE2B */  jal     Math_ApproxUpdateScaledS
              
/* 01CE0 809E74B0 2406016C */  addiu   $a2, $zero, 0x016C         ## $a2 = 0000016C
/* 01CE4 809E74B4 262401CE */  addiu   $a0, $s1, 0x01CE           ## $a0 = 000001CE
/* 01CE8 809E74B8 2405F778 */  addiu   $a1, $zero, 0xF778         ## $a1 = FFFFF778
/* 01CEC 809E74BC 0C01DE2B */  jal     Math_ApproxUpdateScaledS
              
/* 01CF0 809E74C0 2406016C */  addiu   $a2, $zero, 0x016C         ## $a2 = 0000016C
/* 01CF4 809E74C4 104000C0 */  beq     $v0, $zero, .L809E77C8     
/* 01CF8 809E74C8 00000000 */  nop
/* 01CFC 809E74CC 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 01D00 809E74D0 862400B6 */  lh      $a0, 0x00B6($s1)           ## 000000B6
/* 01D04 809E74D4 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 01D08 809E74D8 44812000 */  mtc1    $at, $f4                   ## $f4 = 30.00
/* 01D0C 809E74DC C6280230 */  lwc1    $f8, 0x0230($s1)           ## 00000230
/* 01D10 809E74E0 46040182 */  mul.s   $f6, $f0, $f4              
/* 01D14 809E74E4 00000000 */  nop
/* 01D18 809E74E8 46083282 */  mul.s   $f10, $f6, $f8             
/* 01D1C 809E74EC E7AA0038 */  swc1    $f10, 0x0038($sp)          
/* 01D20 809E74F0 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 01D24 809E74F4 862400B6 */  lh      $a0, 0x00B6($s1)           ## 000000B6
/* 01D28 809E74F8 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 01D2C 809E74FC 44818000 */  mtc1    $at, $f16                  ## $f16 = 30.00
/* 01D30 809E7500 8E2F0008 */  lw      $t7, 0x0008($s1)           ## 00000008
/* 01D34 809E7504 C6240230 */  lwc1    $f4, 0x0230($s1)           ## 00000230
/* 01D38 809E7508 27A5003C */  addiu   $a1, $sp, 0x003C           ## $a1 = FFFFFFF4
/* 01D3C 809E750C 46100482 */  mul.s   $f18, $f0, $f16            
/* 01D40 809E7510 ACAF0000 */  sw      $t7, 0x0000($a1)           ## FFFFFFF4
/* 01D44 809E7514 8E2E000C */  lw      $t6, 0x000C($s1)           ## 0000000C
/* 01D48 809E7518 3C10809F */  lui     $s0, %hi(D_809E8EA0)       ## $s0 = 809F0000
/* 01D4C 809E751C 26108EA0 */  addiu   $s0, $s0, %lo(D_809E8EA0)  ## $s0 = 809E8EA0
/* 01D50 809E7520 ACAE0004 */  sw      $t6, 0x0004($a1)           ## FFFFFFF8
/* 01D54 809E7524 8E2F0010 */  lw      $t7, 0x0010($s1)           ## 00000010
/* 01D58 809E7528 46049082 */  mul.s   $f2, $f18, $f4             
/* 01D5C 809E752C 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 01D60 809E7530 ACAF0008 */  sw      $t7, 0x0008($a1)           ## FFFFFFFC
.L809E7534:
/* 01D64 809E7534 3C0143FA */  lui     $at, 0x43FA                ## $at = 43FA0000
/* 01D68 809E7538 44813000 */  mtc1    $at, $f6                   ## $f6 = 500.00
/* 01D6C 809E753C C6200230 */  lwc1    $f0, 0x0230($s1)           ## 00000230
/* 01D70 809E7540 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 01D74 809E7544 44818000 */  mtc1    $at, $f16                  ## $f16 = 50.00
/* 01D78 809E7548 46060202 */  mul.s   $f8, $f0, $f6              
/* 01D7C 809E754C 27A5003C */  addiu   $a1, $sp, 0x003C           ## $a1 = FFFFFFF4
/* 01D80 809E7550 E7A20034 */  swc1    $f2, 0x0034($sp)           
/* 01D84 809E7554 46100482 */  mul.s   $f18, $f0, $f16            
/* 01D88 809E7558 AFA20030 */  sw      $v0, 0x0030($sp)           
/* 01D8C 809E755C 8FA4004C */  lw      $a0, 0x004C($sp)           
/* 01D90 809E7560 02003025 */  or      $a2, $s0, $zero            ## $a2 = 809E8EA0
/* 01D94 809E7564 02003825 */  or      $a3, $s0, $zero            ## $a3 = 809E8EA0
/* 01D98 809E7568 4600428D */  trunc.w.s $f10, $f8                  
/* 01D9C 809E756C 4600910D */  trunc.w.s $f4, $f18                  
/* 01DA0 809E7570 44195000 */  mfc1    $t9, $f10                  
/* 01DA4 809E7574 44092000 */  mfc1    $t1, $f4                   
/* 01DA8 809E7578 AFB90010 */  sw      $t9, 0x0010($sp)           
/* 01DAC 809E757C 0C00A1B3 */  jal     func_800286CC              
/* 01DB0 809E7580 AFA90014 */  sw      $t1, 0x0014($sp)           
/* 01DB4 809E7584 C7A20034 */  lwc1    $f2, 0x0034($sp)           
/* 01DB8 809E7588 C7A6003C */  lwc1    $f6, 0x003C($sp)           
/* 01DBC 809E758C C7A80038 */  lwc1    $f8, 0x0038($sp)           
/* 01DC0 809E7590 C7B00044 */  lwc1    $f16, 0x0044($sp)          
/* 01DC4 809E7594 8FA20030 */  lw      $v0, 0x0030($sp)           
/* 01DC8 809E7598 46083280 */  add.s   $f10, $f6, $f8             
/* 01DCC 809E759C 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 01DD0 809E75A0 24420001 */  addiu   $v0, $v0, 0x0001           ## $v0 = 00000001
/* 01DD4 809E75A4 46028480 */  add.s   $f18, $f16, $f2            
/* 01DD8 809E75A8 E7AA003C */  swc1    $f10, 0x003C($sp)          
/* 01DDC 809E75AC 1441FFE1 */  bne     $v0, $at, .L809E7534       
/* 01DE0 809E75B0 E7B20044 */  swc1    $f18, 0x0044($sp)          
/* 01DE4 809E75B4 240A0001 */  addiu   $t2, $zero, 0x0001         ## $t2 = 00000001
/* 01DE8 809E75B8 10000083 */  beq     $zero, $zero, .L809E77C8   
/* 01DEC 809E75BC A62A01C6 */  sh      $t2, 0x01C6($s1)           ## 000001C6
.L809E75C0:
/* 01DF0 809E75C0 14610014 */  bne     $v1, $at, .L809E7614       
/* 01DF4 809E75C4 262400B4 */  addiu   $a0, $s1, 0x00B4           ## $a0 = 000000B4
/* 01DF8 809E75C8 2405F6C2 */  addiu   $a1, $zero, 0xF6C2         ## $a1 = FFFFF6C2
/* 01DFC 809E75CC 0C01DE2B */  jal     Math_ApproxUpdateScaledS
              
/* 01E00 809E75D0 24060200 */  addiu   $a2, $zero, 0x0200         ## $a2 = 00000200
/* 01E04 809E75D4 262401CA */  addiu   $a0, $s1, 0x01CA           ## $a0 = 000001CA
/* 01E08 809E75D8 2405F556 */  addiu   $a1, $zero, 0xF556         ## $a1 = FFFFF556
/* 01E0C 809E75DC 0C01DE2B */  jal     Math_ApproxUpdateScaledS
              
/* 01E10 809E75E0 24060200 */  addiu   $a2, $zero, 0x0200         ## $a2 = 00000200
/* 01E14 809E75E4 262401CE */  addiu   $a0, $s1, 0x01CE           ## $a0 = 000001CE
/* 01E18 809E75E8 2405A38F */  addiu   $a1, $zero, 0xA38F         ## $a1 = FFFFA38F
/* 01E1C 809E75EC 0C01DE2B */  jal     Math_ApproxUpdateScaledS
              
/* 01E20 809E75F0 24060200 */  addiu   $a2, $zero, 0x0200         ## $a2 = 00000200
/* 01E24 809E75F4 262401CC */  addiu   $a0, $s1, 0x01CC           ## $a0 = 000001CC
/* 01E28 809E75F8 2405238C */  addiu   $a1, $zero, 0x238C         ## $a1 = 0000238C
/* 01E2C 809E75FC 0C01DE2B */  jal     Math_ApproxUpdateScaledS
              
/* 01E30 809E7600 24060200 */  addiu   $a2, $zero, 0x0200         ## $a2 = 00000200
/* 01E34 809E7604 10400070 */  beq     $v0, $zero, .L809E77C8     
/* 01E38 809E7608 240B000C */  addiu   $t3, $zero, 0x000C         ## $t3 = 0000000C
/* 01E3C 809E760C 1000006E */  beq     $zero, $zero, .L809E77C8   
/* 01E40 809E7610 A62B01C6 */  sh      $t3, 0x01C6($s1)           ## 000001C6
.L809E7614:
/* 01E44 809E7614 24010012 */  addiu   $at, $zero, 0x0012         ## $at = 00000012
/* 01E48 809E7618 14610015 */  bne     $v1, $at, .L809E7670       
/* 01E4C 809E761C 262400B4 */  addiu   $a0, $s1, 0x00B4           ## $a0 = 000000B4
/* 01E50 809E7620 24052AA8 */  addiu   $a1, $zero, 0x2AA8         ## $a1 = 00002AA8
/* 01E54 809E7624 0C01DE2B */  jal     Math_ApproxUpdateScaledS
              
/* 01E58 809E7628 24060AAA */  addiu   $a2, $zero, 0x0AAA         ## $a2 = 00000AAA
/* 01E5C 809E762C 262401CA */  addiu   $a0, $s1, 0x01CA           ## $a0 = 000001CA
/* 01E60 809E7630 24051554 */  addiu   $a1, $zero, 0x1554         ## $a1 = 00001554
/* 01E64 809E7634 0C01DE2B */  jal     Math_ApproxUpdateScaledS
              
/* 01E68 809E7638 240605B0 */  addiu   $a2, $zero, 0x05B0         ## $a2 = 000005B0
/* 01E6C 809E763C 10400003 */  beq     $v0, $zero, .L809E764C     
/* 01E70 809E7640 262401CC */  addiu   $a0, $s1, 0x01CC           ## $a0 = 000001CC
/* 01E74 809E7644 240C0019 */  addiu   $t4, $zero, 0x0019         ## $t4 = 00000019
/* 01E78 809E7648 A62C01C6 */  sh      $t4, 0x01C6($s1)           ## 000001C6
.L809E764C:
/* 01E7C 809E764C 2405C71D */  addiu   $a1, $zero, 0xC71D         ## $a1 = FFFFC71D
/* 01E80 809E7650 0C01DE2B */  jal     Math_ApproxUpdateScaledS
              
/* 01E84 809E7654 24060AAA */  addiu   $a2, $zero, 0x0AAA         ## $a2 = 00000AAA
/* 01E88 809E7658 262401CE */  addiu   $a0, $s1, 0x01CE           ## $a0 = 000001CE
/* 01E8C 809E765C 2405A38F */  addiu   $a1, $zero, 0xA38F         ## $a1 = FFFFA38F
/* 01E90 809E7660 0C01DE2B */  jal     Math_ApproxUpdateScaledS
              
/* 01E94 809E7664 240602D8 */  addiu   $a2, $zero, 0x02D8         ## $a2 = 000002D8
/* 01E98 809E7668 10000057 */  beq     $zero, $zero, .L809E77C8   
/* 01E9C 809E766C 00000000 */  nop
.L809E7670:
/* 01EA0 809E7670 24010019 */  addiu   $at, $zero, 0x0019         ## $at = 00000019
/* 01EA4 809E7674 14610015 */  bne     $v1, $at, .L809E76CC       
/* 01EA8 809E7678 262400B4 */  addiu   $a0, $s1, 0x00B4           ## $a0 = 000000B4
/* 01EAC 809E767C 2405AAB0 */  addiu   $a1, $zero, 0xAAB0         ## $a1 = FFFFAAB0
/* 01EB0 809E7680 0C01DE2B */  jal     Math_ApproxUpdateScaledS
              
/* 01EB4 809E7684 24060AAA */  addiu   $a2, $zero, 0x0AAA         ## $a2 = 00000AAA
/* 01EB8 809E7688 262401CA */  addiu   $a0, $s1, 0x01CA           ## $a0 = 000001CA
/* 01EBC 809E768C 24059C78 */  addiu   $a1, $zero, 0x9C78         ## $a1 = FFFF9C78
/* 01EC0 809E7690 0C01DE2B */  jal     Math_ApproxUpdateScaledS
              
/* 01EC4 809E7694 2406093E */  addiu   $a2, $zero, 0x093E         ## $a2 = 0000093E
/* 01EC8 809E7698 10400003 */  beq     $v0, $zero, .L809E76A8     
/* 01ECC 809E769C 262401CC */  addiu   $a0, $s1, 0x01CC           ## $a0 = 000001CC
/* 01ED0 809E76A0 240D001A */  addiu   $t5, $zero, 0x001A         ## $t5 = 0000001A
/* 01ED4 809E76A4 A62D01C6 */  sh      $t5, 0x01C6($s1)           ## 000001C6
.L809E76A8:
/* 01ED8 809E76A8 2405C004 */  addiu   $a1, $zero, 0xC004         ## $a1 = FFFFC004
/* 01EDC 809E76AC 0C01DE2B */  jal     Math_ApproxUpdateScaledS
              
/* 01EE0 809E76B0 240604FA */  addiu   $a2, $zero, 0x04FA         ## $a2 = 000004FA
/* 01EE4 809E76B4 262401CE */  addiu   $a0, $s1, 0x01CE           ## $a0 = 000001CE
/* 01EE8 809E76B8 2405DC74 */  addiu   $a1, $zero, 0xDC74         ## $a1 = FFFFDC74
/* 01EEC 809E76BC 0C01DE2B */  jal     Math_ApproxUpdateScaledS
              
/* 01EF0 809E76C0 24060444 */  addiu   $a2, $zero, 0x0444         ## $a2 = 00000444
/* 01EF4 809E76C4 10000040 */  beq     $zero, $zero, .L809E77C8   
/* 01EF8 809E76C8 00000000 */  nop
.L809E76CC:
/* 01EFC 809E76CC 2401001A */  addiu   $at, $zero, 0x001A         ## $at = 0000001A
/* 01F00 809E76D0 14610015 */  bne     $v1, $at, .L809E7728       
/* 01F04 809E76D4 262400B4 */  addiu   $a0, $s1, 0x00B4           ## $a0 = 000000B4
/* 01F08 809E76D8 24051800 */  addiu   $a1, $zero, 0x1800         ## $a1 = 00001800
/* 01F0C 809E76DC 0C01DE2B */  jal     Math_ApproxUpdateScaledS
              
/* 01F10 809E76E0 2406093E */  addiu   $a2, $zero, 0x093E         ## $a2 = 0000093E
/* 01F14 809E76E4 262401CA */  addiu   $a0, $s1, 0x01CA           ## $a0 = 000001CA
/* 01F18 809E76E8 2405EAAB */  addiu   $a1, $zero, 0xEAAB         ## $a1 = FFFFEAAB
/* 01F1C 809E76EC 0C01DE2B */  jal     Math_ApproxUpdateScaledS
              
/* 01F20 809E76F0 2406071C */  addiu   $a2, $zero, 0x071C         ## $a2 = 0000071C
/* 01F24 809E76F4 10400003 */  beq     $v0, $zero, .L809E7704     
/* 01F28 809E76F8 262401CC */  addiu   $a0, $s1, 0x01CC           ## $a0 = 000001CC
/* 01F2C 809E76FC 240E001B */  addiu   $t6, $zero, 0x001B         ## $t6 = 0000001B
/* 01F30 809E7700 A62E01C6 */  sh      $t6, 0x01C6($s1)           ## 000001C6
.L809E7704:
/* 01F34 809E7704 2405C71D */  addiu   $a1, $zero, 0xC71D         ## $a1 = FFFFC71D
/* 01F38 809E7708 0C01DE2B */  jal     Math_ApproxUpdateScaledS
              
/* 01F3C 809E770C 240602D8 */  addiu   $a2, $zero, 0x02D8         ## $a2 = 000002D8
/* 01F40 809E7710 262401CE */  addiu   $a0, $s1, 0x01CE           ## $a0 = 000001CE
/* 01F44 809E7714 2405A38F */  addiu   $a1, $zero, 0xA38F         ## $a1 = FFFFA38F
/* 01F48 809E7718 0C01DE2B */  jal     Math_ApproxUpdateScaledS
              
/* 01F4C 809E771C 240605B0 */  addiu   $a2, $zero, 0x05B0         ## $a2 = 000005B0
/* 01F50 809E7720 10000029 */  beq     $zero, $zero, .L809E77C8   
/* 01F54 809E7724 00000000 */  nop
.L809E7728:
/* 01F58 809E7728 2861001B */  slti    $at, $v1, 0x001B           
/* 01F5C 809E772C 14200017 */  bne     $at, $zero, .L809E778C     
/* 01F60 809E7730 24790001 */  addiu   $t9, $v1, 0x0001           ## $t9 = 00000001
/* 01F64 809E7734 246F0001 */  addiu   $t7, $v1, 0x0001           ## $t7 = 00000001
/* 01F68 809E7738 A62F01C6 */  sh      $t7, 0x01C6($s1)           ## 000001C6
/* 01F6C 809E773C 863801C6 */  lh      $t8, 0x01C6($s1)           ## 000001C6
/* 01F70 809E7740 2B01001F */  slti    $at, $t8, 0x001F           
/* 01F74 809E7744 14200020 */  bne     $at, $zero, .L809E77C8     
/* 01F78 809E7748 3C0142A0 */  lui     $at, 0x42A0                ## $at = 42A00000
/* 01F7C 809E774C 44813000 */  mtc1    $at, $f6                   ## $f6 = 80.00
/* 01F80 809E7750 C6280230 */  lwc1    $f8, 0x0230($s1)           ## 00000230
/* 01F84 809E7754 C6240090 */  lwc1    $f4, 0x0090($s1)           ## 00000090
/* 01F88 809E7758 46083282 */  mul.s   $f10, $f6, $f8             
/* 01F8C 809E775C 460A203C */  c.lt.s  $f4, $f10                  
/* 01F90 809E7760 00000000 */  nop
/* 01F94 809E7764 45000005 */  bc1f    .L809E777C                 
/* 01F98 809E7768 00000000 */  nop
/* 01F9C 809E776C 0C2797E7 */  jal     func_809E5F9C              
/* 01FA0 809E7770 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 01FA4 809E7774 10000014 */  beq     $zero, $zero, .L809E77C8   
/* 01FA8 809E7778 00000000 */  nop
.L809E777C:
/* 01FAC 809E777C 0C2797D1 */  jal     func_809E5F44              
/* 01FB0 809E7780 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 01FB4 809E7784 10000010 */  beq     $zero, $zero, .L809E77C8   
/* 01FB8 809E7788 00000000 */  nop
.L809E778C:
/* 01FBC 809E778C A63901C6 */  sh      $t9, 0x01C6($s1)           ## 000001C6
/* 01FC0 809E7790 862301C6 */  lh      $v1, 0x01C6($s1)           ## 000001C6
/* 01FC4 809E7794 2401000A */  addiu   $at, $zero, 0x000A         ## $at = 0000000A
/* 01FC8 809E7798 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 01FCC 809E779C 54610005 */  bnel    $v1, $at, .L809E77B4       
/* 01FD0 809E77A0 2861000C */  slti    $at, $v1, 0x000C           
/* 01FD4 809E77A4 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 01FD8 809E77A8 24053863 */  addiu   $a1, $zero, 0x3863         ## $a1 = 00003863
/* 01FDC 809E77AC 862301C6 */  lh      $v1, 0x01C6($s1)           ## 000001C6
/* 01FE0 809E77B0 2861000C */  slti    $at, $v1, 0x000C           
.L809E77B4:
/* 01FE4 809E77B4 14200004 */  bne     $at, $zero, .L809E77C8     
/* 01FE8 809E77B8 262401CE */  addiu   $a0, $s1, 0x01CE           ## $a0 = 000001CE
/* 01FEC 809E77BC 2405A38F */  addiu   $a1, $zero, 0xA38F         ## $a1 = FFFFA38F
/* 01FF0 809E77C0 0C01DE2B */  jal     Math_ApproxUpdateScaledS
              
/* 01FF4 809E77C4 24060088 */  addiu   $a2, $zero, 0x0088         ## $a2 = 00000088
.L809E77C8:
/* 01FF8 809E77C8 0C279B73 */  jal     func_809E6DCC              
/* 01FFC 809E77CC 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 02000 809E77D0 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 02004 809E77D4 8FB0001C */  lw      $s0, 0x001C($sp)           
/* 02008 809E77D8 8FB10020 */  lw      $s1, 0x0020($sp)           
/* 0200C 809E77DC 03E00008 */  jr      $ra                        
/* 02010 809E77E0 27BD0048 */  addiu   $sp, $sp, 0x0048           ## $sp = 00000000


