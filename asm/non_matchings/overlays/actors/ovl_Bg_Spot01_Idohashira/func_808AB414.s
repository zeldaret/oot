glabel func_808AB414
/* 00734 808AB414 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00738 808AB418 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0073C 808AB41C 0C22AB9B */  jal     func_808AAE6C              
/* 00740 808AB420 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00744 808AB424 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00748 808AB428 240E0003 */  addiu   $t6, $zero, 0x0003         ## $t6 = 00000003
/* 0074C 808AB42C AC8E0164 */  sw      $t6, 0x0164($a0)           ## 00000164
/* 00750 808AB430 AC800168 */  sw      $zero, 0x0168($a0)         ## 00000168
/* 00754 808AB434 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00758 808AB438 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0075C 808AB43C 03E00008 */  jr      $ra                        
/* 00760 808AB440 00000000 */  nop


