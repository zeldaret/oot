glabel func_80A7CE60
/* 01040 80A7CE60 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01044 80A7CE64 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01048 80A7CE68 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 0104C 80A7CE6C AFA60018 */  sw      $a2, 0x0018($sp)           
/* 01050 80A7CE70 24040078 */  addiu   $a0, $zero, 0x0078         ## $a0 = 00000078
/* 01054 80A7CE74 0C01DF64 */  jal     Math_Rand_S16Offset
              
/* 01058 80A7CE78 24050032 */  addiu   $a1, $zero, 0x0032         ## $a1 = 00000032
/* 0105C 80A7CE7C 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 01060 80A7CE80 0C29EFD6 */  jal     func_80A7BF58              
/* 01064 80A7CE84 A482031A */  sh      $v0, 0x031A($a0)           ## 0000031A
/* 01068 80A7CE88 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 0106C 80A7CE8C 3C0F80A8 */  lui     $t7, %hi(func_80A7CEC0)    ## $t7 = 80A80000
/* 01070 80A7CE90 25EFCEC0 */  addiu   $t7, $t7, %lo(func_80A7CEC0) ## $t7 = 80A7CEC0
/* 01074 80A7CE94 94D80314 */  lhu     $t8, 0x0314($a2)           ## 00000314
/* 01078 80A7CE98 A4C00318 */  sh      $zero, 0x0318($a2)         ## 00000318
/* 0107C 80A7CE9C 84CE0318 */  lh      $t6, 0x0318($a2)           ## 00000318
/* 01080 80A7CEA0 3319FEFF */  andi    $t9, $t8, 0xFEFF           ## $t9 = 00000000
/* 01084 80A7CEA4 ACCF0310 */  sw      $t7, 0x0310($a2)           ## 00000310
/* 01088 80A7CEA8 A4D90314 */  sh      $t9, 0x0314($a2)           ## 00000314
/* 0108C 80A7CEAC A4CE0316 */  sh      $t6, 0x0316($a2)           ## 00000316
/* 01090 80A7CEB0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01094 80A7CEB4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01098 80A7CEB8 03E00008 */  jr      $ra                        
/* 0109C 80A7CEBC 00000000 */  nop
