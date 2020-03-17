glabel func_80B508C8
/* 01F38 80B508C8 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 01F3C 80B508CC AFA50024 */  sw      $a1, 0x0024($sp)           
/* 01F40 80B508D0 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 01F44 80B508D4 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 01F48 80B508D8 24A51010 */  addiu   $a1, $a1, 0x1010           ## $a1 = 06001010
/* 01F4C 80B508DC AFA00010 */  sw      $zero, 0x0010($sp)         
/* 01F50 80B508E0 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 01F54 80B508E4 24060002 */  addiu   $a2, $zero, 0x0002         ## $a2 = 00000002
/* 01F58 80B508E8 0C2D3F40 */  jal     func_80B4FD00              
/* 01F5C 80B508EC 3C07C100 */  lui     $a3, 0xC100                ## $a3 = C1000000
/* 01F60 80B508F0 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 01F64 80B508F4 240E0014 */  addiu   $t6, $zero, 0x0014         ## $t6 = 00000014
/* 01F68 80B508F8 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 01F6C 80B508FC 24050006 */  addiu   $a1, $zero, 0x0006         ## $a1 = 00000006
/* 01F70 80B50900 AC8E019C */  sw      $t6, 0x019C($a0)           ## 0000019C
/* 01F74 80B50904 0C2D3B3A */  jal     func_80B4ECE8              
/* 01F78 80B50908 AC8F01A0 */  sw      $t7, 0x01A0($a0)           ## 000001A0
/* 01F7C 80B5090C 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 01F80 80B50910 241800FF */  addiu   $t8, $zero, 0x00FF         ## $t8 = 000000FF
/* 01F84 80B50914 A09800C8 */  sb      $t8, 0x00C8($a0)           ## 000000C8
/* 01F88 80B50918 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01F8C 80B5091C 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 01F90 80B50920 03E00008 */  jr      $ra                        
/* 01F94 80B50924 00000000 */  nop


