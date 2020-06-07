glabel func_8098EC28
/* 007C8 8098EC28 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 007CC 8098EC2C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 007D0 8098EC30 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 007D4 8098EC34 0C263972 */  jal     func_8098E5C8              
/* 007D8 8098EC38 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 007DC 8098EC3C 0C263984 */  jal     func_8098E610              
/* 007E0 8098EC40 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 007E4 8098EC44 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 007E8 8098EC48 0C263A9A */  jal     func_8098EA68              
/* 007EC 8098EC4C 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 007F0 8098EC50 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 007F4 8098EC54 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 007F8 8098EC58 03E00008 */  jr      $ra                        
/* 007FC 8098EC5C 00000000 */  nop
