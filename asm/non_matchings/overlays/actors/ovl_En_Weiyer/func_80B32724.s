glabel func_80B32724
/* 00494 80B32724 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00498 80B32728 AFB00020 */  sw      $s0, 0x0020($sp)
/* 0049C 80B3272C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 004A0 80B32730 AFBF0024 */  sw      $ra, 0x0024($sp)
/* 004A4 80B32734 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 004A8 80B32738 24A50FC0 */  addiu   $a1, $a1, 0x0FC0           ## $a1 = 06000FC0
/* 004AC 80B3273C 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 004B0 80B32740 0C0294D3 */  jal     Animation_MorphToLoop
/* 004B4 80B32744 3C06C0A0 */  lui     $a2, 0xC0A0                ## $a2 = C0A00000
/* 004B8 80B32748 240E0014 */  addiu   $t6, $zero, 0x0014         ## $t6 = 00000014
/* 004BC 80B3274C A60E0194 */  sh      $t6, 0x0194($s0)           ## 00000194
/* 004C0 80B32750 240F0028 */  addiu   $t7, $zero, 0x0028         ## $t7 = 00000028
/* 004C4 80B32754 AFAF0010 */  sw      $t7, 0x0010($sp)
/* 004C8 80B32758 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 004CC 80B3275C 24054000 */  addiu   $a1, $zero, 0x4000         ## $a1 = 00004000
/* 004D0 80B32760 240600C8 */  addiu   $a2, $zero, 0x00C8         ## $a2 = 000000C8
/* 004D4 80B32764 0C00D09B */  jal     func_8003426C
/* 004D8 80B32768 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 004DC 80B3276C 92180294 */  lbu     $t8, 0x0294($s0)           ## 00000294
/* 004E0 80B32770 92080295 */  lbu     $t0, 0x0295($s0)           ## 00000295
/* 004E4 80B32774 3C014040 */  lui     $at, 0x4040                ## $at = 40400000
/* 004E8 80B32778 44812000 */  mtc1    $at, $f4                   ## $f4 = 3.00
/* 004EC 80B3277C 3C0A80B3 */  lui     $t2, %hi(func_80B332B4)    ## $t2 = 80B30000
/* 004F0 80B32780 254A32B4 */  addiu   $t2, $t2, %lo(func_80B332B4) ## $t2 = 80B332B4
/* 004F4 80B32784 3319FFFE */  andi    $t9, $t8, 0xFFFE           ## $t9 = 00000000
/* 004F8 80B32788 3109FFFE */  andi    $t1, $t0, 0xFFFE           ## $t1 = 00000000
/* 004FC 80B3278C A2190294 */  sb      $t9, 0x0294($s0)           ## 00000294
/* 00500 80B32790 A2090295 */  sb      $t1, 0x0295($s0)           ## 00000295
/* 00504 80B32794 AE0A0190 */  sw      $t2, 0x0190($s0)           ## 00000190
/* 00508 80B32798 E6040068 */  swc1    $f4, 0x0068($s0)           ## 00000068
/* 0050C 80B3279C 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 00510 80B327A0 8FB00020 */  lw      $s0, 0x0020($sp)
/* 00514 80B327A4 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00518 80B327A8 03E00008 */  jr      $ra
/* 0051C 80B327AC 00000000 */  nop
