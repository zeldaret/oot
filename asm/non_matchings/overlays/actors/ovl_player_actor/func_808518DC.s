glabel func_808518DC
/* 1F6CC 808518DC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 1F6D0 808518E0 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 1F6D4 808518E4 00802825 */  or      $a1, $a0, $zero            ## $a1 = 00000000
/* 1F6D8 808518E8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 1F6DC 808518EC AFA40018 */  sw      $a0, 0x0018($sp)           
/* 1F6E0 808518F0 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 1F6E4 808518F4 0C20F3AB */  jal     func_8083CEAC              
/* 1F6E8 808518F8 AFA60020 */  sw      $a2, 0x0020($sp)           
/* 1F6EC 808518FC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 1F6F0 80851900 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 1F6F4 80851904 03E00008 */  jr      $ra                        
/* 1F6F8 80851908 00000000 */  nop


