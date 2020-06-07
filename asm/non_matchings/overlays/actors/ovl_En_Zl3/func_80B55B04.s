glabel func_80B55B04
/* 02754 80B55B04 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 02758 80B55B08 10A00007 */  beq     $a1, $zero, .L80B55B28     
/* 0275C 80B55B0C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 02760 80B55B10 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 02764 80B55B14 24A54408 */  addiu   $a1, $a1, 0x4408           ## $a1 = 06004408
/* 02768 80B55B18 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 0276C 80B55B1C 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 02770 80B55B20 0C2D5385 */  jal     func_80B54E14              
/* 02774 80B55B24 AFA00010 */  sw      $zero, 0x0010($sp)         
.L80B55B28:
/* 02778 80B55B28 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0277C 80B55B2C 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 02780 80B55B30 03E00008 */  jr      $ra                        
/* 02784 80B55B34 00000000 */  nop
