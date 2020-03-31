glabel func_80A57850
/* 00650 80A57850 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00654 80A57854 AFB00020 */  sw      $s0, 0x0020($sp)
/* 00658 80A57858 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0065C 80A5785C AFBF0024 */  sw      $ra, 0x0024($sp)
/* 00660 80A57860 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00664 80A57864 24A529BC */  addiu   $a1, $a1, 0x29BC           ## $a1 = 060029BC
/* 00668 80A57868 0C0294BE */  jal     SkelAnime_ChangeAnimationDefaultRepeat
/* 0066C 80A5786C 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00670 80A57870 8E0E0004 */  lw      $t6, 0x0004($s0)           ## 00000004
/* 00674 80A57874 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 00678 80A57878 24180064 */  addiu   $t8, $zero, 0x0064         ## $t8 = 00000064
/* 0067C 80A5787C 01C17824 */  and     $t7, $t6, $at
/* 00680 80A57880 AE0F0004 */  sw      $t7, 0x0004($s0)           ## 00000004
/* 00684 80A57884 AFB80010 */  sw      $t8, 0x0010($sp)
/* 00688 80A57888 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0068C 80A5788C 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00690 80A57890 240600FF */  addiu   $a2, $zero, 0x00FF         ## $a2 = 000000FF
/* 00694 80A57894 0C00D09B */  jal     func_8003426C
/* 00698 80A57898 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 0069C 80A5789C 24190001 */  addiu   $t9, $zero, 0x0001         ## $t9 = 00000001
/* 006A0 80A578A0 A2190114 */  sb      $t9, 0x0114($s0)           ## 00000114
/* 006A4 80A578A4 A6000194 */  sh      $zero, 0x0194($s0)         ## 00000194
/* 006A8 80A578A8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 006AC 80A578AC 0C00BE0A */  jal     Audio_PlayActorSound2

/* 006B0 80A578B0 24053882 */  addiu   $a1, $zero, 0x3882         ## $a1 = 00003882
/* 006B4 80A578B4 3C0880A6 */  lui     $t0, %hi(D_80A58A34)       ## $t0 = 80A60000
/* 006B8 80A578B8 85088A34 */  lh      $t0, %lo(D_80A58A34)($t0)
/* 006BC 80A578BC 2401FFFD */  addiu   $at, $zero, 0xFFFD         ## $at = FFFFFFFD
/* 006C0 80A578C0 15010006 */  bne     $t0, $at, .L80A578DC
/* 006C4 80A578C4 00000000 */  nop
/* 006C8 80A578C8 0C01E221 */  jal     func_80078884
/* 006CC 80A578CC 24044806 */  addiu   $a0, $zero, 0x4806         ## $a0 = 00004806
/* 006D0 80A578D0 2409FFFC */  addiu   $t1, $zero, 0xFFFC         ## $t1 = FFFFFFFC
/* 006D4 80A578D4 3C0180A6 */  lui     $at, %hi(D_80A58A34)       ## $at = 80A60000
/* 006D8 80A578D8 A4298A34 */  sh      $t1, %lo(D_80A58A34)($at)
.L80A578DC:
/* 006DC 80A578DC 3C0A80A6 */  lui     $t2, %hi(func_80A584DC)    ## $t2 = 80A60000
/* 006E0 80A578E0 254A84DC */  addiu   $t2, $t2, %lo(func_80A584DC) ## $t2 = 80A584DC
/* 006E4 80A578E4 AE0A0190 */  sw      $t2, 0x0190($s0)           ## 00000190
/* 006E8 80A578E8 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 006EC 80A578EC 8FB00020 */  lw      $s0, 0x0020($sp)
/* 006F0 80A578F0 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 006F4 80A578F4 03E00008 */  jr      $ra
/* 006F8 80A578F8 00000000 */  nop


