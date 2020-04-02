glabel func_80A4A18C
/* 012CC 80A4A18C 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 012D0 80A4A190 AFB00028 */  sw      $s0, 0x0028($sp)
/* 012D4 80A4A194 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 012D8 80A4A198 AFBF002C */  sw      $ra, 0x002C($sp)
/* 012DC 80A4A19C 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 012E0 80A4A1A0 0C028800 */  jal     SkelAnime_GetFrameCount

/* 012E4 80A4A1A4 24840544 */  addiu   $a0, $a0, 0x0544           ## $a0 = 06000544
/* 012E8 80A4A1A8 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 012EC 80A4A1AC 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 012F0 80A4A1B0 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 012F4 80A4A1B4 468021A0 */  cvt.s.w $f6, $f4
/* 012F8 80A4A1B8 240E0002 */  addiu   $t6, $zero, 0x0002         ## $t6 = 00000002
/* 012FC 80A4A1BC 44070000 */  mfc1    $a3, $f0
/* 01300 80A4A1C0 AFAE0014 */  sw      $t6, 0x0014($sp)
/* 01304 80A4A1C4 24A50544 */  addiu   $a1, $a1, 0x0544           ## $a1 = 06000544
/* 01308 80A4A1C8 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 0130C 80A4A1CC E7A60010 */  swc1    $f6, 0x0010($sp)
/* 01310 80A4A1D0 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 01314 80A4A1D4 0C029468 */  jal     SkelAnime_ChangeAnim

/* 01318 80A4A1D8 E7A00018 */  swc1    $f0, 0x0018($sp)
/* 0131C 80A4A1DC 8618001C */  lh      $t8, 0x001C($s0)           ## 0000001C
/* 01320 80A4A1E0 3C014100 */  lui     $at, 0x4100                ## $at = 41000000
/* 01324 80A4A1E4 44814000 */  mtc1    $at, $f8                   ## $f8 = 8.00
/* 01328 80A4A1E8 3C0F80A5 */  lui     $t7, %hi(func_80A4A234)    ## $t7 = 80A50000
/* 0132C 80A4A1EC 25EFA234 */  addiu   $t7, $t7, %lo(func_80A4A234) ## $t7 = 80A4A234
/* 01330 80A4A1F0 2B010006 */  slti    $at, $t8, 0x0006
/* 01334 80A4A1F4 AE0F02B0 */  sw      $t7, 0x02B0($s0)           ## 000002B0
/* 01338 80A4A1F8 10200006 */  beq     $at, $zero, .L80A4A214
/* 0133C 80A4A1FC E6080060 */  swc1    $f8, 0x0060($s0)           ## 00000060
/* 01340 80A4A200 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01344 80A4A204 0C00BE0A */  jal     Audio_PlayActorSound2

/* 01348 80A4A208 24053817 */  addiu   $a1, $zero, 0x3817         ## $a1 = 00003817
/* 0134C 80A4A20C 10000005 */  beq     $zero, $zero, .L80A4A224
/* 01350 80A4A210 8FBF002C */  lw      $ra, 0x002C($sp)
.L80A4A214:
/* 01354 80A4A214 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01358 80A4A218 0C00BE0A */  jal     Audio_PlayActorSound2

/* 0135C 80A4A21C 2405395D */  addiu   $a1, $zero, 0x395D         ## $a1 = 0000395D
/* 01360 80A4A220 8FBF002C */  lw      $ra, 0x002C($sp)
.L80A4A224:
/* 01364 80A4A224 8FB00028 */  lw      $s0, 0x0028($sp)
/* 01368 80A4A228 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 0136C 80A4A22C 03E00008 */  jr      $ra
/* 01370 80A4A230 00000000 */  nop


