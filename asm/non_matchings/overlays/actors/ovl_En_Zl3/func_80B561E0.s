glabel func_80B561E0
/* 02E30 80B561E0 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 02E34 80B561E4 10A00007 */  beq     $a1, $zero, .L80B56204     
/* 02E38 80B561E8 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 02E3C 80B561EC 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 02E40 80B561F0 24A504F4 */  addiu   $a1, $a1, 0x04F4           ## $a1 = 060004F4
/* 02E44 80B561F4 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 02E48 80B561F8 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 02E4C 80B561FC 0C2D5385 */  jal     func_80B54E14              
/* 02E50 80B56200 AFA00010 */  sw      $zero, 0x0010($sp)         
.L80B56204:
/* 02E54 80B56204 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 02E58 80B56208 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 02E5C 80B5620C 03E00008 */  jr      $ra                        
/* 02E60 80B56210 00000000 */  nop
