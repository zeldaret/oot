glabel EnNwc_Update
/* 00910 80ABC9F0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00914 80ABC9F4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00918 80ABC9F8 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 0091C 80ABC9FC AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00920 80ABCA00 8C990730 */  lw      $t9, 0x0730($a0)           ## 00000730
/* 00924 80ABCA04 0320F809 */  jalr    $ra, $t9                   
/* 00928 80ABCA08 00000000 */  nop
/* 0092C 80ABCA0C 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 00930 80ABCA10 8FA70018 */  lw      $a3, 0x0018($sp)           
/* 00934 80ABCA14 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00938 80ABCA18 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 0093C 80ABCA1C 00812821 */  addu    $a1, $a0, $at              
/* 00940 80ABCA20 0C01767D */  jal     Actor_CollisionCheck_SetAC
              ## CollisionCheck_setAC
/* 00944 80ABCA24 24E6014C */  addiu   $a2, $a3, 0x014C           ## $a2 = 0000014C
/* 00948 80ABCA28 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0094C 80ABCA2C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00950 80ABCA30 03E00008 */  jr      $ra                        
/* 00954 80ABCA34 00000000 */  nop
