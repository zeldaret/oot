glabel Demo6K_Destroy
/* 00430 80966D80 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00434 80966D84 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00438 80966D88 8FAE0018 */  lw      $t6, 0x0018($sp)           
/* 0043C 80966D8C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00440 80966D90 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00444 80966D94 24A507A8 */  addiu   $a1, $a1, 0x07A8           ## $a1 = 000007A8
/* 00448 80966D98 0C01E9F1 */  jal     LightContext_RemoveLight
              
/* 0044C 80966D9C 8DC60160 */  lw      $a2, 0x0160($t6)           ## 00000160
/* 00450 80966DA0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00454 80966DA4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00458 80966DA8 03E00008 */  jr      $ra                        
/* 0045C 80966DAC 00000000 */  nop
