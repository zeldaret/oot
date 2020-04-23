.late_rodata
glabel D_80A1A57C
 .word 0x3B83126F

.text
glabel func_80A18364
/* 00E54 80A18364 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 00E58 80A18368 44812000 */  mtc1    $at, $f4                   ## $f4 = 20.00
/* 00E5C 80A1836C 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00E60 80A18370 3C01C040 */  lui     $at, 0xC040                ## $at = C0400000
/* 00E64 80A18374 44813000 */  mtc1    $at, $f6                   ## $f6 = -3.00
/* 00E68 80A18378 AFB00028 */  sw      $s0, 0x0028($sp)
/* 00E6C 80A1837C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00E70 80A18380 AFBF002C */  sw      $ra, 0x002C($sp)
/* 00E74 80A18384 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00E78 80A18388 240E0002 */  addiu   $t6, $zero, 0x0002         ## $t6 = 00000002
/* 00E7C 80A1838C AFAE0014 */  sw      $t6, 0x0014($sp)
/* 00E80 80A18390 24A519CC */  addiu   $a1, $a1, 0x19CC           ## $a1 = 060019CC
/* 00E84 80A18394 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00E88 80A18398 3C063FC0 */  lui     $a2, 0x3FC0                ## $a2 = 3FC00000
/* 00E8C 80A1839C 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 00E90 80A183A0 E7A40010 */  swc1    $f4, 0x0010($sp)
/* 00E94 80A183A4 0C029468 */  jal     SkelAnime_ChangeAnim

/* 00E98 80A183A8 E7A60018 */  swc1    $f6, 0x0018($sp)
/* 00E9C 80A183AC 920F00B1 */  lbu     $t7, 0x00B1($s0)           ## 000000B1
/* 00EA0 80A183B0 44804000 */  mtc1    $zero, $f8                 ## $f8 = 0.00
/* 00EA4 80A183B4 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 00EA8 80A183B8 15E1000A */  bne     $t7, $at, .L80A183E4
/* 00EAC 80A183BC E6080068 */  swc1    $f8, 0x0068($s0)           ## 00000068
/* 00EB0 80A183C0 24180050 */  addiu   $t8, $zero, 0x0050         ## $t8 = 00000050
/* 00EB4 80A183C4 AFB80010 */  sw      $t8, 0x0010($sp)
/* 00EB8 80A183C8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00EBC 80A183CC 24058000 */  addiu   $a1, $zero, 0x8000         ## $a1 = FFFF8000
/* 00EC0 80A183D0 240600FF */  addiu   $a2, $zero, 0x00FF         ## $a2 = 000000FF
/* 00EC4 80A183D4 0C00D09B */  jal     func_8003426C
/* 00EC8 80A183D8 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 00ECC 80A183DC 10000017 */  beq     $zero, $zero, .L80A1843C
/* 00ED0 80A183E0 00000000 */  nop
.L80A183E4:
/* 00ED4 80A183E4 24190050 */  addiu   $t9, $zero, 0x0050         ## $t9 = 00000050
/* 00ED8 80A183E8 AFB90010 */  sw      $t9, 0x0010($sp)
/* 00EDC 80A183EC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00EE0 80A183F0 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00EE4 80A183F4 240600FF */  addiu   $a2, $zero, 0x00FF         ## $a2 = 000000FF
/* 00EE8 80A183F8 0C00D09B */  jal     func_8003426C
/* 00EEC 80A183FC 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 00EF0 80A18400 3C0180A2 */  lui     $at, %hi(D_80A1A57C)       ## $at = 80A20000
/* 00EF4 80A18404 C42AA57C */  lwc1    $f10, %lo(D_80A1A57C)($at)
/* 00EF8 80A18408 C6100050 */  lwc1    $f16, 0x0050($s0)          ## 00000050
/* 00EFC 80A1840C 2405389E */  addiu   $a1, $zero, 0x389E         ## $a1 = 0000389E
/* 00F00 80A18410 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00F04 80A18414 4610503C */  c.lt.s  $f10, $f16
/* 00F08 80A18418 00000000 */  nop
/* 00F0C 80A1841C 45000005 */  bc1f    .L80A18434
/* 00F10 80A18420 00000000 */  nop
/* 00F14 80A18424 0C00BE0A */  jal     Audio_PlayActorSound2

/* 00F18 80A18428 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00F1C 80A1842C 10000003 */  beq     $zero, $zero, .L80A1843C
/* 00F20 80A18430 00000000 */  nop
.L80A18434:
/* 00F24 80A18434 0C00BE0A */  jal     Audio_PlayActorSound2

/* 00F28 80A18438 2405389E */  addiu   $a1, $zero, 0x389E         ## $a1 = 0000389E
.L80A1843C:
/* 00F2C 80A1843C 3C0980A2 */  lui     $t1, %hi(func_80A19CA4)    ## $t1 = 80A20000
/* 00F30 80A18440 24080050 */  addiu   $t0, $zero, 0x0050         ## $t0 = 00000050
/* 00F34 80A18444 25299CA4 */  addiu   $t1, $t1, %lo(func_80A19CA4) ## $t1 = 80A19CA4
/* 00F38 80A18448 A6080194 */  sh      $t0, 0x0194($s0)           ## 00000194
/* 00F3C 80A1844C AE090190 */  sw      $t1, 0x0190($s0)           ## 00000190
/* 00F40 80A18450 8FBF002C */  lw      $ra, 0x002C($sp)
/* 00F44 80A18454 8FB00028 */  lw      $s0, 0x0028($sp)
/* 00F48 80A18458 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 00F4C 80A1845C 03E00008 */  jr      $ra
/* 00F50 80A18460 00000000 */  nop
