glabel func_8098ECCC
/* 0086C 8098ECCC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00870 8098ECD0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00874 8098ECD4 0C263972 */  jal     func_8098E5C8              
/* 00878 8098ECD8 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 0087C 8098ECDC 0C263984 */  jal     func_8098E610              
/* 00880 8098ECE0 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00884 8098ECE4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00888 8098ECE8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0088C 8098ECEC 03E00008 */  jr      $ra                        
/* 00890 8098ECF0 00000000 */  nop


