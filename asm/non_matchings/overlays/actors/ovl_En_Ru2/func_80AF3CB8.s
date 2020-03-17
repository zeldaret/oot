glabel func_80AF3CB8
/* 01768 80AF3CB8 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 0176C 80AF3CBC AFBF001C */  sw      $ra, 0x001C($sp)           
/* 01770 80AF3CC0 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 01774 80AF3CC4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01778 80AF3CC8 0C2BC9D1 */  jal     func_80AF2744              
/* 0177C 80AF3CCC AFA50024 */  sw      $a1, 0x0024($sp)           
/* 01780 80AF3CD0 0C2BC9E3 */  jal     func_80AF278C              
/* 01784 80AF3CD4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01788 80AF3CD8 0C2BC982 */  jal     func_80AF2608              
/* 0178C 80AF3CDC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01790 80AF3CE0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01794 80AF3CE4 0C00B56E */  jal     Actor_SetHeight
              
/* 01798 80AF3CE8 3C054248 */  lui     $a1, 0x4248                ## $a1 = 42480000
/* 0179C 80AF3CEC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 017A0 80AF3CF0 0C2BCE77 */  jal     func_80AF39DC              
/* 017A4 80AF3CF4 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 017A8 80AF3CF8 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 017AC 80AF3CFC 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 017B0 80AF3D00 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 017B4 80AF3D04 03E00008 */  jr      $ra                        
/* 017B8 80AF3D08 00000000 */  nop


