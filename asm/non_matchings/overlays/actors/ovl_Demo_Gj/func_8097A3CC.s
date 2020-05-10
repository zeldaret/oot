glabel func_8097A3CC
/* 01A9C 8097A3CC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01AA0 8097A3D0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01AA4 8097A3D4 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 01AA8 8097A3D8 0C25E88E */  jal     func_8097A238              
/* 01AAC 8097A3DC AFA5001C */  sw      $a1, 0x001C($sp)           
/* 01AB0 8097A3E0 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 01AB4 8097A3E4 0C25E8DB */  jal     func_8097A36C              
/* 01AB8 8097A3E8 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 01ABC 8097A3EC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01AC0 8097A3F0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01AC4 8097A3F4 03E00008 */  jr      $ra                        
/* 01AC8 8097A3F8 00000000 */  nop
