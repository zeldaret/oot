glabel EnMu_Destroy
/* 002E4 80AB0704 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 002E8 80AB0708 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 002EC 80AB070C 0C0295BC */  jal     SkelAnime_Free
/* 002F0 80AB0710 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 002F4 80AB0714 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 002F8 80AB0718 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 002FC 80AB071C 03E00008 */  jr      $ra
/* 00300 80AB0720 00000000 */  nop


