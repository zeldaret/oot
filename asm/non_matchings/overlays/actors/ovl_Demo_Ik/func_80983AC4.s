glabel func_80983AC4
/* 007C4 80983AC4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 007C8 80983AC8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 007CC 80983ACC AFA40018 */  sw      $a0, 0x0018($sp)           
/* 007D0 80983AD0 0C260CC3 */  jal     func_8098330C              
/* 007D4 80983AD4 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 007D8 80983AD8 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 007DC 80983ADC 0C260E74 */  jal     func_809839D0              
/* 007E0 80983AE0 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 007E4 80983AE4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 007E8 80983AE8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 007EC 80983AEC 03E00008 */  jr      $ra                        
/* 007F0 80983AF0 00000000 */  nop
