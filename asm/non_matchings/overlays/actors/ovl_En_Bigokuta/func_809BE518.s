glabel func_809BE518
/* 018B8 809BE518 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 018BC 809BE51C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 018C0 809BE520 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 018C4 809BE524 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 018C8 809BE528 8CE5000C */  lw      $a1, 0x000C($a3)           ## 0000000C
/* 018CC 809BE52C AFA70018 */  sw      $a3, 0x0018($sp)           
/* 018D0 809BE530 24840028 */  addiu   $a0, $a0, 0x0028           ## $a0 = 00000028
/* 018D4 809BE534 0C01DE80 */  jal     Math_ApproxF
              
/* 018D8 809BE538 3C064120 */  lui     $a2, 0x4120                ## $a2 = 41200000
/* 018DC 809BE53C 10400006 */  beq     $v0, $zero, .L809BE558     
/* 018E0 809BE540 8FA70018 */  lw      $a3, 0x0018($sp)           
/* 018E4 809BE544 8CEE0004 */  lw      $t6, 0x0004($a3)           ## 00000004
/* 018E8 809BE548 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 018EC 809BE54C 35CF0001 */  ori     $t7, $t6, 0x0001           ## $t7 = 00000001
/* 018F0 809BE550 0C26F4FE */  jal     func_809BD3F8              
/* 018F4 809BE554 ACEF0004 */  sw      $t7, 0x0004($a3)           ## 00000004
.L809BE558:
/* 018F8 809BE558 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 018FC 809BE55C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01900 809BE560 03E00008 */  jr      $ra                        
/* 01904 809BE564 00000000 */  nop
