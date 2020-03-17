glabel func_808B5AF0
/* 00EC0 808B5AF0 3C0E808B */  lui     $t6, %hi(func_808B5B04)    ## $t6 = 808B0000
/* 00EC4 808B5AF4 25CE5B04 */  addiu   $t6, $t6, %lo(func_808B5B04) ## $t6 = 808B5B04
/* 00EC8 808B5AF8 AC8E014C */  sw      $t6, 0x014C($a0)           ## 0000014C
/* 00ECC 808B5AFC 03E00008 */  jr      $ra                        
/* 00ED0 808B5B00 AC800134 */  sw      $zero, 0x0134($a0)         ## 00000134


