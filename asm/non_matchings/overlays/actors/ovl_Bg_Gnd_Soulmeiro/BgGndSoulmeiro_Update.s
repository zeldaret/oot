glabel BgGndSoulmeiro_Update
/* 005E0 8087B3A0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 005E4 8087B3A4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 005E8 8087B3A8 8C82019C */  lw      $v0, 0x019C($a0)           ## 0000019C
/* 005EC 8087B3AC 50400004 */  beql    $v0, $zero, .L8087B3C0     
/* 005F0 8087B3B0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 005F4 8087B3B4 0040F809 */  jalr    $ra, $v0                   
/* 005F8 8087B3B8 00000000 */  nop
/* 005FC 8087B3BC 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L8087B3C0:
/* 00600 8087B3C0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00604 8087B3C4 03E00008 */  jr      $ra                        
/* 00608 8087B3C8 00000000 */  nop
