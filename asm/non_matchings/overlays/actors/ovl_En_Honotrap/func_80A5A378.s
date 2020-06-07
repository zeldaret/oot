glabel func_80A5A378
/* 00748 80A5A378 3C0E80A6 */  lui     $t6, %hi(func_80A5A388)    ## $t6 = 80A60000
/* 0074C 80A5A37C 25CEA388 */  addiu   $t6, $t6, %lo(func_80A5A388) ## $t6 = 80A5A388
/* 00750 80A5A380 03E00008 */  jr      $ra                        
/* 00754 80A5A384 AC8E014C */  sw      $t6, 0x014C($a0)           ## 0000014C
