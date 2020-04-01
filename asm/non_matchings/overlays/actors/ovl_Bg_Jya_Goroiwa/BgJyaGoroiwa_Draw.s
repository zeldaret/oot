glabel BgJyaGoroiwa_Draw
/* 005B4 80897F24 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 005B8 80897F28 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 005BC 80897F2C 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 005C0 80897F30 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 005C4 80897F34 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 005C8 80897F38 0C00D498 */  jal     Gfx_DrawDListOpa
              
/* 005CC 80897F3C 24A506B0 */  addiu   $a1, $a1, 0x06B0           ## $a1 = 060006B0
/* 005D0 80897F40 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 005D4 80897F44 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 005D8 80897F48 03E00008 */  jr      $ra                        
/* 005DC 80897F4C 00000000 */  nop

