glabel func_80AF3D60
/* 01810 80AF3D60 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 01814 80AF3D64 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 01818 80AF3D68 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 0181C 80AF3D6C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01820 80AF3D70 0C2BCDF3 */  jal     func_80AF37CC              
/* 01824 80AF3D74 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 01828 80AF3D78 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0182C 80AF3D7C 0C2BC9D1 */  jal     func_80AF2744              
/* 01830 80AF3D80 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 01834 80AF3D84 0C2BC9E3 */  jal     func_80AF278C              
/* 01838 80AF3D88 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0183C 80AF3D8C 0C2BC982 */  jal     func_80AF2608              
/* 01840 80AF3D90 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01844 80AF3D94 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01848 80AF3D98 0C00B56E */  jal     Actor_SetHeight
              
/* 0184C 80AF3D9C 3C054248 */  lui     $a1, 0x4248                ## $a1 = 42480000
/* 01850 80AF3DA0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01854 80AF3DA4 0C2BCEDD */  jal     func_80AF3B74              
/* 01858 80AF3DA8 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 0185C 80AF3DAC 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01860 80AF3DB0 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 01864 80AF3DB4 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 01868 80AF3DB8 03E00008 */  jr      $ra                        
/* 0186C 80AF3DBC 00000000 */  nop


