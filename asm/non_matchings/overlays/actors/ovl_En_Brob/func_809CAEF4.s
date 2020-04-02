glabel func_809CAEF4
/* 003E4 809CAEF4 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 003E8 809CAEF8 AFB00020 */  sw      $s0, 0x0020($sp)
/* 003EC 809CAEFC 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 003F0 809CAF00 AFBF0024 */  sw      $ra, 0x0024($sp)
/* 003F4 809CAF04 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 003F8 809CAF08 24A50290 */  addiu   $a1, $a1, 0x0290           ## $a1 = 06000290
/* 003FC 809CAF0C 24840164 */  addiu   $a0, $a0, 0x0164           ## $a0 = 00000164
/* 00400 809CAF10 0C029490 */  jal     SkelAnime_ChangeAnimTransitionStop
/* 00404 809CAF14 3C06C0A0 */  lui     $a2, 0xC0A0                ## $a2 = C0A00000
/* 00408 809CAF18 860E01AE */  lh      $t6, 0x01AE($s0)           ## 000001AE
/* 0040C 809CAF1C 3C0142FA */  lui     $at, 0x42FA                ## $at = 42FA0000
/* 00410 809CAF20 44814000 */  mtc1    $at, $f8                   ## $f8 = 125.00
/* 00414 809CAF24 448E2000 */  mtc1    $t6, $f4                   ## $f4 = 0.00
/* 00418 809CAF28 24190050 */  addiu   $t9, $zero, 0x0050         ## $t9 = 00000050
/* 0041C 809CAF2C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00420 809CAF30 468021A0 */  cvt.s.w $f6, $f4
/* 00424 809CAF34 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00428 809CAF38 240600FF */  addiu   $a2, $zero, 0x00FF         ## $a2 = 000000FF
/* 0042C 809CAF3C 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 00430 809CAF40 46083281 */  sub.s   $f10, $f6, $f8
/* 00434 809CAF44 4600540D */  trunc.w.s $f16, $f10
/* 00438 809CAF48 44188000 */  mfc1    $t8, $f16
/* 0043C 809CAF4C 00000000 */  nop
/* 00440 809CAF50 A61801AE */  sh      $t8, 0x01AE($s0)           ## 000001AE
/* 00444 809CAF54 0C00D09B */  jal     func_8003426C
/* 00448 809CAF58 AFB90010 */  sw      $t9, 0x0010($sp)
/* 0044C 809CAF5C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00450 809CAF60 0C00BE0A */  jal     Audio_PlayActorSound2

/* 00454 809CAF64 2405389E */  addiu   $a1, $zero, 0x389E         ## $a1 = 0000389E
/* 00458 809CAF68 3C08809D */  lui     $t0, %hi(func_809CB2B8)    ## $t0 = 809D0000
/* 0045C 809CAF6C 2508B2B8 */  addiu   $t0, $t0, %lo(func_809CB2B8) ## $t0 = 809CB2B8
/* 00460 809CAF70 AE0801A8 */  sw      $t0, 0x01A8($s0)           ## 000001A8
/* 00464 809CAF74 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 00468 809CAF78 8FB00020 */  lw      $s0, 0x0020($sp)
/* 0046C 809CAF7C 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00470 809CAF80 03E00008 */  jr      $ra
/* 00474 809CAF84 00000000 */  nop


