glabel func_80B3F3D8
/* 031F8 80B3F3D8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 031FC 80B3F3DC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 03200 80B3F3E0 0C01E233 */  jal     func_800788CC              
/* 03204 80B3F3E4 2404083D */  addiu   $a0, $zero, 0x083D         ## $a0 = 0000083D
/* 03208 80B3F3E8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0320C 80B3F3EC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 03210 80B3F3F0 03E00008 */  jr      $ra                        
/* 03214 80B3F3F4 00000000 */  nop


