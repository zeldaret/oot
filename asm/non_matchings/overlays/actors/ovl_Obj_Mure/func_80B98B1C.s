glabel func_80B98B1C
/* 0007C 80B98B1C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00080 80B98B20 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00084 80B98B24 0C2E62A8 */  jal     func_80B98AA0              
/* 00088 80B98B28 00000000 */  nop
/* 0008C 80B98B2C 14400003 */  bne     $v0, $zero, .L80B98B3C     
/* 00090 80B98B30 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00094 80B98B34 10000002 */  beq     $zero, $zero, .L80B98B40   
/* 00098 80B98B38 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80B98B3C:
/* 0009C 80B98B3C 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80B98B40:
/* 000A0 80B98B40 03E00008 */  jr      $ra                        
/* 000A4 80B98B44 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
