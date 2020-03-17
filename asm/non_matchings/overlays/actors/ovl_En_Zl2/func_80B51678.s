glabel func_80B51678
/* 02CE8 80B51678 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 02CEC 80B5167C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 02CF0 80B51680 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 02CF4 80B51684 24A57D0C */  addiu   $a1, $a1, 0x7D0C           ## $a1 = 06007D0C
/* 02CF8 80B51688 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 02CFC 80B5168C AFA40020 */  sw      $a0, 0x0020($sp)           
/* 02D00 80B51690 24060002 */  addiu   $a2, $zero, 0x0002         ## $a2 = 00000002
/* 02D04 80B51694 0C2D3F40 */  jal     func_80B4FD00              
/* 02D08 80B51698 3C07C100 */  lui     $a3, 0xC100                ## $a3 = C1000000
/* 02D0C 80B5169C 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 02D10 80B516A0 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 02D14 80B516A4 240E001B */  addiu   $t6, $zero, 0x001B         ## $t6 = 0000001B
/* 02D18 80B516A8 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 02D1C 80B516AC 241800FF */  addiu   $t8, $zero, 0x00FF         ## $t8 = 000000FF
/* 02D20 80B516B0 AC8E019C */  sw      $t6, 0x019C($a0)           ## 0000019C
/* 02D24 80B516B4 AC8F01A0 */  sw      $t7, 0x01A0($a0)           ## 000001A0
/* 02D28 80B516B8 A09800C8 */  sb      $t8, 0x00C8($a0)           ## 000000C8
/* 02D2C 80B516BC E484027C */  swc1    $f4, 0x027C($a0)           ## 0000027C
/* 02D30 80B516C0 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 02D34 80B516C4 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 02D38 80B516C8 03E00008 */  jr      $ra                        
/* 02D3C 80B516CC 00000000 */  nop


