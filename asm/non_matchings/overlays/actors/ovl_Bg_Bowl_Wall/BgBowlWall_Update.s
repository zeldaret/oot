glabel BgBowlWall_Update
/* 00730 8086F890 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00734 8086F894 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00738 8086F898 84820182 */  lh      $v0, 0x0182($a0)           ## 00000182
/* 0073C 8086F89C 10400002 */  beq     $v0, $zero, .L8086F8A8     
/* 00740 8086F8A0 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 00744 8086F8A4 A48E0182 */  sh      $t6, 0x0182($a0)           ## 00000182
.L8086F8A8:
/* 00748 8086F8A8 8C990164 */  lw      $t9, 0x0164($a0)           ## 00000164
/* 0074C 8086F8AC 0320F809 */  jalr    $ra, $t9                   
/* 00750 8086F8B0 00000000 */  nop
/* 00754 8086F8B4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00758 8086F8B8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0075C 8086F8BC 03E00008 */  jr      $ra                        
/* 00760 8086F8C0 00000000 */  nop
