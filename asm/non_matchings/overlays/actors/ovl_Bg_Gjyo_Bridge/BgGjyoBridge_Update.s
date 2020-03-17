glabel BgGjyoBridge_Update
/* 002B8 80878978 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 002BC 8087897C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 002C0 80878980 8C990164 */  lw      $t9, 0x0164($a0)           ## 00000164
/* 002C4 80878984 0320F809 */  jalr    $ra, $t9                   
/* 002C8 80878988 00000000 */  nop
/* 002CC 8087898C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 002D0 80878990 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 002D4 80878994 03E00008 */  jr      $ra                        
/* 002D8 80878998 00000000 */  nop


