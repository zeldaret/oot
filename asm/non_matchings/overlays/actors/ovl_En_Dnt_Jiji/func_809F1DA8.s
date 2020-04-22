glabel func_809F1DA8
/* 002C8 809F1DA8 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 002CC 809F1DAC AFB00030 */  sw      $s0, 0x0030($sp)
/* 002D0 809F1DB0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 002D4 809F1DB4 AFBF0034 */  sw      $ra, 0x0034($sp)
/* 002D8 809F1DB8 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 002DC 809F1DBC AFA5003C */  sw      $a1, 0x003C($sp)
/* 002E0 809F1DC0 0C028800 */  jal     SkelAnime_GetFrameCount

/* 002E4 809F1DC4 248412B0 */  addiu   $a0, $a0, 0x12B0           ## $a0 = 060012B0
/* 002E8 809F1DC8 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 002EC 809F1DCC 3C01C120 */  lui     $at, 0xC120                ## $at = C1200000
/* 002F0 809F1DD0 44819000 */  mtc1    $at, $f18                  ## $f18 = -10.00
/* 002F4 809F1DD4 468021A0 */  cvt.s.w $f6, $f4
/* 002F8 809F1DD8 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 002FC 809F1DDC 24190002 */  addiu   $t9, $zero, 0x0002         ## $t9 = 00000002
/* 00300 809F1DE0 24A512B0 */  addiu   $a1, $a1, 0x12B0           ## $a1 = 060012B0
/* 00304 809F1DE4 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 00308 809F1DE8 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 0030C 809F1DEC 4600320D */  trunc.w.s $f8, $f6
/* 00310 809F1DF0 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 00314 809F1DF4 440F4000 */  mfc1    $t7, $f8
/* 00318 809F1DF8 00000000 */  nop
/* 0031C 809F1DFC A60F0248 */  sh      $t7, 0x0248($s0)           ## 00000248
/* 00320 809F1E00 86180248 */  lh      $t8, 0x0248($s0)           ## 00000248
/* 00324 809F1E04 AFB90014 */  sw      $t9, 0x0014($sp)
/* 00328 809F1E08 E7B20018 */  swc1    $f18, 0x0018($sp)
/* 0032C 809F1E0C 44985000 */  mtc1    $t8, $f10                  ## $f10 = 0.00
/* 00330 809F1E10 00000000 */  nop
/* 00334 809F1E14 46805420 */  cvt.s.w $f16, $f10
/* 00338 809F1E18 0C029468 */  jal     SkelAnime_ChangeAnim

/* 0033C 809F1E1C E7B00010 */  swc1    $f16, 0x0010($sp)
/* 00340 809F1E20 2408000F */  addiu   $t0, $zero, 0x000F         ## $t0 = 0000000F
/* 00344 809F1E24 24090005 */  addiu   $t1, $zero, 0x0005         ## $t1 = 00000005
/* 00348 809F1E28 240A0014 */  addiu   $t2, $zero, 0x0014         ## $t2 = 00000014
/* 0034C 809F1E2C 240BFFFF */  addiu   $t3, $zero, 0xFFFF         ## $t3 = FFFFFFFF
/* 00350 809F1E30 240C000A */  addiu   $t4, $zero, 0x000A         ## $t4 = 0000000A
/* 00354 809F1E34 AFAC0020 */  sw      $t4, 0x0020($sp)
/* 00358 809F1E38 AFAB001C */  sw      $t3, 0x001C($sp)
/* 0035C 809F1E3C AFAA0018 */  sw      $t2, 0x0018($sp)
/* 00360 809F1E40 AFA90014 */  sw      $t1, 0x0014($sp)
/* 00364 809F1E44 AFA80010 */  sw      $t0, 0x0010($sp)
/* 00368 809F1E48 8FA4003C */  lw      $a0, 0x003C($sp)
/* 0036C 809F1E4C 26050024 */  addiu   $a1, $s0, 0x0024           ## $a1 = 00000024
/* 00370 809F1E50 3C0640C0 */  lui     $a2, 0x40C0                ## $a2 = 40C00000
/* 00374 809F1E54 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 00378 809F1E58 0C00A5E9 */  jal     func_800297A4
/* 0037C 809F1E5C AFA00024 */  sw      $zero, 0x0024($sp)
/* 00380 809F1E60 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00384 809F1E64 0C00BE0A */  jal     Audio_PlayActorSound2

/* 00388 809F1E68 2405387C */  addiu   $a1, $zero, 0x387C         ## $a1 = 0000387C
/* 0038C 809F1E6C 3C0D809F */  lui     $t5, %hi(func_809F1E8C)    ## $t5 = 809F0000
/* 00390 809F1E70 25AD1E8C */  addiu   $t5, $t5, %lo(func_809F1E8C) ## $t5 = 809F1E8C
/* 00394 809F1E74 AE0D022C */  sw      $t5, 0x022C($s0)           ## 0000022C
/* 00398 809F1E78 8FBF0034 */  lw      $ra, 0x0034($sp)
/* 0039C 809F1E7C 8FB00030 */  lw      $s0, 0x0030($sp)
/* 003A0 809F1E80 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 003A4 809F1E84 03E00008 */  jr      $ra
/* 003A8 809F1E88 00000000 */  nop
