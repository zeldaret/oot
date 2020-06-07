glabel func_80B5772C
/* 0437C 80B5772C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 04380 80B57730 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 04384 80B57734 00A03825 */  or      $a3, $a1, $zero            ## $a3 = 00000000
/* 04388 80B57738 8C8503C4 */  lw      $a1, 0x03C4($a0)           ## 000003C4
/* 0438C 80B5773C 0C00B2ED */  jal     Flags_UnsetSwitch
              
/* 04390 80B57740 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 04394 80B57744 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 04398 80B57748 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0439C 80B5774C 03E00008 */  jr      $ra                        
/* 043A0 80B57750 00000000 */  nop
