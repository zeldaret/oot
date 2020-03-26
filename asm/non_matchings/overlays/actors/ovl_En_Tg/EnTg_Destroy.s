glabel EnTg_Destroy
/* 00228 80B18588 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0022C 80B1858C AFBF0014 */  sw      $ra, 0x0014($sp)
/* 00230 80B18590 AFA40018 */  sw      $a0, 0x0018($sp)
/* 00234 80B18594 AFA5001C */  sw      $a1, 0x001C($sp)
/* 00238 80B18598 0C0295BC */  jal     SkelAnime_Free
/* 0023C 80B1859C 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00240 80B185A0 8FA50018 */  lw      $a1, 0x0018($sp)
/* 00244 80B185A4 8FA4001C */  lw      $a0, 0x001C($sp)
/* 00248 80B185A8 0C0170EB */  jal     ActorCollider_FreeCylinder

/* 0024C 80B185AC 24A50194 */  addiu   $a1, $a1, 0x0194           ## $a1 = 00000194
/* 00250 80B185B0 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 00254 80B185B4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00258 80B185B8 03E00008 */  jr      $ra
/* 0025C 80B185BC 00000000 */  nop


