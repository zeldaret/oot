glabel func_80B9BBC8
/* 00A48 80B9BBC8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00A4C 80B9BBCC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00A50 80B9BBD0 0C2E6EDC */  jal     func_80B9BB70              
/* 00A54 80B9BBD4 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00A58 80B9BBD8 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00A5C 80B9BBDC 3C0180BA */  lui     $at, %hi(D_80B9CD04)       ## $at = 80BA0000
/* 00A60 80B9BBE0 C428CD04 */  lwc1    $f8, %lo(D_80B9CD04)($at)  
/* 00A64 80B9BBE4 C4800080 */  lwc1    $f0, 0x0080($a0)           ## 00000080
/* 00A68 80B9BBE8 C4840028 */  lwc1    $f4, 0x0028($a0)           ## 00000028
/* 00A6C 80B9BBEC 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 00A70 80B9BBF0 46040181 */  sub.s   $f6, $f0, $f4              
/* 00A74 80B9BBF4 4606403E */  c.le.s  $f8, $f6                   
/* 00A78 80B9BBF8 00000000 */  nop
/* 00A7C 80B9BBFC 45000004 */  bc1f    .L80B9BC10                 
/* 00A80 80B9BC00 00000000 */  nop
/* 00A84 80B9BC04 E4800028 */  swc1    $f0, 0x0028($a0)           ## 00000028
/* 00A88 80B9BC08 10000001 */  beq     $zero, $zero, .L80B9BC10   
/* 00A8C 80B9BC0C 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80B9BC10:
/* 00A90 80B9BC10 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00A94 80B9BC14 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00A98 80B9BC18 03E00008 */  jr      $ra                        
/* 00A9C 80B9BC1C 00000000 */  nop
