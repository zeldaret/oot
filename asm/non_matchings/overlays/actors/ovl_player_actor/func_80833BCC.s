glabel func_80833BCC
/* 019BC 80833BCC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 019C0 80833BD0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 019C4 80833BD4 0C023A71 */  jal     func_8008E9C4              
/* 019C8 80833BD8 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 019CC 80833BDC 0002102B */  sltu    $v0, $zero, $v0            
/* 019D0 80833BE0 54400005 */  bnel    $v0, $zero, .L80833BF8     
/* 019D4 80833BE4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 019D8 80833BE8 0C20CECB */  jal     func_80833B2C              
/* 019DC 80833BEC 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 019E0 80833BF0 0002102B */  sltu    $v0, $zero, $v0            
/* 019E4 80833BF4 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80833BF8:
/* 019E8 80833BF8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 019EC 80833BFC 03E00008 */  jr      $ra                        
/* 019F0 80833C00 00000000 */  nop
