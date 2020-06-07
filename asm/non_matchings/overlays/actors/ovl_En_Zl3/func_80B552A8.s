glabel func_80B552A8
/* 01EF8 80B552A8 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 01EFC 80B552AC 10A00007 */  beq     $a1, $zero, .L80B552CC     
/* 01F00 80B552B0 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 01F04 80B552B4 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 01F08 80B552B8 24A599A0 */  addiu   $a1, $a1, 0x99A0           ## $a1 = 060099A0
/* 01F0C 80B552BC 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 01F10 80B552C0 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 01F14 80B552C4 0C2D5385 */  jal     func_80B54E14              
/* 01F18 80B552C8 AFA00010 */  sw      $zero, 0x0010($sp)         
.L80B552CC:
/* 01F1C 80B552CC 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01F20 80B552D0 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 01F24 80B552D4 03E00008 */  jr      $ra                        
/* 01F28 80B552D8 00000000 */  nop
