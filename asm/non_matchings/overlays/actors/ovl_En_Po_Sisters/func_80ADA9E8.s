glabel func_80ADA9E8
/* 01A58 80ADA9E8 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 01A5C 80ADA9EC AFB00018 */  sw      $s0, 0x0018($sp)           
/* 01A60 80ADA9F0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01A64 80ADA9F4 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 01A68 80ADA9F8 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 01A6C 80ADA9FC 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 01A70 80ADAA00 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 01A74 80ADAA04 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 01A78 80ADAA08 44813000 */  mtc1    $at, $f6                   ## $f6 = 10.00
/* 01A7C 80ADAA0C C6040068 */  lwc1    $f4, 0x0068($s0)           ## 00000068
/* 01A80 80ADAA10 860E00B6 */  lh      $t6, 0x00B6($s0)           ## 000000B6
/* 01A84 80ADAA14 3C014300 */  lui     $at, 0x4300                ## $at = 43000000
/* 01A88 80ADAA18 46062202 */  mul.s   $f8, $f4, $f6              
/* 01A8C 80ADAA1C 44815000 */  mtc1    $at, $f10                  ## $f10 = 128.00
/* 01A90 80ADAA20 448E9000 */  mtc1    $t6, $f18                  ## $f18 = 0.00
/* 01A94 80ADAA24 3C063DCC */  lui     $a2, 0x3DCC                ## $a2 = 3DCC0000
/* 01A98 80ADAA28 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3DCCCCCD
/* 01A9C 80ADAA2C 26040068 */  addiu   $a0, $s0, 0x0068           ## $a0 = 00000068
/* 01AA0 80ADAA30 46809120 */  cvt.s.w $f4, $f18                  
/* 01AA4 80ADAA34 460A4402 */  mul.s   $f16, $f8, $f10            
/* 01AA8 80ADAA38 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 01AAC 80ADAA3C 46102181 */  sub.s   $f6, $f4, $f16             
/* 01AB0 80ADAA40 4600320D */  trunc.w.s $f8, $f6                   
/* 01AB4 80ADAA44 44184000 */  mfc1    $t8, $f8                   
/* 01AB8 80ADAA48 0C01DE80 */  jal     Math_ApproxF
              
/* 01ABC 80ADAA4C A61800B6 */  sh      $t8, 0x00B6($s0)           ## 000000B6
/* 01AC0 80ADAA50 50400010 */  beql    $v0, $zero, .L80ADAA94     
/* 01AC4 80ADAA54 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01AC8 80ADAA58 92080194 */  lbu     $t0, 0x0194($s0)           ## 00000194
/* 01ACC 80ADAA5C 861900B6 */  lh      $t9, 0x00B6($s0)           ## 000000B6
/* 01AD0 80ADAA60 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01AD4 80ADAA64 11000005 */  beq     $t0, $zero, .L80ADAA7C     
/* 01AD8 80ADAA68 A6190032 */  sh      $t9, 0x0032($s0)           ## 00000032
/* 01ADC 80ADAA6C 0C2B64F1 */  jal     func_80AD93C4              
/* 01AE0 80ADAA70 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01AE4 80ADAA74 10000007 */  beq     $zero, $zero, .L80ADAA94   
/* 01AE8 80ADAA78 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80ADAA7C:
/* 01AEC 80ADAA7C 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 01AF0 80ADAA80 240538EF */  addiu   $a1, $zero, 0x38EF         ## $a1 = 000038EF
/* 01AF4 80ADAA84 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01AF8 80ADAA88 0C2B6709 */  jal     func_80AD9C24              
/* 01AFC 80ADAA8C 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 01B00 80ADAA90 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80ADAA94:
/* 01B04 80ADAA94 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 01B08 80ADAA98 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 01B0C 80ADAA9C 03E00008 */  jr      $ra                        
/* 01B10 80ADAAA0 00000000 */  nop


