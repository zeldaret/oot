glabel func_8083CEAC
/* 0AC9C 8083CEAC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0ACA0 8083CEB0 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 0ACA4 8083CEB4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0ACA8 8083CEB8 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 0ACAC 8083CEBC 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 0ACB0 8083CEC0 3C068084 */  lui     $a2, %hi(func_80840450)    ## $a2 = 80840000
/* 0ACB4 8083CEC4 24C60450 */  addiu   $a2, $a2, %lo(func_80840450) ## $a2 = 80840450
/* 0ACB8 8083CEC8 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 0ACBC 8083CECC 0C20D716 */  jal     func_80835C58              
/* 0ACC0 8083CED0 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 0ACC4 8083CED4 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 0ACC8 8083CED8 3C068085 */  lui     $a2, %hi(D_808539BC)       ## $a2 = 80850000
/* 0ACCC 8083CEDC 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 0ACD0 8083CEE0 90AE015B */  lbu     $t6, 0x015B($a1)           ## 0000015B
/* 0ACD4 8083CEE4 000E7880 */  sll     $t7, $t6,  2               
/* 0ACD8 8083CEE8 00CF3021 */  addu    $a2, $a2, $t7              
/* 0ACDC 8083CEEC 0C20CAC3 */  jal     func_80832B0C              
/* 0ACE0 8083CEF0 8CC639BC */  lw      $a2, %lo(D_808539BC)($a2)  
/* 0ACE4 8083CEF4 8FB90018 */  lw      $t9, 0x0018($sp)           
/* 0ACE8 8083CEF8 24180001 */  addiu   $t8, $zero, 0x0001         ## $t8 = 00000001
/* 0ACEC 8083CEFC A7380850 */  sh      $t8, 0x0850($t9)           ## 00000850
/* 0ACF0 8083CF00 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0ACF4 8083CF04 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0ACF8 8083CF08 03E00008 */  jr      $ra                        
/* 0ACFC 8083CF0C 00000000 */  nop
