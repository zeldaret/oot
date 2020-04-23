glabel func_8098FB34
/* 016D4 8098FB34 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 016D8 8098FB38 10A00007 */  beq     $a1, $zero, .L8098FB58     
/* 016DC 8098FB3C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 016E0 8098FB40 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 016E4 8098FB44 24A53CD8 */  addiu   $a1, $a1, 0x3CD8           ## $a1 = 06013CD8
/* 016E8 8098FB48 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 016EC 8098FB4C 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 016F0 8098FB50 0C2639DB */  jal     func_8098E76C              
/* 016F4 8098FB54 AFA00010 */  sw      $zero, 0x0010($sp)         
.L8098FB58:
/* 016F8 8098FB58 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 016FC 8098FB5C 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 01700 8098FB60 03E00008 */  jr      $ra                        
/* 01704 8098FB64 00000000 */  nop
