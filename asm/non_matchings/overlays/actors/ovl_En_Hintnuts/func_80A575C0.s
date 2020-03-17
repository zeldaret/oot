glabel func_80A575C0
/* 003C0 80A575C0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 003C4 80A575C4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 003C8 80A575C8 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 003CC 80A575CC 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 003D0 80A575D0 24A524CC */  addiu   $a1, $a1, 0x24CC           ## $a1 = 060024CC
/* 003D4 80A575D4 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 003D8 80A575D8 0C029490 */  jal     func_800A5240              
/* 003DC 80A575DC 3C06C0A0 */  lui     $a2, 0xC0A0                ## $a2 = C0A00000
/* 003E0 80A575E0 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 003E4 80A575E4 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 003E8 80A575E8 2405387D */  addiu   $a1, $zero, 0x387D         ## $a1 = 0000387D
/* 003EC 80A575EC 8FAF0018 */  lw      $t7, 0x0018($sp)           
/* 003F0 80A575F0 3C0E80A5 */  lui     $t6, %hi(func_80A57DE4)    ## $t6 = 80A50000
/* 003F4 80A575F4 25CE7DE4 */  addiu   $t6, $t6, %lo(func_80A57DE4) ## $t6 = 80A57DE4
/* 003F8 80A575F8 ADEE0190 */  sw      $t6, 0x0190($t7)           ## 00000190
/* 003FC 80A575FC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00400 80A57600 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00404 80A57604 03E00008 */  jr      $ra                        
/* 00408 80A57608 00000000 */  nop


