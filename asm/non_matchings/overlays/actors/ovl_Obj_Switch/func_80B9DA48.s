.late_rodata
glabel D_80B9EF68
 .word 0x3E28F5C3

.text
glabel func_80B9DA48
/* 00838 80B9DA48 3C0180BA */  lui     $at, %hi(D_80B9EF68)       ## $at = 80BA0000
/* 0083C 80B9DA4C C424EF68 */  lwc1    $f4, %lo(D_80B9EF68)($at)  
/* 00840 80B9DA50 3C0E80BA */  lui     $t6, %hi(func_80B9DA64)    ## $t6 = 80BA0000
/* 00844 80B9DA54 25CEDA64 */  addiu   $t6, $t6, %lo(func_80B9DA64) ## $t6 = 80B9DA64
/* 00848 80B9DA58 AC8E0164 */  sw      $t6, 0x0164($a0)           ## 00000164
/* 0084C 80B9DA5C 03E00008 */  jr      $ra                        
/* 00850 80B9DA60 E4840054 */  swc1    $f4, 0x0054($a0)           ## 00000054
