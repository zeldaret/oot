glabel func_80B9DE20
/* 00C10 80B9DE20 3C0E80BA */  lui     $t6, %hi(func_80B9DE38)    ## $t6 = 80BA0000
/* 00C14 80B9DE24 25CEDE38 */  addiu   $t6, $t6, %lo(func_80B9DE38) ## $t6 = 80B9DE38
/* 00C18 80B9DE28 240F0064 */  addiu   $t7, $zero, 0x0064         ## $t7 = 00000064
/* 00C1C 80B9DE2C AC8E0164 */  sw      $t6, 0x0164($a0)           ## 00000164
/* 00C20 80B9DE30 03E00008 */  jr      $ra                        
/* 00C24 80B9DE34 A48F016C */  sh      $t7, 0x016C($a0)           ## 0000016C


