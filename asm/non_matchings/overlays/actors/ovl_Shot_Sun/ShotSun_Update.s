glabel ShotSun_Update
/* 005E0 80BAE2A0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 005E4 80BAE2A4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 005E8 80BAE2A8 8C990198 */  lw      $t9, 0x0198($a0)           ## 00000198
/* 005EC 80BAE2AC 0320F809 */  jalr    $ra, $t9                   
/* 005F0 80BAE2B0 00000000 */  nop
/* 005F4 80BAE2B4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 005F8 80BAE2B8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 005FC 80BAE2BC 03E00008 */  jr      $ra                        
/* 00600 80BAE2C0 00000000 */  nop
/* 00604 80BAE2C4 00000000 */  nop
/* 00608 80BAE2C8 00000000 */  nop
/* 0060C 80BAE2CC 00000000 */  nop

