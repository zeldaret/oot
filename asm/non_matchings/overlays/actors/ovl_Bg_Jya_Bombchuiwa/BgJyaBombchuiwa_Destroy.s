glabel BgJyaBombchuiwa_Destroy
/* 000EC 8089458C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 000F0 80894590 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 000F4 80894594 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 000F8 80894598 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 000FC 8089459C 0C016F32 */  jal     func_8005BCC8              
/* 00100 808945A0 24E50150 */  addiu   $a1, $a3, 0x0150           ## $a1 = 00000150
/* 00104 808945A4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00108 808945A8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0010C 808945AC 03E00008 */  jr      $ra                        
/* 00110 808945B0 00000000 */  nop
