glabel func_80B04FA0
/* 00710 80B04FA0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00714 80B04FA4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00718 80B04FA8 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 0071C 80B04FAC 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00720 80B04FB0 24053869 */  addiu   $a1, $zero, 0x3869         ## $a1 = 00003869
/* 00724 80B04FB4 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00728 80B04FB8 3C0580B0 */  lui     $a1, %hi(D_80B07088)       ## $a1 = 80B00000
/* 0072C 80B04FBC 24A57088 */  addiu   $a1, $a1, %lo(D_80B07088)  ## $a1 = 80B07088
/* 00730 80B04FC0 24060002 */  addiu   $a2, $zero, 0x0002         ## $a2 = 00000002
/* 00734 80B04FC4 0C00D3B0 */  jal     func_80034EC0              
/* 00738 80B04FC8 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 0073C 80B04FCC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00740 80B04FD0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00744 80B04FD4 03E00008 */  jr      $ra                        
/* 00748 80B04FD8 00000000 */  nop


