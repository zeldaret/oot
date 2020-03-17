glabel ObjMure3_Update
/* 006A0 80B9B070 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 006A4 80B9B074 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 006A8 80B9B078 8C99014C */  lw      $t9, 0x014C($a0)           ## 0000014C
/* 006AC 80B9B07C 0320F809 */  jalr    $ra, $t9                   
/* 006B0 80B9B080 00000000 */  nop
/* 006B4 80B9B084 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 006B8 80B9B088 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 006BC 80B9B08C 03E00008 */  jr      $ra                        
/* 006C0 80B9B090 00000000 */  nop
/* 006C4 80B9B094 00000000 */  nop
/* 006C8 80B9B098 00000000 */  nop
/* 006CC 80B9B09C 00000000 */  nop

