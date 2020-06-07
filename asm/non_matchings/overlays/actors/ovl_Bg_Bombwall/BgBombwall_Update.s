glabel BgBombwall_Update
/* 006F8 8086EEC8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 006FC 8086EECC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00700 8086EED0 8C820298 */  lw      $v0, 0x0298($a0)           ## 00000298
/* 00704 8086EED4 50400004 */  beql    $v0, $zero, .L8086EEE8     
/* 00708 8086EED8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0070C 8086EEDC 0040F809 */  jalr    $ra, $v0                   
/* 00710 8086EEE0 00000000 */  nop
/* 00714 8086EEE4 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L8086EEE8:
/* 00718 8086EEE8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0071C 8086EEEC 03E00008 */  jr      $ra                        
/* 00720 8086EEF0 00000000 */  nop
