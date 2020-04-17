glabel BgIceTurara_Draw
/* 006C8 808925E8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 006CC 808925EC AFA40018 */  sw      $a0, 0x0018($sp)           
/* 006D0 808925F0 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 006D4 808925F4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 006D8 808925F8 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 006DC 808925FC 0C00D498 */  jal     Gfx_DrawDListOpa
              
/* 006E0 80892600 24A523D0 */  addiu   $a1, $a1, 0x23D0           ## $a1 = 060023D0
/* 006E4 80892604 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 006E8 80892608 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 006EC 8089260C 03E00008 */  jr      $ra                        
/* 006F0 80892610 00000000 */  nop
/* 006F4 80892614 00000000 */  nop
/* 006F8 80892618 00000000 */  nop
/* 006FC 8089261C 00000000 */  nop
