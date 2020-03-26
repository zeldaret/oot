glabel DemoEc_Destroy
/* 00000 8096D4B0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00004 8096D4B4 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 00008 8096D4B8 0C0295BC */  jal     SkelAnime_Free
/* 0000C 8096D4BC 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00010 8096D4C0 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 00014 8096D4C4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00018 8096D4C8 03E00008 */  jr      $ra
/* 0001C 8096D4CC 00000000 */  nop


