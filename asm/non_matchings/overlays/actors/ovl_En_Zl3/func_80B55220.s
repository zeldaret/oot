glabel func_80B55220
/* 01E70 80B55220 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 01E74 80B55224 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 01E78 80B55228 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 01E7C 80B5522C 24A591D8 */  addiu   $a1, $a1, 0x91D8           ## $a1 = 060091D8
/* 01E80 80B55230 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 01E84 80B55234 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 01E88 80B55238 24060002 */  addiu   $a2, $zero, 0x0002         ## $a2 = 00000002
/* 01E8C 80B5523C 0C2D5385 */  jal     func_80B54E14              
/* 01E90 80B55240 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 01E94 80B55244 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 01E98 80B55248 240E0002 */  addiu   $t6, $zero, 0x0002         ## $t6 = 00000002
/* 01E9C 80B5524C 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 01EA0 80B55250 0C2D4D5A */  jal     func_80B53568              
/* 01EA4 80B55254 AC8E024C */  sw      $t6, 0x024C($a0)           ## 0000024C
/* 01EA8 80B55258 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01EAC 80B5525C 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 01EB0 80B55260 03E00008 */  jr      $ra                        
/* 01EB4 80B55264 00000000 */  nop


