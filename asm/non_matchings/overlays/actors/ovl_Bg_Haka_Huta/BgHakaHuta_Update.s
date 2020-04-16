glabel BgHakaHuta_Update
/* 0090C 8087D8CC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00910 8087D8D0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00914 8087D8D4 8C990164 */  lw      $t9, 0x0164($a0)           ## 00000164
/* 00918 8087D8D8 0320F809 */  jalr    $ra, $t9                   
/* 0091C 8087D8DC 00000000 */  nop
/* 00920 8087D8E0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00924 8087D8E4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00928 8087D8E8 03E00008 */  jr      $ra                        
/* 0092C 8087D8EC 00000000 */  nop
