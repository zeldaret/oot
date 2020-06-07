glabel func_8096F378
/* 01EC8 8096F378 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 01ECC 8096F37C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 01ED0 8096F380 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 01ED4 8096F384 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01ED8 8096F388 0C25B54B */  jal     func_8096D52C              
/* 01EDC 8096F38C AFA5002C */  sw      $a1, 0x002C($sp)           
/* 01EE0 8096F390 AFA20024 */  sw      $v0, 0x0024($sp)           
/* 01EE4 8096F394 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01EE8 8096F398 0C25B565 */  jal     func_8096D594              
/* 01EEC 8096F39C 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 01EF0 8096F3A0 0C25BC75 */  jal     func_8096F1D4              
/* 01EF4 8096F3A4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01EF8 8096F3A8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01EFC 8096F3AC 0C25B553 */  jal     func_8096D54C              
/* 01F00 8096F3B0 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 01F04 8096F3B4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01F08 8096F3B8 0C25BC9B */  jal     func_8096F26C              
/* 01F0C 8096F3BC 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 01F10 8096F3C0 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01F14 8096F3C4 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 01F18 8096F3C8 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 01F1C 8096F3CC 03E00008 */  jr      $ra                        
/* 01F20 8096F3D0 00000000 */  nop
