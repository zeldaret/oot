glabel func_80B55E48
/* 02A98 80B55E48 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 02A9C 80B55E4C 10A00007 */  beq     $a1, $zero, .L80B55E6C     
/* 02AA0 80B55E50 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 02AA4 80B55E54 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 02AA8 80B55E58 24A58050 */  addiu   $a1, $a1, 0x8050           ## $a1 = 06008050
/* 02AAC 80B55E5C 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 02AB0 80B55E60 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 02AB4 80B55E64 0C2D5385 */  jal     func_80B54E14              
/* 02AB8 80B55E68 AFA00010 */  sw      $zero, 0x0010($sp)         
.L80B55E6C:
/* 02ABC 80B55E6C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 02AC0 80B55E70 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 02AC4 80B55E74 03E00008 */  jr      $ra                        
/* 02AC8 80B55E78 00000000 */  nop


