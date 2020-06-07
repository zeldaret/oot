glabel func_808B5A94
/* 00E64 808B5A94 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00E68 808B5A98 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00E6C 808B5A9C 0C22D490 */  jal     func_808B5240              
/* 00E70 808B5AA0 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00E74 808B5AA4 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 00E78 808B5AA8 24010038 */  addiu   $at, $zero, 0x0038         ## $at = 00000038
/* 00E7C 808B5AAC 24044802 */  addiu   $a0, $zero, 0x4802         ## $a0 = 00004802
/* 00E80 808B5AB0 84C20154 */  lh      $v0, 0x0154($a2)           ## 00000154
/* 00E84 808B5AB4 54410006 */  bnel    $v0, $at, .L808B5AD0       
/* 00E88 808B5AB8 2841003D */  slti    $at, $v0, 0x003D           
/* 00E8C 808B5ABC 0C01E221 */  jal     func_80078884              
/* 00E90 808B5AC0 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 00E94 808B5AC4 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 00E98 808B5AC8 84C20154 */  lh      $v0, 0x0154($a2)           ## 00000154
/* 00E9C 808B5ACC 2841003D */  slti    $at, $v0, 0x003D           
.L808B5AD0:
/* 00EA0 808B5AD0 54200004 */  bnel    $at, $zero, .L808B5AE4     
/* 00EA4 808B5AD4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00EA8 808B5AD8 0C00B55C */  jal     Actor_Kill
              
/* 00EAC 808B5ADC 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 00EB0 808B5AE0 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L808B5AE4:
/* 00EB4 808B5AE4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00EB8 808B5AE8 03E00008 */  jr      $ra                        
/* 00EBC 808B5AEC 00000000 */  nop
