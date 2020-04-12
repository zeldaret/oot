glabel func_80A6E70C
/* 0036C 80A6E70C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00370 80A6E710 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00374 80A6E714 0C00BCCD */  jal     func_8002F334              
/* 00378 80A6E718 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 0037C 80A6E71C 10400004 */  beq     $v0, $zero, .L80A6E730     
/* 00380 80A6E720 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00384 80A6E724 3C0580A7 */  lui     $a1, %hi(func_80A6E9AC)    ## $a1 = 80A70000
/* 00388 80A6E728 0C29B8E8 */  jal     func_80A6E3A0              
/* 0038C 80A6E72C 24A5E9AC */  addiu   $a1, $a1, %lo(func_80A6E9AC) ## $a1 = 80A6E9AC
.L80A6E730:
/* 00390 80A6E730 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00394 80A6E734 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00398 80A6E738 03E00008 */  jr      $ra                        
/* 0039C 80A6E73C 00000000 */  nop
