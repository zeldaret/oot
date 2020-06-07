glabel func_8098FD0C
/* 018AC 8098FD0C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 018B0 8098FD10 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 018B4 8098FD14 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 018B8 8098FD18 0C263972 */  jal     func_8098E5C8              
/* 018BC 8098FD1C AFA5001C */  sw      $a1, 0x001C($sp)           
/* 018C0 8098FD20 0C263984 */  jal     func_8098E610              
/* 018C4 8098FD24 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 018C8 8098FD28 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 018CC 8098FD2C 0C263ECD */  jal     func_8098FB34              
/* 018D0 8098FD30 00402825 */  or      $a1, $v0, $zero            ## $a1 = 00000000
/* 018D4 8098FD34 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 018D8 8098FD38 0C263EDA */  jal     func_8098FB68              
/* 018DC 8098FD3C 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 018E0 8098FD40 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 018E4 8098FD44 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 018E8 8098FD48 03E00008 */  jr      $ra                        
/* 018EC 8098FD4C 00000000 */  nop
