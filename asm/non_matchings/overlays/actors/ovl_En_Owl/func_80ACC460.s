glabel func_80ACC460
/* 02540 80ACC460 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 02544 80ACC464 AFB00028 */  sw      $s0, 0x0028($sp)
/* 02548 80ACC468 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0254C 80ACC46C AFBF002C */  sw      $ra, 0x002C($sp)
/* 02550 80ACC470 0C02927F */  jal     SkelAnime_FrameUpdateMatrix

/* 02554 80ACC474 8C8403DC */  lw      $a0, 0x03DC($a0)           ## 000003DC
/* 02558 80ACC478 5040002D */  beql    $v0, $zero, .L80ACC530
/* 0255C 80ACC47C 8FBF002C */  lw      $ra, 0x002C($sp)
/* 02560 80ACC480 960203FE */  lhu     $v0, 0x03FE($s0)           ## 000003FE
/* 02564 80ACC484 3C0880AD */  lui     $t0, %hi(func_80ACC390)    ## $t0 = 80AD0000
/* 02568 80ACC488 241900A0 */  addiu   $t9, $zero, 0x00A0         ## $t9 = 000000A0
/* 0256C 80ACC48C 18400014 */  blez    $v0, .L80ACC4E0
/* 02570 80ACC490 2508C390 */  addiu   $t0, $t0, %lo(func_80ACC390) ## $t0 = 80ACC390
/* 02574 80ACC494 8E0F03DC */  lw      $t7, 0x03DC($s0)           ## 000003DC
/* 02578 80ACC498 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 0257C 80ACC49C A60E03FE */  sh      $t6, 0x03FE($s0)           ## 000003FE
/* 02580 80ACC4A0 0C028800 */  jal     SkelAnime_GetFrameCount

/* 02584 80ACC4A4 8DE40008 */  lw      $a0, 0x0008($t7)           ## 00000008
/* 02588 80ACC4A8 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 0258C 80ACC4AC 8E0403DC */  lw      $a0, 0x03DC($s0)           ## 000003DC
/* 02590 80ACC4B0 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 02594 80ACC4B4 468021A0 */  cvt.s.w $f6, $f4
/* 02598 80ACC4B8 8C850008 */  lw      $a1, 0x0008($a0)           ## 00000008
/* 0259C 80ACC4BC 24180002 */  addiu   $t8, $zero, 0x0002         ## $t8 = 00000002
/* 025A0 80ACC4C0 44070000 */  mfc1    $a3, $f0
/* 025A4 80ACC4C4 AFB80014 */  sw      $t8, 0x0014($sp)
/* 025A8 80ACC4C8 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 025AC 80ACC4CC E7A60010 */  swc1    $f6, 0x0010($sp)
/* 025B0 80ACC4D0 0C029468 */  jal     SkelAnime_ChangeAnim

/* 025B4 80ACC4D4 E7A00018 */  swc1    $f0, 0x0018($sp)
/* 025B8 80ACC4D8 10000015 */  beq     $zero, $zero, .L80ACC530
/* 025BC 80ACC4DC 8FBF002C */  lw      $ra, 0x002C($sp)
.L80ACC4E0:
/* 025C0 80ACC4E0 3C040601 */  lui     $a0, 0x0601                ## $a0 = 06010000
/* 025C4 80ACC4E4 A61903FE */  sh      $t9, 0x03FE($s0)           ## 000003FE
/* 025C8 80ACC4E8 AE080410 */  sw      $t0, 0x0410($s0)           ## 00000410
/* 025CC 80ACC4EC 0C028800 */  jal     SkelAnime_GetFrameCount

/* 025D0 80ACC4F0 2484C1C4 */  addiu   $a0, $a0, 0xC1C4           ## $a0 = 0600C1C4
/* 025D4 80ACC4F4 44824000 */  mtc1    $v0, $f8                   ## $f8 = 0.00
/* 025D8 80ACC4F8 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 025DC 80ACC4FC 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 025E0 80ACC500 468042A0 */  cvt.s.w $f10, $f8
/* 025E4 80ACC504 44818000 */  mtc1    $at, $f16                  ## $f16 = 5.00
/* 025E8 80ACC508 8E0403DC */  lw      $a0, 0x03DC($s0)           ## 000003DC
/* 025EC 80ACC50C 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 025F0 80ACC510 44070000 */  mfc1    $a3, $f0
/* 025F4 80ACC514 24A5C1C4 */  addiu   $a1, $a1, 0xC1C4           ## $a1 = 0600C1C4
/* 025F8 80ACC518 AFA00014 */  sw      $zero, 0x0014($sp)
/* 025FC 80ACC51C E7AA0010 */  swc1    $f10, 0x0010($sp)
/* 02600 80ACC520 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 02604 80ACC524 0C029468 */  jal     SkelAnime_ChangeAnim

/* 02608 80ACC528 E7B00018 */  swc1    $f16, 0x0018($sp)
/* 0260C 80ACC52C 8FBF002C */  lw      $ra, 0x002C($sp)
.L80ACC530:
/* 02610 80ACC530 8FB00028 */  lw      $s0, 0x0028($sp)
/* 02614 80ACC534 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 02618 80ACC538 03E00008 */  jr      $ra
/* 0261C 80ACC53C 00000000 */  nop


