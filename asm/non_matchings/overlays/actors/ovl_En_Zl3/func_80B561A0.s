glabel func_80B561A0
/* 02DF0 80B561A0 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 02DF4 80B561A4 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 02DF8 80B561A8 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 02DFC 80B561AC AFA40020 */  sw      $a0, 0x0020($sp)           
/* 02E00 80B561B0 24A51110 */  addiu   $a1, $a1, 0x1110           ## $a1 = 06001110
/* 02E04 80B561B4 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 02E08 80B561B8 24060002 */  addiu   $a2, $zero, 0x0002         ## $a2 = 00000002
/* 02E0C 80B561BC 0C2D5385 */  jal     func_80B54E14              
/* 02E10 80B561C0 3C07C100 */  lui     $a3, 0xC100                ## $a3 = C1000000
/* 02E14 80B561C4 8FAF0020 */  lw      $t7, 0x0020($sp)           
/* 02E18 80B561C8 240E0014 */  addiu   $t6, $zero, 0x0014         ## $t6 = 00000014
/* 02E1C 80B561CC ADEE024C */  sw      $t6, 0x024C($t7)           ## 0000024C
/* 02E20 80B561D0 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 02E24 80B561D4 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 02E28 80B561D8 03E00008 */  jr      $ra                        
/* 02E2C 80B561DC 00000000 */  nop


