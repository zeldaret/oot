glabel func_80BA6370
/* 00300 80BA6370 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00304 80BA6374 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00308 80BA6378 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 0030C 80BA637C 94820178 */  lhu     $v0, 0x0178($a0)           ## 00000178
/* 00310 80BA6380 3C0580BA */  lui     $a1, %hi(func_80BA6260)    ## $a1 = 80BA0000
/* 00314 80BA6384 18400003 */  blez    $v0, .L80BA6394            
/* 00318 80BA6388 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 0031C 80BA638C 10000003 */  beq     $zero, $zero, .L80BA639C   
/* 00320 80BA6390 A48E0178 */  sh      $t6, 0x0178($a0)           ## 00000178
.L80BA6394:
/* 00324 80BA6394 0C2E981C */  jal     func_80BA6070              
/* 00328 80BA6398 24A56260 */  addiu   $a1, $a1, %lo(func_80BA6260) ## $a1 = 80BA6260
.L80BA639C:
/* 0032C 80BA639C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00330 80BA63A0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00334 80BA63A4 03E00008 */  jr      $ra                        
/* 00338 80BA63A8 00000000 */  nop
