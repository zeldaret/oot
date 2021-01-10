glabel func_8092DCEC
/* 0171C 8092DCEC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01720 8092DCF0 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 01724 8092DCF4 10A00008 */  beq     $a1, $zero, .L8092DD18
/* 01728 8092DCF8 AFA40018 */  sw      $a0, 0x0018($sp)
/* 0172C 8092DCFC 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 01730 8092DD00 24A5C9BC */  addiu   $a1, $a1, 0xC9BC           ## $a1 = 0600C9BC
/* 01734 8092DD04 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 01738 8092DD08 0C029490 */  jal     Animation_MorphToPlayOnce
/* 0173C 8092DD0C 3C06C0A0 */  lui     $a2, 0xC0A0                ## $a2 = C0A00000
/* 01740 8092DD10 10000008 */  beq     $zero, $zero, .L8092DD34
/* 01744 8092DD14 8FAF0018 */  lw      $t7, 0x0018($sp)
.L8092DD18:
/* 01748 8092DD18 8FA40018 */  lw      $a0, 0x0018($sp)
/* 0174C 8092DD1C 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 01750 8092DD20 24A5C5B0 */  addiu   $a1, $a1, 0xC5B0           ## $a1 = 0600C5B0
/* 01754 8092DD24 3C06C0A0 */  lui     $a2, 0xC0A0                ## $a2 = C0A00000
/* 01758 8092DD28 0C029490 */  jal     Animation_MorphToPlayOnce
/* 0175C 8092DD2C 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 01760 8092DD30 8FAF0018 */  lw      $t7, 0x0018($sp)
.L8092DD34:
/* 01764 8092DD34 3C0E8093 */  lui     $t6, %hi(func_8092DD50)    ## $t6 = 80930000
/* 01768 8092DD38 25CEDD50 */  addiu   $t6, $t6, %lo(func_8092DD50) ## $t6 = 8092DD50
/* 0176C 8092DD3C ADEE0190 */  sw      $t6, 0x0190($t7)           ## 00000190
/* 01770 8092DD40 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 01774 8092DD44 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01778 8092DD48 03E00008 */  jr      $ra
/* 0177C 8092DD4C 00000000 */  nop
