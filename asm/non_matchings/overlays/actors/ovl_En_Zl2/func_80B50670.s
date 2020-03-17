glabel func_80B50670
/* 01CE0 80B50670 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 01CE4 80B50674 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 01CE8 80B50678 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 01CEC 80B5067C 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 01CF0 80B50680 24A5B5FC */  addiu   $a1, $a1, 0xB5FC           ## $a1 = 0600B5FC
/* 01CF4 80B50684 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 01CF8 80B50688 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 01CFC 80B5068C 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 01D00 80B50690 0C2D3F40 */  jal     func_80B4FD00              
/* 01D04 80B50694 3C07C100 */  lui     $a3, 0xC100                ## $a3 = C1000000
/* 01D08 80B50698 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 01D0C 80B5069C 240E000D */  addiu   $t6, $zero, 0x000D         ## $t6 = 0000000D
/* 01D10 80B506A0 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 01D14 80B506A4 241800FF */  addiu   $t8, $zero, 0x00FF         ## $t8 = 000000FF
/* 01D18 80B506A8 AC8E019C */  sw      $t6, 0x019C($a0)           ## 0000019C
/* 01D1C 80B506AC AC8F01A0 */  sw      $t7, 0x01A0($a0)           ## 000001A0
/* 01D20 80B506B0 A09800C8 */  sb      $t8, 0x00C8($a0)           ## 000000C8
/* 01D24 80B506B4 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01D28 80B506B8 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 01D2C 80B506BC 03E00008 */  jr      $ra                        
/* 01D30 80B506C0 00000000 */  nop


