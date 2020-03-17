glabel BgIceObjects_Update
/* 00C24 80890434 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00C28 80890438 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00C2C 8089043C 8C990164 */  lw      $t9, 0x0164($a0)           ## 00000164
/* 00C30 80890440 0320F809 */  jalr    $ra, $t9                   
/* 00C34 80890444 00000000 */  nop
/* 00C38 80890448 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00C3C 8089044C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00C40 80890450 03E00008 */  jr      $ra                        
/* 00C44 80890454 00000000 */  nop


