glabel func_80B3E4AC
/* 022CC 80B3E4AC 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 022D0 80B3E4B0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 022D4 80B3E4B4 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 022D8 80B3E4B8 0C2CF12C */  jal     func_80B3C4B0              
/* 022DC 80B3E4BC AFA50024 */  sw      $a1, 0x0024($sp)           
/* 022E0 80B3E4C0 AFA2001C */  sw      $v0, 0x001C($sp)           
/* 022E4 80B3E4C4 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 022E8 80B3E4C8 0C2CF11A */  jal     func_80B3C468              
/* 022EC 80B3E4CC 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 022F0 80B3E4D0 0C2CF0C7 */  jal     func_80B3C31C              
/* 022F4 80B3E4D4 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 022F8 80B3E4D8 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 022FC 80B3E4DC 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 02300 80B3E4E0 0C2CF709 */  jal     func_80B3DC24              
/* 02304 80B3E4E4 8FA6001C */  lw      $a2, 0x001C($sp)           
/* 02308 80B3E4E8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0230C 80B3E4EC 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 02310 80B3E4F0 03E00008 */  jr      $ra                        
/* 02314 80B3E4F4 00000000 */  nop
