glabel func_80B400AC
/* 03ECC 80B400AC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 03ED0 80B400B0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 03ED4 80B400B4 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 03ED8 80B400B8 24060009 */  addiu   $a2, $zero, 0x0009         ## $a2 = 00000009
/* 03EDC 80B400BC 0C2CF13C */  jal     func_80B3C4F0              
/* 03EE0 80B400C0 24070004 */  addiu   $a3, $zero, 0x0004         ## $a3 = 00000004
/* 03EE4 80B400C4 50400004 */  beql    $v0, $zero, .L80B400D8     
/* 03EE8 80B400C8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 03EEC 80B400CC 0C00B55C */  jal     Actor_Kill
              
/* 03EF0 80B400D0 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 03EF4 80B400D4 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B400D8:
/* 03EF8 80B400D8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 03EFC 80B400DC 03E00008 */  jr      $ra                        
/* 03F00 80B400E0 00000000 */  nop
