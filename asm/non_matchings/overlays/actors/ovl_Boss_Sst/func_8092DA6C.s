glabel func_8092DA6C
/* 0149C 8092DA6C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 014A0 8092DA70 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 014A4 8092DA74 8C8E0154 */  lw      $t6, 0x0154($a0)           ## 00000154
/* 014A8 8092DA78 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 014AC 8092DA7C 24A5DC2C */  addiu   $a1, $a1, 0xDC2C           ## $a1 = 0600DC2C
/* 014B0 8092DA80 10AE0006 */  beq     $a1, $t6, .L8092DA9C
/* 014B4 8092DA84 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 014B8 8092DA88 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 014BC 8092DA8C 3C06C0A0 */  lui     $a2, 0xC0A0                ## $a2 = C0A00000
/* 014C0 8092DA90 0C0294D3 */  jal     SkelAnime_ChangeAnimationTransitionRepeat
/* 014C4 8092DA94 AFA70018 */  sw      $a3, 0x0018($sp)
/* 014C8 8092DA98 8FA70018 */  lw      $a3, 0x0018($sp)
.L8092DA9C:
/* 014CC 8092DA9C 3C0F8093 */  lui     $t7, %hi(func_8092DAB8)    ## $t7 = 80930000
/* 014D0 8092DAA0 25EFDAB8 */  addiu   $t7, $t7, %lo(func_8092DAB8) ## $t7 = 8092DAB8
/* 014D4 8092DAA4 ACEF0190 */  sw      $t7, 0x0190($a3)           ## 00000190
/* 014D8 8092DAA8 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 014DC 8092DAAC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 014E0 8092DAB0 03E00008 */  jr      $ra
/* 014E4 8092DAB4 00000000 */  nop


