glabel func_80A0AA3C
/* 0062C 80A0AA3C 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00630 80A0AA40 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00634 80A0AA44 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00638 80A0AA48 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 0063C 80A0AA4C 848E00B6 */  lh      $t6, 0x00B6($a0)           ## 000000B6
/* 00640 80A0AA50 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00644 80A0AA54 3C063E99 */  lui     $a2, 0x3E99                ## $a2 = 3E990000
/* 00648 80A0AA58 25CF07A8 */  addiu   $t7, $t6, 0x07A8           ## $t7 = 000007A8
/* 0064C 80A0AA5C A48F00B6 */  sh      $t7, 0x00B6($a0)           ## 000000B6
/* 00650 80A0AA60 34C6999A */  ori     $a2, $a2, 0x999A           ## $a2 = 3E99999A
/* 00654 80A0AA64 2484006C */  addiu   $a0, $a0, 0x006C           ## $a0 = 0000006C
/* 00658 80A0AA68 3C05C000 */  lui     $a1, 0xC000                ## $a1 = C0000000
/* 0065C 80A0AA6C 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 00660 80A0AA70 3C073F80 */  lui     $a3, 0x3F80                ## $a3 = 3F800000
/* 00664 80A0AA74 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00668 80A0AA78 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 0066C 80A0AA7C 24060002 */  addiu   $a2, $zero, 0x0002         ## $a2 = 00000002
/* 00670 80A0AA80 0C282A08 */  jal     func_80A0A820              
/* 00674 80A0AA84 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 00678 80A0AA88 0C01E221 */  jal     func_80078884              
/* 0067C 80A0AA8C 240420BC */  addiu   $a0, $zero, 0x20BC         ## $a0 = 000020BC
/* 00680 80A0AA90 8E020118 */  lw      $v0, 0x0118($s0)           ## 00000118
/* 00684 80A0AA94 5040001D */  beql    $v0, $zero, .L80A0AB0C     
/* 00688 80A0AA98 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0068C 80A0AA9C 8C580130 */  lw      $t8, 0x0130($v0)           ## 00000130
/* 00690 80A0AAA0 5300001A */  beql    $t8, $zero, .L80A0AB0C     
/* 00694 80A0AAA4 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00698 80A0AAA8 84590296 */  lh      $t9, 0x0296($v0)           ## 00000296
/* 0069C 80A0AAAC 240B0001 */  addiu   $t3, $zero, 0x0001         ## $t3 = 00000001
/* 006A0 80A0AAB0 260400E4 */  addiu   $a0, $s0, 0x00E4           ## $a0 = 000000E4
/* 006A4 80A0AAB4 53200009 */  beql    $t9, $zero, .L80A0AADC     
/* 006A8 80A0AAB8 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 006AC 80A0AABC 96080088 */  lhu     $t0, 0x0088($s0)           ## 00000088
/* 006B0 80A0AAC0 31090020 */  andi    $t1, $t0, 0x0020           ## $t1 = 00000000
/* 006B4 80A0AAC4 55200005 */  bnel    $t1, $zero, .L80A0AADC     
/* 006B8 80A0AAC8 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 006BC 80A0AACC 860A0156 */  lh      $t2, 0x0156($s0)           ## 00000156
/* 006C0 80A0AAD0 5540000E */  bnel    $t2, $zero, .L80A0AB0C     
/* 006C4 80A0AAD4 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 006C8 80A0AAD8 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
.L80A0AADC:
/* 006CC 80A0AADC A60B0154 */  sh      $t3, 0x0154($s0)           ## 00000154
/* 006D0 80A0AAE0 24052817 */  addiu   $a1, $zero, 0x2817         ## $a1 = 00002817
/* 006D4 80A0AAE4 E6000068 */  swc1    $f0, 0x0068($s0)           ## 00000068
/* 006D8 80A0AAE8 E6000064 */  swc1    $f0, 0x0064($s0)           ## 00000064
/* 006DC 80A0AAEC E6000060 */  swc1    $f0, 0x0060($s0)           ## 00000060
/* 006E0 80A0AAF0 E600005C */  swc1    $f0, 0x005C($s0)           ## 0000005C
/* 006E4 80A0AAF4 0C01E245 */  jal     func_80078914              
/* 006E8 80A0AAF8 E600006C */  swc1    $f0, 0x006C($s0)           ## 0000006C
/* 006EC 80A0AAFC 3C0C80A1 */  lui     $t4, %hi(func_80A0AB1C)    ## $t4 = 80A10000
/* 006F0 80A0AB00 258CAB1C */  addiu   $t4, $t4, %lo(func_80A0AB1C) ## $t4 = 80A0AB1C
/* 006F4 80A0AB04 AE0C014C */  sw      $t4, 0x014C($s0)           ## 0000014C
/* 006F8 80A0AB08 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80A0AB0C:
/* 006FC 80A0AB0C 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00700 80A0AB10 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00704 80A0AB14 03E00008 */  jr      $ra                        
/* 00708 80A0AB18 00000000 */  nop
