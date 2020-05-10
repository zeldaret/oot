glabel func_80A7C3A0
/* 00580 80A7C3A0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00584 80A7C3A4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00588 80A7C3A8 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 0058C 80A7C3AC AFA60018 */  sw      $a2, 0x0018($sp)           
/* 00590 80A7C3B0 24040005 */  addiu   $a0, $zero, 0x0005         ## $a0 = 00000005
/* 00594 80A7C3B4 0C01DF64 */  jal     Math_Rand_S16Offset
              
/* 00598 80A7C3B8 24050023 */  addiu   $a1, $zero, 0x0023         ## $a1 = 00000023
/* 0059C 80A7C3BC 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 005A0 80A7C3C0 0C29EFD6 */  jal     func_80A7BF58              
/* 005A4 80A7C3C4 A482031A */  sh      $v0, 0x031A($a0)           ## 0000031A
/* 005A8 80A7C3C8 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 005AC 80A7C3CC 3C0E80A8 */  lui     $t6, %hi(func_80A7C3F4)    ## $t6 = 80A80000
/* 005B0 80A7C3D0 25CEC3F4 */  addiu   $t6, $t6, %lo(func_80A7C3F4) ## $t6 = 80A7C3F4
/* 005B4 80A7C3D4 94CF0314 */  lhu     $t7, 0x0314($a2)           ## 00000314
/* 005B8 80A7C3D8 ACCE0310 */  sw      $t6, 0x0310($a2)           ## 00000310
/* 005BC 80A7C3DC 35F80100 */  ori     $t8, $t7, 0x0100           ## $t8 = 00000100
/* 005C0 80A7C3E0 A4D80314 */  sh      $t8, 0x0314($a2)           ## 00000314
/* 005C4 80A7C3E4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 005C8 80A7C3E8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 005CC 80A7C3EC 03E00008 */  jr      $ra                        
/* 005D0 80A7C3F0 00000000 */  nop
