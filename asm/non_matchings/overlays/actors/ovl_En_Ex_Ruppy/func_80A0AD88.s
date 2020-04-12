.late_rodata
glabel D_80A0B544
    .float 0.03

glabel D_80A0B548
 .word 0x3D8F5C29, 0x00000000

.text
glabel func_80A0AD88
/* 00978 80A0AD88 27BDFFB0 */  addiu   $sp, $sp, 0xFFB0           ## $sp = FFFFFFB0
/* 0097C 80A0AD8C 3C0F80A1 */  lui     $t7, %hi(D_80A0B388)       ## $t7 = 80A10000
/* 00980 80A0AD90 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00984 80A0AD94 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 00988 80A0AD98 AFA50054 */  sw      $a1, 0x0054($sp)           
/* 0098C 80A0AD9C 25EFB388 */  addiu   $t7, $t7, %lo(D_80A0B388)  ## $t7 = 80A0B388
/* 00990 80A0ADA0 8DF90000 */  lw      $t9, 0x0000($t7)           ## 80A0B388
/* 00994 80A0ADA4 27AE0040 */  addiu   $t6, $sp, 0x0040           ## $t6 = FFFFFFF0
/* 00998 80A0ADA8 8DF80004 */  lw      $t8, 0x0004($t7)           ## 80A0B38C
/* 0099C 80A0ADAC ADD90000 */  sw      $t9, 0x0000($t6)           ## FFFFFFF0
/* 009A0 80A0ADB0 8DF90008 */  lw      $t9, 0x0008($t7)           ## 80A0B390
/* 009A4 80A0ADB4 3C0980A1 */  lui     $t1, %hi(D_80A0B394)       ## $t1 = 80A10000
/* 009A8 80A0ADB8 2529B394 */  addiu   $t1, $t1, %lo(D_80A0B394)  ## $t1 = 80A0B394
/* 009AC 80A0ADBC ADD80004 */  sw      $t8, 0x0004($t6)           ## FFFFFFF4
/* 009B0 80A0ADC0 ADD90008 */  sw      $t9, 0x0008($t6)           ## FFFFFFF8
/* 009B4 80A0ADC4 8D2B0000 */  lw      $t3, 0x0000($t1)           ## 80A0B394
/* 009B8 80A0ADC8 27A80034 */  addiu   $t0, $sp, 0x0034           ## $t0 = FFFFFFE4
/* 009BC 80A0ADCC 8D2A0004 */  lw      $t2, 0x0004($t1)           ## 80A0B398
/* 009C0 80A0ADD0 AD0B0000 */  sw      $t3, 0x0000($t0)           ## FFFFFFE4
/* 009C4 80A0ADD4 8D2B0008 */  lw      $t3, 0x0008($t1)           ## 80A0B39C
/* 009C8 80A0ADD8 AD0A0004 */  sw      $t2, 0x0004($t0)           ## FFFFFFE8
/* 009CC 80A0ADDC 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 009D0 80A0ADE0 AD0B0008 */  sw      $t3, 0x0008($t0)           ## FFFFFFEC
/* 009D4 80A0ADE4 848C0156 */  lh      $t4, 0x0156($a0)           ## 00000156
/* 009D8 80A0ADE8 240D000A */  addiu   $t5, $zero, 0x000A         ## $t5 = 0000000A
/* 009DC 80A0ADEC 3C0180A1 */  lui     $at, %hi(D_80A0B544)       ## $at = 80A10000
/* 009E0 80A0ADF0 55800011 */  bnel    $t4, $zero, .L80A0AE38     
/* 009E4 80A0ADF4 8E030118 */  lw      $v1, 0x0118($s0)           ## 00000118
/* 009E8 80A0ADF8 A48D0156 */  sh      $t5, 0x0156($a0)           ## 00000156
/* 009EC 80A0ADFC 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 009F0 80A0AE00 C42CB544 */  lwc1    $f12, %lo(D_80A0B544)($at) 
/* 009F4 80A0AE04 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 009F8 80A0AE08 44811000 */  mtc1    $at, $f2                   ## $f2 = 5.00
/* 009FC 80A0AE0C 3C0180A1 */  lui     $at, %hi(D_80A0B548)       ## $at = 80A10000
/* 00A00 80A0AE10 C424B548 */  lwc1    $f4, %lo(D_80A0B548)($at)  
/* 00A04 80A0AE14 44071000 */  mfc1    $a3, $f2                   
/* 00A08 80A0AE18 8FA40054 */  lw      $a0, 0x0054($sp)           
/* 00A0C 80A0AE1C 46040180 */  add.s   $f6, $f0, $f4              
/* 00A10 80A0AE20 26050024 */  addiu   $a1, $s0, 0x0024           ## $a1 = 00000024
/* 00A14 80A0AE24 24060000 */  addiu   $a2, $zero, 0x0000         ## $a2 = 00000000
/* 00A18 80A0AE28 E7A20010 */  swc1    $f2, 0x0010($sp)           
/* 00A1C 80A0AE2C 0C00A4F9 */  jal     func_800293E4              
/* 00A20 80A0AE30 E7A60014 */  swc1    $f6, 0x0014($sp)           
/* 00A24 80A0AE34 8E030118 */  lw      $v1, 0x0118($s0)           ## 00000118
.L80A0AE38:
/* 00A28 80A0AE38 50600025 */  beql    $v1, $zero, .L80A0AED0     
/* 00A2C 80A0AE3C 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00A30 80A0AE40 8C6E0130 */  lw      $t6, 0x0130($v1)           ## 00000130
/* 00A34 80A0AE44 00601025 */  or      $v0, $v1, $zero            ## $v0 = 00000000
/* 00A38 80A0AE48 11C0001E */  beq     $t6, $zero, .L80A0AEC4     
/* 00A3C 80A0AE4C 00000000 */  nop
/* 00A40 80A0AE50 846F029C */  lh      $t7, 0x029C($v1)           ## 0000029C
/* 00A44 80A0AE54 24180014 */  addiu   $t8, $zero, 0x0014         ## $t8 = 00000014
/* 00A48 80A0AE58 3C1980A1 */  lui     $t9, %hi(func_80A0AEE0)    ## $t9 = 80A10000
/* 00A4C 80A0AE5C 15E00005 */  bne     $t7, $zero, .L80A0AE74     
/* 00A50 80A0AE60 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 00A54 80A0AE64 2739AEE0 */  addiu   $t9, $t9, %lo(func_80A0AEE0) ## $t9 = 80A0AEE0
/* 00A58 80A0AE68 A6180156 */  sh      $t8, 0x0156($s0)           ## 00000156
/* 00A5C 80A0AE6C 10000017 */  beq     $zero, $zero, .L80A0AECC   
/* 00A60 80A0AE70 AE19014C */  sw      $t9, 0x014C($s0)           ## 0000014C
.L80A0AE74:
/* 00A64 80A0AE74 44810000 */  mtc1    $at, $f0                   ## $f0 = 30.00
/* 00A68 80A0AE78 C608008C */  lwc1    $f8, 0x008C($s0)           ## 0000008C
/* 00A6C 80A0AE7C 46000282 */  mul.s   $f10, $f0, $f0             
/* 00A70 80A0AE80 460A403C */  c.lt.s  $f8, $f10                  
/* 00A74 80A0AE84 00000000 */  nop
/* 00A78 80A0AE88 45020011 */  bc1fl   .L80A0AED0                 
/* 00A7C 80A0AE8C 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00A80 80A0AE90 86040158 */  lh      $a0, 0x0158($s0)           ## 00000158
/* 00A84 80A0AE94 0C021CC3 */  jal     Rupees_ChangeBy              
/* 00A88 80A0AE98 AFA2004C */  sw      $v0, 0x004C($sp)           
/* 00A8C 80A0AE9C 0C01E221 */  jal     func_80078884              
/* 00A90 80A0AEA0 24044803 */  addiu   $a0, $zero, 0x4803         ## $a0 = 00004803
/* 00A94 80A0AEA4 8FA2004C */  lw      $v0, 0x004C($sp)           
/* 00A98 80A0AEA8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00A9C 80A0AEAC 844802A4 */  lh      $t0, 0x02A4($v0)           ## 000002A4
/* 00AA0 80A0AEB0 25090001 */  addiu   $t1, $t0, 0x0001           ## $t1 = 00000001
/* 00AA4 80A0AEB4 0C00B55C */  jal     Actor_Kill
              
/* 00AA8 80A0AEB8 A44902A4 */  sh      $t1, 0x02A4($v0)           ## 000002A4
/* 00AAC 80A0AEBC 10000004 */  beq     $zero, $zero, .L80A0AED0   
/* 00AB0 80A0AEC0 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80A0AEC4:
/* 00AB4 80A0AEC4 0C00B55C */  jal     Actor_Kill
              
/* 00AB8 80A0AEC8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80A0AECC:
/* 00ABC 80A0AECC 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80A0AED0:
/* 00AC0 80A0AED0 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 00AC4 80A0AED4 27BD0050 */  addiu   $sp, $sp, 0x0050           ## $sp = 00000000
/* 00AC8 80A0AED8 03E00008 */  jr      $ra                        
/* 00ACC 80A0AEDC 00000000 */  nop
