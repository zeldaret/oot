glabel func_809AACAC
/* 0049C 809AACAC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 004A0 809AACB0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 004A4 809AACB4 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 004A8 809AACB8 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 004AC 809AACBC 3C01809B */  lui     $at, %hi(D_809AAE54)       ## $at = 809B0000
/* 004B0 809AACC0 C420AE54 */  lwc1    $f0, %lo(D_809AAE54)($at)  
/* 004B4 809AACC4 C4C4000C */  lwc1    $f4, 0x000C($a2)           ## 0000000C
/* 004B8 809AACC8 C4C80014 */  lwc1    $f8, 0x0014($a2)           ## 00000014
/* 004BC 809AACCC 3C01809B */  lui     $at, %hi(D_809AAE58)       ## $at = 809B0000
/* 004C0 809AACD0 46002182 */  mul.s   $f6, $f4, $f0              
/* 004C4 809AACD4 00000000 */  nop
/* 004C8 809AACD8 46004282 */  mul.s   $f10, $f8, $f0             
/* 004CC 809AACDC E4C6000C */  swc1    $f6, 0x000C($a2)           ## 0000000C
/* 004D0 809AACE0 E4CA0014 */  swc1    $f10, 0x0014($a2)          ## 00000014
/* 004D4 809AACE4 AFA60020 */  sw      $a2, 0x0020($sp)           
/* 004D8 809AACE8 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 004DC 809AACEC C42CAE58 */  lwc1    $f12, %lo(D_809AAE58)($at) 
/* 004E0 809AACF0 8FA60020 */  lw      $a2, 0x0020($sp)           
/* 004E4 809AACF4 3C01809B */  lui     $at, %hi(D_809AAE5C)       ## $at = 809B0000
/* 004E8 809AACF8 E4C00018 */  swc1    $f0, 0x0018($a2)           ## 00000018
/* 004EC 809AACFC 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 004F0 809AAD00 C42CAE5C */  lwc1    $f12, %lo(D_809AAE5C)($at) 
/* 004F4 809AAD04 8FA60020 */  lw      $a2, 0x0020($sp)           
/* 004F8 809AAD08 84C20054 */  lh      $v0, 0x0054($a2)           ## 00000054
/* 004FC 809AAD0C 84CE0052 */  lh      $t6, 0x0052($a2)           ## 00000052
/* 00500 809AAD10 E4C00020 */  swc1    $f0, 0x0020($a2)           ## 00000020
/* 00504 809AAD14 0002C023 */  subu    $t8, $zero, $v0            
/* 00508 809AAD18 01C27821 */  addu    $t7, $t6, $v0              
/* 0050C 809AAD1C A4CF0052 */  sh      $t7, 0x0052($a2)           ## 00000052
/* 00510 809AAD20 84C30052 */  lh      $v1, 0x0052($a2)           ## 00000052
/* 00514 809AAD24 04610004 */  bgez    $v1, .L809AAD38            
/* 00518 809AAD28 28610100 */  slti    $at, $v1, 0x0100           
/* 0051C 809AAD2C A4C00052 */  sh      $zero, 0x0052($a2)         ## 00000052
/* 00520 809AAD30 10000006 */  beq     $zero, $zero, .L809AAD4C   
/* 00524 809AAD34 A4D80054 */  sh      $t8, 0x0054($a2)           ## 00000054
.L809AAD38:
/* 00528 809AAD38 14200004 */  bne     $at, $zero, .L809AAD4C     
/* 0052C 809AAD3C 241900FF */  addiu   $t9, $zero, 0x00FF         ## $t9 = 000000FF
/* 00530 809AAD40 00024023 */  subu    $t0, $zero, $v0            
/* 00534 809AAD44 A4D90052 */  sh      $t9, 0x0052($a2)           ## 00000052
/* 00538 809AAD48 A4C80054 */  sh      $t0, 0x0054($a2)           ## 00000054
.L809AAD4C:
/* 0053C 809AAD4C 84C90042 */  lh      $t1, 0x0042($a2)           ## 00000042
/* 00540 809AAD50 84CA0040 */  lh      $t2, 0x0040($a2)           ## 00000040
/* 00544 809AAD54 012A5821 */  addu    $t3, $t1, $t2              
/* 00548 809AAD58 A4CB0042 */  sh      $t3, 0x0042($a2)           ## 00000042
/* 0054C 809AAD5C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00550 809AAD60 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00554 809AAD64 03E00008 */  jr      $ra                        
/* 00558 809AAD68 00000000 */  nop


