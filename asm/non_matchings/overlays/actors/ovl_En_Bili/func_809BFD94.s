.late_rodata
glabel D_809C1740
    .float 0.7

glabel D_809C1744
    .float 0.2

.text
glabel func_809BFD94
/* 004F4 809BFD94 27BDFF70 */  addiu   $sp, $sp, 0xFF70           ## $sp = FFFFFF70
/* 004F8 809BFD98 AFBF0074 */  sw      $ra, 0x0074($sp)           
/* 004FC 809BFD9C AFB40070 */  sw      $s4, 0x0070($sp)           
/* 00500 809BFDA0 AFB3006C */  sw      $s3, 0x006C($sp)           
/* 00504 809BFDA4 AFB20068 */  sw      $s2, 0x0068($sp)           
/* 00508 809BFDA8 AFB10064 */  sw      $s1, 0x0064($sp)           
/* 0050C 809BFDAC AFB00060 */  sw      $s0, 0x0060($sp)           
/* 00510 809BFDB0 F7BC0058 */  sdc1    $f28, 0x0058($sp)          
/* 00514 809BFDB4 F7BA0050 */  sdc1    $f26, 0x0050($sp)          
/* 00518 809BFDB8 F7B80048 */  sdc1    $f24, 0x0048($sp)          
/* 0051C 809BFDBC F7B60040 */  sdc1    $f22, 0x0040($sp)          
/* 00520 809BFDC0 F7B40038 */  sdc1    $f20, 0x0038($sp)          
/* 00524 809BFDC4 8C8E0004 */  lw      $t6, 0x0004($a0)           ## 00000004
/* 00528 809BFDC8 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 0052C 809BFDCC 00808825 */  or      $s1, $a0, $zero            ## $s1 = 00000000
/* 00530 809BFDD0 31CF8000 */  andi    $t7, $t6, 0x8000           ## $t7 = 00000000
/* 00534 809BFDD4 15E00005 */  bne     $t7, $zero, .L809BFDEC     
/* 00538 809BFDD8 00A0A025 */  or      $s4, $a1, $zero            ## $s4 = 00000000
/* 0053C 809BFDDC 3C01BF80 */  lui     $at, 0xBF80                ## $at = BF800000
/* 00540 809BFDE0 44812000 */  mtc1    $at, $f4                   ## $f4 = -1.00
/* 00544 809BFDE4 00000000 */  nop
/* 00548 809BFDE8 E484006C */  swc1    $f4, 0x006C($a0)           ## 0000006C
.L809BFDEC:
/* 0054C 809BFDEC 3C014170 */  lui     $at, 0x4170                ## $at = 41700000
/* 00550 809BFDF0 44815000 */  mtc1    $at, $f10                  ## $f10 = 15.00
/* 00554 809BFDF4 E6260060 */  swc1    $f6, 0x0060($s1)           ## 00000060
/* 00558 809BFDF8 3C01809C */  lui     $at, %hi(D_809C1740)       ## $at = 809C0000
/* 0055C 809BFDFC C43C1740 */  lwc1    $f28, %lo(D_809C1740)($at) 
/* 00560 809BFE00 3C01809C */  lui     $at, %hi(D_809C1744)       ## $at = 809C0000
/* 00564 809BFE04 C6280028 */  lwc1    $f8, 0x0028($s1)           ## 00000028
/* 00568 809BFE08 C43A1744 */  lwc1    $f26, %lo(D_809C1744)($at) 
/* 0056C 809BFE0C 3C014020 */  lui     $at, 0x4020                ## $at = 40200000
/* 00570 809BFE10 4481C000 */  mtc1    $at, $f24                  ## $f24 = 2.50
/* 00574 809BFE14 460A4401 */  sub.s   $f16, $f8, $f10            
/* 00578 809BFE18 3C01C0E0 */  lui     $at, 0xC0E0                ## $at = C0E00000
/* 0057C 809BFE1C 4481B000 */  mtc1    $at, $f22                  ## $f22 = -7.00
/* 00580 809BFE20 3C0140E0 */  lui     $at, 0x40E0                ## $at = 40E00000
/* 00584 809BFE24 4481A000 */  mtc1    $at, $f20                  ## $f20 = 7.00
/* 00588 809BFE28 E7B00084 */  swc1    $f16, 0x0084($sp)          
/* 0058C 809BFE2C 00008025 */  or      $s0, $zero, $zero          ## $s0 = 00000000
/* 00590 809BFE30 24130008 */  addiu   $s3, $zero, 0x0008         ## $s3 = 00000008
/* 00594 809BFE34 27B20080 */  addiu   $s2, $sp, 0x0080           ## $s2 = FFFFFFF0
/* 00598 809BFE38 32180001 */  andi    $t8, $s0, 0x0001           ## $t8 = 00000000
.L809BFE3C:
/* 0059C 809BFE3C 53000004 */  beql    $t8, $zero, .L809BFE50     
/* 005A0 809BFE40 4600B006 */  mov.s   $f0, $f22                  
/* 005A4 809BFE44 10000002 */  beq     $zero, $zero, .L809BFE50   
/* 005A8 809BFE48 4600A006 */  mov.s   $f0, $f20                  
/* 005AC 809BFE4C 4600B006 */  mov.s   $f0, $f22                  
.L809BFE50:
/* 005B0 809BFE50 C6320024 */  lwc1    $f18, 0x0024($s1)          ## 00000024
/* 005B4 809BFE54 C7A60084 */  lwc1    $f6, 0x0084($sp)           
/* 005B8 809BFE58 32190004 */  andi    $t9, $s0, 0x0004           ## $t9 = 00000000
/* 005BC 809BFE5C 46120100 */  add.s   $f4, $f0, $f18             
/* 005C0 809BFE60 46183200 */  add.s   $f8, $f6, $f24             
/* 005C4 809BFE64 E7A40080 */  swc1    $f4, 0x0080($sp)           
/* 005C8 809BFE68 13200003 */  beq     $t9, $zero, .L809BFE78     
/* 005CC 809BFE6C E7A80084 */  swc1    $f8, 0x0084($sp)           
/* 005D0 809BFE70 10000002 */  beq     $zero, $zero, .L809BFE7C   
/* 005D4 809BFE74 4600A006 */  mov.s   $f0, $f20                  
.L809BFE78:
/* 005D8 809BFE78 4600B006 */  mov.s   $f0, $f22                  
.L809BFE7C:
/* 005DC 809BFE7C C62A002C */  lwc1    $f10, 0x002C($s1)          ## 0000002C
/* 005E0 809BFE80 460A0400 */  add.s   $f16, $f0, $f10            
/* 005E4 809BFE84 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 005E8 809BFE88 E7B00088 */  swc1    $f16, 0x0088($sp)          
/* 005EC 809BFE8C 461A0482 */  mul.s   $f18, $f0, $f26            
/* 005F0 809BFE90 24080096 */  addiu   $t0, $zero, 0x0096         ## $t0 = 00000096
/* 005F4 809BFE94 24090096 */  addiu   $t1, $zero, 0x0096         ## $t1 = 00000096
/* 005F8 809BFE98 240A00FA */  addiu   $t2, $zero, 0x00FA         ## $t2 = 000000FA
/* 005FC 809BFE9C 240B00EB */  addiu   $t3, $zero, 0x00EB         ## $t3 = 000000EB
/* 00600 809BFEA0 240C00F5 */  addiu   $t4, $zero, 0x00F5         ## $t4 = 000000F5
/* 00604 809BFEA4 240D00FF */  addiu   $t5, $zero, 0x00FF         ## $t5 = 000000FF
/* 00608 809BFEA8 461C9100 */  add.s   $f4, $f18, $f28            
/* 0060C 809BFEAC AFAD0024 */  sw      $t5, 0x0024($sp)           
/* 00610 809BFEB0 AFAC0020 */  sw      $t4, 0x0020($sp)           
/* 00614 809BFEB4 AFAB001C */  sw      $t3, 0x001C($sp)           
/* 00618 809BFEB8 E7A40028 */  swc1    $f4, 0x0028($sp)           
/* 0061C 809BFEBC AFAA0018 */  sw      $t2, 0x0018($sp)           
/* 00620 809BFEC0 AFA90014 */  sw      $t1, 0x0014($sp)           
/* 00624 809BFEC4 AFA80010 */  sw      $t0, 0x0010($sp)           
/* 00628 809BFEC8 02802025 */  or      $a0, $s4, $zero            ## $a0 = 00000000
/* 0062C 809BFECC 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 00630 809BFED0 02403025 */  or      $a2, $s2, $zero            ## $a2 = FFFFFFF0
/* 00634 809BFED4 0C00A850 */  jal     EffectSsEnIce_SpawnFlyingVec3f              
/* 00638 809BFED8 24070096 */  addiu   $a3, $zero, 0x0096         ## $a3 = 00000096
/* 0063C 809BFEDC 26100001 */  addiu   $s0, $s0, 0x0001           ## $s0 = 00000001
/* 00640 809BFEE0 5613FFD6 */  bnel    $s0, $s3, .L809BFE3C       
/* 00644 809BFEE4 32180001 */  andi    $t8, $s0, 0x0001           ## $t8 = 00000001
/* 00648 809BFEE8 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 0064C 809BFEEC 240E000A */  addiu   $t6, $zero, 0x000A         ## $t6 = 0000000A
/* 00650 809BFEF0 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00654 809BFEF4 E6260068 */  swc1    $f6, 0x0068($s1)           ## 00000068
/* 00658 809BFEF8 AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 0065C 809BFEFC 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00660 809BFF00 24060096 */  addiu   $a2, $zero, 0x0096         ## $a2 = 00000096
/* 00664 809BFF04 0C00D09B */  jal     func_8003426C              
/* 00668 809BFF08 24072000 */  addiu   $a3, $zero, 0x2000         ## $a3 = 00002000
/* 0066C 809BFF0C 922F01E4 */  lbu     $t7, 0x01E4($s1)           ## 000001E4
/* 00670 809BFF10 923901E5 */  lbu     $t9, 0x01E5($s1)           ## 000001E5
/* 00674 809BFF14 3C0A809C */  lui     $t2, %hi(func_809C09E0)    ## $t2 = 809C0000
/* 00678 809BFF18 2409012C */  addiu   $t1, $zero, 0x012C         ## $t1 = 0000012C
/* 0067C 809BFF1C 254A09E0 */  addiu   $t2, $t2, %lo(func_809C09E0) ## $t2 = 809C09E0
/* 00680 809BFF20 31F8FFFE */  andi    $t8, $t7, 0xFFFE           ## $t8 = 00000000
/* 00684 809BFF24 3328FFFE */  andi    $t0, $t9, 0xFFFE           ## $t0 = 00000000
/* 00688 809BFF28 A23801E4 */  sb      $t8, 0x01E4($s1)           ## 000001E4
/* 0068C 809BFF2C A22801E5 */  sb      $t0, 0x01E5($s1)           ## 000001E5
/* 00690 809BFF30 A6290196 */  sh      $t1, 0x0196($s1)           ## 00000196
/* 00694 809BFF34 AE2A0190 */  sw      $t2, 0x0190($s1)           ## 00000190
/* 00698 809BFF38 8FBF0074 */  lw      $ra, 0x0074($sp)           
/* 0069C 809BFF3C 8FB40070 */  lw      $s4, 0x0070($sp)           
/* 006A0 809BFF40 8FB3006C */  lw      $s3, 0x006C($sp)           
/* 006A4 809BFF44 8FB20068 */  lw      $s2, 0x0068($sp)           
/* 006A8 809BFF48 8FB10064 */  lw      $s1, 0x0064($sp)           
/* 006AC 809BFF4C 8FB00060 */  lw      $s0, 0x0060($sp)           
/* 006B0 809BFF50 D7BC0058 */  ldc1    $f28, 0x0058($sp)          
/* 006B4 809BFF54 D7BA0050 */  ldc1    $f26, 0x0050($sp)          
/* 006B8 809BFF58 D7B80048 */  ldc1    $f24, 0x0048($sp)          
/* 006BC 809BFF5C D7B60040 */  ldc1    $f22, 0x0040($sp)          
/* 006C0 809BFF60 D7B40038 */  ldc1    $f20, 0x0038($sp)          
/* 006C4 809BFF64 03E00008 */  jr      $ra                        
/* 006C8 809BFF68 27BD0090 */  addiu   $sp, $sp, 0x0090           ## $sp = 00000000
