glabel BgTokiHikari_Update
/* 000A4 808B9FA4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 000A8 808B9FA8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 000AC 808B9FAC 8C990150 */  lw      $t9, 0x0150($a0)           ## 00000150
/* 000B0 808B9FB0 0320F809 */  jalr    $ra, $t9                   
/* 000B4 808B9FB4 00000000 */  nop
/* 000B8 808B9FB8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 000BC 808B9FBC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 000C0 808B9FC0 03E00008 */  jr      $ra                        
/* 000C4 808B9FC4 00000000 */  nop


