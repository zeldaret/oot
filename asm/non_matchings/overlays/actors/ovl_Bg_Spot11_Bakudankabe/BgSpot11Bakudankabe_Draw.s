glabel BgSpot11Bakudankabe_Draw
/* 00534 808B26B4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00538 808B26B8 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 0053C 808B26BC 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00540 808B26C0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00544 808B26C4 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00548 808B26C8 0C00D498 */  jal     Gfx_DrawDListOpa
              
/* 0054C 808B26CC 24A51980 */  addiu   $a1, $a1, 0x1980           ## $a1 = 06001980
/* 00550 808B26D0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00554 808B26D4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00558 808B26D8 03E00008 */  jr      $ra                        
/* 0055C 808B26DC 00000000 */  nop

