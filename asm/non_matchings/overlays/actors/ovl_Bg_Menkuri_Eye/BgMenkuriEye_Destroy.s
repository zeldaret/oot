glabel BgMenkuriEye_Destroy
/* 000D8 8089BD48 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 000DC 8089BD4C 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 000E0 8089BD50 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 000E4 8089BD54 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 000E8 8089BD58 0C016F32 */  jal     func_8005BCC8              
/* 000EC 8089BD5C 24C50150 */  addiu   $a1, $a2, 0x0150           ## $a1 = 00000150
/* 000F0 8089BD60 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 000F4 8089BD64 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 000F8 8089BD68 03E00008 */  jr      $ra                        
/* 000FC 8089BD6C 00000000 */  nop


