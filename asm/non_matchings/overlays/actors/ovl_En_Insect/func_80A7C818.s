glabel func_80A7C818
/* 009F8 80A7C818 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 009FC 80A7C81C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00A00 80A7C820 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00A04 80A7C824 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 00A08 80A7C828 2404000A */  addiu   $a0, $zero, 0x000A         ## $a0 = 0000000A
/* 00A0C 80A7C82C 0C01DF64 */  jal     Math_Rand_S16Offset
              
/* 00A10 80A7C830 24050028 */  addiu   $a1, $zero, 0x0028         ## $a1 = 00000028
/* 00A14 80A7C834 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00A18 80A7C838 0C29EFD6 */  jal     func_80A7BF58              
/* 00A1C 80A7C83C A482031A */  sh      $v0, 0x031A($a0)           ## 0000031A
/* 00A20 80A7C840 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 00A24 80A7C844 3C0E80A8 */  lui     $t6, %hi(func_80A7C86C)    ## $t6 = 80A80000
/* 00A28 80A7C848 25CEC86C */  addiu   $t6, $t6, %lo(func_80A7C86C) ## $t6 = 80A7C86C
/* 00A2C 80A7C84C 94CF0314 */  lhu     $t7, 0x0314($a2)           ## 00000314
/* 00A30 80A7C850 ACCE0310 */  sw      $t6, 0x0310($a2)           ## 00000310
/* 00A34 80A7C854 35F80100 */  ori     $t8, $t7, 0x0100           ## $t8 = 00000100
/* 00A38 80A7C858 A4D80314 */  sh      $t8, 0x0314($a2)           ## 00000314
/* 00A3C 80A7C85C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00A40 80A7C860 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00A44 80A7C864 03E00008 */  jr      $ra                        
/* 00A48 80A7C868 00000000 */  nop


