glabel func_80AFA930
/* 00210 80AFA930 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00214 80AFA934 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 00218 80AFA938 AFA40018 */  sw      $a0, 0x0018($sp)
/* 0021C 80AFA93C 3C050600 */  lui     $a1, %hi(D_060001EC)                ## $a1 = 06000000
/* 00220 80AFA940 24A501EC */  addiu   $a1, $a1, %lo(D_060001EC)           ## $a1 = 060001EC
/* 00224 80AFA944 0C02947A */  jal     Animation_PlayOnce
/* 00228 80AFA948 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 0022C 80AFA94C 8FAF0018 */  lw      $t7, 0x0018($sp)
/* 00230 80AFA950 3C0E80B0 */  lui     $t6, %hi(func_80AFAE28)    ## $t6 = 80B00000
/* 00234 80AFA954 25CEAE28 */  addiu   $t6, $t6, %lo(func_80AFAE28) ## $t6 = 80AFAE28
/* 00238 80AFA958 ADEE0190 */  sw      $t6, 0x0190($t7)           ## 00000190
/* 0023C 80AFA95C 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 00240 80AFA960 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00244 80AFA964 03E00008 */  jr      $ra
/* 00248 80AFA968 00000000 */  nop
