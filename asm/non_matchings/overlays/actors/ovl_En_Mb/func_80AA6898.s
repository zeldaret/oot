glabel func_80AA6898
/* 00848 80AA6898 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0084C 80AA689C AFBF0014 */  sw      $ra, 0x0014($sp)
/* 00850 80AA68A0 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00854 80AA68A4 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 00858 80AA68A8 24A5EBE4 */  addiu   $a1, $a1, 0xEBE4           ## $a1 = 0600EBE4
/* 0085C 80AA68AC AFA60018 */  sw      $a2, 0x0018($sp)
/* 00860 80AA68B0 0C0294BE */  jal     SkelAnime_ChangeAnimationDefaultRepeat
/* 00864 80AA68B4 2484018C */  addiu   $a0, $a0, 0x018C           ## $a0 = 0000018C
/* 00868 80AA68B8 8FA60018 */  lw      $a2, 0x0018($sp)
/* 0086C 80AA68BC 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 00870 80AA68C0 2404001E */  addiu   $a0, $zero, 0x001E         ## $a0 = 0000001E
/* 00874 80AA68C4 24050032 */  addiu   $a1, $zero, 0x0032         ## $a1 = 00000032
/* 00878 80AA68C8 0C01DF64 */  jal     Math_Rand_S16Offset

/* 0087C 80AA68CC E4C40068 */  swc1    $f4, 0x0068($a2)           ## 00000068
/* 00880 80AA68D0 8FA40018 */  lw      $a0, 0x0018($sp)
/* 00884 80AA68D4 240E0006 */  addiu   $t6, $zero, 0x0006         ## $t6 = 00000006
/* 00888 80AA68D8 3C0580AB */  lui     $a1, %hi(func_80AA8DD8)    ## $a1 = 80AB0000
/* 0088C 80AA68DC 24A58DD8 */  addiu   $a1, $a1, %lo(func_80AA8DD8) ## $a1 = 80AA8DD8
/* 00890 80AA68E0 A482032A */  sh      $v0, 0x032A($a0)           ## 0000032A
/* 00894 80AA68E4 0C2A9814 */  jal     func_80AA6050
/* 00898 80AA68E8 AC8E0320 */  sw      $t6, 0x0320($a0)           ## 00000320
/* 0089C 80AA68EC 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 008A0 80AA68F0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 008A4 80AA68F4 03E00008 */  jr      $ra
/* 008A8 80AA68F8 00000000 */  nop


