glabel func_8097A1E4
/* 018B4 8097A1E4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 018B8 8097A1E8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 018BC 8097A1EC 3C060600 */  lui     $a2, 0x0600                ## $a2 = 06000000
/* 018C0 8097A1F0 0C25E447 */  jal     func_8097911C              
/* 018C4 8097A1F4 24C61D20 */  addiu   $a2, $a2, 0x1D20           ## $a2 = 06001D20
/* 018C8 8097A1F8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 018CC 8097A1FC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 018D0 8097A200 03E00008 */  jr      $ra                        
/* 018D4 8097A204 00000000 */  nop
