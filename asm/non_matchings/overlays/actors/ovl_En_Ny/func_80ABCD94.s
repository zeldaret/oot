glabel func_80ABCD94
/* 001E4 80ABCD94 3C0F80AC */  lui     $t7, %hi(func_80ABCE90)    ## $t7 = 80AC0000
/* 001E8 80ABCD98 240E0014 */  addiu   $t6, $zero, 0x0014         ## $t6 = 00000014
/* 001EC 80ABCD9C 25EFCE90 */  addiu   $t7, $t7, %lo(func_80ABCE90) ## $t7 = 80ABCE90
/* 001F0 80ABCDA0 AC8E01DC */  sw      $t6, 0x01DC($a0)           ## 000001DC
/* 001F4 80ABCDA4 03E00008 */  jr      $ra                        
/* 001F8 80ABCDA8 AC8F014C */  sw      $t7, 0x014C($a0)           ## 0000014C
