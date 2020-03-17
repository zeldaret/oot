glabel func_80AF3B74
/* 01624 80AF3B74 3C028016 */  lui     $v0, 0x8016                ## $v0 = 80160000
/* 01628 80AF3B78 8C42FA90 */  lw      $v0, -0x0570($v0)          ## 8015FA90
/* 0162C 80AF3B7C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01630 80AF3B80 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01634 80AF3B84 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 01638 80AF3B88 8459145A */  lh      $t9, 0x145A($v0)           ## 8016145A
/* 0163C 80AF3B8C 844E1458 */  lh      $t6, 0x1458($v0)           ## 80161458
/* 01640 80AF3B90 948C02C0 */  lhu     $t4, 0x02C0($a0)           ## 000002C0
/* 01644 80AF3B94 27290028 */  addiu   $t1, $t9, 0x0028           ## $t1 = 00000028
/* 01648 80AF3B98 25D80096 */  addiu   $t8, $t6, 0x0096           ## $t8 = 00000096
/* 0164C 80AF3B9C 03095021 */  addu    $t2, $t8, $t1              
/* 01650 80AF3BA0 314BFFFF */  andi    $t3, $t2, 0xFFFF           ## $t3 = 00000000
/* 01654 80AF3BA4 016C082A */  slt     $at, $t3, $t4              
/* 01658 80AF3BA8 50200004 */  beql    $at, $zero, .L80AF3BBC     
/* 0165C 80AF3BAC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01660 80AF3BB0 0C00B55C */  jal     Actor_Kill
              
/* 01664 80AF3BB4 00000000 */  nop
/* 01668 80AF3BB8 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AF3BBC:
/* 0166C 80AF3BBC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01670 80AF3BC0 03E00008 */  jr      $ra                        
/* 01674 80AF3BC4 00000000 */  nop


