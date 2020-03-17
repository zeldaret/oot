glabel ItemEtcetera_Update
/* 00650 80B85C40 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00654 80B85C44 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00658 80B85C48 8C99015C */  lw      $t9, 0x015C($a0)           ## 0000015C
/* 0065C 80B85C4C 0320F809 */  jalr    $ra, $t9                   
/* 00660 80B85C50 00000000 */  nop
/* 00664 80B85C54 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00668 80B85C58 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0066C 80B85C5C 03E00008 */  jr      $ra                        
/* 00670 80B85C60 00000000 */  nop


