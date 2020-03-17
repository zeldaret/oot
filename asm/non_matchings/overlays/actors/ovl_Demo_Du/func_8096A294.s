glabel func_8096A294
/* 007C4 8096A294 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 007C8 8096A298 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 007CC 8096A29C AFA40018 */  sw      $a0, 0x0018($sp)           
/* 007D0 8096A2A0 0C25A716 */  jal     func_80969C58              
/* 007D4 8096A2A4 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 007D8 8096A2A8 0C25A70E */  jal     func_80969C38              
/* 007DC 8096A2AC 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 007E0 8096A2B0 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 007E4 8096A2B4 0C25A836 */  jal     func_8096A0D8              
/* 007E8 8096A2B8 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 007EC 8096A2BC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 007F0 8096A2C0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 007F4 8096A2C4 03E00008 */  jr      $ra                        
/* 007F8 8096A2C8 00000000 */  nop


