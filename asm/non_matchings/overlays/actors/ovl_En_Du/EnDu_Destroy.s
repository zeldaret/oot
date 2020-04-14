glabel EnDu_Destroy
/* 0074C 809FE37C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00750 809FE380 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 00754 809FE384 AFA40018 */  sw      $a0, 0x0018($sp)
/* 00758 809FE388 AFA5001C */  sw      $a1, 0x001C($sp)
/* 0075C 809FE38C 0C0295BC */  jal     SkelAnime_Free
/* 00760 809FE390 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00764 809FE394 8FA50018 */  lw      $a1, 0x0018($sp)
/* 00768 809FE398 8FA4001C */  lw      $a0, 0x001C($sp)
/* 0076C 809FE39C 0C0170EB */  jal     ActorCollider_FreeCylinder

/* 00770 809FE3A0 24A50194 */  addiu   $a1, $a1, 0x0194           ## $a1 = 00000194
/* 00774 809FE3A4 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 00778 809FE3A8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0077C 809FE3AC 03E00008 */  jr      $ra
/* 00780 809FE3B0 00000000 */  nop
