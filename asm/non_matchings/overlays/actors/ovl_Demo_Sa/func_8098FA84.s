glabel func_8098FA84
/* 01624 8098FA84 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 01628 8098FA88 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 0162C 8098FA8C 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 01630 8098FA90 24A540BC */  addiu   $a1, $a1, 0x40BC           ## $a1 = 060140BC
/* 01634 8098FA94 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 01638 8098FA98 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 0163C 8098FA9C 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 01640 8098FAA0 0C2639DB */  jal     func_8098E76C              
/* 01644 8098FAA4 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 01648 8098FAA8 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 0164C 8098FAAC 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 01650 8098FAB0 240E0013 */  addiu   $t6, $zero, 0x0013         ## $t6 = 00000013
/* 01654 8098FAB4 240F00FF */  addiu   $t7, $zero, 0x00FF         ## $t7 = 000000FF
/* 01658 8098FAB8 24050002 */  addiu   $a1, $zero, 0x0002         ## $a1 = 00000002
/* 0165C 8098FABC AC8E0198 */  sw      $t6, 0x0198($a0)           ## 00000198
/* 01660 8098FAC0 AC82019C */  sw      $v0, 0x019C($a0)           ## 0000019C
/* 01664 8098FAC4 AC8201B0 */  sw      $v0, 0x01B0($a0)           ## 000001B0
/* 01668 8098FAC8 0C263942 */  jal     func_8098E508              
/* 0166C 8098FACC A08F00C8 */  sb      $t7, 0x00C8($a0)           ## 000000C8
/* 01670 8098FAD0 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01674 8098FAD4 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 01678 8098FAD8 03E00008 */  jr      $ra                        
/* 0167C 8098FADC 00000000 */  nop


