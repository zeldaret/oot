glabel BgJyaLift_Draw
/* 0044C 80899FEC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00450 80899FF0 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00454 80899FF4 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00458 80899FF8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0045C 80899FFC 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 00460 8089A000 0C00D498 */  jal     Gfx_DrawDListOpa
              
/* 00464 8089A004 24A5CCE0 */  addiu   $a1, $a1, 0xCCE0           ## $a1 = 0600CCE0
/* 00468 8089A008 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0046C 8089A00C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00470 8089A010 03E00008 */  jr      $ra                        
/* 00474 8089A014 00000000 */  nop
/* 00478 8089A018 00000000 */  nop
/* 0047C 8089A01C 00000000 */  nop
