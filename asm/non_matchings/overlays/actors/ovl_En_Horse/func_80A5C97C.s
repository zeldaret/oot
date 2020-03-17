glabel func_80A5C97C
/* 0168C 80A5C97C 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 01690 80A5C980 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 01694 80A5C984 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 01698 80A5C988 8C8E0150 */  lw      $t6, 0x0150($a0)           ## 00000150
/* 0169C 80A5C98C 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 016A0 80A5C990 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 016A4 80A5C994 25CFFFFF */  addiu   $t7, $t6, 0xFFFF           ## $t7 = FFFFFFFF
/* 016A8 80A5C998 AC8F0150 */  sw      $t7, 0x0150($a0)           ## 00000150
/* 016AC 80A5C99C 05E1004E */  bgez    $t7, .L80A5CAD8            
/* 016B0 80A5C9A0 E4840068 */  swc1    $f4, 0x0068($a0)           ## 00000068
/* 016B4 80A5C9A4 9099028A */  lbu     $t9, 0x028A($a0)           ## 0000028A
/* 016B8 80A5C9A8 908902D6 */  lbu     $t1, 0x02D6($a0)           ## 000002D6
/* 016BC 80A5C9AC 908B0322 */  lbu     $t3, 0x0322($a0)           ## 00000322
/* 016C0 80A5C9B0 8C8D020C */  lw      $t5, 0x020C($a0)           ## 0000020C
/* 016C4 80A5C9B4 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 016C8 80A5C9B8 37280001 */  ori     $t0, $t9, 0x0001           ## $t0 = 00000001
/* 016CC 80A5C9BC 352A0001 */  ori     $t2, $t1, 0x0001           ## $t2 = 00000001
/* 016D0 80A5C9C0 356C0001 */  ori     $t4, $t3, 0x0001           ## $t4 = 00000001
/* 016D4 80A5C9C4 A088028A */  sb      $t0, 0x028A($a0)           ## 0000028A
/* 016D8 80A5C9C8 A08A02D6 */  sb      $t2, 0x02D6($a0)           ## 000002D6
/* 016DC 80A5C9CC 15A1002D */  bne     $t5, $at, .L80A5CA84       
/* 016E0 80A5C9D0 A08C0322 */  sb      $t4, 0x0322($a0)           ## 00000322
/* 016E4 80A5C9D4 8C8E01F0 */  lw      $t6, 0x01F0($a0)           ## 000001F0
/* 016E8 80A5C9D8 8482001C */  lh      $v0, 0x001C($a0)           ## 0000001C
/* 016EC 80A5C9DC 2401FF7F */  addiu   $at, $zero, 0xFF7F         ## $at = FFFFFF7F
/* 016F0 80A5C9E0 01C17824 */  and     $t7, $t6, $at              
/* 016F4 80A5C9E4 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 016F8 80A5C9E8 14410005 */  bne     $v0, $at, .L80A5CA00       
/* 016FC 80A5C9EC AC8F01F0 */  sw      $t7, 0x01F0($a0)           ## 000001F0
/* 01700 80A5C9F0 0C2973CA */  jal     func_80A5CF28              
/* 01704 80A5C9F4 00000000 */  nop
/* 01708 80A5C9F8 1000001E */  beq     $zero, $zero, .L80A5CA74   
/* 0170C 80A5C9FC 8609001C */  lh      $t1, 0x001C($s0)           ## 0000001C
.L80A5CA00:
/* 01710 80A5CA00 24010009 */  addiu   $at, $zero, 0x0009         ## $at = 00000009
/* 01714 80A5CA04 14410010 */  bne     $v0, $at, .L80A5CA48       
/* 01718 80A5CA08 24180005 */  addiu   $t8, $zero, 0x0005         ## $t8 = 00000005
/* 0171C 80A5CA0C A618001C */  sh      $t8, 0x001C($s0)           ## 0000001C
/* 01720 80A5CA10 90B91D6C */  lbu     $t9, 0x1D6C($a1)           ## 00001D6C
/* 01724 80A5CA14 3C014100 */  lui     $at, 0x4100                ## $at = 41000000
/* 01728 80A5CA18 53200006 */  beql    $t9, $zero, .L80A5CA34     
/* 0172C 80A5CA1C 44813000 */  mtc1    $at, $f6                   ## $f6 = 8.00
/* 01730 80A5CA20 0C2973D9 */  jal     func_80A5CF64              
/* 01734 80A5CA24 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01738 80A5CA28 10000012 */  beq     $zero, $zero, .L80A5CA74   
/* 0173C 80A5CA2C 8609001C */  lh      $t1, 0x001C($s0)           ## 0000001C
/* 01740 80A5CA30 44813000 */  mtc1    $at, $f6                   ## $f6 = 0.00
.L80A5CA34:
/* 01744 80A5CA34 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01748 80A5CA38 0C29772C */  jal     func_80A5DCB0              
/* 0174C 80A5CA3C E6060068 */  swc1    $f6, 0x0068($s0)           ## 00000068
/* 01750 80A5CA40 1000000C */  beq     $zero, $zero, .L80A5CA74   
/* 01754 80A5CA44 8609001C */  lh      $t1, 0x001C($s0)           ## 0000001C
.L80A5CA48:
/* 01758 80A5CA48 8E080254 */  lw      $t0, 0x0254($s0)           ## 00000254
/* 0175C 80A5CA4C 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 01760 80A5CA50 15010005 */  bne     $t0, $at, .L80A5CA68       
/* 01764 80A5CA54 00000000 */  nop
/* 01768 80A5CA58 0C2973D9 */  jal     func_80A5CF64              
/* 0176C 80A5CA5C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01770 80A5CA60 10000004 */  beq     $zero, $zero, .L80A5CA74   
/* 01774 80A5CA64 8609001C */  lh      $t1, 0x001C($s0)           ## 0000001C
.L80A5CA68:
/* 01778 80A5CA68 0C2973CA */  jal     func_80A5CF28              
/* 0177C 80A5CA6C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01780 80A5CA70 8609001C */  lh      $t1, 0x001C($s0)           ## 0000001C
.L80A5CA74:
/* 01784 80A5CA74 51200019 */  beql    $t1, $zero, .L80A5CADC     
/* 01788 80A5CA78 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0178C 80A5CA7C 10000016 */  beq     $zero, $zero, .L80A5CAD8   
/* 01790 80A5CA80 A600001C */  sh      $zero, 0x001C($s0)         ## 0000001C
.L80A5CA84:
/* 01794 80A5CA84 8E020254 */  lw      $v0, 0x0254($s0)           ## 00000254
/* 01798 80A5CA88 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 0179C 80A5CA8C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 017A0 80A5CA90 14410005 */  bne     $v0, $at, .L80A5CAA8       
/* 017A4 80A5CA94 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 017A8 80A5CA98 0C297CE0 */  jal     func_80A5F380              
/* 017AC 80A5CA9C 24060000 */  addiu   $a2, $zero, 0x0000         ## $a2 = 00000000
/* 017B0 80A5CAA0 1000000E */  beq     $zero, $zero, .L80A5CADC   
/* 017B4 80A5CAA4 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80A5CAA8:
/* 017B8 80A5CAA8 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
/* 017BC 80A5CAAC 14410007 */  bne     $v0, $at, .L80A5CACC       
/* 017C0 80A5CAB0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 017C4 80A5CAB4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 017C8 80A5CAB8 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 017CC 80A5CABC 0C297CE0 */  jal     func_80A5F380              
/* 017D0 80A5CAC0 24060000 */  addiu   $a2, $zero, 0x0000         ## $a2 = 00000000
/* 017D4 80A5CAC4 10000005 */  beq     $zero, $zero, .L80A5CADC   
/* 017D8 80A5CAC8 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80A5CACC:
/* 017DC 80A5CACC 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 017E0 80A5CAD0 0C297CE0 */  jal     func_80A5F380              
/* 017E4 80A5CAD4 24060000 */  addiu   $a2, $zero, 0x0000         ## $a2 = 00000000
.L80A5CAD8:
/* 017E8 80A5CAD8 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80A5CADC:
/* 017EC 80A5CADC 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 017F0 80A5CAE0 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 017F4 80A5CAE4 03E00008 */  jr      $ra                        
/* 017F8 80A5CAE8 00000000 */  nop


