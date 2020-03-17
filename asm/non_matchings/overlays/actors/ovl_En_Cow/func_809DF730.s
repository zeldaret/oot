glabel func_809DF730
/* 00930 809DF730 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00934 809DF734 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00938 809DF738 0C00BCCD */  jal     func_8002F334              
/* 0093C 809DF73C AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00940 809DF740 10400009 */  beq     $v0, $zero, .L809DF768     
/* 00944 809DF744 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00948 809DF748 8C8E0004 */  lw      $t6, 0x0004($a0)           ## 00000004
/* 0094C 809DF74C 3C01FFFE */  lui     $at, 0xFFFE                ## $at = FFFE0000
/* 00950 809DF750 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = FFFEFFFF
/* 00954 809DF754 3C18809E */  lui     $t8, %hi(func_809DF96C)    ## $t8 = 809E0000
/* 00958 809DF758 2718F96C */  addiu   $t8, $t8, %lo(func_809DF96C) ## $t8 = 809DF96C
/* 0095C 809DF75C 01C17824 */  and     $t7, $t6, $at              
/* 00960 809DF760 AC8F0004 */  sw      $t7, 0x0004($a0)           ## 00000004
/* 00964 809DF764 AC98027C */  sw      $t8, 0x027C($a0)           ## 0000027C
.L809DF768:
/* 00968 809DF768 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0096C 809DF76C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00970 809DF770 03E00008 */  jr      $ra                        
/* 00974 809DF774 00000000 */  nop


