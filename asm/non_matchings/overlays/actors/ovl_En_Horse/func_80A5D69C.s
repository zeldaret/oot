glabel func_80A5D69C
/* 023AC 80A5D69C 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 023B0 80A5D6A0 AFBF002C */  sw      $ra, 0x002C($sp)
/* 023B4 80A5D6A4 AFB00028 */  sw      $s0, 0x0028($sp)
/* 023B8 80A5D6A8 8C980158 */  lw      $t8, 0x0158($a0)           ## 00000158
/* 023BC 80A5D6AC 240E0008 */  addiu   $t6, $zero, 0x0008         ## $t6 = 00000008
/* 023C0 80A5D6B0 240F0004 */  addiu   $t7, $zero, 0x0004         ## $t7 = 00000004
/* 023C4 80A5D6B4 3C0880A6 */  lui     $t0, %hi(D_80A65E58)       ## $t0 = 80A60000
/* 023C8 80A5D6B8 0018C880 */  sll     $t9, $t8,  2
/* 023CC 80A5D6BC AC8E014C */  sw      $t6, 0x014C($a0)           ## 0000014C
/* 023D0 80A5D6C0 AC800218 */  sw      $zero, 0x0218($a0)         ## 00000218
/* 023D4 80A5D6C4 AC8F0210 */  sw      $t7, 0x0210($a0)           ## 00000210
/* 023D8 80A5D6C8 A480037C */  sh      $zero, 0x037C($a0)         ## 0000037C
/* 023DC 80A5D6CC 01194021 */  addu    $t0, $t0, $t9
/* 023E0 80A5D6D0 8D085E58 */  lw      $t0, %lo(D_80A65E58)($t0)
/* 023E4 80A5D6D4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 023E8 80A5D6D8 0C028800 */  jal     Animation_GetLastFrame

/* 023EC 80A5D6DC 8D040010 */  lw      $a0, 0x0010($t0)           ## 80A60010
/* 023F0 80A5D6E0 8E090158 */  lw      $t1, 0x0158($s0)           ## 00000158
/* 023F4 80A5D6E4 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 023F8 80A5D6E8 3C0B80A6 */  lui     $t3, %hi(D_80A65E58)       ## $t3 = 80A60000
/* 023FC 80A5D6EC 00095080 */  sll     $t2, $t1,  2
/* 02400 80A5D6F0 8E0C0210 */  lw      $t4, 0x0210($s0)           ## 00000210
/* 02404 80A5D6F4 016A5821 */  addu    $t3, $t3, $t2
/* 02408 80A5D6F8 8D6B5E58 */  lw      $t3, %lo(D_80A65E58)($t3)
/* 0240C 80A5D6FC 468021A0 */  cvt.s.w $f6, $f4
/* 02410 80A5D700 000C6880 */  sll     $t5, $t4,  2
/* 02414 80A5D704 3C01C040 */  lui     $at, 0xC040                ## $at = C0400000
/* 02418 80A5D708 016D7021 */  addu    $t6, $t3, $t5
/* 0241C 80A5D70C 44814000 */  mtc1    $at, $f8                   ## $f8 = -3.00
/* 02420 80A5D710 8DC50000 */  lw      $a1, 0x0000($t6)           ## 00000000
/* 02424 80A5D714 240F0002 */  addiu   $t7, $zero, 0x0002         ## $t7 = 00000002
/* 02428 80A5D718 AFAF0014 */  sw      $t7, 0x0014($sp)
/* 0242C 80A5D71C E7A60010 */  swc1    $f6, 0x0010($sp)
/* 02430 80A5D720 260401AC */  addiu   $a0, $s0, 0x01AC           ## $a0 = 000001AC
/* 02434 80A5D724 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 02438 80A5D728 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 0243C 80A5D72C 0C029468 */  jal     Animation_Change

/* 02440 80A5D730 E7A80018 */  swc1    $f8, 0x0018($sp)
/* 02444 80A5D734 8FBF002C */  lw      $ra, 0x002C($sp)
/* 02448 80A5D738 8FB00028 */  lw      $s0, 0x0028($sp)
/* 0244C 80A5D73C 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 02450 80A5D740 03E00008 */  jr      $ra
/* 02454 80A5D744 00000000 */  nop
