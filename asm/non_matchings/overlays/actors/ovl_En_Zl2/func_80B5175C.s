glabel func_80B5175C
/* 02DCC 80B5175C 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 02DD0 80B51760 10A00007 */  beq     $a1, $zero, .L80B51780     
/* 02DD4 80B51764 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 02DD8 80B51768 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 02DDC 80B5176C 24A56778 */  addiu   $a1, $a1, 0x6778           ## $a1 = 06006778
/* 02DE0 80B51770 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 02DE4 80B51774 3C07C100 */  lui     $a3, 0xC100                ## $a3 = C1000000
/* 02DE8 80B51778 0C2D3F40 */  jal     func_80B4FD00              
/* 02DEC 80B5177C AFA00010 */  sw      $zero, 0x0010($sp)         
.L80B51780:
/* 02DF0 80B51780 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 02DF4 80B51784 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 02DF8 80B51788 03E00008 */  jr      $ra                        
/* 02DFC 80B5178C 00000000 */  nop


