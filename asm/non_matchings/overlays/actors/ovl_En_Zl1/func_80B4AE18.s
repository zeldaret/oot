glabel func_80B4AE18
/* 002D8 80B4AE18 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 002DC 80B4AE1C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 002E0 80B4AE20 8C8F0154 */  lw      $t7, 0x0154($a0)           ## 00000154
/* 002E4 80B4AE24 3C0E0601 */  lui     $t6, 0x0601                ## $t6 = 06010000
/* 002E8 80B4AE28 25CE0B38 */  addiu   $t6, $t6, 0x0B38           ## $t6 = 06010B38
/* 002EC 80B4AE2C 15CF0010 */  bne     $t6, $t7, .L80B4AE70       
/* 002F0 80B4AE30 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 002F4 80B4AE34 3C0141D0 */  lui     $at, 0x41D0                ## $at = 41D00000
/* 002F8 80B4AE38 44813000 */  mtc1    $at, $f6                   ## $f6 = 26.00
/* 002FC 80B4AE3C C4840164 */  lwc1    $f4, 0x0164($a0)           ## 00000164
/* 00300 80B4AE40 3C180601 */  lui     $t8, 0x0601                ## $t8 = 06010000
/* 00304 80B4AE44 3C190601 */  lui     $t9, 0x0601                ## $t9 = 06010000
/* 00308 80B4AE48 4606203C */  c.lt.s  $f4, $f6                   
/* 0030C 80B4AE4C 27188C48 */  addiu   $t8, $t8, 0x8C48           ## $t8 = 06008C48
/* 00310 80B4AE50 27398848 */  addiu   $t9, $t9, 0x8848           ## $t9 = 06008848
/* 00314 80B4AE54 24080002 */  addiu   $t0, $zero, 0x0002         ## $t0 = 00000002
/* 00318 80B4AE58 45020006 */  bc1fl   .L80B4AE74                 
/* 0031C 80B4AE5C 84C301FC */  lh      $v1, 0x01FC($a2)           ## 000001FC
/* 00320 80B4AE60 AC9801F4 */  sw      $t8, 0x01F4($a0)           ## 000001F4
/* 00324 80B4AE64 AC9901F8 */  sw      $t9, 0x01F8($a0)           ## 000001F8
/* 00328 80B4AE68 10000027 */  beq     $zero, $zero, .L80B4AF08   
/* 0032C 80B4AE6C A48801FC */  sh      $t0, 0x01FC($a0)           ## 000001FC
.L80B4AE70:
/* 00330 80B4AE70 84C301FC */  lh      $v1, 0x01FC($a2)           ## 000001FC
.L80B4AE74:
/* 00334 80B4AE74 2404001E */  addiu   $a0, $zero, 0x001E         ## $a0 = 0000001E
/* 00338 80B4AE78 2405000A */  addiu   $a1, $zero, 0x000A         ## $a1 = 0000000A
/* 0033C 80B4AE7C 14600003 */  bne     $v1, $zero, .L80B4AE8C     
/* 00340 80B4AE80 2469FFFF */  addiu   $t1, $v1, 0xFFFF           ## $t1 = FFFFFFFF
/* 00344 80B4AE84 10000004 */  beq     $zero, $zero, .L80B4AE98   
/* 00348 80B4AE88 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80B4AE8C:
/* 0034C 80B4AE8C A4C901FC */  sh      $t1, 0x01FC($a2)           ## 000001FC
/* 00350 80B4AE90 84C301FC */  lh      $v1, 0x01FC($a2)           ## 000001FC
/* 00354 80B4AE94 00601025 */  or      $v0, $v1, $zero            ## $v0 = 00000000
.L80B4AE98:
/* 00358 80B4AE98 54400007 */  bnel    $v0, $zero, .L80B4AEB8     
/* 0035C 80B4AE9C 28610004 */  slti    $at, $v1, 0x0004           
/* 00360 80B4AEA0 0C01DF64 */  jal     Math_Rand_S16Offset
              
/* 00364 80B4AEA4 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 00368 80B4AEA8 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 0036C 80B4AEAC A4C201FC */  sh      $v0, 0x01FC($a2)           ## 000001FC
/* 00370 80B4AEB0 84C301FC */  lh      $v1, 0x01FC($a2)           ## 000001FC
/* 00374 80B4AEB4 28610004 */  slti    $at, $v1, 0x0004           
.L80B4AEB8:
/* 00378 80B4AEB8 50200004 */  beql    $at, $zero, .L80B4AECC     
/* 0037C 80B4AEBC A4C001FE */  sh      $zero, 0x01FE($a2)         ## 000001FE
/* 00380 80B4AEC0 10000002 */  beq     $zero, $zero, .L80B4AECC   
/* 00384 80B4AEC4 A4C301FE */  sh      $v1, 0x01FE($a2)           ## 000001FE
/* 00388 80B4AEC8 A4C001FE */  sh      $zero, 0x01FE($a2)         ## 000001FE
.L80B4AECC:
/* 0038C 80B4AECC 84CA01FE */  lh      $t2, 0x01FE($a2)           ## 000001FE
/* 00390 80B4AED0 3C0C80B5 */  lui     $t4, %hi(D_80B4E61C)       ## $t4 = 80B50000
/* 00394 80B4AED4 258CE61C */  addiu   $t4, $t4, %lo(D_80B4E61C)  ## $t4 = 80B4E61C
/* 00398 80B4AED8 000A5880 */  sll     $t3, $t2,  2               
/* 0039C 80B4AEDC 016C1021 */  addu    $v0, $t3, $t4              
/* 003A0 80B4AEE0 8C4D0000 */  lw      $t5, 0x0000($v0)           ## 00000000
/* 003A4 80B4AEE4 84CF01F2 */  lh      $t7, 0x01F2($a2)           ## 000001F2
/* 003A8 80B4AEE8 3C1980B5 */  lui     $t9, %hi(D_80B4E62C)       ## $t9 = 80B50000
/* 003AC 80B4AEEC ACCD01F4 */  sw      $t5, 0x01F4($a2)           ## 000001F4
/* 003B0 80B4AEF0 8C4E0000 */  lw      $t6, 0x0000($v0)           ## 00000000
/* 003B4 80B4AEF4 000FC080 */  sll     $t8, $t7,  2               
/* 003B8 80B4AEF8 0338C821 */  addu    $t9, $t9, $t8              
/* 003BC 80B4AEFC ACCE01F8 */  sw      $t6, 0x01F8($a2)           ## 000001F8
/* 003C0 80B4AF00 8F39E62C */  lw      $t9, %lo(D_80B4E62C)($t9)  
/* 003C4 80B4AF04 ACD901EC */  sw      $t9, 0x01EC($a2)           ## 000001EC
.L80B4AF08:
/* 003C8 80B4AF08 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 003CC 80B4AF0C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 003D0 80B4AF10 03E00008 */  jr      $ra                        
/* 003D4 80B4AF14 00000000 */  nop
