glabel ObjMure3_Init
/* 004EC 80B9AEBC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 004F0 80B9AEC0 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 004F4 80B9AEC4 8FAE0018 */  lw      $t6, 0x0018($sp)           
/* 004F8 80B9AEC8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 004FC 80B9AECC 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00500 80B9AED0 85C5001C */  lh      $a1, 0x001C($t6)           ## 0000001C
/* 00504 80B9AED4 0C00B2D0 */  jal     Flags_GetSwitch
              
/* 00508 80B9AED8 30A5003F */  andi    $a1, $a1, 0x003F           ## $a1 = 00000000
/* 0050C 80B9AEDC 10400005 */  beq     $v0, $zero, .L80B9AEF4     
/* 00510 80B9AEE0 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00514 80B9AEE4 0C00B55C */  jal     Actor_Kill
              
/* 00518 80B9AEE8 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 0051C 80B9AEEC 10000007 */  beq     $zero, $zero, .L80B9AF0C   
/* 00520 80B9AEF0 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B9AEF4:
/* 00524 80B9AEF4 3C0580BA */  lui     $a1, %hi(D_80B9B0C8)       ## $a1 = 80BA0000
/* 00528 80B9AEF8 0C01E037 */  jal     Actor_ProcessInitChain
              
/* 0052C 80B9AEFC 24A5B0C8 */  addiu   $a1, $a1, %lo(D_80B9B0C8)  ## $a1 = 80B9B0C8
/* 00530 80B9AF00 0C2E6BC9 */  jal     func_80B9AF24              
/* 00534 80B9AF04 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00538 80B9AF08 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B9AF0C:
/* 0053C 80B9AF0C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00540 80B9AF10 03E00008 */  jr      $ra                        
/* 00544 80B9AF14 00000000 */  nop


