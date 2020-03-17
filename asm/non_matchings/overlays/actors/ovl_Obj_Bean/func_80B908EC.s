glabel func_80B908EC
/* 01E6C 80B908EC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01E70 80B908F0 3C0E80B9 */  lui     $t6, %hi(func_80B90918)    ## $t6 = 80B90000
/* 01E74 80B908F4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01E78 80B908F8 25CE0918 */  addiu   $t6, $t6, %lo(func_80B90918) ## $t6 = 80B90918
/* 01E7C 80B908FC AC8E0164 */  sw      $t6, 0x0164($a0)           ## 00000164
/* 01E80 80B90900 0C2E3BCA */  jal     func_80B8EF28              
/* 01E84 80B90904 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 01E88 80B90908 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01E8C 80B9090C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01E90 80B90910 03E00008 */  jr      $ra                        
/* 01E94 80B90914 00000000 */  nop


