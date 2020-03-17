glabel BgMoriKaitenkabe_Update
/* 004C8 808A5288 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 004CC 808A528C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 004D0 808A5290 8C990164 */  lw      $t9, 0x0164($a0)           ## 00000164
/* 004D4 808A5294 0320F809 */  jalr    $ra, $t9                   
/* 004D8 808A5298 00000000 */  nop
/* 004DC 808A529C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 004E0 808A52A0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 004E4 808A52A4 03E00008 */  jr      $ra                        
/* 004E8 808A52A8 00000000 */  nop


