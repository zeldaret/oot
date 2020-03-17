glabel func_80B5676C
/* 033BC 80B5676C 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 033C0 80B56770 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 033C4 80B56774 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 033C8 80B56778 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 033CC 80B5677C 0C2D5378 */  jal     func_80B54DE0              
/* 033D0 80B56780 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 033D4 80B56784 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 033D8 80B56788 0C2D4D9B */  jal     func_80B5366C              
/* 033DC 80B5678C 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 033E0 80B56790 0C2D4D33 */  jal     func_80B534CC              
/* 033E4 80B56794 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 033E8 80B56798 0C2D4E53 */  jal     func_80B5394C              
/* 033EC 80B5679C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 033F0 80B567A0 AFA20024 */  sw      $v0, 0x0024($sp)           
/* 033F4 80B567A4 0C2D5671 */  jal     func_80B559C4              
/* 033F8 80B567A8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 033FC 80B567AC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03400 80B567B0 0C2D5713 */  jal     func_80B55C4C              
/* 03404 80B567B4 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 03408 80B567B8 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0340C 80B567BC 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 03410 80B567C0 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 03414 80B567C4 03E00008 */  jr      $ra                        
/* 03418 80B567C8 00000000 */  nop


