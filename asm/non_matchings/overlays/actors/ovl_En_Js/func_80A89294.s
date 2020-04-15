glabel func_80A89294
/* 00484 80A89294 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00488 80A89298 AFBF0024 */  sw      $ra, 0x0024($sp)
/* 0048C 80A8929C 3C0580A9 */  lui     $a1, %hi(func_80A891C4)    ## $a1 = 80A90000
/* 00490 80A892A0 AFA40028 */  sw      $a0, 0x0028($sp)
/* 00494 80A892A4 0C2A2384 */  jal     func_80A88E10
/* 00498 80A892A8 24A591C4 */  addiu   $a1, $a1, %lo(func_80A891C4) ## $a1 = 80A891C4
/* 0049C 80A892AC 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 004A0 80A892B0 0C028800 */  jal     SkelAnime_GetFrameCount

/* 004A4 80A892B4 2484018C */  addiu   $a0, $a0, 0x018C           ## $a0 = 0600018C
/* 004A8 80A892B8 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 004AC 80A892BC 3C01C080 */  lui     $at, 0xC080                ## $at = C0800000
/* 004B0 80A892C0 44814000 */  mtc1    $at, $f8                   ## $f8 = -4.00
/* 004B4 80A892C4 468021A0 */  cvt.s.w $f6, $f4
/* 004B8 80A892C8 8FA40028 */  lw      $a0, 0x0028($sp)
/* 004BC 80A892CC 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 004C0 80A892D0 240E0002 */  addiu   $t6, $zero, 0x0002         ## $t6 = 00000002
/* 004C4 80A892D4 AFAE0014 */  sw      $t6, 0x0014($sp)
/* 004C8 80A892D8 24A5018C */  addiu   $a1, $a1, 0x018C           ## $a1 = 0600018C
/* 004CC 80A892DC E7A60010 */  swc1    $f6, 0x0010($sp)
/* 004D0 80A892E0 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 004D4 80A892E4 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 004D8 80A892E8 E7A80018 */  swc1    $f8, 0x0018($sp)
/* 004DC 80A892EC 0C029468 */  jal     SkelAnime_ChangeAnim

/* 004E0 80A892F0 24840198 */  addiu   $a0, $a0, 0x0198           ## $a0 = 00000198
/* 004E4 80A892F4 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 004E8 80A892F8 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 004EC 80A892FC 03E00008 */  jr      $ra
/* 004F0 80A89300 00000000 */  nop
