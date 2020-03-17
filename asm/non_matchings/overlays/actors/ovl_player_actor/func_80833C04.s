glabel func_80833C04
/* 019F4 80833C04 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 019F8 80833C08 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 019FC 80833C0C 0C20CED5 */  jal     func_80833B54              
/* 01A00 80833C10 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 01A04 80833C14 0002102B */  sltu    $v0, $zero, $v0            
/* 01A08 80833C18 54400005 */  bnel    $v0, $zero, .L80833C30     
/* 01A0C 80833C1C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01A10 80833C20 0C20CECB */  jal     func_80833B2C              
/* 01A14 80833C24 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 01A18 80833C28 0002102B */  sltu    $v0, $zero, $v0            
/* 01A1C 80833C2C 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80833C30:
/* 01A20 80833C30 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01A24 80833C34 03E00008 */  jr      $ra                        
/* 01A28 80833C38 00000000 */  nop


