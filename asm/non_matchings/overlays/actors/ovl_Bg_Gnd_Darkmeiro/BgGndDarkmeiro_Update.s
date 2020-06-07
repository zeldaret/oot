glabel BgGndDarkmeiro_Update
/* 00568 80879198 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0056C 8087919C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00570 808791A0 8C99016C */  lw      $t9, 0x016C($a0)           ## 0000016C
/* 00574 808791A4 0320F809 */  jalr    $ra, $t9                   
/* 00578 808791A8 00000000 */  nop
/* 0057C 808791AC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00580 808791B0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00584 808791B4 03E00008 */  jr      $ra                        
/* 00588 808791B8 00000000 */  nop
