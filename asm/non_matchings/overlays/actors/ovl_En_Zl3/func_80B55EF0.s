glabel func_80B55EF0
/* 02B40 80B55EF0 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 02B44 80B55EF4 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 02B48 80B55EF8 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 02B4C 80B55EFC 24A582F8 */  addiu   $a1, $a1, 0x82F8           ## $a1 = 060082F8
/* 02B50 80B55F00 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 02B54 80B55F04 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 02B58 80B55F08 24060002 */  addiu   $a2, $zero, 0x0002         ## $a2 = 00000002
/* 02B5C 80B55F0C 0C2D5385 */  jal     func_80B54E14              
/* 02B60 80B55F10 3C07C100 */  lui     $a3, 0xC100                ## $a3 = C1000000
/* 02B64 80B55F14 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 02B68 80B55F18 240E0010 */  addiu   $t6, $zero, 0x0010         ## $t6 = 00000010
/* 02B6C 80B55F1C 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 02B70 80B55F20 0C2D4D5A */  jal     func_80B53568              
/* 02B74 80B55F24 AC8E024C */  sw      $t6, 0x024C($a0)           ## 0000024C
/* 02B78 80B55F28 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 02B7C 80B55F2C 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 02B80 80B55F30 03E00008 */  jr      $ra                        
/* 02B84 80B55F34 00000000 */  nop


