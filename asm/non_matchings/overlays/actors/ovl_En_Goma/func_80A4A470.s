glabel func_80A4A470
/* 015B0 80A4A470 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 015B4 80A4A474 AFA5001C */  sw      $a1, 0x001C($sp)
/* 015B8 80A4A478 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 015BC 80A4A47C 3C0E80A5 */  lui     $t6, %hi(func_80A4A50C)    ## $t6 = 80A50000
/* 015C0 80A4A480 25CEA50C */  addiu   $t6, $t6, %lo(func_80A4A50C) ## $t6 = 80A4A50C
/* 015C4 80A4A484 240F0064 */  addiu   $t7, $zero, 0x0064         ## $t7 = 00000064
/* 015C8 80A4A488 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 015CC 80A4A48C AC8E02B0 */  sw      $t6, 0x02B0($a0)           ## 000002B0
/* 015D0 80A4A490 A48F02F8 */  sh      $t7, 0x02F8($a0)           ## 000002F8
/* 015D4 80A4A494 3C050600 */  lui     $a1, %hi(D_06001548)                ## $a1 = 06000000
/* 015D8 80A4A498 24A51548 */  addiu   $a1, $a1, %lo(D_06001548)           ## $a1 = 06001548
/* 015DC 80A4A49C AFA70018 */  sw      $a3, 0x0018($sp)
/* 015E0 80A4A4A0 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 015E4 80A4A4A4 0C0294D3 */  jal     Animation_MorphToLoop
/* 015E8 80A4A4A8 3C06C0A0 */  lui     $a2, 0xC0A0                ## $a2 = C0A00000
/* 015EC 80A4A4AC 3C014170 */  lui     $at, 0x4170                ## $at = 41700000
/* 015F0 80A4A4B0 44816000 */  mtc1    $at, $f12                  ## $f12 = 15.00
/* 015F4 80A4A4B4 0C00CFBE */  jal     Rand_ZeroFloat

/* 015F8 80A4A4B8 00000000 */  nop
/* 015FC 80A4A4BC 4600010D */  trunc.w.s $f4, $f0
/* 01600 80A4A4C0 8FA70018 */  lw      $a3, 0x0018($sp)
/* 01604 80A4A4C4 2405381F */  addiu   $a1, $zero, 0x381F         ## $a1 = 0000381F
/* 01608 80A4A4C8 44092000 */  mfc1    $t1, $f4
/* 0160C 80A4A4CC 84EB001C */  lh      $t3, 0x001C($a3)           ## 0000001C
/* 01610 80A4A4D0 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 01614 80A4A4D4 252A0003 */  addiu   $t2, $t1, 0x0003           ## $t2 = 00000003
/* 01618 80A4A4D8 29610006 */  slti    $at, $t3, 0x0006
/* 0161C 80A4A4DC 10200005 */  beq     $at, $zero, .L80A4A4F4
/* 01620 80A4A4E0 A4EA02CC */  sh      $t2, 0x02CC($a3)           ## 000002CC
/* 01624 80A4A4E4 0C00BE0A */  jal     Audio_PlayActorSound2

/* 01628 80A4A4E8 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 0162C 80A4A4EC 10000004 */  beq     $zero, $zero, .L80A4A500
/* 01630 80A4A4F0 8FBF0014 */  lw      $ra, 0x0014($sp)
.L80A4A4F4:
/* 01634 80A4A4F4 0C00BE0A */  jal     Audio_PlayActorSound2

/* 01638 80A4A4F8 2405389E */  addiu   $a1, $zero, 0x389E         ## $a1 = 0000389E
/* 0163C 80A4A4FC 8FBF0014 */  lw      $ra, 0x0014($sp)
.L80A4A500:
/* 01640 80A4A500 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01644 80A4A504 03E00008 */  jr      $ra
/* 01648 80A4A508 00000000 */  nop
