glabel func_80B4ED74
/* 003E4 80B4ED74 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 003E8 80B4ED78 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 003EC 80B4ED7C 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 003F0 80B4ED80 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 003F4 80B4ED84 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 003F8 80B4ED88 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 003FC 80B4ED8C 03E00008 */  jr      $ra                        
/* 00400 80B4ED90 00000000 */  nop


