glabel func_80B55EBC
/* 02B0C 80B55EBC 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 02B10 80B55EC0 10A00007 */  beq     $a1, $zero, .L80B55EE0     
/* 02B14 80B55EC4 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 02B18 80B55EC8 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 02B1C 80B55ECC 24A57C84 */  addiu   $a1, $a1, 0x7C84           ## $a1 = 06007C84
/* 02B20 80B55ED0 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 02B24 80B55ED4 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 02B28 80B55ED8 0C2D5385 */  jal     func_80B54E14              
/* 02B2C 80B55EDC AFA00010 */  sw      $zero, 0x0010($sp)         
.L80B55EE0:
/* 02B30 80B55EE0 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 02B34 80B55EE4 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 02B38 80B55EE8 03E00008 */  jr      $ra                        
/* 02B3C 80B55EEC 00000000 */  nop
