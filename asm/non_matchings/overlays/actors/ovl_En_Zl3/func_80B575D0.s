glabel func_80B575D0
/* 04220 80B575D0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 04224 80B575D4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 04228 80B575D8 0C2D5CFF */  jal     func_80B573FC              
/* 0422C 80B575DC 3C064248 */  lui     $a2, 0x4248                ## $a2 = 42480000
/* 04230 80B575E0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 04234 80B575E4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 04238 80B575E8 03E00008 */  jr      $ra                        
/* 0423C 80B575EC 00000000 */  nop
