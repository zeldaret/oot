glabel EnMa1_Destroy
/* 006C0 80AA0D50 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 006C4 80AA0D54 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 006C8 80AA0D58 AFA40018 */  sw      $a0, 0x0018($sp)
/* 006CC 80AA0D5C AFA5001C */  sw      $a1, 0x001C($sp)
/* 006D0 80AA0D60 0C0295BC */  jal     SkelAnime_Free
/* 006D4 80AA0D64 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 006D8 80AA0D68 8FA50018 */  lw      $a1, 0x0018($sp)
/* 006DC 80AA0D6C 8FA4001C */  lw      $a0, 0x001C($sp)
/* 006E0 80AA0D70 0C0170EB */  jal     ActorCollider_FreeCylinder

/* 006E4 80AA0D74 24A50194 */  addiu   $a1, $a1, 0x0194           ## $a1 = 00000194
/* 006E8 80AA0D78 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 006EC 80AA0D7C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 006F0 80AA0D80 03E00008 */  jr      $ra
/* 006F4 80AA0D84 00000000 */  nop
