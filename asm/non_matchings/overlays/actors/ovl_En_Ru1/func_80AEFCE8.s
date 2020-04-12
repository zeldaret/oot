glabel func_80AEFCE8
/* 050D8 80AEFCE8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 050DC 80AEFCEC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 050E0 80AEFCF0 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 050E4 80AEFCF4 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 050E8 80AEFCF8 0C2BAC22 */  jal     func_80AEB088              
/* 050EC 80AEFCFC 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 050F0 80AEFD00 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 050F4 80AEFD04 240E002A */  addiu   $t6, $zero, 0x002A         ## $t6 = 0000002A
/* 050F8 80AEFD08 10400007 */  beq     $v0, $zero, .L80AEFD28     
/* 050FC 80AEFD0C ACC2028C */  sw      $v0, 0x028C($a2)           ## 0000028C
/* 05100 80AEFD10 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 05104 80AEFD14 ACCE0264 */  sw      $t6, 0x0264($a2)           ## 00000264
/* 05108 80AEFD18 ACCF0268 */  sw      $t7, 0x0268($a2)           ## 00000268
/* 0510C 80AEFD1C 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 05110 80AEFD20 0C2BAC3B */  jal     func_80AEB0EC              
/* 05114 80AEFD24 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
.L80AEFD28:
/* 05118 80AEFD28 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0511C 80AEFD2C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 05120 80AEFD30 03E00008 */  jr      $ra                        
/* 05124 80AEFD34 00000000 */  nop
