glabel func_8097FF14
/* 028A4 8097FF14 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 028A8 8097FF18 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 028AC 8097FF1C AFA40018 */  sw      $a0, 0x0018($sp)           
/* 028B0 8097FF20 0C25FF77 */  jal     func_8097FDDC              
/* 028B4 8097FF24 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 028B8 8097FF28 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 028BC 8097FF2C 0C25FA09 */  jal     func_8097E824              
/* 028C0 8097FF30 24050002 */  addiu   $a1, $zero, 0x0002         ## $a1 = 00000002
/* 028C4 8097FF34 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 028C8 8097FF38 0C25FF5C */  jal     func_8097FD70              
/* 028CC 8097FF3C 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 028D0 8097FF40 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 028D4 8097FF44 0C25FFB6 */  jal     func_8097FED8              
/* 028D8 8097FF48 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 028DC 8097FF4C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 028E0 8097FF50 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 028E4 8097FF54 03E00008 */  jr      $ra                        
/* 028E8 8097FF58 00000000 */  nop
