glabel DemoDu_Destroy
/* 00000 80969AD0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00004 80969AD4 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 00008 80969AD8 0C0295BC */  jal     SkelAnime_Free
/* 0000C 80969ADC 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00010 80969AE0 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 00014 80969AE4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00018 80969AE8 03E00008 */  jr      $ra
/* 0001C 80969AEC 00000000 */  nop


