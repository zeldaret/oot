glabel func_809EDCB0
/* 00440 809EDCB0 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00444 809EDCB4 AFA40028 */  sw      $a0, 0x0028($sp)
/* 00448 809EDCB8 AFBF0024 */  sw      $ra, 0x0024($sp)
/* 0044C 809EDCBC 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 00450 809EDCC0 AFA5002C */  sw      $a1, 0x002C($sp)
/* 00454 809EDCC4 0C028800 */  jal     SkelAnime_GetFrameCount

/* 00458 809EDCC8 24842FE8 */  addiu   $a0, $a0, 0x2FE8           ## $a0 = 06002FE8
/* 0045C 809EDCCC 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 00460 809EDCD0 3C01C120 */  lui     $at, 0xC120                ## $at = C1200000
/* 00464 809EDCD4 44819000 */  mtc1    $at, $f18                  ## $f18 = -10.00
/* 00468 809EDCD8 468021A0 */  cvt.s.w $f6, $f4
/* 0046C 809EDCDC 8FA40028 */  lw      $a0, 0x0028($sp)
/* 00470 809EDCE0 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00474 809EDCE4 24A52FE8 */  addiu   $a1, $a1, 0x2FE8           ## $a1 = 06002FE8
/* 00478 809EDCE8 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 0047C 809EDCEC 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 00480 809EDCF0 4600320D */  trunc.w.s $f8, $f6
/* 00484 809EDCF4 AFA00014 */  sw      $zero, 0x0014($sp)
/* 00488 809EDCF8 E7B20018 */  swc1    $f18, 0x0018($sp)
/* 0048C 809EDCFC 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00490 809EDD00 440F4000 */  mfc1    $t7, $f8
/* 00494 809EDD04 00000000 */  nop
/* 00498 809EDD08 000FC400 */  sll     $t8, $t7, 16
/* 0049C 809EDD0C 0018CC03 */  sra     $t9, $t8, 16
/* 004A0 809EDD10 44995000 */  mtc1    $t9, $f10                  ## $f10 = 0.00
/* 004A4 809EDD14 00000000 */  nop
/* 004A8 809EDD18 46805420 */  cvt.s.w $f16, $f10
/* 004AC 809EDD1C 0C029468 */  jal     SkelAnime_ChangeAnim

/* 004B0 809EDD20 E7B00010 */  swc1    $f16, 0x0010($sp)
/* 004B4 809EDD24 8FA20028 */  lw      $v0, 0x0028($sp)
/* 004B8 809EDD28 3C09809F */  lui     $t1, %hi(func_809EDD4C)    ## $t1 = 809F0000
/* 004BC 809EDD2C 24080001 */  addiu   $t0, $zero, 0x0001         ## $t0 = 00000001
/* 004C0 809EDD30 2529DD4C */  addiu   $t1, $t1, %lo(func_809EDD4C) ## $t1 = 809EDD4C
/* 004C4 809EDD34 A048031D */  sb      $t0, 0x031D($v0)           ## 0000031D
/* 004C8 809EDD38 AC490280 */  sw      $t1, 0x0280($v0)           ## 00000280
/* 004CC 809EDD3C 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 004D0 809EDD40 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 004D4 809EDD44 03E00008 */  jr      $ra
/* 004D8 809EDD48 00000000 */  nop


