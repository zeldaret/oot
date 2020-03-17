glabel BgGndIceblock_Update
/* 00C2C 8087A6CC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00C30 8087A6D0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00C34 8087A6D4 8C990164 */  lw      $t9, 0x0164($a0)           ## 00000164
/* 00C38 8087A6D8 0320F809 */  jalr    $ra, $t9                   
/* 00C3C 8087A6DC 00000000 */  nop
/* 00C40 8087A6E0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00C44 8087A6E4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00C48 8087A6E8 03E00008 */  jr      $ra                        
/* 00C4C 8087A6EC 00000000 */  nop


