glabel func_80ADF0B8
/* 01368 80ADF0B8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0136C 80ADF0BC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01370 80ADF0C0 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 01374 80ADF0C4 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 01378 80ADF0C8 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 0137C 80ADF0CC 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 01380 80ADF0D0 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 01384 80ADF0D4 1040000F */  beq     $v0, $zero, .L80ADF114     
/* 01388 80ADF0D8 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 0138C 80ADF0DC 240E00FF */  addiu   $t6, $zero, 0x00FF         ## $t6 = 000000FF
/* 01390 80ADF0E0 A0CE029D */  sb      $t6, 0x029D($a2)           ## 0000029D
/* 01394 80ADF0E4 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 01398 80ADF0E8 240402BC */  addiu   $a0, $zero, 0x02BC         ## $a0 = 000002BC
/* 0139C 80ADF0EC 0C01DF64 */  jal     Math_Rand_S16Offset
              
/* 013A0 80ADF0F0 2405012C */  addiu   $a1, $zero, 0x012C         ## $a1 = 0000012C
/* 013A4 80ADF0F4 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 013A8 80ADF0F8 8C8F0004 */  lw      $t7, 0x0004($a0)           ## 00000004
/* 013AC 80ADF0FC A482019A */  sh      $v0, 0x019A($a0)           ## 0000019A
/* 013B0 80ADF100 35F80001 */  ori     $t8, $t7, 0x0001           ## $t8 = 00000001
/* 013B4 80ADF104 0C2B785B */  jal     func_80ADE16C              
/* 013B8 80ADF108 AC980004 */  sw      $t8, 0x0004($a0)           ## 00000004
/* 013BC 80ADF10C 10000010 */  beq     $zero, $zero, .L80ADF150   
/* 013C0 80ADF110 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80ADF114:
/* 013C4 80ADF114 3C0141CC */  lui     $at, 0x41CC                ## $at = 41CC0000
/* 013C8 80ADF118 44813000 */  mtc1    $at, $f6                   ## $f6 = 25.50
/* 013CC 80ADF11C C4C40164 */  lwc1    $f4, 0x0164($a2)           ## 00000164
/* 013D0 80ADF120 240800FF */  addiu   $t0, $zero, 0x00FF         ## $t0 = 000000FF
/* 013D4 80ADF124 46062202 */  mul.s   $f8, $f4, $f6              
/* 013D8 80ADF128 4600428D */  trunc.w.s $f10, $f8                  
/* 013DC 80ADF12C 44025000 */  mfc1    $v0, $f10                  
/* 013E0 80ADF130 00000000 */  nop
/* 013E4 80ADF134 28410100 */  slti    $at, $v0, 0x0100           
/* 013E8 80ADF138 54200004 */  bnel    $at, $zero, .L80ADF14C     
/* 013EC 80ADF13C A0C2029D */  sb      $v0, 0x029D($a2)           ## 0000029D
/* 013F0 80ADF140 10000002 */  beq     $zero, $zero, .L80ADF14C   
/* 013F4 80ADF144 A0C8029D */  sb      $t0, 0x029D($a2)           ## 0000029D
/* 013F8 80ADF148 A0C2029D */  sb      $v0, 0x029D($a2)           ## 0000029D
.L80ADF14C:
/* 013FC 80ADF14C 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80ADF150:
/* 01400 80ADF150 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01404 80ADF154 03E00008 */  jr      $ra                        
/* 01408 80ADF158 00000000 */  nop


