glabel func_808A2A88
/* 00528 808A2A88 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0052C 808A2A8C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00530 808A2A90 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00534 808A2A94 8C820118 */  lw      $v0, 0x0118($a0)           ## 00000118
/* 00538 808A2A98 844E01C8 */  lh      $t6, 0x01C8($v0)           ## 000001C8
/* 0053C 808A2A9C 59C00004 */  blezl   $t6, .L808A2AB0            
/* 00540 808A2AA0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00544 808A2AA4 0C228AAF */  jal     func_808A2ABC              
/* 00548 808A2AA8 00000000 */  nop
/* 0054C 808A2AAC 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L808A2AB0:
/* 00550 808A2AB0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00554 808A2AB4 03E00008 */  jr      $ra                        
/* 00558 808A2AB8 00000000 */  nop
