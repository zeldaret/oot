glabel func_809E80D8
/* 02908 809E80D8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0290C 809E80DC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 02910 809E80E0 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 02914 809E80E4 848201C6 */  lh      $v0, 0x01C6($a0)           ## 000001C6
/* 02918 809E80E8 10400002 */  beq     $v0, $zero, .L809E80F4     
/* 0291C 809E80EC 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 02920 809E80F0 A48E01C6 */  sh      $t6, 0x01C6($a0)           ## 000001C6
.L809E80F4:
/* 02924 809E80F4 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 02928 809E80F8 0C00BD04 */  jal     Actor_HasParent              
/* 0292C 809E80FC AFA40018 */  sw      $a0, 0x0018($sp)           
/* 02930 809E8100 14400005 */  bne     $v0, $zero, .L809E8118     
/* 02934 809E8104 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 02938 809E8108 848F01C6 */  lh      $t7, 0x01C6($a0)           ## 000001C6
/* 0293C 809E810C 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 02940 809E8110 15E00005 */  bne     $t7, $zero, .L809E8128     
/* 02944 809E8114 00000000 */  nop
.L809E8118:
/* 02948 809E8118 0C00B55C */  jal     Actor_Kill
              
/* 0294C 809E811C 00000000 */  nop
/* 02950 809E8120 10000004 */  beq     $zero, $zero, .L809E8134   
/* 02954 809E8124 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L809E8128:
/* 02958 809E8128 0C00BD55 */  jal     Actor_GiveItemToPlayer              
/* 0295C 809E812C 24060007 */  addiu   $a2, $zero, 0x0007         ## $a2 = 00000007
/* 02960 809E8130 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L809E8134:
/* 02964 809E8134 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 02968 809E8138 03E00008 */  jr      $ra                        
/* 0296C 809E813C 00000000 */  nop
