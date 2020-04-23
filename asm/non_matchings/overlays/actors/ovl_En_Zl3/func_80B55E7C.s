glabel func_80B55E7C
/* 02ACC 80B55E7C 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 02AD0 80B55E80 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 02AD4 80B55E84 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 02AD8 80B55E88 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 02ADC 80B55E8C 24A57A78 */  addiu   $a1, $a1, 0x7A78           ## $a1 = 06007A78
/* 02AE0 80B55E90 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 02AE4 80B55E94 24060002 */  addiu   $a2, $zero, 0x0002         ## $a2 = 00000002
/* 02AE8 80B55E98 0C2D5385 */  jal     func_80B54E14              
/* 02AEC 80B55E9C 3C07C100 */  lui     $a3, 0xC100                ## $a3 = C1000000
/* 02AF0 80B55EA0 8FAF0020 */  lw      $t7, 0x0020($sp)           
/* 02AF4 80B55EA4 240E000F */  addiu   $t6, $zero, 0x000F         ## $t6 = 0000000F
/* 02AF8 80B55EA8 ADEE024C */  sw      $t6, 0x024C($t7)           ## 0000024C
/* 02AFC 80B55EAC 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 02B00 80B55EB0 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 02B04 80B55EB4 03E00008 */  jr      $ra                        
/* 02B08 80B55EB8 00000000 */  nop
