glabel func_808A1320
/* 00760 808A1320 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00764 808A1324 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00768 808A1328 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 0076C 808A132C 0C2282F0 */  jal     func_808A0BC0              
/* 00770 808A1330 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00774 808A1334 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00778 808A1338 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0077C 808A133C 03E00008 */  jr      $ra                        
/* 00780 808A1340 00000000 */  nop


