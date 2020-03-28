glabel EnZl1_Destroy
/* 002A0 80B4ADE0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 002A4 80B4ADE4 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 002A8 80B4ADE8 AFA40018 */  sw      $a0, 0x0018($sp)
/* 002AC 80B4ADEC AFA5001C */  sw      $a1, 0x001C($sp)
/* 002B0 80B4ADF0 0C0295BC */  jal     SkelAnime_Free
/* 002B4 80B4ADF4 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 002B8 80B4ADF8 8FA50018 */  lw      $a1, 0x0018($sp)
/* 002BC 80B4ADFC 8FA4001C */  lw      $a0, 0x001C($sp)
/* 002C0 80B4AE00 0C0170EB */  jal     ActorCollider_FreeCylinder

/* 002C4 80B4AE04 24A50194 */  addiu   $a1, $a1, 0x0194           ## $a1 = 00000194
/* 002C8 80B4AE08 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 002CC 80B4AE0C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 002D0 80B4AE10 03E00008 */  jr      $ra
/* 002D4 80B4AE14 00000000 */  nop


