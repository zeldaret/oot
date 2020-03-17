glabel func_8098F610
/* 011B0 8098F610 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 011B4 8098F614 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 011B8 8098F618 10A0000A */  beq     $a1, $zero, .L8098F644     
/* 011BC 8098F61C AFA40020 */  sw      $a0, 0x0020($sp)           
/* 011C0 8098F620 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 011C4 8098F624 24A5FFD4 */  addiu   $a1, $a1, 0xFFD4           ## $a1 = 0600FFD4
/* 011C8 8098F628 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 011CC 8098F62C 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 011D0 8098F630 0C2639DB */  jal     func_8098E76C              
/* 011D4 8098F634 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 011D8 8098F638 8FAF0020 */  lw      $t7, 0x0020($sp)           
/* 011DC 8098F63C 240E000D */  addiu   $t6, $zero, 0x000D         ## $t6 = 0000000D
/* 011E0 8098F640 ADEE0198 */  sw      $t6, 0x0198($t7)           ## 00000198
.L8098F644:
/* 011E4 8098F644 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 011E8 8098F648 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 011EC 8098F64C 03E00008 */  jr      $ra                        
/* 011F0 8098F650 00000000 */  nop


