glabel func_80B2C10C
/* 01F0C 80B2C10C 24010010 */  addiu   $at, $zero, 0x0010         ## $at = 00000010
/* 01F10 80B2C110 AFA40000 */  sw      $a0, 0x0000($sp)           
/* 01F14 80B2C114 14A10004 */  bne     $a1, $at, .L80B2C128       
/* 01F18 80B2C118 AFA7000C */  sw      $a3, 0x000C($sp)           
/* 01F1C 80B2C11C 3C0E0601 */  lui     $t6, %hi(D_0600D0D8)                ## $t6 = 06010000
/* 01F20 80B2C120 25CED0D8 */  addiu   $t6, $t6, %lo(D_0600D0D8)           ## $t6 = 0600D0D8
/* 01F24 80B2C124 ACCE0000 */  sw      $t6, 0x0000($a2)           ## 00000000
.L80B2C128:
/* 01F28 80B2C128 03E00008 */  jr      $ra                        
/* 01F2C 80B2C12C 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
