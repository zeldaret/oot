glabel func_80B551E0
/* 01E30 80B551E0 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 01E34 80B551E4 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 01E38 80B551E8 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 01E3C 80B551EC AFA40020 */  sw      $a0, 0x0020($sp)           
/* 01E40 80B551F0 24A58AD0 */  addiu   $a1, $a1, 0x8AD0           ## $a1 = 06008AD0
/* 01E44 80B551F4 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 01E48 80B551F8 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 01E4C 80B551FC 0C2D5385 */  jal     func_80B54E14              
/* 01E50 80B55200 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 01E54 80B55204 8FAF0020 */  lw      $t7, 0x0020($sp)           
/* 01E58 80B55208 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 01E5C 80B5520C ADEE024C */  sw      $t6, 0x024C($t7)           ## 0000024C
/* 01E60 80B55210 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01E64 80B55214 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 01E68 80B55218 03E00008 */  jr      $ra                        
/* 01E6C 80B5521C 00000000 */  nop
