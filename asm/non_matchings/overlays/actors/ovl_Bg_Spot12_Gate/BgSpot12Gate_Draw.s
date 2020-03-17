glabel BgSpot12Gate_Draw
/* 00348 808B32D8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0034C 808B32DC AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00350 808B32E0 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00354 808B32E4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00358 808B32E8 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 0035C 808B32EC 0C00D498 */  jal     Draw_DListOpa
              
/* 00360 808B32F0 24A51080 */  addiu   $a1, $a1, 0x1080           ## $a1 = 06001080
/* 00364 808B32F4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00368 808B32F8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0036C 808B32FC 03E00008 */  jr      $ra                        
/* 00370 808B3300 00000000 */  nop
/* 00374 808B3304 00000000 */  nop
/* 00378 808B3308 00000000 */  nop
/* 0037C 808B330C 00000000 */  nop

