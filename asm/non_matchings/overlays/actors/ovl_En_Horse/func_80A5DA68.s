glabel func_80A5DA68
/* 02778 80A5DA68 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 0277C 80A5DA6C AFBF002C */  sw      $ra, 0x002C($sp)
/* 02780 80A5DA70 AFB00028 */  sw      $s0, 0x0028($sp)
/* 02784 80A5DA74 8C980158 */  lw      $t8, 0x0158($a0)           ## 00000158
/* 02788 80A5DA78 240E0009 */  addiu   $t6, $zero, 0x0009         ## $t6 = 00000009
/* 0278C 80A5DA7C 240F0005 */  addiu   $t7, $zero, 0x0005         ## $t7 = 00000005
/* 02790 80A5DA80 3C0880A6 */  lui     $t0, %hi(D_80A65E58)       ## $t0 = 80A60000
/* 02794 80A5DA84 0018C880 */  sll     $t9, $t8,  2
/* 02798 80A5DA88 AC8E014C */  sw      $t6, 0x014C($a0)           ## 0000014C
/* 0279C 80A5DA8C AC8F0210 */  sw      $t7, 0x0210($a0)           ## 00000210
/* 027A0 80A5DA90 01194021 */  addu    $t0, $t0, $t9
/* 027A4 80A5DA94 8D085E58 */  lw      $t0, %lo(D_80A65E58)($t0)
/* 027A8 80A5DA98 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 027AC 80A5DA9C 0C028800 */  jal     SkelAnime_GetFrameCount

/* 027B0 80A5DAA0 8D040014 */  lw      $a0, 0x0014($t0)           ## 80A60014
/* 027B4 80A5DAA4 8E090158 */  lw      $t1, 0x0158($s0)           ## 00000158
/* 027B8 80A5DAA8 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 027BC 80A5DAAC 3C0B80A6 */  lui     $t3, %hi(D_80A65E58)       ## $t3 = 80A60000
/* 027C0 80A5DAB0 00095080 */  sll     $t2, $t1,  2
/* 027C4 80A5DAB4 8E0C0210 */  lw      $t4, 0x0210($s0)           ## 00000210
/* 027C8 80A5DAB8 016A5821 */  addu    $t3, $t3, $t2
/* 027CC 80A5DABC 8D6B5E58 */  lw      $t3, %lo(D_80A65E58)($t3)
/* 027D0 80A5DAC0 468021A0 */  cvt.s.w $f6, $f4
/* 027D4 80A5DAC4 000C6880 */  sll     $t5, $t4,  2
/* 027D8 80A5DAC8 3C01C040 */  lui     $at, 0xC040                ## $at = C0400000
/* 027DC 80A5DACC 016D7021 */  addu    $t6, $t3, $t5
/* 027E0 80A5DAD0 44814000 */  mtc1    $at, $f8                   ## $f8 = -3.00
/* 027E4 80A5DAD4 8DC50000 */  lw      $a1, 0x0000($t6)           ## 00000000
/* 027E8 80A5DAD8 240F0002 */  addiu   $t7, $zero, 0x0002         ## $t7 = 00000002
/* 027EC 80A5DADC AFAF0014 */  sw      $t7, 0x0014($sp)
/* 027F0 80A5DAE0 E7A60010 */  swc1    $f6, 0x0010($sp)
/* 027F4 80A5DAE4 260401AC */  addiu   $a0, $s0, 0x01AC           ## $a0 = 000001AC
/* 027F8 80A5DAE8 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 027FC 80A5DAEC 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 02800 80A5DAF0 0C029468 */  jal     SkelAnime_ChangeAnim

/* 02804 80A5DAF4 E7A80018 */  swc1    $f8, 0x0018($sp)
/* 02808 80A5DAF8 8FBF002C */  lw      $ra, 0x002C($sp)
/* 0280C 80A5DAFC 8FB00028 */  lw      $s0, 0x0028($sp)
/* 02810 80A5DB00 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 02814 80A5DB04 03E00008 */  jr      $ra
/* 02818 80A5DB08 00000000 */  nop
