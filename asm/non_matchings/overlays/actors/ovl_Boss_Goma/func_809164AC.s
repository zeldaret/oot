glabel func_809164AC
/* 00A9C 809164AC 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00AA0 809164B0 AFA40028 */  sw      $a0, 0x0028($sp)
/* 00AA4 809164B4 AFBF0024 */  sw      $ra, 0x0024($sp)
/* 00AA8 809164B8 3C040602 */  lui     $a0, 0x0602                ## $a0 = 06020000
/* 00AAC 809164BC 0C028800 */  jal     SkelAnime_GetFrameCount

/* 00AB0 809164C0 2484EB4C */  addiu   $a0, $a0, 0xEB4C           ## $a0 = 0601EB4C
/* 00AB4 809164C4 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 00AB8 809164C8 3C01C0A0 */  lui     $at, 0xC0A0                ## $at = C0A00000
/* 00ABC 809164CC 44814000 */  mtc1    $at, $f8                   ## $f8 = -5.00
/* 00AC0 809164D0 468021A0 */  cvt.s.w $f6, $f4
/* 00AC4 809164D4 8FA40028 */  lw      $a0, 0x0028($sp)
/* 00AC8 809164D8 3C050602 */  lui     $a1, 0x0602                ## $a1 = 06020000
/* 00ACC 809164DC 24A5EB4C */  addiu   $a1, $a1, 0xEB4C           ## $a1 = 0601EB4C
/* 00AD0 809164E0 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 00AD4 809164E4 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 00AD8 809164E8 E7A60010 */  swc1    $f6, 0x0010($sp)
/* 00ADC 809164EC AFA00014 */  sw      $zero, 0x0014($sp)
/* 00AE0 809164F0 E7A80018 */  swc1    $f8, 0x0018($sp)
/* 00AE4 809164F4 0C029468 */  jal     SkelAnime_ChangeAnim

/* 00AE8 809164F8 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00AEC 809164FC 8FAF0028 */  lw      $t7, 0x0028($sp)
/* 00AF0 80916500 3C0E8092 */  lui     $t6, %hi(func_80919704)    ## $t6 = 80920000
/* 00AF4 80916504 25CE9704 */  addiu   $t6, $t6, %lo(func_80919704) ## $t6 = 80919704
/* 00AF8 80916508 24040046 */  addiu   $a0, $zero, 0x0046         ## $a0 = 00000046
/* 00AFC 8091650C 2405006E */  addiu   $a1, $zero, 0x006E         ## $a1 = 0000006E
/* 00B00 80916510 0C01DF64 */  jal     Math_Rand_S16Offset

/* 00B04 80916514 ADEE0190 */  sw      $t6, 0x0190($t7)           ## 00000190
/* 00B08 80916518 8FB80028 */  lw      $t8, 0x0028($sp)
/* 00B0C 8091651C A70201D2 */  sh      $v0, 0x01D2($t8)           ## 000001D2
/* 00B10 80916520 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 00B14 80916524 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00B18 80916528 03E00008 */  jr      $ra
/* 00B1C 8091652C 00000000 */  nop


