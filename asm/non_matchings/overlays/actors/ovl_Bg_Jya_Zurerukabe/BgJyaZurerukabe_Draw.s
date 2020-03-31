glabel BgJyaZurerukabe_Draw
/* 00550 8089B990 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00554 8089B994 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00558 8089B998 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 0055C 8089B99C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00560 8089B9A0 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 00564 8089B9A4 0C00D498 */  jal     Gfx_DrawDListOpa
              
/* 00568 8089B9A8 24A52340 */  addiu   $a1, $a1, 0x2340           ## $a1 = 06012340
/* 0056C 8089B9AC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00570 8089B9B0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00574 8089B9B4 03E00008 */  jr      $ra                        
/* 00578 8089B9B8 00000000 */  nop
/* 0057C 8089B9BC 00000000 */  nop

