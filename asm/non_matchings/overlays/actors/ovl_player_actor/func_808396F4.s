glabel func_808396F4
/* 074E4 808396F4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 074E8 808396F8 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 074EC 808396FC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 074F0 80839700 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 074F4 80839704 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 074F8 80839708 AFA70024 */  sw      $a3, 0x0024($sp)           
/* 074FC 8083970C 0C20E577 */  jal     func_808395DC              
/* 07500 80839710 24A50024 */  addiu   $a1, $a1, 0x0024           ## $a1 = 00000024
/* 07504 80839714 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 07508 80839718 8FA50028 */  lw      $a1, 0x0028($sp)           
/* 0750C 8083971C 8FA6002C */  lw      $a2, 0x002C($sp)           
/* 07510 80839720 8FA70024 */  lw      $a3, 0x0024($sp)           
/* 07514 80839724 0C00F250 */  jal     func_8003C940              
/* 07518 80839728 248407C0 */  addiu   $a0, $a0, 0x07C0           ## $a0 = 000007C0
/* 0751C 8083972C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 07520 80839730 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 07524 80839734 03E00008 */  jr      $ra                        
/* 07528 80839738 00000000 */  nop
