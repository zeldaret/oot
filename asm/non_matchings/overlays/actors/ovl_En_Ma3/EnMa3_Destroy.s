glabel EnMa3_Destroy
/* 00728 80AA31C8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0072C 80AA31CC AFBF0014 */  sw      $ra, 0x0014($sp)
/* 00730 80AA31D0 AFA40018 */  sw      $a0, 0x0018($sp)
/* 00734 80AA31D4 AFA5001C */  sw      $a1, 0x001C($sp)
/* 00738 80AA31D8 0C0295BC */  jal     SkelAnime_Free
/* 0073C 80AA31DC 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00740 80AA31E0 8FA50018 */  lw      $a1, 0x0018($sp)
/* 00744 80AA31E4 8FA4001C */  lw      $a0, 0x001C($sp)
/* 00748 80AA31E8 0C0170EB */  jal     ActorCollider_FreeCylinder

/* 0074C 80AA31EC 24A50194 */  addiu   $a1, $a1, 0x0194           ## $a1 = 00000194
/* 00750 80AA31F0 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 00754 80AA31F4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00758 80AA31F8 03E00008 */  jr      $ra
/* 0075C 80AA31FC 00000000 */  nop
