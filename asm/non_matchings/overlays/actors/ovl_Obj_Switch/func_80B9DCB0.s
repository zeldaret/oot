.late_rodata
glabel D_80B9EF74
 .word 0x3C872B02

.text
glabel func_80B9DCB0
/* 00AA0 80B9DCB0 3C0180BA */  lui     $at, %hi(D_80B9EF74)       ## $at = 80BA0000
/* 00AA4 80B9DCB4 C424EF74 */  lwc1    $f4, %lo(D_80B9EF74)($at)  
/* 00AA8 80B9DCB8 3C0F80BA */  lui     $t7, %hi(func_80B9DCD4)    ## $t7 = 80BA0000
/* 00AAC 80B9DCBC 240E0006 */  addiu   $t6, $zero, 0x0006         ## $t6 = 00000006
/* 00AB0 80B9DCC0 25EFDCD4 */  addiu   $t7, $t7, %lo(func_80B9DCD4) ## $t7 = 80B9DCD4
/* 00AB4 80B9DCC4 A48E0168 */  sh      $t6, 0x0168($a0)           ## 00000168
/* 00AB8 80B9DCC8 AC8F0164 */  sw      $t7, 0x0164($a0)           ## 00000164
/* 00ABC 80B9DCCC 03E00008 */  jr      $ra                        
/* 00AC0 80B9DCD0 E4840054 */  swc1    $f4, 0x0054($a0)           ## 00000054
