glabel func_80AFA9D4
/* 002B4 80AFA9D4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 002B8 80AFA9D8 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 002BC 80AFA9DC AFA40018 */  sw      $a0, 0x0018($sp)
/* 002C0 80AFA9E0 3C050600 */  lui     $a1, %hi(D_0600039C)                ## $a1 = 06000000
/* 002C4 80AFA9E4 24A5039C */  addiu   $a1, $a1, %lo(D_0600039C)           ## $a1 = 0600039C
/* 002C8 80AFA9E8 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 002CC 80AFA9EC 0C029490 */  jal     Animation_MorphToPlayOnce
/* 002D0 80AFA9F0 3C06C0A0 */  lui     $a2, 0xC0A0                ## $a2 = C0A00000
/* 002D4 80AFA9F4 8FA40018 */  lw      $a0, 0x0018($sp)
/* 002D8 80AFA9F8 0C00BE0A */  jal     Audio_PlayActorSound2

/* 002DC 80AFA9FC 2405387D */  addiu   $a1, $zero, 0x387D         ## $a1 = 0000387D
/* 002E0 80AFAA00 8FAF0018 */  lw      $t7, 0x0018($sp)
/* 002E4 80AFAA04 3C0E80B0 */  lui     $t6, %hi(func_80AFAF64)    ## $t6 = 80B00000
/* 002E8 80AFAA08 25CEAF64 */  addiu   $t6, $t6, %lo(func_80AFAF64) ## $t6 = 80AFAF64
/* 002EC 80AFAA0C ADEE0190 */  sw      $t6, 0x0190($t7)           ## 00000190
/* 002F0 80AFAA10 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 002F4 80AFAA14 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 002F8 80AFAA18 03E00008 */  jr      $ra
/* 002FC 80AFAA1C 00000000 */  nop
