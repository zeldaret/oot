glabel BgSpot12Gate_Update
/* 00314 808B32A4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00318 808B32A8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0031C 808B32AC 84820168 */  lh      $v0, 0x0168($a0)           ## 00000168
/* 00320 808B32B0 18400002 */  blez    $v0, .L808B32BC            
/* 00324 808B32B4 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 00328 808B32B8 A48E0168 */  sh      $t6, 0x0168($a0)           ## 00000168
.L808B32BC:
/* 0032C 808B32BC 8C990164 */  lw      $t9, 0x0164($a0)           ## 00000164
/* 00330 808B32C0 0320F809 */  jalr    $ra, $t9                   
/* 00334 808B32C4 00000000 */  nop
/* 00338 808B32C8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0033C 808B32CC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00340 808B32D0 03E00008 */  jr      $ra                        
/* 00344 808B32D4 00000000 */  nop


