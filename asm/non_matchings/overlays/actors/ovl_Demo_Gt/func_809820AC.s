glabel func_809820AC
/* 04A3C 809820AC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 04A40 809820B0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 04A44 809820B4 94A21D74 */  lhu     $v0, 0x1D74($a1)           ## 00001D74
/* 04A48 809820B8 2401009A */  addiu   $at, $zero, 0x009A         ## $at = 0000009A
/* 04A4C 809820BC 248400E4 */  addiu   $a0, $a0, 0x00E4           ## $a0 = 000000E4
/* 04A50 809820C0 54410004 */  bnel    $v0, $at, .L809820D4       
/* 04A54 809820C4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 04A58 809820C8 0C01E245 */  jal     func_80078914              
/* 04A5C 809820CC 240520DE */  addiu   $a1, $zero, 0x20DE         ## $a1 = 000020DE
/* 04A60 809820D0 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L809820D4:
/* 04A64 809820D4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 04A68 809820D8 03E00008 */  jr      $ra                        
/* 04A6C 809820DC 00000000 */  nop


