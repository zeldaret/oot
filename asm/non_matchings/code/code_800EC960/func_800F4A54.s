glabel func_800F4A54
/* B6BBF4 800F4A54 3C018017 */  lui   $at, %hi(D_8016B8B0) # $at, 0x8017
/* B6BBF8 800F4A58 A024B8B0 */  sb    $a0, %lo(D_8016B8B0)($at)
/* B6BBFC 800F4A5C 3C018017 */  lui   $at, %hi(D_8016B8B2)
/* B6BC00 800F4A60 240E0001 */  li    $t6, 1
/* B6BC04 800F4A64 AFA40000 */  sw    $a0, ($sp)
/* B6BC08 800F4A68 03E00008 */  jr    $ra
/* B6BC0C 800F4A6C A02EB8B2 */   sb    $t6, %lo(D_8016B8B2)($at)

