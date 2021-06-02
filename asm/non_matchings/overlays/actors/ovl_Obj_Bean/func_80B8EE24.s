.late_rodata
glabel D_80B91018
    .float 0.16970563
glabel D_80B9101C
    .float 0.10700001

.text
glabel func_80B8EE24
/* 003A4 80B8EE24 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 003A8 80B8EE28 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 003AC 80B8EE2C AFB00018 */  sw      $s0, 0x0018($sp)           
/* 003B0 80B8EE30 848E01B6 */  lh      $t6, 0x01B6($a0)           ## 000001B6
/* 003B4 80B8EE34 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 003B8 80B8EE38 24195FFF */  addiu   $t9, $zero, 0x5FFF         ## $t9 = 00005FFF
/* 003BC 80B8EE3C 25CF0384 */  addiu   $t7, $t6, 0x0384           ## $t7 = 00000384
/* 003C0 80B8EE40 A48F01B6 */  sh      $t7, 0x01B6($a0)           ## 000001B6
/* 003C4 80B8EE44 849801B6 */  lh      $t8, 0x01B6($a0)           ## 000001B6
/* 003C8 80B8EE48 240B4000 */  addiu   $t3, $zero, 0x4000         ## $t3 = 00004000
/* 003CC 80B8EE4C 2B016000 */  slti    $at, $t8, 0x6000           
/* 003D0 80B8EE50 54200003 */  bnel    $at, $zero, .L80B8EE60     
/* 003D4 80B8EE54 860801B8 */  lh      $t0, 0x01B8($s0)           ## 000001B8
/* 003D8 80B8EE58 A49901B6 */  sh      $t9, 0x01B6($a0)           ## 000001B6
/* 003DC 80B8EE5C 860801B8 */  lh      $t0, 0x01B8($s0)           ## 000001B8
.L80B8EE60:
/* 003E0 80B8EE60 25090258 */  addiu   $t1, $t0, 0x0258           ## $t1 = 00000258
/* 003E4 80B8EE64 A60901B8 */  sh      $t1, 0x01B8($s0)           ## 000001B8
/* 003E8 80B8EE68 860A01B8 */  lh      $t2, 0x01B8($s0)           ## 000001B8
/* 003EC 80B8EE6C 29414001 */  slti    $at, $t2, 0x4001           
/* 003F0 80B8EE70 14200002 */  bne     $at, $zero, .L80B8EE7C     
/* 003F4 80B8EE74 00000000 */  nop
/* 003F8 80B8EE78 A60B01B8 */  sh      $t3, 0x01B8($s0)           ## 000001B8
.L80B8EE7C:
/* 003FC 80B8EE7C 0C01DE1C */  jal     Math_SinS
              ## sins?
/* 00400 80B8EE80 860401B6 */  lh      $a0, 0x01B6($s0)           ## 000001B6
/* 00404 80B8EE84 3C0180B9 */  lui     $at, %hi(D_80B91018)       ## $at = 80B90000
/* 00408 80B8EE88 C4241018 */  lwc1    $f4, %lo(D_80B91018)($at)  
/* 0040C 80B8EE8C 860401B8 */  lh      $a0, 0x01B8($s0)           ## 000001B8
/* 00410 80B8EE90 46040182 */  mul.s   $f6, $f0, $f4              
/* 00414 80B8EE94 0C01DE1C */  jal     Math_SinS
              ## sins?
/* 00418 80B8EE98 E6060054 */  swc1    $f6, 0x0054($s0)           ## 00000054
/* 0041C 80B8EE9C 3C0180B9 */  lui     $at, %hi(D_80B9101C)       ## $at = 80B90000
/* 00420 80B8EEA0 C428101C */  lwc1    $f8, %lo(D_80B9101C)($at)  
/* 00424 80B8EEA4 3C063DCC */  lui     $a2, 0x3DCC                ## $a2 = 3DCC0000
/* 00428 80B8EEA8 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3DCCCCCD
/* 0042C 80B8EEAC 46080082 */  mul.s   $f2, $f0, $f8              
/* 00430 80B8EEB0 260401E8 */  addiu   $a0, $s0, 0x01E8           ## $a0 = 000001E8
/* 00434 80B8EEB4 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 00438 80B8EEB8 E6020058 */  swc1    $f2, 0x0058($s0)           ## 00000058
/* 0043C 80B8EEBC 0C01DE80 */  jal     Math_StepToF
              
/* 00440 80B8EEC0 E6020050 */  swc1    $f2, 0x0050($s0)           ## 00000050
/* 00444 80B8EEC4 3C063DCC */  lui     $a2, 0x3DCC                ## $a2 = 3DCC0000
/* 00448 80B8EEC8 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3DCCCCCD
/* 0044C 80B8EECC 260401EC */  addiu   $a0, $s0, 0x01EC           ## $a0 = 000001EC
/* 00450 80B8EED0 0C01DE80 */  jal     Math_StepToF
              
/* 00454 80B8EED4 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 00458 80B8EED8 260400B6 */  addiu   $a0, $s0, 0x00B6           ## $a0 = 000000B6
/* 0045C 80B8EEDC 86050016 */  lh      $a1, 0x0016($s0)           ## 00000016
/* 00460 80B8EEE0 0C01DE2B */  jal     Math_ScaledStepToS
              
/* 00464 80B8EEE4 24060064 */  addiu   $a2, $zero, 0x0064         ## $a2 = 00000064
/* 00468 80B8EEE8 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0046C 80B8EEEC 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00470 80B8EEF0 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00474 80B8EEF4 03E00008 */  jr      $ra                        
/* 00478 80B8EEF8 00000000 */  nop
