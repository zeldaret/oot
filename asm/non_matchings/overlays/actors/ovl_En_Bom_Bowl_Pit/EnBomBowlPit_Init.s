glabel EnBomBowlPit_Init
/* 00000 809C4E40 3C0E809C */  lui     $t6, %hi(func_809C4E60)    ## $t6 = 809C0000
/* 00004 809C4E44 AFA50004 */  sw      $a1, 0x0004($sp)           
/* 00008 809C4E48 25CE4E60 */  addiu   $t6, $t6, %lo(func_809C4E60) ## $t6 = 809C4E60
/* 0000C 809C4E4C 03E00008 */  jr      $ra                        
/* 00010 809C4E50 AC8E014C */  sw      $t6, 0x014C($a0)           ## 0000014C
