glabel EnSiofuki_Update
/* 009F4 80AFC574 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 009F8 80AFC578 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 009FC 80AFC57C 8C990164 */  lw      $t9, 0x0164($a0)           ## 00000164
/* 00A00 80AFC580 0320F809 */  jalr    $ra, $t9                   
/* 00A04 80AFC584 00000000 */  nop
/* 00A08 80AFC588 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00A0C 80AFC58C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00A10 80AFC590 03E00008 */  jr      $ra                        
/* 00A14 80AFC594 00000000 */  nop
