glabel func_80A6ECE8
/* 00948 80A6ECE8 8FA20014 */  lw      $v0, 0x0014($sp)           
/* 0094C 80A6ECEC 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00950 80A6ECF0 844C001C */  lh      $t4, 0x001C($v0)           ## 0000001C
/* 00954 80A6ECF4 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 00958 80A6ECF8 55810004 */  bnel    $t4, $at, .L80A6ED0C       
/* 0095C 80A6ECFC 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 00960 80A6ED00 03E00008 */  jr      $ra                        
/* 00964 80A6ED04 ACC00000 */  sw      $zero, 0x0000($a2)         ## 00000000
.L80A6ED08:
/* 00968 80A6ED08 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80A6ED0C:
/* 0096C 80A6ED0C 03E00008 */  jr      $ra                        
/* 00970 80A6ED10 00000000 */  nop
