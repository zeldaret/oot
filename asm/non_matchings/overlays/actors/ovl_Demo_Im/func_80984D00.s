glabel func_80984D00
/* 00120 80984D00 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00124 80984D04 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00128 80984D08 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 0012C 80984D0C 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00130 80984D10 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00134 80984D14 24C50284 */  addiu   $a1, $a2, 0x0284           ## $a1 = 00000284
/* 00138 80984D18 AFA50018 */  sw      $a1, 0x0018($sp)           
/* 0013C 80984D1C 0C0170D9 */  jal     CollisionCheck_AllocCylinder
              
/* 00140 80984D20 AFA60020 */  sw      $a2, 0x0020($sp)           
/* 00144 80984D24 3C078098 */  lui     $a3, %hi(D_80987840)       ## $a3 = 80980000
/* 00148 80984D28 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 0014C 80984D2C 8FA60020 */  lw      $a2, 0x0020($sp)           
/* 00150 80984D30 24E77840 */  addiu   $a3, $a3, %lo(D_80987840)  ## $a3 = 80987840
/* 00154 80984D34 0C017114 */  jal     func_8005C450              
/* 00158 80984D38 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 0015C 80984D3C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00160 80984D40 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00164 80984D44 03E00008 */  jr      $ra                        
/* 00168 80984D48 00000000 */  nop
