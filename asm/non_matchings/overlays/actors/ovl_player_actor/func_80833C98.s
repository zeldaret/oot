glabel func_80833C98
/* 01A88 80833C98 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01A8C 80833C9C 288100FE */  slti    $at, $a0, 0x00FE           
/* 01A90 80833CA0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01A94 80833CA4 10200008 */  beq     $at, $zero, .L80833CC8     
/* 01A98 80833CA8 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 01A9C 80833CAC 0C20CDC9 */  jal     func_80833724              
/* 01AA0 80833CB0 00000000 */  nop
/* 01AA4 80833CB4 8FAE001C */  lw      $t6, 0x001C($sp)           
/* 01AA8 80833CB8 544E0004 */  bnel    $v0, $t6, .L80833CCC       
/* 01AAC 80833CBC 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 01AB0 80833CC0 10000002 */  beq     $zero, $zero, .L80833CCC   
/* 01AB4 80833CC4 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80833CC8:
/* 01AB8 80833CC8 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80833CCC:
/* 01ABC 80833CCC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01AC0 80833CD0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01AC4 80833CD4 03E00008 */  jr      $ra                        
/* 01AC8 80833CD8 00000000 */  nop
