glabel func_80AB1FFC
/* 0126C 80AB1FFC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01270 80AB2000 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01274 80AB2004 94AE1D74 */  lhu     $t6, 0x1D74($a1)           ## 00001D74
/* 01278 80AB2008 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 0127C 80AB200C 248400E4 */  addiu   $a0, $a0, 0x00E4           ## $a0 = 000000E4
/* 01280 80AB2010 55C10004 */  bnel    $t6, $at, .L80AB2024       
/* 01284 80AB2014 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01288 80AB2018 0C01E245 */  jal     func_80078914              
/* 0128C 80AB201C 2405685B */  addiu   $a1, $zero, 0x685B         ## $a1 = 0000685B
/* 01290 80AB2020 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AB2024:
/* 01294 80AB2024 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01298 80AB2028 03E00008 */  jr      $ra                        
/* 0129C 80AB202C 00000000 */  nop


