glabel func_809147A0
/* 04160 809147A0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 04164 809147A4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 04168 809147A8 0C031A73 */  jal     Graph_Alloc
              
/* 0416C 809147AC 24050020 */  addiu   $a1, $zero, 0x0020         ## $a1 = 00000020
/* 04170 809147B0 3C0EE700 */  lui     $t6, 0xE700                ## $t6 = E7000000
/* 04174 809147B4 00402825 */  or      $a1, $v0, $zero            ## $a1 = 00000000
/* 04178 809147B8 AC4E0000 */  sw      $t6, 0x0000($v0)           ## 00000000
/* 0417C 809147BC 24440008 */  addiu   $a0, $v0, 0x0008           ## $a0 = 00000008
/* 04180 809147C0 AC400004 */  sw      $zero, 0x0004($v0)         ## 00000004
/* 04184 809147C4 00801025 */  or      $v0, $a0, $zero            ## $v0 = 00000008
/* 04188 809147C8 3C0FE200 */  lui     $t7, 0xE200                ## $t7 = E2000000
/* 0418C 809147CC 3C18C811 */  lui     $t8, 0xC811                ## $t8 = C8110000
/* 04190 809147D0 37183078 */  ori     $t8, $t8, 0x3078           ## $t8 = C8113078
/* 04194 809147D4 35EF001C */  ori     $t7, $t7, 0x001C           ## $t7 = E200001C
/* 04198 809147D8 AC4F0000 */  sw      $t7, 0x0000($v0)           ## 00000008
/* 0419C 809147DC AC580004 */  sw      $t8, 0x0004($v0)           ## 0000000C
/* 041A0 809147E0 24840008 */  addiu   $a0, $a0, 0x0008           ## $a0 = 00000010
/* 041A4 809147E4 00801025 */  or      $v0, $a0, $zero            ## $v0 = 00000010
/* 041A8 809147E8 3C19D9FF */  lui     $t9, 0xD9FF                ## $t9 = D9FF0000
/* 041AC 809147EC 3739FBFF */  ori     $t9, $t9, 0xFBFF           ## $t9 = D9FFFBFF
/* 041B0 809147F0 AC590000 */  sw      $t9, 0x0000($v0)           ## 00000010
/* 041B4 809147F4 AC400004 */  sw      $zero, 0x0004($v0)         ## 00000014
/* 041B8 809147F8 3C08DF00 */  lui     $t0, 0xDF00                ## $t0 = DF000000
/* 041BC 809147FC AC880008 */  sw      $t0, 0x0008($a0)           ## 00000018
/* 041C0 80914800 AC80000C */  sw      $zero, 0x000C($a0)         ## 0000001C
/* 041C4 80914804 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 041C8 80914808 24840008 */  addiu   $a0, $a0, 0x0008           ## $a0 = 00000018
/* 041CC 8091480C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 041D0 80914810 03E00008 */  jr      $ra                        
/* 041D4 80914814 00A01025 */  or      $v0, $a1, $zero            ## $v0 = 00000000
