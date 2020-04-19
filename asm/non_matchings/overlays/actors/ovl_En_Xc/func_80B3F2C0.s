glabel func_80B3F2C0
/* 030E0 80B3F2C0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 030E4 80B3F2C4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 030E8 80B3F2C8 0C2CF99A */  jal     func_80B3E668              
/* 030EC 80B3F2CC AFA40018 */  sw      $a0, 0x0018($sp)           
/* 030F0 80B3F2D0 0C2CFBFB */  jal     func_80B3EFEC              
/* 030F4 80B3F2D4 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 030F8 80B3F2D8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 030FC 80B3F2DC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 03100 80B3F2E0 03E00008 */  jr      $ra                        
/* 03104 80B3F2E4 00000000 */  nop
