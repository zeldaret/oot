glabel func_80A34CE4
/* 006C4 80A34CE4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 006C8 80A34CE8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 006CC 80A34CEC AFA5001C */  sw      $a1, 0x001C($sp)           
/* 006D0 80A34CF0 0C00B638 */  jal     Actor_MoveForward
              
/* 006D4 80A34CF4 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 006D8 80A34CF8 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 006DC 80A34CFC 2404003C */  addiu   $a0, $zero, 0x003C         ## $a0 = 0000003C
/* 006E0 80A34D00 2405003C */  addiu   $a1, $zero, 0x003C         ## $a1 = 0000003C
/* 006E4 80A34D04 84C302FE */  lh      $v1, 0x02FE($a2)           ## 000002FE
/* 006E8 80A34D08 14600003 */  bne     $v1, $zero, .L80A34D18     
/* 006EC 80A34D0C 246EFFFF */  addiu   $t6, $v1, 0xFFFF           ## $t6 = FFFFFFFF
/* 006F0 80A34D10 10000004 */  beq     $zero, $zero, .L80A34D24   
/* 006F4 80A34D14 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80A34D18:
/* 006F8 80A34D18 A4CE02FE */  sh      $t6, 0x02FE($a2)           ## 000002FE
/* 006FC 80A34D1C 84C302FE */  lh      $v1, 0x02FE($a2)           ## 000002FE
/* 00700 80A34D20 00601025 */  or      $v0, $v1, $zero            ## $v0 = 00000000
.L80A34D24:
/* 00704 80A34D24 54400007 */  bnel    $v0, $zero, .L80A34D44     
/* 00708 80A34D28 A4C302FC */  sh      $v1, 0x02FC($a2)           ## 000002FC
/* 0070C 80A34D2C 0C01DF64 */  jal     Math_Rand_S16Offset
              
/* 00710 80A34D30 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 00714 80A34D34 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 00718 80A34D38 A4C202FE */  sh      $v0, 0x02FE($a2)           ## 000002FE
/* 0071C 80A34D3C 84C302FE */  lh      $v1, 0x02FE($a2)           ## 000002FE
/* 00720 80A34D40 A4C302FC */  sh      $v1, 0x02FC($a2)           ## 000002FC
.L80A34D44:
/* 00724 80A34D44 84CF02FC */  lh      $t7, 0x02FC($a2)           ## 000002FC
/* 00728 80A34D48 29E10003 */  slti    $at, $t7, 0x0003           
/* 0072C 80A34D4C 54200003 */  bnel    $at, $zero, .L80A34D5C     
/* 00730 80A34D50 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00734 80A34D54 A4C002FC */  sh      $zero, 0x02FC($a2)         ## 000002FC
/* 00738 80A34D58 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A34D5C:
/* 0073C 80A34D5C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00740 80A34D60 03E00008 */  jr      $ra                        
/* 00744 80A34D64 00000000 */  nop
