glabel func_808FFDB0
/* 02E70 808FFDB0 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 02E74 808FFDB4 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 02E78 808FFDB8 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 02E7C 808FFDBC 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 02E80 808FFDC0 342117A4 */  ori     $at, $at, 0x17A4           ## $at = 000117A4
/* 02E84 808FFDC4 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 02E88 808FFDC8 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 02E8C 808FFDCC 00A12021 */  addu    $a0, $a1, $at              
/* 02E90 808FFDD0 AFA40024 */  sw      $a0, 0x0024($sp)           
/* 02E94 808FFDD4 0C02604B */  jal     Object_GetIndex
              ## ObjectIndex
/* 02E98 808FFDD8 24050153 */  addiu   $a1, $zero, 0x0153         ## $a1 = 00000153
/* 02E9C 808FFDDC 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 02EA0 808FFDE0 AFA20028 */  sw      $v0, 0x0028($sp)           
/* 02EA4 808FFDE4 0C026062 */  jal     Object_IsLoaded
              
/* 02EA8 808FFDE8 00402825 */  or      $a1, $v0, $zero            ## $a1 = 00000000
/* 02EAC 808FFDEC 1040002C */  beq     $v0, $zero, .L808FFEA0     
/* 02EB0 808FFDF0 3C088090 */  lui     $t0, %hi(func_808FFDB0)    ## $t0 = 80900000
/* 02EB4 808FFDF4 8FAF0028 */  lw      $t7, 0x0028($sp)           
/* 02EB8 808FFDF8 8FAE0034 */  lw      $t6, 0x0034($sp)           
/* 02EBC 808FFDFC 3C080001 */  lui     $t0, 0x0001                ## $t0 = 00010000
/* 02EC0 808FFE00 000FC100 */  sll     $t8, $t7,  4               
/* 02EC4 808FFE04 030FC021 */  addu    $t8, $t8, $t7              
/* 02EC8 808FFE08 0018C080 */  sll     $t8, $t8,  2               
/* 02ECC 808FFE0C 01D8C821 */  addu    $t9, $t6, $t8              
/* 02ED0 808FFE10 01194021 */  addu    $t0, $t0, $t9              
/* 02ED4 808FFE14 8D0817B4 */  lw      $t0, 0x17B4($t0)           ## 000117B4
/* 02ED8 808FFE18 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 02EDC 808FFE1C 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 02EE0 808FFE20 01014821 */  addu    $t1, $t0, $at              
/* 02EE4 808FFE24 3C018016 */  lui     $at, 0x8016                ## $at = 80160000
/* 02EE8 808FFE28 AC296FC0 */  sw      $t1, 0x6FC0($at)           ## 80166FC0
/* 02EEC 808FFE2C 24A5FFE4 */  addiu   $a1, $a1, 0xFFE4           ## $a1 = 0600FFE4
/* 02EF0 808FFE30 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 02EF4 808FFE34 0C0294D3 */  jal     func_800A534C              
/* 02EF8 808FFE38 3C06C120 */  lui     $a2, 0xC120                ## $a2 = C1200000
/* 02EFC 808FFE3C 920B0334 */  lbu     $t3, 0x0334($s0)           ## 00000334
/* 02F00 808FFE40 3C0A8090 */  lui     $t2, %hi(func_808FFEBC)    ## $t2 = 80900000
/* 02F04 808FFE44 254AFEBC */  addiu   $t2, $t2, %lo(func_808FFEBC) ## $t2 = 808FFEBC
/* 02F08 808FFE48 11600009 */  beq     $t3, $zero, .L808FFE70     
/* 02F0C 808FFE4C AE0A0190 */  sw      $t2, 0x0190($s0)           ## 00000190
/* 02F10 808FFE50 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 02F14 808FFE54 44816000 */  mtc1    $at, $f12                  ## $f12 = 30.00
/* 02F18 808FFE58 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 02F1C 808FFE5C 00000000 */  nop
/* 02F20 808FFE60 4600010D */  trunc.w.s $f4, $f0                   
/* 02F24 808FFE64 440D2000 */  mfc1    $t5, $f4                   
/* 02F28 808FFE68 10000003 */  beq     $zero, $zero, .L808FFE78   
/* 02F2C 808FFE6C A60D01A2 */  sh      $t5, 0x01A2($s0)           ## 000001A2
.L808FFE70:
/* 02F30 808FFE70 240F0028 */  addiu   $t7, $zero, 0x0028         ## $t7 = 00000028
/* 02F34 808FFE74 A60F01A2 */  sh      $t7, 0x01A2($s0)           ## 000001A2
.L808FFE78:
/* 02F38 808FFE78 8E180004 */  lw      $t8, 0x0004($s0)           ## 00000004
/* 02F3C 808FFE7C 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 02F40 808FFE80 44810000 */  mtc1    $at, $f0                   ## $f0 = 1.00
/* 02F44 808FFE84 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 02F48 808FFE88 37190001 */  ori     $t9, $t8, 0x0001           ## $t9 = 00000001
/* 02F4C 808FFE8C A20E0336 */  sb      $t6, 0x0336($s0)           ## 00000336
/* 02F50 808FFE90 AE190004 */  sw      $t9, 0x0004($s0)           ## 00000004
/* 02F54 808FFE94 E6000228 */  swc1    $f0, 0x0228($s0)           ## 00000228
/* 02F58 808FFE98 10000003 */  beq     $zero, $zero, .L808FFEA8   
/* 02F5C 808FFE9C E6000224 */  swc1    $f0, 0x0224($s0)           ## 00000224
.L808FFEA0:
/* 02F60 808FFEA0 2508FDB0 */  addiu   $t0, $t0, %lo(func_808FFDB0) ## $t0 = FFFFFDB0
/* 02F64 808FFEA4 AE080190 */  sw      $t0, 0x0190($s0)           ## 00000190
.L808FFEA8:
/* 02F68 808FFEA8 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 02F6C 808FFEAC 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 02F70 808FFEB0 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 02F74 808FFEB4 03E00008 */  jr      $ra                        
/* 02F78 808FFEB8 00000000 */  nop


