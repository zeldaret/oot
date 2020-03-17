glabel BgSpot11Oasis_Init
/* 00130 808B2920 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00134 808B2924 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00138 808B2928 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0013C 808B292C 3C05808B */  lui     $a1, %hi(D_808B2E24)       ## $a1 = 808B0000
/* 00140 808B2930 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00144 808B2934 0C01E037 */  jal     Actor_ProcessInitChain
              
/* 00148 808B2938 24A52E24 */  addiu   $a1, $a1, %lo(D_808B2E24)  ## $a1 = 808B2E24
/* 0014C 808B293C 0C22CA5C */  jal     func_808B2970              
/* 00150 808B2940 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00154 808B2944 3C01C2C8 */  lui     $at, 0xC2C8                ## $at = C2C80000
/* 00158 808B2948 44812000 */  mtc1    $at, $f4                   ## $f4 = -100.00
/* 0015C 808B294C 8FAE0018 */  lw      $t6, 0x0018($sp)           
/* 00160 808B2950 2405FF9C */  addiu   $a1, $zero, 0xFF9C         ## $a1 = FFFFFF9C
/* 00164 808B2954 E5C40028 */  swc1    $f4, 0x0028($t6)           ## 00000028
/* 00168 808B2958 0C22C9FC */  jal     func_808B27F0              
/* 0016C 808B295C 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 00170 808B2960 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00174 808B2964 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00178 808B2968 03E00008 */  jr      $ra                        
/* 0017C 808B296C 00000000 */  nop


