glabel func_80B02D14
/* 00AA4 80B02D14 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00AA8 80B02D18 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00AAC 80B02D1C 848E0532 */  lh      $t6, 0x0532($a0)           ## 00000532
/* 00AB0 80B02D20 11C00005 */  beq     $t6, $zero, .L80B02D38     
/* 00AB4 80B02D24 00000000 */  nop
/* 00AB8 80B02D28 0C2C0B1D */  jal     func_80B02C74              
/* 00ABC 80B02D2C 00000000 */  nop
/* 00AC0 80B02D30 10000004 */  beq     $zero, $zero, .L80B02D44   
/* 00AC4 80B02D34 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B02D38:
/* 00AC8 80B02D38 0C2C0AE7 */  jal     func_80B02B9C              
/* 00ACC 80B02D3C 00000000 */  nop
/* 00AD0 80B02D40 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B02D44:
/* 00AD4 80B02D44 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00AD8 80B02D48 03E00008 */  jr      $ra                        
/* 00ADC 80B02D4C 00000000 */  nop
