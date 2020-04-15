glabel func_80A7C598
/* 00778 80A7C598 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0077C 80A7C59C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00780 80A7C5A0 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00784 80A7C5A4 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 00788 80A7C5A8 2404000A */  addiu   $a0, $zero, 0x000A         ## $a0 = 0000000A
/* 0078C 80A7C5AC 0C01DF64 */  jal     Math_Rand_S16Offset
              
/* 00790 80A7C5B0 2405002D */  addiu   $a1, $zero, 0x002D         ## $a1 = 0000002D
/* 00794 80A7C5B4 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00798 80A7C5B8 0C29EFD6 */  jal     func_80A7BF58              
/* 0079C 80A7C5BC A482031A */  sh      $v0, 0x031A($a0)           ## 0000031A
/* 007A0 80A7C5C0 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 007A4 80A7C5C4 3C0E80A8 */  lui     $t6, %hi(func_80A7C5EC)    ## $t6 = 80A80000
/* 007A8 80A7C5C8 25CEC5EC */  addiu   $t6, $t6, %lo(func_80A7C5EC) ## $t6 = 80A7C5EC
/* 007AC 80A7C5CC 94CF0314 */  lhu     $t7, 0x0314($a2)           ## 00000314
/* 007B0 80A7C5D0 ACCE0310 */  sw      $t6, 0x0310($a2)           ## 00000310
/* 007B4 80A7C5D4 35F80100 */  ori     $t8, $t7, 0x0100           ## $t8 = 00000100
/* 007B8 80A7C5D8 A4D80314 */  sh      $t8, 0x0314($a2)           ## 00000314
/* 007BC 80A7C5DC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 007C0 80A7C5E0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 007C4 80A7C5E4 03E00008 */  jr      $ra                        
/* 007C8 80A7C5E8 00000000 */  nop
