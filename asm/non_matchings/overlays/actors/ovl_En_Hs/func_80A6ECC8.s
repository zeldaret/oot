glabel func_80A6ECC8
/* 00928 80A6ECC8 8FA20014 */  lw      $v0, 0x0014($sp)           
/* 0092C 80A6ECCC 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00930 80A6ECD0 844B001C */  lh      $t3, 0x001C($v0)           ## 0000001C
/* 00934 80A6ECD4 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 00938 80A6ECD8 5561000C */  bnel    $t3, $at, .L80A6ED0C       
/* 0093C 80A6ECDC 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 00940 80A6ECE0 03E00008 */  jr      $ra                        
/* 00944 80A6ECE4 ACC00000 */  sw      $zero, 0x0000($a2)         ## 00000000
