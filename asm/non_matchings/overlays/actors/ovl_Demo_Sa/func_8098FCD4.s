glabel func_8098FCD4
/* 01874 8098FCD4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01878 8098FCD8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0187C 8098FCDC AFA40018 */  sw      $a0, 0x0018($sp)           
/* 01880 8098FCE0 0C263972 */  jal     func_8098E5C8              
/* 01884 8098FCE4 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 01888 8098FCE8 0C263984 */  jal     func_8098E610              
/* 0188C 8098FCEC 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 01890 8098FCF0 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 01894 8098FCF4 0C263EDA */  jal     func_8098FB68              
/* 01898 8098FCF8 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 0189C 8098FCFC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 018A0 8098FD00 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 018A4 8098FD04 03E00008 */  jr      $ra                        
/* 018A8 8098FD08 00000000 */  nop


