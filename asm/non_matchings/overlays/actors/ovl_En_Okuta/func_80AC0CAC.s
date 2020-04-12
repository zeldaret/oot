glabel func_80AC0CAC
/* 0064C 80AC0CAC 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00650 80AC0CB0 AFB00020 */  sw      $s0, 0x0020($sp)
/* 00654 80AC0CB4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00658 80AC0CB8 AFBF0024 */  sw      $ra, 0x0024($sp)
/* 0065C 80AC0CBC 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00660 80AC0CC0 24A53910 */  addiu   $a1, $a1, 0x3910           ## $a1 = 06003910
/* 00664 80AC0CC4 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00668 80AC0CC8 0C029490 */  jal     SkelAnime_ChangeAnimTransitionStop
/* 0066C 80AC0CCC 3C06C0A0 */  lui     $a2, 0xC0A0                ## $a2 = C0A00000
/* 00670 80AC0CD0 240E000B */  addiu   $t6, $zero, 0x000B         ## $t6 = 0000000B
/* 00674 80AC0CD4 AFAE0010 */  sw      $t6, 0x0010($sp)
/* 00678 80AC0CD8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0067C 80AC0CDC 24054000 */  addiu   $a1, $zero, 0x4000         ## $a1 = 00004000
/* 00680 80AC0CE0 240600FF */  addiu   $a2, $zero, 0x00FF         ## $a2 = 000000FF
/* 00684 80AC0CE4 0C00D09B */  jal     func_8003426C
/* 00688 80AC0CE8 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 0068C 80AC0CEC 920F0381 */  lbu     $t7, 0x0381($s0)           ## 00000381
/* 00690 80AC0CF0 3C053C23 */  lui     $a1, 0x3C23                ## $a1 = 3C230000
/* 00694 80AC0CF4 34A5D70A */  ori     $a1, $a1, 0xD70A           ## $a1 = 3C23D70A
/* 00698 80AC0CF8 31F8FFFD */  andi    $t8, $t7, 0xFFFD           ## $t8 = 00000000
/* 0069C 80AC0CFC A2180381 */  sb      $t8, 0x0381($s0)           ## 00000381
/* 006A0 80AC0D00 0C00B58B */  jal     Actor_SetScale

/* 006A4 80AC0D04 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 006A8 80AC0D08 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 006AC 80AC0D0C 0C00BE0A */  jal     Audio_PlayActorSound2

/* 006B0 80AC0D10 240538C6 */  addiu   $a1, $zero, 0x38C6         ## $a1 = 000038C6
/* 006B4 80AC0D14 3C1980AC */  lui     $t9, %hi(func_80AC1458)    ## $t9 = 80AC0000
/* 006B8 80AC0D18 27391458 */  addiu   $t9, $t9, %lo(func_80AC1458) ## $t9 = 80AC1458
/* 006BC 80AC0D1C AE190190 */  sw      $t9, 0x0190($s0)           ## 00000190
/* 006C0 80AC0D20 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 006C4 80AC0D24 8FB00020 */  lw      $s0, 0x0020($sp)
/* 006C8 80AC0D28 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 006CC 80AC0D2C 03E00008 */  jr      $ra
/* 006D0 80AC0D30 00000000 */  nop


