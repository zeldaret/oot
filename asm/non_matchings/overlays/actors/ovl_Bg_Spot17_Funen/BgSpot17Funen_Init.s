glabel BgSpot17Funen_Init
/* 00000 808B7400 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00004 808B7404 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00008 808B7408 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0000C 808B740C 3C05808B */  lui     $a1, %hi(D_808B7620)       ## $a1 = 808B0000
/* 00010 808B7410 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00014 808B7414 0C01E037 */  jal     Actor_ProcessInitChain
              
/* 00018 808B7418 24A57620 */  addiu   $a1, $a1, %lo(D_808B7620)  ## $a1 = 808B7620
/* 0001C 808B741C 8FAE0018 */  lw      $t6, 0x0018($sp)           
/* 00020 808B7420 3C04808B */  lui     $a0, %hi(D_808B7630)       ## $a0 = 808B0000
/* 00024 808B7424 24847630 */  addiu   $a0, $a0, %lo(D_808B7630)  ## $a0 = 808B7630
/* 00028 808B7428 0C00084C */  jal     osSyncPrintf
              
/* 0002C 808B742C 85C5001C */  lh      $a1, 0x001C($t6)           ## 0000001C
/* 00030 808B7430 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00034 808B7434 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00038 808B7438 03E00008 */  jr      $ra                        
/* 0003C 808B743C 00000000 */  nop


