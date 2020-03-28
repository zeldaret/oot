glabel DemoSa_Destroy
/* 00000 8098E460 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00004 8098E464 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 00008 8098E468 0C0295BC */  jal     SkelAnime_Free
/* 0000C 8098E46C 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00010 8098E470 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 00014 8098E474 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00018 8098E478 03E00008 */  jr      $ra
/* 0001C 8098E47C 00000000 */  nop


