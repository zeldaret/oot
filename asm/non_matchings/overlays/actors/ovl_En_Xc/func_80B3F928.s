glabel func_80B3F928
/* 03748 80B3F928 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 0374C 80B3F92C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 03750 80B3F930 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 03754 80B3F934 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 03758 80B3F938 0C2CF12C */  jal     func_80B3C4B0              
/* 0375C 80B3F93C AFA50024 */  sw      $a1, 0x0024($sp)           
/* 03760 80B3F940 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03764 80B3F944 0C2CF11A */  jal     func_80B3C468              
/* 03768 80B3F948 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 0376C 80B3F94C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03770 80B3F950 0C2CFD67 */  jal     func_80B3F59C              
/* 03774 80B3F954 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 03778 80B3F958 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0377C 80B3F95C 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 03780 80B3F960 0C2CF162 */  jal     func_80B3C588              
/* 03784 80B3F964 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 03788 80B3F968 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0378C 80B3F96C 0C2CFDD5 */  jal     func_80B3F754              
/* 03790 80B3F970 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 03794 80B3F974 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 03798 80B3F978 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 0379C 80B3F97C 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 037A0 80B3F980 03E00008 */  jr      $ra                        
/* 037A4 80B3F984 00000000 */  nop
