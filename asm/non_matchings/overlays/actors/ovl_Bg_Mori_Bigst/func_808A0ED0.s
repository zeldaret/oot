glabel func_808A0ED0
/* 00310 808A0ED0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00314 808A0ED4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00318 808A0ED8 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 0031C 808A0EDC 0C2282F0 */  jal     func_808A0BC0              
/* 00320 808A0EE0 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00324 808A0EE4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00328 808A0EE8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0032C 808A0EEC 03E00008 */  jr      $ra                        
/* 00330 808A0EF0 00000000 */  nop
