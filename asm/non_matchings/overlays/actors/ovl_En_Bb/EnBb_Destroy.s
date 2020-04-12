glabel EnBb_Destroy
/* 00628 809B8908 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0062C 809B890C 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00630 809B8910 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00634 809B8914 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00638 809B8918 0C016F32 */  jal     func_8005BCC8              
/* 0063C 809B891C 24C502AC */  addiu   $a1, $a2, 0x02AC           ## $a1 = 000002AC
/* 00640 809B8920 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00644 809B8924 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00648 809B8928 03E00008 */  jr      $ra                        
/* 0064C 809B892C 00000000 */  nop
