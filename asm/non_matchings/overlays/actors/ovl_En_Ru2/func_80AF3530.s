glabel func_80AF3530
/* 00FE0 80AF3530 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00FE4 80AF3534 10A00007 */  beq     $a1, $zero, .L80AF3554     
/* 00FE8 80AF3538 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00FEC 80AF353C 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 00FF0 80AF3540 24A5F03C */  addiu   $a1, $a1, 0xF03C           ## $a1 = 0600F03C
/* 00FF4 80AF3544 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 00FF8 80AF3548 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 00FFC 80AF354C 0C2BCA3A */  jal     func_80AF28E8              
/* 01000 80AF3550 AFA00010 */  sw      $zero, 0x0010($sp)         
.L80AF3554:
/* 01004 80AF3554 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01008 80AF3558 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 0100C 80AF355C 03E00008 */  jr      $ra                        
/* 01010 80AF3560 00000000 */  nop


