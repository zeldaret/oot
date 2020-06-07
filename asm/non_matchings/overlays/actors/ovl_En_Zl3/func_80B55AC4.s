glabel func_80B55AC4
/* 02714 80B55AC4 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 02718 80B55AC8 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 0271C 80B55ACC 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 02720 80B55AD0 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 02724 80B55AD4 24A5499C */  addiu   $a1, $a1, 0x499C           ## $a1 = 0600499C
/* 02728 80B55AD8 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 0272C 80B55ADC 24060002 */  addiu   $a2, $zero, 0x0002         ## $a2 = 00000002
/* 02730 80B55AE0 0C2D5385 */  jal     func_80B54E14              
/* 02734 80B55AE4 3C07C100 */  lui     $a3, 0xC100                ## $a3 = C1000000
/* 02738 80B55AE8 8FAF0020 */  lw      $t7, 0x0020($sp)           
/* 0273C 80B55AEC 240E0008 */  addiu   $t6, $zero, 0x0008         ## $t6 = 00000008
/* 02740 80B55AF0 ADEE024C */  sw      $t6, 0x024C($t7)           ## 0000024C
/* 02744 80B55AF4 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 02748 80B55AF8 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 0274C 80B55AFC 03E00008 */  jr      $ra                        
/* 02750 80B55B00 00000000 */  nop
