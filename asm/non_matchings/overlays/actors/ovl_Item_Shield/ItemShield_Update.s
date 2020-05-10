glabel ItemShield_Update
/* 00754 80B87074 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00758 80B87078 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0075C 80B8707C 8C990208 */  lw      $t9, 0x0208($a0)           ## 00000208
/* 00760 80B87080 0320F809 */  jalr    $ra, $t9                   
/* 00764 80B87084 00000000 */  nop
/* 00768 80B87088 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0076C 80B8708C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00770 80B87090 03E00008 */  jr      $ra                        
/* 00774 80B87094 00000000 */  nop
