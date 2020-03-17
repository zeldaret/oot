glabel func_80A77B3C
/* 0382C 80A77B3C 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 03830 80A77B40 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 03834 80A77B44 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 03838 80A77B48 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0383C 80A77B4C 0C29DC1F */  jal     func_80A7707C              
/* 03840 80A77B50 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 03844 80A77B54 AFA20024 */  sw      $v0, 0x0024($sp)           
/* 03848 80A77B58 0C29DB05 */  jal     func_80A76C14              
/* 0384C 80A77B5C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03850 80A77B60 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03854 80A77B64 0C29DC0D */  jal     func_80A77034              
/* 03858 80A77B68 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 0385C 80A77B6C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03860 80A77B70 0C29DE77 */  jal     func_80A779DC              
/* 03864 80A77B74 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 03868 80A77B78 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0386C 80A77B7C 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 03870 80A77B80 0C29DC99 */  jal     func_80A77264              
/* 03874 80A77B84 8FA60024 */  lw      $a2, 0x0024($sp)           
/* 03878 80A77B88 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0387C 80A77B8C 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 03880 80A77B90 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 03884 80A77B94 03E00008 */  jr      $ra                        
/* 03888 80A77B98 00000000 */  nop


