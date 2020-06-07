glabel func_80ABCE38
/* 00288 80ABCE38 3C0F80AC */  lui     $t7, %hi(func_80ABD11C)    ## $t7 = 80AC0000
/* 0028C 80ABCE3C 240E003C */  addiu   $t6, $zero, 0x003C         ## $t6 = 0000003C
/* 00290 80ABCE40 25EFD11C */  addiu   $t7, $t7, %lo(func_80ABD11C) ## $t7 = 80ABD11C
/* 00294 80ABCE44 AC8E01DC */  sw      $t6, 0x01DC($a0)           ## 000001DC
/* 00298 80ABCE48 03E00008 */  jr      $ra                        
/* 0029C 80ABCE4C AC8F014C */  sw      $t7, 0x014C($a0)           ## 0000014C
