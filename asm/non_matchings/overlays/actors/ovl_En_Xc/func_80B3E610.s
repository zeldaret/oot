glabel func_80B3E610
/* 02430 80B3E610 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 02434 80B3E614 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 02438 80B3E618 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 0243C 80B3E61C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 02440 80B3E620 0C2CF12C */  jal     func_80B3C4B0              
/* 02444 80B3E624 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 02448 80B3E628 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0244C 80B3E62C 0C2CF11A */  jal     func_80B3C468              
/* 02450 80B3E630 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 02454 80B3E634 0C2CF0C7 */  jal     func_80B3C31C              
/* 02458 80B3E638 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0245C 80B3E63C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02460 80B3E640 0C2CF4FC */  jal     func_80B3D3F0              
/* 02464 80B3E644 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 02468 80B3E648 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0246C 80B3E64C 0C2CF7BD */  jal     func_80B3DEF4              
/* 02470 80B3E650 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 02474 80B3E654 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 02478 80B3E658 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 0247C 80B3E65C 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 02480 80B3E660 03E00008 */  jr      $ra                        
/* 02484 80B3E664 00000000 */  nop
