glabel func_80AB193C
/* 00BAC 80AB193C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00BB0 80AB1940 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00BB4 80AB1944 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00BB8 80AB1948 0C2AC4A1 */  jal     func_80AB1284              
/* 00BBC 80AB194C AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00BC0 80AB1950 0C2AC4B3 */  jal     func_80AB12CC              
/* 00BC4 80AB1954 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00BC8 80AB1958 0C2AC459 */  jal     func_80AB1164              
/* 00BCC 80AB195C 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00BD0 80AB1960 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00BD4 80AB1964 0C2AC5DE */  jal     func_80AB1778              
/* 00BD8 80AB1968 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 00BDC 80AB196C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00BE0 80AB1970 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00BE4 80AB1974 03E00008 */  jr      $ra                        
/* 00BE8 80AB1978 00000000 */  nop


