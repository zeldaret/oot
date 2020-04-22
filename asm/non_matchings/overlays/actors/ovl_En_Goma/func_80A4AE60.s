glabel func_80A4AE60
/* 01FA0 80A4AE60 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01FA4 80A4AE64 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01FA8 80A4AE68 0C031A73 */  jal     Graph_Alloc
              
/* 01FAC 80A4AE6C 24050020 */  addiu   $a1, $zero, 0x0020         ## $a1 = 00000020
/* 01FB0 80A4AE70 3C0EE700 */  lui     $t6, 0xE700                ## $t6 = E7000000
/* 01FB4 80A4AE74 00402825 */  or      $a1, $v0, $zero            ## $a1 = 00000000
/* 01FB8 80A4AE78 AC4E0000 */  sw      $t6, 0x0000($v0)           ## 00000000
/* 01FBC 80A4AE7C 24440008 */  addiu   $a0, $v0, 0x0008           ## $a0 = 00000008
/* 01FC0 80A4AE80 AC400004 */  sw      $zero, 0x0004($v0)         ## 00000004
/* 01FC4 80A4AE84 00801025 */  or      $v0, $a0, $zero            ## $v0 = 00000008
/* 01FC8 80A4AE88 3C0FE200 */  lui     $t7, 0xE200                ## $t7 = E2000000
/* 01FCC 80A4AE8C 3C180C19 */  lui     $t8, 0x0C19                ## $t8 = 0C190000
/* 01FD0 80A4AE90 37183078 */  ori     $t8, $t8, 0x3078           ## $t8 = 0C193078
/* 01FD4 80A4AE94 35EF001C */  ori     $t7, $t7, 0x001C           ## $t7 = E200001C
/* 01FD8 80A4AE98 AC4F0000 */  sw      $t7, 0x0000($v0)           ## 00000008
/* 01FDC 80A4AE9C AC580004 */  sw      $t8, 0x0004($v0)           ## 0000000C
/* 01FE0 80A4AEA0 24840008 */  addiu   $a0, $a0, 0x0008           ## $a0 = 00000010
/* 01FE4 80A4AEA4 00801025 */  or      $v0, $a0, $zero            ## $v0 = 00000010
/* 01FE8 80A4AEA8 3C19D9FF */  lui     $t9, 0xD9FF                ## $t9 = D9FF0000
/* 01FEC 80A4AEAC 3739FBFF */  ori     $t9, $t9, 0xFBFF           ## $t9 = D9FFFBFF
/* 01FF0 80A4AEB0 AC590000 */  sw      $t9, 0x0000($v0)           ## 00000010
/* 01FF4 80A4AEB4 AC400004 */  sw      $zero, 0x0004($v0)         ## 00000014
/* 01FF8 80A4AEB8 3C08DF00 */  lui     $t0, 0xDF00                ## $t0 = DF000000
/* 01FFC 80A4AEBC AC880008 */  sw      $t0, 0x0008($a0)           ## 00000018
/* 02000 80A4AEC0 AC80000C */  sw      $zero, 0x000C($a0)         ## 0000001C
/* 02004 80A4AEC4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02008 80A4AEC8 24840008 */  addiu   $a0, $a0, 0x0008           ## $a0 = 00000018
/* 0200C 80A4AECC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 02010 80A4AED0 03E00008 */  jr      $ra                        
/* 02014 80A4AED4 00A01025 */  or      $v0, $a1, $zero            ## $v0 = 00000000
