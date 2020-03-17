glabel func_8096F7A0
/* 022F0 8096F7A0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 022F4 8096F7A4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 022F8 8096F7A8 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 022FC 8096F7AC 0C25B54B */  jal     func_8096D52C              
/* 02300 8096F7B0 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 02304 8096F7B4 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 02308 8096F7B8 0C25B565 */  jal     func_8096D594              
/* 0230C 8096F7BC 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 02310 8096F7C0 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 02314 8096F7C4 0C25B553 */  jal     func_8096D54C              
/* 02318 8096F7C8 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 0231C 8096F7CC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02320 8096F7D0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 02324 8096F7D4 03E00008 */  jr      $ra                        
/* 02328 8096F7D8 00000000 */  nop


