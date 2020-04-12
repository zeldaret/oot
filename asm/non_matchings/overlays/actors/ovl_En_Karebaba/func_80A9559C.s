glabel func_80A9559C
/* 0024C 80A9559C 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00250 80A955A0 AFA40028 */  sw      $a0, 0x0028($sp)
/* 00254 80A955A4 AFBF0024 */  sw      $ra, 0x0024($sp)
/* 00258 80A955A8 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 0025C 80A955AC 0C028800 */  jal     SkelAnime_GetFrameCount

/* 00260 80A955B0 248402B8 */  addiu   $a0, $a0, 0x02B8           ## $a0 = 060002B8
/* 00264 80A955B4 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 00268 80A955B8 3C01C040 */  lui     $at, 0xC040                ## $at = C0400000
/* 0026C 80A955BC 44814000 */  mtc1    $at, $f8                   ## $f8 = -3.00
/* 00270 80A955C0 468021A0 */  cvt.s.w $f6, $f4
/* 00274 80A955C4 8FA40028 */  lw      $a0, 0x0028($sp)
/* 00278 80A955C8 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 0027C 80A955CC 24A502B8 */  addiu   $a1, $a1, 0x02B8           ## $a1 = 060002B8
/* 00280 80A955D0 3C064080 */  lui     $a2, 0x4080                ## $a2 = 40800000
/* 00284 80A955D4 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 00288 80A955D8 E7A60010 */  swc1    $f6, 0x0010($sp)
/* 0028C 80A955DC AFA00014 */  sw      $zero, 0x0014($sp)
/* 00290 80A955E0 E7A80018 */  swc1    $f8, 0x0018($sp)
/* 00294 80A955E4 0C029468 */  jal     SkelAnime_ChangeAnim

/* 00298 80A955E8 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 0029C 80A955EC 8FA40028 */  lw      $a0, 0x0028($sp)
/* 002A0 80A955F0 0C00BE0A */  jal     Audio_PlayActorSound2

/* 002A4 80A955F4 240539E2 */  addiu   $a1, $zero, 0x39E2         ## $a1 = 000039E2
/* 002A8 80A955F8 8FAF0028 */  lw      $t7, 0x0028($sp)
/* 002AC 80A955FC 3C0E80A9 */  lui     $t6, %hi(func_80A95A38)    ## $t6 = 80A90000
/* 002B0 80A95600 25CE5A38 */  addiu   $t6, $t6, %lo(func_80A95A38) ## $t6 = 80A95A38
/* 002B4 80A95604 ADEE0190 */  sw      $t6, 0x0190($t7)           ## 00000190
/* 002B8 80A95608 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 002BC 80A9560C 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 002C0 80A95610 03E00008 */  jr      $ra
/* 002C4 80A95614 00000000 */  nop
