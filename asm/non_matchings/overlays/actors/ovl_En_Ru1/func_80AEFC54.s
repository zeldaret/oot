glabel func_80AEFC54
/* 05044 80AEFC54 3C028016 */  lui     $v0, 0x8016                ## $v0 = 80160000
/* 05048 80AEFC58 9442F580 */  lhu     $v0, -0x0A80($v0)          ## 8015F580
/* 0504C 80AEFC5C 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 05050 80AEFC60 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 05054 80AEFC64 304E0020 */  andi    $t6, $v0, 0x0020           ## $t6 = 00000000
/* 05058 80AEFC68 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0505C 80AEFC6C AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 05060 80AEFC70 11C00016 */  beq     $t6, $zero, .L80AEFCCC     
/* 05064 80AEFC74 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 05068 80AEFC78 304F0040 */  andi    $t7, $v0, 0x0040           ## $t7 = 00000000
/* 0506C 80AEFC7C 15E00013 */  bne     $t7, $zero, .L80AEFCCC     
/* 05070 80AEFC80 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 05074 80AEFC84 24A597B8 */  addiu   $a1, $a1, 0x97B8           ## $a1 = 060097B8
/* 05078 80AEFC88 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 0507C 80AEFC8C 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 05080 80AEFC90 0C2BAC99 */  jal     func_80AEB264              
/* 05084 80AEFC94 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 05088 80AEFC98 24180029 */  addiu   $t8, $zero, 0x0029         ## $t8 = 00000029
/* 0508C 80AEFC9C AE180264 */  sw      $t8, 0x0264($s0)           ## 00000264
/* 05090 80AEFCA0 0C2BAC22 */  jal     func_80AEB088              
/* 05094 80AEFCA4 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 05098 80AEFCA8 AE02028C */  sw      $v0, 0x028C($s0)           ## 0000028C
/* 0509C 80AEFCAC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 050A0 80AEFCB0 0C2BAC3B */  jal     func_80AEB0EC              
/* 050A4 80AEFCB4 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 050A8 80AEFCB8 8E190004 */  lw      $t9, 0x0004($s0)           ## 00000004
/* 050AC 80AEFCBC 2401FFF6 */  addiu   $at, $zero, 0xFFF6         ## $at = FFFFFFF6
/* 050B0 80AEFCC0 03214024 */  and     $t0, $t9, $at              
/* 050B4 80AEFCC4 10000003 */  beq     $zero, $zero, .L80AEFCD4   
/* 050B8 80AEFCC8 AE080004 */  sw      $t0, 0x0004($s0)           ## 00000004
.L80AEFCCC:
/* 050BC 80AEFCCC 0C00B55C */  jal     Actor_Kill
              
/* 050C0 80AEFCD0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80AEFCD4:
/* 050C4 80AEFCD4 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 050C8 80AEFCD8 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 050CC 80AEFCDC 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 050D0 80AEFCE0 03E00008 */  jr      $ra                        
/* 050D4 80AEFCE4 00000000 */  nop
