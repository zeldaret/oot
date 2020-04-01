glabel BgGndIceblock_Draw
/* 00C50 8087A6F0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00C54 8087A6F4 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00C58 8087A6F8 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00C5C 8087A6FC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00C60 8087A700 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00C64 8087A704 0C00D498 */  jal     Gfx_DrawDListOpa
              
/* 00C68 8087A708 24A54420 */  addiu   $a1, $a1, 0x4420           ## $a1 = 06004420
/* 00C6C 8087A70C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00C70 8087A710 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00C74 8087A714 03E00008 */  jr      $ra                        
/* 00C78 8087A718 00000000 */  nop
/* 00C7C 8087A71C 00000000 */  nop

