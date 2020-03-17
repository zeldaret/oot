glabel func_808B5934
/* 00D04 808B5934 3C0E808B */  lui     $t6, %hi(BgSpot16Bombstone_Draw)    ## $t6 = 808B0000
/* 00D08 808B5938 3C0F808B */  lui     $t7, %hi(func_808B5950)    ## $t7 = 808B0000
/* 00D0C 808B593C 25CE5C98 */  addiu   $t6, $t6, %lo(BgSpot16Bombstone_Draw) ## $t6 = 808B5C98
/* 00D10 808B5940 25EF5950 */  addiu   $t7, $t7, %lo(func_808B5950) ## $t7 = 808B5950
/* 00D14 808B5944 AC8E0134 */  sw      $t6, 0x0134($a0)           ## 00000134
/* 00D18 808B5948 03E00008 */  jr      $ra                        
/* 00D1C 808B594C AC8F014C */  sw      $t7, 0x014C($a0)           ## 0000014C


