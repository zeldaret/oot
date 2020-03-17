glabel func_80AB1904
/* 00B74 80AB1904 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00B78 80AB1908 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00B7C 80AB190C 0C2AC594 */  jal     func_80AB1650              
/* 00B80 80AB1910 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00B84 80AB1914 0C2AC4B3 */  jal     func_80AB12CC              
/* 00B88 80AB1918 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00B8C 80AB191C 0C2AC459 */  jal     func_80AB1164              
/* 00B90 80AB1920 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00B94 80AB1924 0C2AC5D3 */  jal     func_80AB174C              
/* 00B98 80AB1928 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00B9C 80AB192C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00BA0 80AB1930 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00BA4 80AB1934 03E00008 */  jr      $ra                        
/* 00BA8 80AB1938 00000000 */  nop


