glabel func_80B4066C
/* 0448C 80B4066C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 04490 80B40670 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 04494 80B40674 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 04498 80B40678 94AE1D74 */  lhu     $t6, 0x1D74($a1)           ## 00001D74
/* 0449C 80B4067C 240105AF */  addiu   $at, $zero, 0x05AF         ## $at = 000005AF
/* 044A0 80B40680 55C10004 */  bnel    $t6, $at, .L80B40694       
/* 044A4 80B40684 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 044A8 80B40688 0C03CFCF */  jal     func_800F3F3C              
/* 044AC 80B4068C 24040007 */  addiu   $a0, $zero, 0x0007         ## $a0 = 00000007
/* 044B0 80B40690 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B40694:
/* 044B4 80B40694 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 044B8 80B40698 03E00008 */  jr      $ra                        
/* 044BC 80B4069C 00000000 */  nop


