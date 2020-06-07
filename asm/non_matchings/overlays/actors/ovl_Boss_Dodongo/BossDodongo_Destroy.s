glabel BossDodongo_Destroy
/* 00AB8 808C1C48 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00ABC 808C1C4C AFBF0014 */  sw      $ra, 0x0014($sp)
/* 00AC0 808C1C50 AFA40018 */  sw      $a0, 0x0018($sp)
/* 00AC4 808C1C54 AFA5001C */  sw      $a1, 0x001C($sp)
/* 00AC8 808C1C58 0C0295BC */  jal     SkelAnime_Free
/* 00ACC 808C1C5C 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00AD0 808C1C60 8FA50018 */  lw      $a1, 0x0018($sp)
/* 00AD4 808C1C64 8FA4001C */  lw      $a0, 0x001C($sp)
/* 00AD8 808C1C68 0C016F32 */  jal     Collider_DestroyJntSph
/* 00ADC 808C1C6C 24A50440 */  addiu   $a1, $a1, 0x0440           ## $a1 = 00000440
/* 00AE0 808C1C70 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 00AE4 808C1C74 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00AE8 808C1C78 03E00008 */  jr      $ra
/* 00AEC 808C1C7C 00000000 */  nop
