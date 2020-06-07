glabel func_80B00370
/* 020C0 80B00370 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 020C4 80B00374 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 020C8 80B00378 0C2BF8CE */  jal     func_80AFE338              
/* 020CC 80B0037C 24050016 */  addiu   $a1, $zero, 0x0016         ## $a1 = 00000016
/* 020D0 80B00380 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 020D4 80B00384 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 020D8 80B00388 03E00008 */  jr      $ra                        
/* 020DC 80B0038C 00000000 */  nop
