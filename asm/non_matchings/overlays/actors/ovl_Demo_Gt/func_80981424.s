glabel func_80981424
/* 03DB4 80981424 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 03DB8 80981428 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 03DBC 8098142C 94A21D74 */  lhu     $v0, 0x1D74($a1)           ## 00001D74
/* 03DC0 80981430 24010315 */  addiu   $at, $zero, 0x0315         ## $at = 00000315
/* 03DC4 80981434 248400E4 */  addiu   $a0, $a0, 0x00E4           ## $a0 = 000000E4
/* 03DC8 80981438 54410004 */  bnel    $v0, $at, .L8098144C       
/* 03DCC 8098143C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 03DD0 80981440 0C01E245 */  jal     func_80078914              
/* 03DD4 80981444 240520DE */  addiu   $a1, $zero, 0x20DE         ## $a1 = 000020DE
/* 03DD8 80981448 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L8098144C:
/* 03DDC 8098144C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 03DE0 80981450 03E00008 */  jr      $ra                        
/* 03DE4 80981454 00000000 */  nop


