glabel func_8096B318
/* 01848 8096B318 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 0184C 8096B31C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01850 8096B320 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 01854 8096B324 0C25A716 */  jal     func_80969C58              
/* 01858 8096B328 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 0185C 8096B32C 0C25A70E */  jal     func_80969C38              
/* 01860 8096B330 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 01864 8096B334 AFA2001C */  sw      $v0, 0x001C($sp)           
/* 01868 8096B338 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 0186C 8096B33C 0C25A94A */  jal     func_8096A528              
/* 01870 8096B340 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 01874 8096B344 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 01878 8096B348 0C25ABC0 */  jal     func_8096AF00              
/* 0187C 8096B34C 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 01880 8096B350 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01884 8096B354 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 01888 8096B358 03E00008 */  jr      $ra                        
/* 0188C 8096B35C 00000000 */  nop
