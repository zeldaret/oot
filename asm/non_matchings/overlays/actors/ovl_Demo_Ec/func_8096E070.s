glabel func_8096E070
/* 00BC0 8096E070 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00BC4 8096E074 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00BC8 8096E078 3C060600 */  lui     $a2, 0x0600                ## $a2 = 06000000
/* 00BCC 8096E07C 3C070600 */  lui     $a3, 0x0600                ## $a3 = 06000000
/* 00BD0 8096E080 24E77AC0 */  addiu   $a3, $a3, 0x7AC0           ## $a3 = 06007AC0
/* 00BD4 8096E084 24C676C0 */  addiu   $a2, $a2, 0x76C0           ## $a2 = 060076C0
/* 00BD8 8096E088 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 00BDC 8096E08C 0C25B631 */  jal     func_8096D8C4              
/* 00BE0 8096E090 AFA00014 */  sw      $zero, 0x0014($sp)         
/* 00BE4 8096E094 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00BE8 8096E098 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00BEC 8096E09C 03E00008 */  jr      $ra                        
/* 00BF0 8096E0A0 00000000 */  nop
