glabel func_80A0CA44
/* 01384 80A0CA44 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01388 80A0CA48 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0138C 80A0CA4C AFA5001C */  sw      $a1, 0x001C($sp)           
/* 01390 80A0CA50 848204BE */  lh      $v0, 0x04BE($a0)           ## 000004BE
/* 01394 80A0CA54 10400009 */  beq     $v0, $zero, .L80A0CA7C     
/* 01398 80A0CA58 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 0139C 80A0CA5C A48E04BE */  sh      $t6, 0x04BE($a0)           ## 000004BE
/* 013A0 80A0CA60 848F04BE */  lh      $t7, 0x04BE($a0)           ## 000004BE
/* 013A4 80A0CA64 55E00012 */  bnel    $t7, $zero, .L80A0CAB0     
/* 013A8 80A0CA68 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 013AC 80A0CA6C 0C00B55C */  jal     Actor_Kill
              
/* 013B0 80A0CA70 00000000 */  nop
/* 013B4 80A0CA74 1000000E */  beq     $zero, $zero, .L80A0CAB0   
/* 013B8 80A0CA78 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A0CA7C:
/* 013BC 80A0CA7C 8482001C */  lh      $v0, 0x001C($a0)           ## 0000001C
/* 013C0 80A0CA80 3C1980A1 */  lui     $t9, %hi(func_80A0C310)    ## $t9 = 80A10000
/* 013C4 80A0CA84 2739C310 */  addiu   $t9, $t9, %lo(func_80A0C310) ## $t9 = 80A0C310
/* 013C8 80A0CA88 30588000 */  andi    $t8, $v0, 0x8000           ## $t8 = 00000000
/* 013CC 80A0CA8C 13000003 */  beq     $t8, $zero, .L80A0CA9C     
/* 013D0 80A0CA90 30484000 */  andi    $t0, $v0, 0x4000           ## $t0 = 00000000
/* 013D4 80A0CA94 10000005 */  beq     $zero, $zero, .L80A0CAAC   
/* 013D8 80A0CA98 AC990190 */  sw      $t9, 0x0190($a0)           ## 00000190
.L80A0CA9C:
/* 013DC 80A0CA9C 11000003 */  beq     $t0, $zero, .L80A0CAAC     
/* 013E0 80A0CAA0 2409001E */  addiu   $t1, $zero, 0x001E         ## $t1 = 0000001E
/* 013E4 80A0CAA4 A480001C */  sh      $zero, 0x001C($a0)         ## 0000001C
/* 013E8 80A0CAA8 A48904BE */  sh      $t1, 0x04BE($a0)           ## 000004BE
.L80A0CAAC:
/* 013EC 80A0CAAC 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A0CAB0:
/* 013F0 80A0CAB0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 013F4 80A0CAB4 03E00008 */  jr      $ra                        
/* 013F8 80A0CAB8 00000000 */  nop
