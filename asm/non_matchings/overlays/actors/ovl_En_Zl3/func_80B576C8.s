glabel func_80B576C8
/* 04318 80B576C8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0431C 80B576CC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 04320 80B576D0 0C2D5D7C */  jal     func_80B575F0              
/* 04324 80B576D4 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 04328 80B576D8 10400007 */  beq     $v0, $zero, .L80B576F8     
/* 0432C 80B576DC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 04330 80B576E0 8FAE0018 */  lw      $t6, 0x0018($sp)           
/* 04334 80B576E4 8DCF03D8 */  lw      $t7, 0x03D8($t6)           ## 000003D8
/* 04338 80B576E8 55E00004 */  bnel    $t7, $zero, .L80B576FC     
/* 0433C 80B576EC 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 04340 80B576F0 10000002 */  beq     $zero, $zero, .L80B576FC   
/* 04344 80B576F4 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80B576F8:
/* 04348 80B576F8 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80B576FC:
/* 0434C 80B576FC 03E00008 */  jr      $ra                        
/* 04350 80B57700 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000


