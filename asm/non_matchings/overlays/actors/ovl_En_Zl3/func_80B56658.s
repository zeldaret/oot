glabel func_80B56658
/* 032A8 80B56658 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 032AC 80B5665C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 032B0 80B56660 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 032B4 80B56664 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 032B8 80B56668 0C2D5378 */  jal     func_80B54DE0              
/* 032BC 80B5666C AFA50024 */  sw      $a1, 0x0024($sp)           
/* 032C0 80B56670 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 032C4 80B56674 0C2D4D9B */  jal     func_80B5366C              
/* 032C8 80B56678 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 032CC 80B5667C 0C2D4D33 */  jal     func_80B534CC              
/* 032D0 80B56680 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 032D4 80B56684 0C2D4E53 */  jal     func_80B5394C              
/* 032D8 80B56688 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 032DC 80B5668C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 032E0 80B56690 0C2D592A */  jal     func_80B564A8              
/* 032E4 80B56694 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 032E8 80B56698 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 032EC 80B5669C 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 032F0 80B566A0 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 032F4 80B566A4 03E00008 */  jr      $ra                        
/* 032F8 80B566A8 00000000 */  nop
