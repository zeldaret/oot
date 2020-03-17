glabel func_80B3E738
/* 02558 80B3E738 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 0255C 80B3E73C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 02560 80B3E740 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 02564 80B3E744 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 02568 80B3E748 0C2CF5CC */  jal     func_80B3D730              
/* 0256C 80B3E74C AFA50024 */  sw      $a1, 0x0024($sp)           
/* 02570 80B3E750 0C2CF12C */  jal     func_80B3C4B0              
/* 02574 80B3E754 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02578 80B3E758 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0257C 80B3E75C 0C2CF11A */  jal     func_80B3C468              
/* 02580 80B3E760 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 02584 80B3E764 0C2CF0C7 */  jal     func_80B3C31C              
/* 02588 80B3E768 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0258C 80B3E76C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02590 80B3E770 0C2CF3A1 */  jal     func_80B3CE84              
/* 02594 80B3E774 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 02598 80B3E778 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0259C 80B3E77C 0C2CF4FC */  jal     func_80B3D3F0              
/* 025A0 80B3E780 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 025A4 80B3E784 0C2CF82F */  jal     func_80B3E0BC              
/* 025A8 80B3E788 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 025AC 80B3E78C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 025B0 80B3E790 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 025B4 80B3E794 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 025B8 80B3E798 03E00008 */  jr      $ra                        
/* 025BC 80B3E79C 00000000 */  nop


