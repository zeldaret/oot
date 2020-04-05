glabel func_80AEF0BC
/* 044AC 80AEF0BC 3C0E8016 */  lui     $t6, 0x8016                ## $t6 = 80160000
/* 044B0 80AEF0C0 95CEF580 */  lhu     $t6, -0x0A80($t6)          ## 8015F580
/* 044B4 80AEF0C4 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 044B8 80AEF0C8 AFBF0024 */  sw      $ra, 0x0024($sp)
/* 044BC 80AEF0CC 31CF0004 */  andi    $t7, $t6, 0x0004           ## $t7 = 00000000
/* 044C0 80AEF0D0 AFA40028 */  sw      $a0, 0x0028($sp)
/* 044C4 80AEF0D4 11E00021 */  beq     $t7, $zero, .L80AEF15C
/* 044C8 80AEF0D8 AFA5002C */  sw      $a1, 0x002C($sp)
/* 044CC 80AEF0DC 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 044D0 80AEF0E0 0C028800 */  jal     SkelAnime_GetFrameCount

/* 044D4 80AEF0E4 24847534 */  addiu   $a0, $a0, 0x7534           ## $a0 = 06007534
/* 044D8 80AEF0E8 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 044DC 80AEF0EC 3C01C100 */  lui     $at, 0xC100                ## $at = C1000000
/* 044E0 80AEF0F0 8FA30028 */  lw      $v1, 0x0028($sp)
/* 044E4 80AEF0F4 468021A0 */  cvt.s.w $f6, $f4
/* 044E8 80AEF0F8 44814000 */  mtc1    $at, $f8                   ## $f8 = -8.00
/* 044EC 80AEF0FC 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 044F0 80AEF100 24180002 */  addiu   $t8, $zero, 0x0002         ## $t8 = 00000002
/* 044F4 80AEF104 AFB80014 */  sw      $t8, 0x0014($sp)
/* 044F8 80AEF108 24A57534 */  addiu   $a1, $a1, 0x7534           ## $a1 = 06007534
/* 044FC 80AEF10C E7A60010 */  swc1    $f6, 0x0010($sp)
/* 04500 80AEF110 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 04504 80AEF114 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 04508 80AEF118 2464014C */  addiu   $a0, $v1, 0x014C           ## $a0 = 0000014C
/* 0450C 80AEF11C 0C029468 */  jal     SkelAnime_ChangeAnim

/* 04510 80AEF120 E7A80018 */  swc1    $f8, 0x0018($sp)
/* 04514 80AEF124 8FA8002C */  lw      $t0, 0x002C($sp)
/* 04518 80AEF128 8FA30028 */  lw      $v1, 0x0028($sp)
/* 0451C 80AEF12C 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 04520 80AEF130 24190037 */  addiu   $t9, $zero, 0x0037         ## $t9 = 00000037
/* 04524 80AEF134 00280821 */  addu    $at, $at, $t0
/* 04528 80AEF138 A03903DC */  sb      $t9, 0x03DC($at)           ## 000103DC
/* 0452C 80AEF13C 8C6A0004 */  lw      $t2, 0x0004($v1)           ## 00000004
/* 04530 80AEF140 2401FFF6 */  addiu   $at, $zero, 0xFFF6         ## $at = FFFFFFF6
/* 04534 80AEF144 2409001A */  addiu   $t1, $zero, 0x001A         ## $t1 = 0000001A
/* 04538 80AEF148 01415824 */  and     $t3, $t2, $at
/* 0453C 80AEF14C 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 04540 80AEF150 AC690264 */  sw      $t1, 0x0264($v1)           ## 00000264
/* 04544 80AEF154 10000002 */  beq     $zero, $zero, .L80AEF160
/* 04548 80AEF158 AC6B0004 */  sw      $t3, 0x0004($v1)           ## 00000004
.L80AEF15C:
/* 0454C 80AEF15C 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80AEF160:
/* 04550 80AEF160 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 04554 80AEF164 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 04558 80AEF168 03E00008 */  jr      $ra
/* 0455C 80AEF16C 00000000 */  nop


