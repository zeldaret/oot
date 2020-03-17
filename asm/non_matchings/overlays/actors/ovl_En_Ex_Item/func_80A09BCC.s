glabel func_80A09BCC
/* 00D2C 80A09BCC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00D30 80A09BD0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00D34 80A09BD4 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00D38 80A09BD8 0C00BB60 */  jal     func_8002ED80              
/* 00D3C 80A09BDC 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 00D40 80A09BE0 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 00D44 80A09BE4 0C01A528 */  jal     func_800694A0              
/* 00D48 80A09BE8 24050013 */  addiu   $a1, $zero, 0x0013         ## $a1 = 00000013
/* 00D4C 80A09BEC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00D50 80A09BF0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00D54 80A09BF4 03E00008 */  jr      $ra                        
/* 00D58 80A09BF8 00000000 */  nop


