glabel func_80B4FCCC
/* 0133C 80B4FCCC 8C820274 */  lw      $v0, 0x0274($a0)           ## 00000274
/* 01340 80B4FCD0 3C180001 */  lui     $t8, 0x0001                ## $t8 = 00010000
/* 01344 80B4FCD4 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 01348 80B4FCD8 00027100 */  sll     $t6, $v0,  4               
/* 0134C 80B4FCDC 01C27021 */  addu    $t6, $t6, $v0              
/* 01350 80B4FCE0 000E7080 */  sll     $t6, $t6,  2               
/* 01354 80B4FCE4 00AE7821 */  addu    $t7, $a1, $t6              
/* 01358 80B4FCE8 030FC021 */  addu    $t8, $t8, $t7              
/* 0135C 80B4FCEC 8F1817B4 */  lw      $t8, 0x17B4($t8)           ## 000117B4
/* 01360 80B4FCF0 0301C821 */  addu    $t9, $t8, $at              
/* 01364 80B4FCF4 3C018016 */  lui     $at, 0x8016                ## $at = 80160000
/* 01368 80B4FCF8 03E00008 */  jr      $ra                        
/* 0136C 80B4FCFC AC396FC0 */  sw      $t9, 0x6FC0($at)           ## 80166FC0


