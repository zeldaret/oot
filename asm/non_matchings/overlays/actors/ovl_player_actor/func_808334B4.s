glabel func_808334B4
/* 012A4 808334B4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 012A8 808334B8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 012AC 808334BC 0C20CCB9 */  jal     func_808332E4              
/* 012B0 808334C0 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 012B4 808334C4 0002102B */  sltu    $v0, $zero, $v0            
/* 012B8 808334C8 10400004 */  beq     $v0, $zero, .L808334DC     
/* 012BC 808334CC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 012C0 808334D0 8FAE0018 */  lw      $t6, 0x0018($sp)           
/* 012C4 808334D4 85C20834 */  lh      $v0, 0x0834($t6)           ## 00000834
/* 012C8 808334D8 0002102B */  sltu    $v0, $zero, $v0            
.L808334DC:
/* 012CC 808334DC 03E00008 */  jr      $ra                        
/* 012D0 808334E0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
