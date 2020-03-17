glabel func_80AEEAC8
/* 03EB8 80AEEAC8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 03EBC 80AEEACC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 03EC0 80AEEAD0 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 03EC4 80AEEAD4 948E0088 */  lhu     $t6, 0x0088($a0)           ## 00000088
/* 03EC8 80AEEAD8 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 03ECC 80AEEADC 31CF0001 */  andi    $t7, $t6, 0x0001           ## $t7 = 00000000
/* 03ED0 80AEEAE0 11E0000C */  beq     $t7, $zero, .L80AEEB14     
/* 03ED4 80AEEAE4 00000000 */  nop
/* 03ED8 80AEEAE8 0C2BB80B */  jal     func_80AEE02C              
/* 03EDC 80AEEAEC AFA40018 */  sw      $a0, 0x0018($sp)           
/* 03EE0 80AEEAF0 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 03EE4 80AEEAF4 0C00BD60 */  jal     func_8002F580              
/* 03EE8 80AEEAF8 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 03EEC 80AEEAFC 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 03EF0 80AEEB00 2418001B */  addiu   $t8, $zero, 0x001B         ## $t8 = 0000001B
/* 03EF4 80AEEB04 0C2BAB76 */  jal     func_80AEADD8              
/* 03EF8 80AEEB08 AC980264 */  sw      $t8, 0x0264($a0)           ## 00000264
/* 03EFC 80AEEB0C 10000001 */  beq     $zero, $zero, .L80AEEB14   
/* 03F00 80AEEB10 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80AEEB14:
/* 03F04 80AEEB14 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 03F08 80AEEB18 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 03F0C 80AEEB1C 03E00008 */  jr      $ra                        
/* 03F10 80AEEB20 00000000 */  nop


