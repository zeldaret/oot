glabel func_8098FC9C
/* 0183C 8098FC9C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01840 8098FCA0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01844 8098FCA4 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 01848 8098FCA8 0C263972 */  jal     func_8098E5C8              
/* 0184C 8098FCAC AFA5001C */  sw      $a1, 0x001C($sp)           
/* 01850 8098FCB0 0C263984 */  jal     func_8098E610              
/* 01854 8098FCB4 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 01858 8098FCB8 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 0185C 8098FCBC 0C263EDA */  jal     func_8098FB68              
/* 01860 8098FCC0 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 01864 8098FCC4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01868 8098FCC8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0186C 8098FCCC 03E00008 */  jr      $ra                        
/* 01870 8098FCD0 00000000 */  nop
