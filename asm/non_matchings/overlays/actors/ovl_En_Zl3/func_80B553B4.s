glabel func_80B553B4
/* 02004 80B553B4 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 02008 80B553B8 10A00007 */  beq     $a1, $zero, .L80B553D8     
/* 0200C 80B553BC AFBF001C */  sw      $ra, 0x001C($sp)           
/* 02010 80B553C0 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 02014 80B553C4 24A59FBC */  addiu   $a1, $a1, 0x9FBC           ## $a1 = 06009FBC
/* 02018 80B553C8 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 0201C 80B553CC 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 02020 80B553D0 0C2D5385 */  jal     func_80B54E14              
/* 02024 80B553D4 AFA00010 */  sw      $zero, 0x0010($sp)         
.L80B553D8:
/* 02028 80B553D8 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0202C 80B553DC 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 02030 80B553E0 03E00008 */  jr      $ra                        
/* 02034 80B553E4 00000000 */  nop
