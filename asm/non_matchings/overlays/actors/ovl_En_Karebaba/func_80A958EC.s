glabel func_80A958EC
/* 0059C 80A958EC 3C0141B0 */  lui     $at, 0x41B0                ## $at = 41B00000
/* 005A0 80A958F0 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 005A4 80A958F4 44812000 */  mtc1    $at, $f4                   ## $f4 = 22.00
/* 005A8 80A958F8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 005AC 80A958FC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 005B0 80A95900 3C0E80A9 */  lui     $t6, %hi(D_80A96A3C)       ## $t6 = 80A90000
/* 005B4 80A95904 E48000BC */  swc1    $f0, 0x00BC($a0)           ## 000000BC
/* 005B8 80A95908 E48400C4 */  swc1    $f4, 0x00C4($a0)           ## 000000C4
/* 005BC 80A9590C 85CE6A3C */  lh      $t6, %lo(D_80A96A3C)($t6)  
/* 005C0 80A95910 44050000 */  mfc1    $a1, $f0                   
/* 005C4 80A95914 A48E0238 */  sh      $t6, 0x0238($a0)           ## 00000238
/* 005C8 80A95918 0C00B58B */  jal     Actor_SetScale
              
/* 005CC 80A9591C AFA40018 */  sw      $a0, 0x0018($sp)           
/* 005D0 80A95920 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 005D4 80A95924 3C0F80A9 */  lui     $t7, %hi(func_80A961DC)    ## $t7 = 80A90000
/* 005D8 80A95928 25EF61DC */  addiu   $t7, $t7, %lo(func_80A961DC) ## $t7 = 80A961DC
/* 005DC 80A9592C AC8F0190 */  sw      $t7, 0x0190($a0)           ## 00000190
/* 005E0 80A95930 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 005E4 80A95934 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 005E8 80A95938 03E00008 */  jr      $ra                        
/* 005EC 80A9593C 00000000 */  nop


