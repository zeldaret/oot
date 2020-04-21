glabel func_80B04F74
/* 006E4 80B04F74 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 006E8 80B04F78 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 006EC 80B04F7C 3C0580B0 */  lui     $a1, %hi(D_80B07088)       ## $a1 = 80B00000
/* 006F0 80B04F80 24A57088 */  addiu   $a1, $a1, %lo(D_80B07088)  ## $a1 = 80B07088
/* 006F4 80B04F84 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 006F8 80B04F88 0C00D3B0 */  jal     func_80034EC0              
/* 006FC 80B04F8C 24060003 */  addiu   $a2, $zero, 0x0003         ## $a2 = 00000003
/* 00700 80B04F90 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00704 80B04F94 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00708 80B04F98 03E00008 */  jr      $ra                        
/* 0070C 80B04F9C 00000000 */  nop
