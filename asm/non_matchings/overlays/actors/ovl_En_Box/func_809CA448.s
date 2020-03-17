glabel func_809CA448
/* 01688 809CA448 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 0168C 809CA44C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01690 809CA450 0C031A73 */  jal     Graph_Alloc
              
/* 01694 809CA454 24050008 */  addiu   $a1, $zero, 0x0008         ## $a1 = 00000008
/* 01698 809CA458 14400009 */  bne     $v0, $zero, .L809CA480     
/* 0169C 809CA45C 00401825 */  or      $v1, $v0, $zero            ## $v1 = 00000000
/* 016A0 809CA460 3C04809D */  lui     $a0, %hi(D_809CA870)       ## $a0 = 809D0000
/* 016A4 809CA464 3C05809D */  lui     $a1, %hi(D_809CA880)       ## $a1 = 809D0000
/* 016A8 809CA468 24A5A880 */  addiu   $a1, $a1, %lo(D_809CA880)  ## $a1 = 809CA880
/* 016AC 809CA46C 2484A870 */  addiu   $a0, $a0, %lo(D_809CA870)  ## $a0 = 809CA870
/* 016B0 809CA470 240605F8 */  addiu   $a2, $zero, 0x05F8         ## $a2 = 000005F8
/* 016B4 809CA474 0C0007FC */  jal     __assert
              
/* 016B8 809CA478 AFA20018 */  sw      $v0, 0x0018($sp)           
/* 016BC 809CA47C 8FA30018 */  lw      $v1, 0x0018($sp)           
.L809CA480:
/* 016C0 809CA480 3C0EDF00 */  lui     $t6, 0xDF00                ## $t6 = DF000000
/* 016C4 809CA484 AC6E0000 */  sw      $t6, 0x0000($v1)           ## 00000000
/* 016C8 809CA488 AC600004 */  sw      $zero, 0x0004($v1)         ## 00000004
/* 016CC 809CA48C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 016D0 809CA490 00601025 */  or      $v0, $v1, $zero            ## $v0 = 00000000
/* 016D4 809CA494 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 016D8 809CA498 03E00008 */  jr      $ra                        
/* 016DC 809CA49C 00000000 */  nop


