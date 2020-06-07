glabel BgRelayObjects_Update
/* 0061C 808A946C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00620 808A9470 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00624 808A9474 8C990164 */  lw      $t9, 0x0164($a0)           ## 00000164
/* 00628 808A9478 0320F809 */  jalr    $ra, $t9                   
/* 0062C 808A947C 00000000 */  nop
/* 00630 808A9480 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00634 808A9484 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00638 808A9488 03E00008 */  jr      $ra                        
/* 0063C 808A948C 00000000 */  nop
