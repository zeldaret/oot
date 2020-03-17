glabel func_80B3E8AC
/* 026CC 80B3E8AC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 026D0 80B3E8B0 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 026D4 80B3E8B4 2401000C */  addiu   $at, $zero, 0x000C         ## $at = 0000000C
/* 026D8 80B3E8B8 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 026DC 80B3E8BC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 026E0 80B3E8C0 14A10003 */  bne     $a1, $at, .L80B3E8D0       
/* 026E4 80B3E8C4 AFA70024 */  sw      $a3, 0x0024($sp)           
/* 026E8 80B3E8C8 0C2CFA1F */  jal     func_80B3E87C              
/* 026EC 80B3E8CC 8FA5002C */  lw      $a1, 0x002C($sp)           
.L80B3E8D0:
/* 026F0 80B3E8D0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 026F4 80B3E8D4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 026F8 80B3E8D8 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 026FC 80B3E8DC 03E00008 */  jr      $ra                        
/* 02700 80B3E8E0 00000000 */  nop


