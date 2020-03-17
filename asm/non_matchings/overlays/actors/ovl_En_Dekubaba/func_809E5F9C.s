glabel func_809E5F9C
/* 007CC 809E5F9C 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 007D0 809E5FA0 3C0F809E */  lui     $t7, %hi(func_809E738C)    ## $t7 = 809E0000
/* 007D4 809E5FA4 240E0008 */  addiu   $t6, $zero, 0x0008         ## $t6 = 00000008
/* 007D8 809E5FA8 25EF738C */  addiu   $t7, $t7, %lo(func_809E738C) ## $t7 = 809E738C
/* 007DC 809E5FAC A48E01C6 */  sh      $t6, 0x01C6($a0)           ## 000001C6
/* 007E0 809E5FB0 AC8F01C0 */  sw      $t7, 0x01C0($a0)           ## 000001C0
/* 007E4 809E5FB4 03E00008 */  jr      $ra                        
/* 007E8 809E5FB8 E4840198 */  swc1    $f4, 0x0198($a0)           ## 00000198


