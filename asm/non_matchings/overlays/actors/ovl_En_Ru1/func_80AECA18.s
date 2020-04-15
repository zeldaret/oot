glabel func_80AECA18
/* 01E08 80AECA18 948E0088 */  lhu     $t6, 0x0088($a0)           ## 00000088
/* 01E0C 80AECA1C 31CF0001 */  andi    $t7, $t6, 0x0001           ## $t7 = 00000000
/* 01E10 80AECA20 15E00006 */  bne     $t7, $zero, .L80AECA3C     
/* 01E14 80AECA24 00000000 */  nop
/* 01E18 80AECA28 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 01E1C 80AECA2C 2418000D */  addiu   $t8, $zero, 0x000D         ## $t8 = 0000000D
/* 01E20 80AECA30 AC980264 */  sw      $t8, 0x0264($a0)           ## 00000264
/* 01E24 80AECA34 E480026C */  swc1    $f0, 0x026C($a0)           ## 0000026C
/* 01E28 80AECA38 E4800060 */  swc1    $f0, 0x0060($a0)           ## 00000060
.L80AECA3C:
/* 01E2C 80AECA3C 03E00008 */  jr      $ra                        
/* 01E30 80AECA40 00000000 */  nop
