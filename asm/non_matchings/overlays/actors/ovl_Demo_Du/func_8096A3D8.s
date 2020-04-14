glabel func_8096A3D8
/* 00908 8096A3D8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0090C 8096A3DC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00910 8096A3E0 948E1D74 */  lhu     $t6, 0x1D74($a0)           ## 00001D74
/* 00914 8096A3E4 240100A0 */  addiu   $at, $zero, 0x00A0         ## $at = 000000A0
/* 00918 8096A3E8 55C10004 */  bnel    $t6, $at, .L8096A3FC       
/* 0091C 8096A3EC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00920 8096A3F0 0C01E233 */  jal     func_800788CC              
/* 00924 8096A3F4 240428A0 */  addiu   $a0, $zero, 0x28A0         ## $a0 = 000028A0
/* 00928 8096A3F8 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L8096A3FC:
/* 0092C 8096A3FC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00930 8096A400 03E00008 */  jr      $ra                        
/* 00934 8096A404 00000000 */  nop
