glabel func_80B55A84
/* 026D4 80B55A84 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 026D8 80B55A88 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 026DC 80B55A8C 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 026E0 80B55A90 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 026E4 80B55A94 24A55A0C */  addiu   $a1, $a1, 0x5A0C           ## $a1 = 06005A0C
/* 026E8 80B55A98 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 026EC 80B55A9C 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 026F0 80B55AA0 0C2D5385 */  jal     func_80B54E14              
/* 026F4 80B55AA4 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 026F8 80B55AA8 8FAF0020 */  lw      $t7, 0x0020($sp)           
/* 026FC 80B55AAC 240E0007 */  addiu   $t6, $zero, 0x0007         ## $t6 = 00000007
/* 02700 80B55AB0 ADEE024C */  sw      $t6, 0x024C($t7)           ## 0000024C
/* 02704 80B55AB4 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 02708 80B55AB8 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 0270C 80B55ABC 03E00008 */  jr      $ra                        
/* 02710 80B55AC0 00000000 */  nop
