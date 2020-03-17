glabel func_80AEF930
/* 04D20 80AEF930 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 04D24 80AEF934 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 04D28 80AEF938 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 04D2C 80AEF93C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 04D30 80AEF940 0C2BAC41 */  jal     func_80AEB104              
/* 04D34 80AEF944 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 04D38 80AEF948 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 04D3C 80AEF94C 1441000E */  bne     $v0, $at, .L80AEF988       
/* 04D40 80AEF950 24184048 */  addiu   $t8, $zero, 0x4048         ## $t8 = 00004048
/* 04D44 80AEF954 8E0E0004 */  lw      $t6, 0x0004($s0)           ## 00000004
/* 04D48 80AEF958 A618010E */  sh      $t8, 0x010E($s0)           ## 0000010E
/* 04D4C 80AEF95C 3305FFFF */  andi    $a1, $t8, 0xFFFF           ## $a1 = 00004048
/* 04D50 80AEF960 35CF0009 */  ori     $t7, $t6, 0x0009           ## $t7 = 00000009
/* 04D54 80AEF964 AE0F0004 */  sw      $t7, 0x0004($s0)           ## 00000004
/* 04D58 80AEF968 0C042DC8 */  jal     func_8010B720              
/* 04D5C 80AEF96C 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 04D60 80AEF970 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 04D64 80AEF974 0C2BBD2A */  jal     func_80AEF4A8              
/* 04D68 80AEF978 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 04D6C 80AEF97C 2419002B */  addiu   $t9, $zero, 0x002B         ## $t9 = 0000002B
/* 04D70 80AEF980 AE190264 */  sw      $t9, 0x0264($s0)           ## 00000264
/* 04D74 80AEF984 AE000268 */  sw      $zero, 0x0268($s0)         ## 00000268
.L80AEF988:
/* 04D78 80AEF988 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 04D7C 80AEF98C 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 04D80 80AEF990 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 04D84 80AEF994 03E00008 */  jr      $ra                        
/* 04D88 80AEF998 00000000 */  nop


