glabel func_8097A1C0
/* 01890 8097A1C0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01894 8097A1C4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01898 8097A1C8 3C060600 */  lui     $a2, 0x0600                ## $a2 = 06000000
/* 0189C 8097A1CC 0C25E40C */  jal     func_80979030              
/* 018A0 8097A1D0 24C61D20 */  addiu   $a2, $a2, 0x1D20           ## $a2 = 06001D20
/* 018A4 8097A1D4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 018A8 8097A1D8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 018AC 8097A1DC 03E00008 */  jr      $ra                        
/* 018B0 8097A1E0 00000000 */  nop
