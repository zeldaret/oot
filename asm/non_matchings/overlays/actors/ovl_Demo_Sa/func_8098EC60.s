glabel func_8098EC60
/* 00800 8098EC60 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00804 8098EC64 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00808 8098EC68 0C263972 */  jal     func_8098E5C8              
/* 0080C 8098EC6C AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00810 8098EC70 0C263984 */  jal     func_8098E610              
/* 00814 8098EC74 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00818 8098EC78 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 0081C 8098EC7C 0C263AC0 */  jal     func_8098EB00              
/* 00820 8098EC80 00402825 */  or      $a1, $v0, $zero            ## $a1 = 00000000
/* 00824 8098EC84 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00828 8098EC88 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0082C 8098EC8C 03E00008 */  jr      $ra                        
/* 00830 8098EC90 00000000 */  nop
