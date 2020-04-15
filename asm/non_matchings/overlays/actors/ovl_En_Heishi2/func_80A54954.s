glabel func_80A54954
/* 01AB4 80A54954 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 01AB8 80A54958 AFA40028 */  sw      $a0, 0x0028($sp)
/* 01ABC 80A5495C AFBF0024 */  sw      $ra, 0x0024($sp)
/* 01AC0 80A54960 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 01AC4 80A54964 AFA5002C */  sw      $a1, 0x002C($sp)
/* 01AC8 80A54968 0C028800 */  jal     SkelAnime_GetFrameCount

/* 01ACC 80A5496C 24845C30 */  addiu   $a0, $a0, 0x5C30           ## $a0 = 06005C30
/* 01AD0 80A54970 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 01AD4 80A54974 3C01C120 */  lui     $at, 0xC120                ## $at = C1200000
/* 01AD8 80A54978 44819000 */  mtc1    $at, $f18                  ## $f18 = -10.00
/* 01ADC 80A5497C 468021A0 */  cvt.s.w $f6, $f4
/* 01AE0 80A54980 8FA40028 */  lw      $a0, 0x0028($sp)
/* 01AE4 80A54984 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 01AE8 80A54988 24A55C30 */  addiu   $a1, $a1, 0x5C30           ## $a1 = 06005C30
/* 01AEC 80A5498C 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 01AF0 80A54990 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 01AF4 80A54994 4600320D */  trunc.w.s $f8, $f6
/* 01AF8 80A54998 AFA00014 */  sw      $zero, 0x0014($sp)
/* 01AFC 80A5499C E7B20018 */  swc1    $f18, 0x0018($sp)
/* 01B00 80A549A0 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 01B04 80A549A4 440F4000 */  mfc1    $t7, $f8
/* 01B08 80A549A8 00000000 */  nop
/* 01B0C 80A549AC 000FC400 */  sll     $t8, $t7, 16
/* 01B10 80A549B0 0018CC03 */  sra     $t9, $t8, 16
/* 01B14 80A549B4 44995000 */  mtc1    $t9, $f10                  ## $f10 = 0.00
/* 01B18 80A549B8 00000000 */  nop
/* 01B1C 80A549BC 46805420 */  cvt.s.w $f16, $f10
/* 01B20 80A549C0 0C029468 */  jal     SkelAnime_ChangeAnim

/* 01B24 80A549C4 E7B00010 */  swc1    $f16, 0x0010($sp)
/* 01B28 80A549C8 8FA90028 */  lw      $t1, 0x0028($sp)
/* 01B2C 80A549CC 3C0880A5 */  lui     $t0, %hi(func_80A549E8)    ## $t0 = 80A50000
/* 01B30 80A549D0 250849E8 */  addiu   $t0, $t0, %lo(func_80A549E8) ## $t0 = 80A549E8
/* 01B34 80A549D4 AD28025C */  sw      $t0, 0x025C($t1)           ## 0000025C
/* 01B38 80A549D8 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 01B3C 80A549DC 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 01B40 80A549E0 03E00008 */  jr      $ra
/* 01B44 80A549E4 00000000 */  nop
