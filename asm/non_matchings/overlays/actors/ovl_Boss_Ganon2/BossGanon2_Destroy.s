glabel BossGanon2_Destroy
/* 0054C 808FD48C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00550 808FD490 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 00554 808FD494 AFA40018 */  sw      $a0, 0x0018($sp)
/* 00558 808FD498 AFA5001C */  sw      $a1, 0x001C($sp)
/* 0055C 808FD49C 0C0295BC */  jal     SkelAnime_Free
/* 00560 808FD4A0 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00564 808FD4A4 8FA50018 */  lw      $a1, 0x0018($sp)
/* 00568 808FD4A8 8FA4001C */  lw      $a0, 0x001C($sp)
/* 0056C 808FD4AC 0C016F32 */  jal     func_8005BCC8
/* 00570 808FD4B0 24A50424 */  addiu   $a1, $a1, 0x0424           ## $a1 = 00000424
/* 00574 808FD4B4 8FA50018 */  lw      $a1, 0x0018($sp)
/* 00578 808FD4B8 8FA4001C */  lw      $a0, 0x001C($sp)
/* 0057C 808FD4BC 0C016F32 */  jal     func_8005BCC8
/* 00580 808FD4C0 24A50444 */  addiu   $a1, $a1, 0x0444           ## $a1 = 00000444
/* 00584 808FD4C4 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 00588 808FD4C8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0058C 808FD4CC 03E00008 */  jr      $ra
/* 00590 808FD4D0 00000000 */  nop


