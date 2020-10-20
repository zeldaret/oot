glabel func_80981CEC
/* 0467C 80981CEC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 04680 80981CF0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 04684 80981CF4 94A21D74 */  lhu     $v0, 0x1D74($a1)           ## 00001D74
/* 04688 80981CF8 240100B7 */  addiu   $at, $zero, 0x00B7         ## $at = 000000B7
/* 0468C 80981CFC 248400E4 */  addiu   $a0, $a0, 0x00E4           ## $a0 = 000000E4
/* 04690 80981D00 54410004 */  bnel    $v0, $at, .L80981D14       
/* 04694 80981D04 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 04698 80981D08 0C01E245 */  jal     func_80078914              
/* 0469C 80981D0C 240520DE */  addiu   $a1, $zero, 0x20DE         ## $a1 = 000020DE
/* 046A0 80981D10 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80981D14:
/* 046A4 80981D14 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 046A8 80981D18 03E00008 */  jr      $ra                        
/* 046AC 80981D1C 00000000 */  nop
