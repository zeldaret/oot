glabel func_80A774F8
/* 031E8 80A774F8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 031EC 80A774FC AFA40018 */  sw      $a0, 0x0018($sp)           
/* 031F0 80A77500 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 031F4 80A77504 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 031F8 80A77508 0C29DC27 */  jal     func_80A7709C              
/* 031FC 80A7750C 24050004 */  addiu   $a1, $zero, 0x0004         ## $a1 = 00000004
/* 03200 80A77510 54400004 */  bnel    $v0, $zero, .L80A77524     
/* 03204 80A77514 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 03208 80A77518 0C00B55C */  jal     Actor_Kill
              
/* 0320C 80A7751C 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 03210 80A77520 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A77524:
/* 03214 80A77524 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 03218 80A77528 03E00008 */  jr      $ra                        
/* 0321C 80A7752C 00000000 */  nop
