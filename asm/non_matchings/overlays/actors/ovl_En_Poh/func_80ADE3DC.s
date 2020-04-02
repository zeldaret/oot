glabel func_80ADE3DC
/* 0068C 80ADE3DC 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00690 80ADE3E0 AFBF001C */  sw      $ra, 0x001C($sp)
/* 00694 80ADE3E4 AFB00018 */  sw      $s0, 0x0018($sp)
/* 00698 80ADE3E8 8C8E0004 */  lw      $t6, 0x0004($a0)           ## 00000004
/* 0069C 80ADE3EC 90980197 */  lbu     $t8, 0x0197($a0)           ## 00000197
/* 006A0 80ADE3F0 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 006A4 80ADE3F4 01C17824 */  and     $t7, $t6, $at
/* 006A8 80ADE3F8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 006AC 80ADE3FC A080029D */  sb      $zero, 0x029D($a0)         ## 0000029D
/* 006B0 80ADE400 1700000A */  bne     $t8, $zero, .L80ADE42C
/* 006B4 80ADE404 AC8F0004 */  sw      $t7, 0x0004($a0)           ## 00000004
/* 006B8 80ADE408 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 006BC 80ADE40C 24A511C4 */  addiu   $a1, $a1, 0x11C4           ## $a1 = 060011C4
/* 006C0 80ADE410 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 006C4 80ADE414 0C0294A7 */  jal     SkelAnime_ChangeAnimPlaybackStop
/* 006C8 80ADE418 24060000 */  addiu   $a2, $zero, 0x0000         ## $a2 = 00000000
/* 006CC 80ADE41C 3C1980AE */  lui     $t9, %hi(func_80ADEF38)    ## $t9 = 80AE0000
/* 006D0 80ADE420 2739EF38 */  addiu   $t9, $t9, %lo(func_80ADEF38) ## $t9 = 80ADEF38
/* 006D4 80ADE424 10000014 */  beq     $zero, $zero, .L80ADE478
/* 006D8 80ADE428 AE190190 */  sw      $t9, 0x0190($s0)           ## 00000190
.L80ADE42C:
/* 006DC 80ADE42C 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 006E0 80ADE430 24A50FE4 */  addiu   $a1, $a1, 0x0FE4           ## $a1 = 06000FE4
/* 006E4 80ADE434 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 006E8 80ADE438 0C0294A7 */  jal     SkelAnime_ChangeAnimPlaybackStop
/* 006EC 80ADE43C 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 006F0 80ADE440 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 006F4 80ADE444 44813000 */  mtc1    $at, $f6                   ## $f6 = 20.00
/* 006F8 80ADE448 C604000C */  lwc1    $f4, 0x000C($s0)           ## 0000000C
/* 006FC 80ADE44C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00700 80ADE450 240538EC */  addiu   $a1, $zero, 0x38EC         ## $a1 = 000038EC
/* 00704 80ADE454 46062200 */  add.s   $f8, $f4, $f6
/* 00708 80ADE458 0C00BE0A */  jal     Audio_PlayActorSound2

/* 0070C 80ADE45C E6080028 */  swc1    $f8, 0x0028($s0)           ## 00000028
/* 00710 80ADE460 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00714 80ADE464 0C00BE0A */  jal     Audio_PlayActorSound2

/* 00718 80ADE468 24053873 */  addiu   $a1, $zero, 0x3873         ## $a1 = 00003873
/* 0071C 80ADE46C 3C0880AE */  lui     $t0, %hi(func_80ADF0B8)    ## $t0 = 80AE0000
/* 00720 80ADE470 2508F0B8 */  addiu   $t0, $t0, %lo(func_80ADF0B8) ## $t0 = 80ADF0B8
/* 00724 80ADE474 AE080190 */  sw      $t0, 0x0190($s0)           ## 00000190
.L80ADE478:
/* 00728 80ADE478 8FBF001C */  lw      $ra, 0x001C($sp)
/* 0072C 80ADE47C 8FB00018 */  lw      $s0, 0x0018($sp)
/* 00730 80ADE480 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00734 80ADE484 03E00008 */  jr      $ra
/* 00738 80ADE488 00000000 */  nop


