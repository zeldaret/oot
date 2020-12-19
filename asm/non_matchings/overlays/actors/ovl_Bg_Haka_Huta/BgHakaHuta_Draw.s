glabel BgHakaHuta_Draw
/* 00930 8087D8F0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00934 8087D8F4 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00938 8087D8F8 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 0093C 8087D8FC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00940 8087D900 3C050600 */  lui     $a1, %hi(D_060006B0)                ## $a1 = 06000000
/* 00944 8087D904 0C00D498 */  jal     Gfx_DrawDListOpa
              
/* 00948 8087D908 24A506B0 */  addiu   $a1, $a1, %lo(D_060006B0)           ## $a1 = 060006B0
/* 0094C 8087D90C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00950 8087D910 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00954 8087D914 03E00008 */  jr      $ra                        
/* 00958 8087D918 00000000 */  nop
/* 0095C 8087D91C 00000000 */  nop
