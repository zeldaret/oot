glabel func_80B2A4D8
/* 002D8 80B2A4D8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 002DC 80B2A4DC AFA40018 */  sw      $a0, 0x0018($sp)
/* 002E0 80B2A4E0 AFA5001C */  sw      $a1, 0x001C($sp)
/* 002E4 80B2A4E4 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 002E8 80B2A4E8 8FA50018 */  lw      $a1, 0x0018($sp)
/* 002EC 80B2A4EC AFBF0014 */  sw      $ra, 0x0014($sp)
/* 002F0 80B2A4F0 AFA70024 */  sw      $a3, 0x0024($sp)
/* 002F4 80B2A4F4 0C02998F */  jal     func_800A663C
/* 002F8 80B2A4F8 24A5014C */  addiu   $a1, $a1, 0x014C           ## $a1 = 0000014C
/* 002FC 80B2A4FC 8FA80018 */  lw      $t0, 0x0018($sp)
/* 00300 80B2A500 8FA70024 */  lw      $a3, 0x0024($sp)
/* 00304 80B2A504 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 00308 80B2A508 8503001C */  lh      $v1, 0x001C($t0)           ## 0000001C
/* 0030C 80B2A50C 25040198 */  addiu   $a0, $t0, 0x0198           ## $a0 = 00000198
/* 00310 80B2A510 00E02825 */  or      $a1, $a3, $zero            ## $a1 = 00000000
/* 00314 80B2A514 00031A03 */  sra     $v1, $v1,  8
/* 00318 80B2A518 306300FF */  andi    $v1, $v1, 0x00FF           ## $v1 = 00000000
/* 0031C 80B2A51C 1061000E */  beq     $v1, $at, .L80B2A558
/* 00320 80B2A520 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 00324 80B2A524 1061000C */  beq     $v1, $at, .L80B2A558
/* 00328 80B2A528 24010007 */  addiu   $at, $zero, 0x0007         ## $at = 00000007
/* 0032C 80B2A52C 1061000A */  beq     $v1, $at, .L80B2A558
/* 00330 80B2A530 24010008 */  addiu   $at, $zero, 0x0008         ## $at = 00000008
/* 00334 80B2A534 10610008 */  beq     $v1, $at, .L80B2A558
/* 00338 80B2A538 24010009 */  addiu   $at, $zero, 0x0009         ## $at = 00000009
/* 0033C 80B2A53C 10610006 */  beq     $v1, $at, .L80B2A558
/* 00340 80B2A540 3C064040 */  lui     $a2, 0x4040                ## $a2 = 40400000
/* 00344 80B2A544 25040198 */  addiu   $a0, $t0, 0x0198           ## $a0 = 00000198
/* 00348 80B2A548 0C0294E1 */  jal     SkelAnime_ChangeAnimationPlaybackRepeat
/* 0034C 80B2A54C 00E02825 */  or      $a1, $a3, $zero            ## $a1 = 00000000
/* 00350 80B2A550 10000004 */  beq     $zero, $zero, .L80B2A564
/* 00354 80B2A554 8FBF0014 */  lw      $ra, 0x0014($sp)
.L80B2A558:
/* 00358 80B2A558 0C0294A7 */  jal     SkelAnime_ChangeAnimationPlaybackStop
/* 0035C 80B2A55C 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 00360 80B2A560 8FBF0014 */  lw      $ra, 0x0014($sp)
.L80B2A564:
/* 00364 80B2A564 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00368 80B2A568 03E00008 */  jr      $ra
/* 0036C 80B2A56C 00000000 */  nop


