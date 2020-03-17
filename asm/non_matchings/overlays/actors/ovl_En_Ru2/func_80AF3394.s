glabel func_80AF3394
/* 00E44 80AF3394 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00E48 80AF3398 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00E4C 80AF339C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00E50 80AF33A0 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 00E54 80AF33A4 24A5E630 */  addiu   $a1, $a1, 0xE630           ## $a1 = 0600E630
/* 00E58 80AF33A8 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 00E5C 80AF33AC AFA40020 */  sw      $a0, 0x0020($sp)           
/* 00E60 80AF33B0 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 00E64 80AF33B4 0C2BCA3A */  jal     func_80AF28E8              
/* 00E68 80AF33B8 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 00E6C 80AF33BC 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 00E70 80AF33C0 240E000A */  addiu   $t6, $zero, 0x000A         ## $t6 = 0000000A
/* 00E74 80AF33C4 AC8E02A8 */  sw      $t6, 0x02A8($a0)           ## 000002A8
/* 00E78 80AF33C8 AC8002AC */  sw      $zero, 0x02AC($a0)         ## 000002AC
/* 00E7C 80AF33CC A08000C8 */  sb      $zero, 0x00C8($a0)         ## 000000C8
/* 00E80 80AF33D0 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00E84 80AF33D4 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00E88 80AF33D8 03E00008 */  jr      $ra                        
/* 00E8C 80AF33DC 00000000 */  nop


