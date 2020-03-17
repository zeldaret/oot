glabel func_80B50780
/* 01DF0 80B50780 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 01DF4 80B50784 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 01DF8 80B50788 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 01DFC 80B5078C 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 01E00 80B50790 24A51670 */  addiu   $a1, $a1, 0x1670           ## $a1 = 06001670
/* 01E04 80B50794 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 01E08 80B50798 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 01E0C 80B5079C 24060002 */  addiu   $a2, $zero, 0x0002         ## $a2 = 00000002
/* 01E10 80B507A0 0C2D3F40 */  jal     func_80B4FD00              
/* 01E14 80B507A4 3C07C100 */  lui     $a3, 0xC100                ## $a3 = C1000000
/* 01E18 80B507A8 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 01E1C 80B507AC 240E0010 */  addiu   $t6, $zero, 0x0010         ## $t6 = 00000010
/* 01E20 80B507B0 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 01E24 80B507B4 241800FF */  addiu   $t8, $zero, 0x00FF         ## $t8 = 000000FF
/* 01E28 80B507B8 AC8E019C */  sw      $t6, 0x019C($a0)           ## 0000019C
/* 01E2C 80B507BC AC8F01A0 */  sw      $t7, 0x01A0($a0)           ## 000001A0
/* 01E30 80B507C0 A09800C8 */  sb      $t8, 0x00C8($a0)           ## 000000C8
/* 01E34 80B507C4 0C2D3FFC */  jal     func_80B4FFF0              
/* 01E38 80B507C8 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 01E3C 80B507CC 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 01E40 80B507D0 0C2D3B3A */  jal     func_80B4ECE8              
/* 01E44 80B507D4 24050003 */  addiu   $a1, $zero, 0x0003         ## $a1 = 00000003
/* 01E48 80B507D8 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01E4C 80B507DC 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 01E50 80B507E0 03E00008 */  jr      $ra                        
/* 01E54 80B507E4 00000000 */  nop


