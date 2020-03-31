glabel func_80AA6CC0
/* 00C70 80AA6CC0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00C74 80AA6CC4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00C78 80AA6CC8 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00C7C 80AA6CCC 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 00C80 80AA6CD0 24A59280 */  addiu   $a1, $a1, 0x9280           ## $a1 = 06009280
/* 00C84 80AA6CD4 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 00C88 80AA6CD8 0C02947A */  jal     SkelAnimeChangeAnimationDefaultStop              
/* 00C8C 80AA6CDC 2484018C */  addiu   $a0, $a0, 0x018C           ## $a0 = 0000018C
/* 00C90 80AA6CE0 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00C94 80AA6CE4 240E000B */  addiu   $t6, $zero, 0x000B         ## $t6 = 0000000B
/* 00C98 80AA6CE8 240F0005 */  addiu   $t7, $zero, 0x0005         ## $t7 = 00000005
/* 00C9C 80AA6CEC 240538B9 */  addiu   $a1, $zero, 0x38B9         ## $a1 = 000038B9
/* 00CA0 80AA6CF0 AC8E0320 */  sw      $t6, 0x0320($a0)           ## 00000320
/* 00CA4 80AA6CF4 A480032A */  sh      $zero, 0x032A($a0)         ## 0000032A
/* 00CA8 80AA6CF8 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00CAC 80AA6CFC A48F032E */  sh      $t7, 0x032E($a0)           ## 0000032E
/* 00CB0 80AA6D00 3C0580AA */  lui     $a1, %hi(func_80AA7310)    ## $a1 = 80AA0000
/* 00CB4 80AA6D04 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00CB8 80AA6D08 0C2A9814 */  jal     func_80AA6050              
/* 00CBC 80AA6D0C 24A57310 */  addiu   $a1, $a1, %lo(func_80AA7310) ## $a1 = 80AA7310
/* 00CC0 80AA6D10 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00CC4 80AA6D14 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00CC8 80AA6D18 03E00008 */  jr      $ra                        
/* 00CCC 80AA6D1C 00000000 */  nop


