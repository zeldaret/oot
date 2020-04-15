glabel func_80AEBC84
/* 01074 80AEBC84 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01078 80AEBC88 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0107C 80AEBC8C 94AE1D74 */  lhu     $t6, 0x1D74($a1)           ## 00001D74
/* 01080 80AEBC90 24010082 */  addiu   $at, $zero, 0x0082         ## $at = 00000082
/* 01084 80AEBC94 248400E4 */  addiu   $a0, $a0, 0x00E4           ## $a0 = 000000E4
/* 01088 80AEBC98 55C10004 */  bnel    $t6, $at, .L80AEBCAC       
/* 0108C 80AEBC9C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01090 80AEBCA0 0C01E245 */  jal     func_80078914              
/* 01094 80AEBCA4 24056863 */  addiu   $a1, $zero, 0x6863         ## $a1 = 00006863
/* 01098 80AEBCA8 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AEBCAC:
/* 0109C 80AEBCAC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 010A0 80AEBCB0 03E00008 */  jr      $ra                        
/* 010A4 80AEBCB4 00000000 */  nop
