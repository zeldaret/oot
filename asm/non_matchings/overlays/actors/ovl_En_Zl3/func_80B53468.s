glabel func_80B53468
/* 000B8 80B53468 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 000BC 80B5346C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 000C0 80B53470 0C03E803 */  jal     Audio_SetBGM
              
/* 000C4 80B53474 24040062 */  addiu   $a0, $zero, 0x0062         ## $a0 = 00000062
/* 000C8 80B53478 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 000CC 80B5347C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 000D0 80B53480 03E00008 */  jr      $ra                        
/* 000D4 80B53484 00000000 */  nop
