glabel func_80B515D8
/* 02C48 80B515D8 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 02C4C 80B515DC AFA50024 */  sw      $a1, 0x0024($sp)           
/* 02C50 80B515E0 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 02C54 80B515E4 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 02C58 80B515E8 24A5A15C */  addiu   $a1, $a1, 0xA15C           ## $a1 = 0600A15C
/* 02C5C 80B515EC AFA00010 */  sw      $zero, 0x0010($sp)         
/* 02C60 80B515F0 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 02C64 80B515F4 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 02C68 80B515F8 0C2D3F40 */  jal     func_80B4FD00              
/* 02C6C 80B515FC 3C07C100 */  lui     $a3, 0xC100                ## $a3 = C1000000
/* 02C70 80B51600 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 02C74 80B51604 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 02C78 80B51608 0C2D3B6E */  jal     func_80B4EDB8              
/* 02C7C 80B5160C 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 02C80 80B51610 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 02C84 80B51614 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 02C88 80B51618 240E001A */  addiu   $t6, $zero, 0x001A         ## $t6 = 0000001A
/* 02C8C 80B5161C 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 02C90 80B51620 241800FF */  addiu   $t8, $zero, 0x00FF         ## $t8 = 000000FF
/* 02C94 80B51624 AC8E019C */  sw      $t6, 0x019C($a0)           ## 0000019C
/* 02C98 80B51628 AC8F01A0 */  sw      $t7, 0x01A0($a0)           ## 000001A0
/* 02C9C 80B5162C A09800C8 */  sb      $t8, 0x00C8($a0)           ## 000000C8
/* 02CA0 80B51630 E484027C */  swc1    $f4, 0x027C($a0)           ## 0000027C
/* 02CA4 80B51634 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 02CA8 80B51638 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 02CAC 80B5163C 03E00008 */  jr      $ra                        
/* 02CB0 80B51640 00000000 */  nop
