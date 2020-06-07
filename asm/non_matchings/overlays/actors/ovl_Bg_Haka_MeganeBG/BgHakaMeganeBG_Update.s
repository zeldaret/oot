glabel BgHakaMeganeBG_Update
/* 00528 8087E358 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0052C 8087E35C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00530 8087E360 8C990164 */  lw      $t9, 0x0164($a0)           ## 00000164
/* 00534 8087E364 0320F809 */  jalr    $ra, $t9                   
/* 00538 8087E368 00000000 */  nop
/* 0053C 8087E36C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00540 8087E370 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00544 8087E374 03E00008 */  jr      $ra                        
/* 00548 8087E378 00000000 */  nop
