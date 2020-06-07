glabel BgHidanHrock_Update
/* 00668 80889798 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0066C 8088979C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00670 808897A0 8C990164 */  lw      $t9, 0x0164($a0)           ## 00000164
/* 00674 808897A4 0320F809 */  jalr    $ra, $t9                   
/* 00678 808897A8 00000000 */  nop
/* 0067C 808897AC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00680 808897B0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00684 808897B4 03E00008 */  jr      $ra                        
/* 00688 808897B8 00000000 */  nop
