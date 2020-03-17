glabel BgHaka_Update
/* 004AC 8087BB5C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 004B0 8087BB60 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 004B4 8087BB64 8C990164 */  lw      $t9, 0x0164($a0)           ## 00000164
/* 004B8 8087BB68 0320F809 */  jalr    $ra, $t9                   
/* 004BC 8087BB6C 00000000 */  nop
/* 004C0 8087BB70 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 004C4 8087BB74 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 004C8 8087BB78 03E00008 */  jr      $ra                        
/* 004CC 8087BB7C 00000000 */  nop


