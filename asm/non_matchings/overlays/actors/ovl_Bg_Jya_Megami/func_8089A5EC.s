glabel func_8089A5EC
/* 004BC 8089A5EC 3C0E808A */  lui     $t6, %hi(func_8089A604)    ## $t6 = 808A0000
/* 004C0 8089A5F0 25CEA604 */  addiu   $t6, $t6, %lo(func_8089A604) ## $t6 = 8089A604
/* 004C4 8089A5F4 AC8E0164 */  sw      $t6, 0x0164($a0)           ## 00000164
/* 004C8 8089A5F8 A48001C8 */  sh      $zero, 0x01C8($a0)         ## 000001C8
/* 004CC 8089A5FC 03E00008 */  jr      $ra                        
/* 004D0 8089A600 A48001CC */  sh      $zero, 0x01CC($a0)         ## 000001CC
