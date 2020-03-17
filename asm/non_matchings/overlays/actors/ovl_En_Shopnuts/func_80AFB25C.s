glabel func_80AFB25C
/* 00B3C 80AFB25C 24010009 */  addiu   $at, $zero, 0x0009         ## $at = 00000009
/* 00B40 80AFB260 AFA40000 */  sw      $a0, 0x0000($sp)           
/* 00B44 80AFB264 14A10008 */  bne     $a1, $at, .L80AFB288       
/* 00B48 80AFB268 AFA7000C */  sw      $a3, 0x000C($sp)           
/* 00B4C 80AFB26C 8FAF0014 */  lw      $t7, 0x0014($sp)           
/* 00B50 80AFB270 3C0E80B0 */  lui     $t6, %hi(func_80AFAE28)    ## $t6 = 80B00000
/* 00B54 80AFB274 25CEAE28 */  addiu   $t6, $t6, %lo(func_80AFAE28) ## $t6 = 80AFAE28
/* 00B58 80AFB278 8DF80190 */  lw      $t8, 0x0190($t7)           ## 00000190
/* 00B5C 80AFB27C 15D80002 */  bne     $t6, $t8, .L80AFB288       
/* 00B60 80AFB280 00000000 */  nop
/* 00B64 80AFB284 ACC00000 */  sw      $zero, 0x0000($a2)         ## 00000000
.L80AFB288:
/* 00B68 80AFB288 03E00008 */  jr      $ra                        
/* 00B6C 80AFB28C 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000


