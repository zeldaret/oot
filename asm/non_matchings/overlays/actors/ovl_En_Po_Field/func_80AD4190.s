glabel func_80AD4190
/* 00690 80AD4190 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00694 80AD4194 AFB00018 */  sw      $s0, 0x0018($sp)
/* 00698 80AD4198 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0069C 80AD419C AFBF001C */  sw      $ra, 0x001C($sp)
/* 006A0 80AD41A0 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 006A4 80AD41A4 24A51360 */  addiu   $a1, $a1, 0x1360           ## $a1 = 06001360
/* 006A8 80AD41A8 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 006AC 80AD41AC 0C0294D3 */  jal     SkelAnime_ChangeAnimationTransitionRepeat
/* 006B0 80AD41B0 3C06C0C0 */  lui     $a2, 0xC0C0                ## $a2 = C0C00000
/* 006B4 80AD41B4 920F0255 */  lbu     $t7, 0x0255($s0)           ## 00000255
/* 006B8 80AD41B8 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 006BC 80AD41BC 240E0010 */  addiu   $t6, $zero, 0x0010         ## $t6 = 00000010
/* 006C0 80AD41C0 31F8FFFC */  andi    $t8, $t7, 0xFFFC           ## $t8 = 00000000
/* 006C4 80AD41C4 A60E0196 */  sh      $t6, 0x0196($s0)           ## 00000196
/* 006C8 80AD41C8 A2180255 */  sb      $t8, 0x0255($s0)           ## 00000255
/* 006CC 80AD41CC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 006D0 80AD41D0 240538EC */  addiu   $a1, $zero, 0x38EC         ## $a1 = 000038EC
/* 006D4 80AD41D4 0C00BE0A */  jal     Audio_PlayActorSound2

/* 006D8 80AD41D8 E6040068 */  swc1    $f4, 0x0068($s0)           ## 00000068
/* 006DC 80AD41DC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 006E0 80AD41E0 0C00BE0A */  jal     Audio_PlayActorSound2

/* 006E4 80AD41E4 24053874 */  addiu   $a1, $zero, 0x3874         ## $a1 = 00003874
/* 006E8 80AD41E8 3C1980AD */  lui     $t9, %hi(func_80AD52F0)    ## $t9 = 80AD0000
/* 006EC 80AD41EC 273952F0 */  addiu   $t9, $t9, %lo(func_80AD52F0) ## $t9 = 80AD52F0
/* 006F0 80AD41F0 AE190190 */  sw      $t9, 0x0190($s0)           ## 00000190
/* 006F4 80AD41F4 8FBF001C */  lw      $ra, 0x001C($sp)
/* 006F8 80AD41F8 8FB00018 */  lw      $s0, 0x0018($sp)
/* 006FC 80AD41FC 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00700 80AD4200 03E00008 */  jr      $ra
/* 00704 80AD4204 00000000 */  nop


