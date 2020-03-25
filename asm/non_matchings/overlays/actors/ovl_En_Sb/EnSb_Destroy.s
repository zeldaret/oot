glabel EnSb_Destroy
/* 000E4 80AF78D4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 000E8 80AF78D8 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 000EC 80AF78DC AFA40018 */  sw      $a0, 0x0018($sp)
/* 000F0 80AF78E0 AFA5001C */  sw      $a1, 0x001C($sp)
/* 000F4 80AF78E4 0C0295BC */  jal     SkelAnime_Free
/* 000F8 80AF78E8 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 000FC 80AF78EC 8FA50018 */  lw      $a1, 0x0018($sp)
/* 00100 80AF78F0 8FA4001C */  lw      $a0, 0x001C($sp)
/* 00104 80AF78F4 0C0170EB */  jal     ActorCollider_FreeCylinder

/* 00108 80AF78F8 24A50194 */  addiu   $a1, $a1, 0x0194           ## $a1 = 00000194
/* 0010C 80AF78FC 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 00110 80AF7900 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00114 80AF7904 03E00008 */  jr      $ra
/* 00118 80AF7908 00000000 */  nop


