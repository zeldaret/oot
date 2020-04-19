glabel func_80B85B28
/* 00538 80B85B28 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0053C 80B85B2C AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00540 80B85B30 8FAE0018 */  lw      $t6, 0x0018($sp)           
/* 00544 80B85B34 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00548 80B85B38 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 0054C 80B85B3C 85C5001C */  lh      $a1, 0x001C($t6)           ## 0000001C
/* 00550 80B85B40 00052A03 */  sra     $a1, $a1,  8               
/* 00554 80B85B44 0C00B32C */  jal     Flags_GetTreasure
              
/* 00558 80B85B48 30A5001F */  andi    $a1, $a1, 0x001F           ## $a1 = 00000000
/* 0055C 80B85B4C 50400004 */  beql    $v0, $zero, .L80B85B60     
/* 00560 80B85B50 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00564 80B85B54 0C00B55C */  jal     Actor_Kill
              
/* 00568 80B85B58 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 0056C 80B85B5C 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B85B60:
/* 00570 80B85B60 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00574 80B85B64 03E00008 */  jr      $ra                        
/* 00578 80B85B68 00000000 */  nop
