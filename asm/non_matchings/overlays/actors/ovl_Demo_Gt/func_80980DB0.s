glabel func_80980DB0
/* 03740 80980DB0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 03744 80980DB4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 03748 80980DB8 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 0374C 80980DBC AFA40018 */  sw      $a0, 0x0018($sp)           
/* 03750 80980DC0 0C25FA09 */  jal     func_8097E824              
/* 03754 80980DC4 24050003 */  addiu   $a1, $zero, 0x0003         ## $a1 = 00000003
/* 03758 80980DC8 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 0375C 80980DCC 0C260324 */  jal     func_80980C90              
/* 03760 80980DD0 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 03764 80980DD4 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 03768 80980DD8 0C26035D */  jal     func_80980D74              
/* 0376C 80980DDC 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 03770 80980DE0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 03774 80980DE4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 03778 80980DE8 03E00008 */  jr      $ra                        
/* 0377C 80980DEC 00000000 */  nop
