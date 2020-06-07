glabel func_8097ED64
/* 016F4 8097ED64 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 016F8 8097ED68 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 016FC 8097ED6C AFA40018 */  sw      $a0, 0x0018($sp)           
/* 01700 8097ED70 0C25F9D1 */  jal     func_8097E744              
/* 01704 8097ED74 AFA60020 */  sw      $a2, 0x0020($sp)           
/* 01708 8097ED78 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 0170C 8097ED7C 0C25FA09 */  jal     func_8097E824              
/* 01710 8097ED80 8FA50020 */  lw      $a1, 0x0020($sp)           
/* 01714 8097ED84 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01718 8097ED88 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0171C 8097ED8C 03E00008 */  jr      $ra                        
/* 01720 8097ED90 00000000 */  nop
