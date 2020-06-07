glabel func_8096EDC0
/* 01910 8096EDC0 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 01914 8096EDC4 3C0E8097 */  lui     $t6, %hi(func_8096EBBC)    ## $t6 = 80970000
/* 01918 8096EDC8 3C0F8097 */  lui     $t7, %hi(func_8096ED40)    ## $t7 = 80970000
/* 0191C 8096EDCC AFBF001C */  sw      $ra, 0x001C($sp)           
/* 01920 8096EDD0 25EFED40 */  addiu   $t7, $t7, %lo(func_8096ED40) ## $t7 = 8096ED40
/* 01924 8096EDD4 25CEEBBC */  addiu   $t6, $t6, %lo(func_8096EBBC) ## $t6 = 8096EBBC
/* 01928 8096EDD8 AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 0192C 8096EDDC AFAF0014 */  sw      $t7, 0x0014($sp)           
/* 01930 8096EDE0 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 01934 8096EDE4 0C25B631 */  jal     func_8096D8C4              
/* 01938 8096EDE8 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 0193C 8096EDEC 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01940 8096EDF0 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 01944 8096EDF4 03E00008 */  jr      $ra                        
/* 01948 8096EDF8 00000000 */  nop
