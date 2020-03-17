glabel func_80A1EC70
/* 006D0 80A1EC70 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 006D4 80A1EC74 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 006D8 80A1EC78 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 006DC 80A1EC7C 24050003 */  addiu   $a1, $zero, 0x0003         ## $a1 = 00000003
/* 006E0 80A1EC80 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 006E4 80A1EC84 0C287968 */  jal     func_80A1E5A0              
/* 006E8 80A1EC88 3C064100 */  lui     $a2, 0x4100                ## $a2 = 41000000
/* 006EC 80A1EC8C 1040000D */  beq     $v0, $zero, .L80A1ECC4     
/* 006F0 80A1EC90 8FA70018 */  lw      $a3, 0x0018($sp)           
/* 006F4 80A1EC94 84EE0204 */  lh      $t6, 0x0204($a3)           ## 00000204
/* 006F8 80A1EC98 2404012C */  addiu   $a0, $zero, 0x012C         ## $a0 = 0000012C
/* 006FC 80A1EC9C 24050096 */  addiu   $a1, $zero, 0x0096         ## $a1 = 00000096
/* 00700 80A1ECA0 55C00009 */  bnel    $t6, $zero, .L80A1ECC8     
/* 00704 80A1ECA4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00708 80A1ECA8 0C01DF64 */  jal     Math_Rand_S16Offset
              
/* 0070C 80A1ECAC AFA70018 */  sw      $a3, 0x0018($sp)           
/* 00710 80A1ECB0 8FA70018 */  lw      $a3, 0x0018($sp)           
/* 00714 80A1ECB4 3C0F80A2 */  lui     $t7, %hi(func_80A1ECD4)    ## $t7 = 80A20000
/* 00718 80A1ECB8 25EFECD4 */  addiu   $t7, $t7, %lo(func_80A1ECD4) ## $t7 = 80A1ECD4
/* 0071C 80A1ECBC A4E20212 */  sh      $v0, 0x0212($a3)           ## 00000212
/* 00720 80A1ECC0 ACEF0190 */  sw      $t7, 0x0190($a3)           ## 00000190
.L80A1ECC4:
/* 00724 80A1ECC4 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A1ECC8:
/* 00728 80A1ECC8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0072C 80A1ECCC 03E00008 */  jr      $ra                        
/* 00730 80A1ECD0 00000000 */  nop


