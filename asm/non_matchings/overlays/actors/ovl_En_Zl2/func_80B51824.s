glabel func_80B51824
/* 02E94 80B51824 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 02E98 80B51828 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 02E9C 80B5182C 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 02EA0 80B51830 24A522D0 */  addiu   $a1, $a1, 0x22D0           ## $a1 = 060022D0
/* 02EA4 80B51834 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 02EA8 80B51838 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 02EAC 80B5183C 24060002 */  addiu   $a2, $zero, 0x0002         ## $a2 = 00000002
/* 02EB0 80B51840 0C2D3F40 */  jal     func_80B4FD00              
/* 02EB4 80B51844 3C07C100 */  lui     $a3, 0xC100                ## $a3 = C1000000
/* 02EB8 80B51848 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 02EBC 80B5184C 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 02EC0 80B51850 240E001E */  addiu   $t6, $zero, 0x001E         ## $t6 = 0000001E
/* 02EC4 80B51854 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 02EC8 80B51858 241800FF */  addiu   $t8, $zero, 0x00FF         ## $t8 = 000000FF
/* 02ECC 80B5185C AC8E019C */  sw      $t6, 0x019C($a0)           ## 0000019C
/* 02ED0 80B51860 AC8F01A0 */  sw      $t7, 0x01A0($a0)           ## 000001A0
/* 02ED4 80B51864 A09800C8 */  sb      $t8, 0x00C8($a0)           ## 000000C8
/* 02ED8 80B51868 E484027C */  swc1    $f4, 0x027C($a0)           ## 0000027C
/* 02EDC 80B5186C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 02EE0 80B51870 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 02EE4 80B51874 03E00008 */  jr      $ra                        
/* 02EE8 80B51878 00000000 */  nop
