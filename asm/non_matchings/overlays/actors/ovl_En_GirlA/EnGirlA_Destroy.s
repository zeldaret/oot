glabel EnGirlA_Destroy
/* 0032C 80A3AA7C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00330 80A3AA80 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 00334 80A3AA84 8C8E019C */  lw      $t6, 0x019C($a0)           ## 0000019C
/* 00338 80A3AA88 51C00004 */  beql    $t6, $zero, .L80A3AA9C
/* 0033C 80A3AA8C 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 00340 80A3AA90 0C0295BC */  jal     SkelAnime_Free
/* 00344 80A3AA94 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00348 80A3AA98 8FBF0014 */  lw      $ra, 0x0014($sp)
.L80A3AA9C:
/* 0034C 80A3AA9C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00350 80A3AAA0 03E00008 */  jr      $ra
/* 00354 80A3AAA4 00000000 */  nop
