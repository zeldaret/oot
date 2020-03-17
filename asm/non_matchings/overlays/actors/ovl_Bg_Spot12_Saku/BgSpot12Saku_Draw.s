glabel BgSpot12Saku_Draw
/* 003CC 808B37EC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 003D0 808B37F0 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 003D4 808B37F4 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 003D8 808B37F8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 003DC 808B37FC 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 003E0 808B3800 0C00D498 */  jal     Draw_DListOpa
              
/* 003E4 808B3804 24A52260 */  addiu   $a1, $a1, 0x2260           ## $a1 = 06002260
/* 003E8 808B3808 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 003EC 808B380C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 003F0 808B3810 03E00008 */  jr      $ra                        
/* 003F4 808B3814 00000000 */  nop
/* 003F8 808B3818 00000000 */  nop
/* 003FC 808B381C 00000000 */  nop

