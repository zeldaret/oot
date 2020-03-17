glabel func_80AB2FC0
/* 02230 80AB2FC0 2401000F */  addiu   $at, $zero, 0x000F         ## $at = 0000000F
/* 02234 80AB2FC4 AFA40000 */  sw      $a0, 0x0000($sp)           
/* 02238 80AB2FC8 14A10004 */  bne     $a1, $at, .L80AB2FDC       
/* 0223C 80AB2FCC AFA7000C */  sw      $a3, 0x000C($sp)           
/* 02240 80AB2FD0 3C0E0601 */  lui     $t6, 0x0601                ## $t6 = 06010000
/* 02244 80AB2FD4 25CE3158 */  addiu   $t6, $t6, 0x3158           ## $t6 = 06013158
/* 02248 80AB2FD8 ACCE0000 */  sw      $t6, 0x0000($a2)           ## 00000000
.L80AB2FDC:
/* 0224C 80AB2FDC 03E00008 */  jr      $ra                        
/* 02250 80AB2FE0 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000


