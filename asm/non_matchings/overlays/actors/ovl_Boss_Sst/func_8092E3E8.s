glabel func_8092E3E8
/* 01E18 8092E3E8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01E1C 8092E3EC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01E20 8092E3F0 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 01E24 8092E3F4 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 01E28 8092E3F8 24A5C288 */  addiu   $a1, $a1, 0xC288           ## $a1 = 0600C288
/* 01E2C 8092E3FC AFA70018 */  sw      $a3, 0x0018($sp)           
/* 01E30 8092E400 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 01E34 8092E404 0C029490 */  jal     SkelAnime_ChangeAnimationTransitionStop              
/* 01E38 8092E408 3C06C0A0 */  lui     $a2, 0xC0A0                ## $a2 = C0A00000
/* 01E3C 8092E40C 8FA70018 */  lw      $a3, 0x0018($sp)           
/* 01E40 8092E410 3C188093 */  lui     $t8, %hi(func_8092E438)    ## $t8 = 80930000
/* 01E44 8092E414 2718E438 */  addiu   $t8, $t8, %lo(func_8092E438) ## $t8 = 8092E438
/* 01E48 8092E418 90EE06C5 */  lbu     $t6, 0x06C5($a3)           ## 000006C5
/* 01E4C 8092E41C ACF80190 */  sw      $t8, 0x0190($a3)           ## 00000190
/* 01E50 8092E420 31CFFFFE */  andi    $t7, $t6, 0xFFFE           ## $t7 = 00000000
/* 01E54 8092E424 A0EF06C5 */  sb      $t7, 0x06C5($a3)           ## 000006C5
/* 01E58 8092E428 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01E5C 8092E42C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01E60 8092E430 03E00008 */  jr      $ra                        
/* 01E64 8092E434 00000000 */  nop


