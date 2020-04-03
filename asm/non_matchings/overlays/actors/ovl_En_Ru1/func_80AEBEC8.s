glabel func_80AEBEC8
/* 012B8 80AEBEC8 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 012BC 80AEBECC AFA40038 */  sw      $a0, 0x0038($sp)
/* 012C0 80AEBED0 AFBF0024 */  sw      $ra, 0x0024($sp)
/* 012C4 80AEBED4 AFA5003C */  sw      $a1, 0x003C($sp)
/* 012C8 80AEBED8 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 012CC 80AEBEDC 0C2BAD16 */  jal     func_80AEB458
/* 012D0 80AEBEE0 24050006 */  addiu   $a1, $zero, 0x0006         ## $a1 = 00000006
/* 012D4 80AEBEE4 1040001A */  beq     $v0, $zero, .L80AEBF50
/* 012D8 80AEBEE8 3C040601 */  lui     $a0, 0x0601                ## $a0 = 06010000
/* 012DC 80AEBEEC 0C028800 */  jal     SkelAnime_GetFrameCount

/* 012E0 80AEBEF0 24848AA8 */  addiu   $a0, $a0, 0x8AA8           ## $a0 = 06008AA8
/* 012E4 80AEBEF4 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 012E8 80AEBEF8 8FA40038 */  lw      $a0, 0x0038($sp)
/* 012EC 80AEBEFC 8FA5003C */  lw      $a1, 0x003C($sp)
/* 012F0 80AEBF00 468021A0 */  cvt.s.w $f6, $f4
/* 012F4 80AEBF04 0C2BADCE */  jal     func_80AEB738
/* 012F8 80AEBF08 E7A6002C */  swc1    $f6, 0x002C($sp)
/* 012FC 80AEBF0C 3C01C100 */  lui     $at, 0xC100                ## $at = C1000000
/* 01300 80AEBF10 44815000 */  mtc1    $at, $f10                  ## $f10 = -8.00
/* 01304 80AEBF14 8FA40038 */  lw      $a0, 0x0038($sp)
/* 01308 80AEBF18 C7A8002C */  lwc1    $f8, 0x002C($sp)
/* 0130C 80AEBF1C 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 01310 80AEBF20 240E0002 */  addiu   $t6, $zero, 0x0002         ## $t6 = 00000002
/* 01314 80AEBF24 AFAE0014 */  sw      $t6, 0x0014($sp)
/* 01318 80AEBF28 24A58AA8 */  addiu   $a1, $a1, 0x8AA8           ## $a1 = 06008AA8
/* 0131C 80AEBF2C 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 01320 80AEBF30 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 01324 80AEBF34 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 01328 80AEBF38 E7AA0018 */  swc1    $f10, 0x0018($sp)
/* 0132C 80AEBF3C 0C029468 */  jal     SkelAnime_ChangeAnim

/* 01330 80AEBF40 E7A80010 */  swc1    $f8, 0x0010($sp)
/* 01334 80AEBF44 8FB80038 */  lw      $t8, 0x0038($sp)
/* 01338 80AEBF48 240F0004 */  addiu   $t7, $zero, 0x0004         ## $t7 = 00000004
/* 0133C 80AEBF4C AF0F0264 */  sw      $t7, 0x0264($t8)           ## 00000264
.L80AEBF50:
/* 01340 80AEBF50 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 01344 80AEBF54 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 01348 80AEBF58 03E00008 */  jr      $ra
/* 0134C 80AEBF5C 00000000 */  nop


