glabel func_809F1EFC
/* 0041C 809F1EFC 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 00420 809F1F00 AFB00030 */  sw      $s0, 0x0030($sp)
/* 00424 809F1F04 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00428 809F1F08 AFBF0034 */  sw      $ra, 0x0034($sp)
/* 0042C 809F1F0C 3C040600 */  lui     $a0, %hi(D_06000DF8)                ## $a0 = 06000000
/* 00430 809F1F10 AFA5003C */  sw      $a1, 0x003C($sp)
/* 00434 809F1F14 0C028800 */  jal     SkelAnime_GetFrameCount

/* 00438 809F1F18 24840DF8 */  addiu   $a0, $a0, %lo(D_06000DF8)           ## $a0 = 06000DF8
/* 0043C 809F1F1C 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 00440 809F1F20 3C01C120 */  lui     $at, 0xC120                ## $at = C1200000
/* 00444 809F1F24 44819000 */  mtc1    $at, $f18                  ## $f18 = -10.00
/* 00448 809F1F28 468021A0 */  cvt.s.w $f6, $f4
/* 0044C 809F1F2C 3C050600 */  lui     $a1, %hi(D_06000DF8)                ## $a1 = 06000000
/* 00450 809F1F30 24190002 */  addiu   $t9, $zero, 0x0002         ## $t9 = 00000002
/* 00454 809F1F34 24A50DF8 */  addiu   $a1, $a1, %lo(D_06000DF8)           ## $a1 = 06000DF8
/* 00458 809F1F38 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 0045C 809F1F3C 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 00460 809F1F40 4600320D */  trunc.w.s $f8, $f6
/* 00464 809F1F44 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 00468 809F1F48 440F4000 */  mfc1    $t7, $f8
/* 0046C 809F1F4C 00000000 */  nop
/* 00470 809F1F50 A60F0248 */  sh      $t7, 0x0248($s0)           ## 00000248
/* 00474 809F1F54 86180248 */  lh      $t8, 0x0248($s0)           ## 00000248
/* 00478 809F1F58 AFB90014 */  sw      $t9, 0x0014($sp)
/* 0047C 809F1F5C E7B20018 */  swc1    $f18, 0x0018($sp)
/* 00480 809F1F60 44985000 */  mtc1    $t8, $f10                  ## $f10 = 0.00
/* 00484 809F1F64 00000000 */  nop
/* 00488 809F1F68 46805420 */  cvt.s.w $f16, $f10
/* 0048C 809F1F6C 0C029468 */  jal     SkelAnime_ChangeAnim

/* 00490 809F1F70 E7B00010 */  swc1    $f16, 0x0010($sp)
/* 00494 809F1F74 2408000F */  addiu   $t0, $zero, 0x000F         ## $t0 = 0000000F
/* 00498 809F1F78 24090005 */  addiu   $t1, $zero, 0x0005         ## $t1 = 00000005
/* 0049C 809F1F7C 240A0014 */  addiu   $t2, $zero, 0x0014         ## $t2 = 00000014
/* 004A0 809F1F80 240BFFFF */  addiu   $t3, $zero, 0xFFFF         ## $t3 = FFFFFFFF
/* 004A4 809F1F84 240C000A */  addiu   $t4, $zero, 0x000A         ## $t4 = 0000000A
/* 004A8 809F1F88 AFAC0020 */  sw      $t4, 0x0020($sp)
/* 004AC 809F1F8C AFAB001C */  sw      $t3, 0x001C($sp)
/* 004B0 809F1F90 AFAA0018 */  sw      $t2, 0x0018($sp)
/* 004B4 809F1F94 AFA90014 */  sw      $t1, 0x0014($sp)
/* 004B8 809F1F98 AFA80010 */  sw      $t0, 0x0010($sp)
/* 004BC 809F1F9C 8FA4003C */  lw      $a0, 0x003C($sp)
/* 004C0 809F1FA0 26050024 */  addiu   $a1, $s0, 0x0024           ## $a1 = 00000024
/* 004C4 809F1FA4 3C0640C0 */  lui     $a2, 0x40C0                ## $a2 = 40C00000
/* 004C8 809F1FA8 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 004CC 809F1FAC 0C00A5E9 */  jal     EffectSsHahen_SpawnBurst
/* 004D0 809F1FB0 AFA00024 */  sw      $zero, 0x0024($sp)
/* 004D4 809F1FB4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 004D8 809F1FB8 0C00BE0A */  jal     Audio_PlayActorSound2

/* 004DC 809F1FBC 2405387C */  addiu   $a1, $zero, 0x387C         ## $a1 = 0000387C
/* 004E0 809F1FC0 3C0D809F */  lui     $t5, %hi(func_809F1FE0)    ## $t5 = 809F0000
/* 004E4 809F1FC4 25AD1FE0 */  addiu   $t5, $t5, %lo(func_809F1FE0) ## $t5 = 809F1FE0
/* 004E8 809F1FC8 AE0D022C */  sw      $t5, 0x022C($s0)           ## 0000022C
/* 004EC 809F1FCC 8FBF0034 */  lw      $ra, 0x0034($sp)
/* 004F0 809F1FD0 8FB00030 */  lw      $s0, 0x0030($sp)
/* 004F4 809F1FD4 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 004F8 809F1FD8 03E00008 */  jr      $ra
/* 004FC 809F1FDC 00000000 */  nop
