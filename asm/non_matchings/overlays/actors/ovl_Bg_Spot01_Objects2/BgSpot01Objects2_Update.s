glabel BgSpot01Objects2_Update
/* 00340 808AC480 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00344 808AC484 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00348 808AC488 8C990164 */  lw      $t9, 0x0164($a0)           ## 00000164
/* 0034C 808AC48C 0320F809 */  jalr    $ra, $t9                   
/* 00350 808AC490 00000000 */  nop
/* 00354 808AC494 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00358 808AC498 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0035C 808AC49C 03E00008 */  jr      $ra                        
/* 00360 808AC4A0 00000000 */  nop


