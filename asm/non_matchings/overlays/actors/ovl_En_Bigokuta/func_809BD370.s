glabel func_809BD370
/* 00710 809BD370 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00714 809BD374 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00718 809BD378 240E0015 */  addiu   $t6, $zero, 0x0015         ## $t6 = 00000015
/* 0071C 809BD37C A48E0196 */  sh      $t6, 0x0196($a0)           ## 00000196
/* 00720 809BD380 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00724 809BD384 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00728 809BD388 2405386C */  addiu   $a1, $zero, 0x386C         ## $a1 = 0000386C
/* 0072C 809BD38C 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00730 809BD390 3C0F809C */  lui     $t7, %hi(func_809BD8DC)    ## $t7 = 809C0000
/* 00734 809BD394 25EFD8DC */  addiu   $t7, $t7, %lo(func_809BD8DC) ## $t7 = 809BD8DC
/* 00738 809BD398 AC8F0190 */  sw      $t7, 0x0190($a0)           ## 00000190
/* 0073C 809BD39C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00740 809BD3A0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00744 809BD3A4 03E00008 */  jr      $ra                        
/* 00748 809BD3A8 00000000 */  nop
