glabel EnOssan_Destroy
/* 00A6C 80AC370C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00A70 80AC3710 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 00A74 80AC3714 AFA40018 */  sw      $a0, 0x0018($sp)
/* 00A78 80AC3718 AFA5001C */  sw      $a1, 0x001C($sp)
/* 00A7C 80AC371C 0C0295BC */  jal     SkelAnime_Free
/* 00A80 80AC3720 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00A84 80AC3724 8FA50018 */  lw      $a1, 0x0018($sp)
/* 00A88 80AC3728 8FA4001C */  lw      $a0, 0x001C($sp)
/* 00A8C 80AC372C 0C0170EB */  jal     ActorCollider_FreeCylinder

/* 00A90 80AC3730 24A50198 */  addiu   $a1, $a1, 0x0198           ## $a1 = 00000198
/* 00A94 80AC3734 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 00A98 80AC3738 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00A9C 80AC373C 03E00008 */  jr      $ra
/* 00AA0 80AC3740 00000000 */  nop
