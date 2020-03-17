glabel func_808A27F8
/* 00298 808A27F8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0029C 808A27FC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 002A0 808A2800 3C060600 */  lui     $a2, 0x0600                ## $a2 = 06000000
/* 002A4 808A2804 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 002A8 808A2808 24C637D8 */  addiu   $a2, $a2, 0x37D8           ## $a2 = 060037D8
/* 002AC 808A280C 0C228958 */  jal     func_808A2560              
/* 002B0 808A2810 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 002B4 808A2814 3C05808A */  lui     $a1, %hi(D_808A2DEC)       ## $a1 = 808A0000
/* 002B8 808A2818 24A52DEC */  addiu   $a1, $a1, %lo(D_808A2DEC)  ## $a1 = 808A2DEC
/* 002BC 808A281C 0C01E037 */  jal     Actor_ProcessInitChain
              
/* 002C0 808A2820 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 002C4 808A2824 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 002C8 808A2828 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 002CC 808A282C 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 002D0 808A2830 03E00008 */  jr      $ra                        
/* 002D4 808A2834 00000000 */  nop


