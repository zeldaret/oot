glabel func_80B55E08
/* 02A58 80B55E08 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 02A5C 80B55E0C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 02A60 80B55E10 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 02A64 80B55E14 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 02A68 80B55E18 24A56AB0 */  addiu   $a1, $a1, 0x6AB0           ## $a1 = 06006AB0
/* 02A6C 80B55E1C AFA00010 */  sw      $zero, 0x0010($sp)         
/* 02A70 80B55E20 24060002 */  addiu   $a2, $zero, 0x0002         ## $a2 = 00000002
/* 02A74 80B55E24 0C2D5385 */  jal     func_80B54E14              
/* 02A78 80B55E28 3C07C100 */  lui     $a3, 0xC100                ## $a3 = C1000000
/* 02A7C 80B55E2C 8FAF0020 */  lw      $t7, 0x0020($sp)           
/* 02A80 80B55E30 240E000E */  addiu   $t6, $zero, 0x000E         ## $t6 = 0000000E
/* 02A84 80B55E34 ADEE024C */  sw      $t6, 0x024C($t7)           ## 0000024C
/* 02A88 80B55E38 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 02A8C 80B55E3C 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 02A90 80B55E40 03E00008 */  jr      $ra                        
/* 02A94 80B55E44 00000000 */  nop


