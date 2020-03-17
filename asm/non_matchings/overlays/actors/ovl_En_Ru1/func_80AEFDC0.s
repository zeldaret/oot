glabel func_80AEFDC0
/* 051B0 80AEFDC0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 051B4 80AEFDC4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 051B8 80AEFDC8 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 051BC 80AEFDCC 0C00BC65 */  jal     func_8002F194              
/* 051C0 80AEFDD0 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 051C4 80AEFDD4 14400013 */  bne     $v0, $zero, .L80AEFE24     
/* 051C8 80AEFDD8 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 051CC 80AEFDDC 8CCE0004 */  lw      $t6, 0x0004($a2)           ## 00000004
/* 051D0 80AEFDE0 2405001F */  addiu   $a1, $zero, 0x001F         ## $a1 = 0000001F
/* 051D4 80AEFDE4 35CF0009 */  ori     $t7, $t6, 0x0009           ## $t7 = 00000009
/* 051D8 80AEFDE8 ACCF0004 */  sw      $t7, 0x0004($a2)           ## 00000004
/* 051DC 80AEFDEC AFA60018 */  sw      $a2, 0x0018($sp)           
/* 051E0 80AEFDF0 0C01B0D8 */  jal     func_8006C360              
/* 051E4 80AEFDF4 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 051E8 80AEFDF8 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 051EC 80AEFDFC 3058FFFF */  andi    $t8, $v0, 0xFFFF           ## $t8 = 00000000
/* 051F0 80AEFE00 17000003 */  bne     $t8, $zero, .L80AEFE10     
/* 051F4 80AEFE04 A4C2010E */  sh      $v0, 0x010E($a2)           ## 0000010E
/* 051F8 80AEFE08 2419402C */  addiu   $t9, $zero, 0x402C         ## $t9 = 0000402C
/* 051FC 80AEFE0C A4D9010E */  sh      $t9, 0x010E($a2)           ## 0000010E
.L80AEFE10:
/* 05200 80AEFE10 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 05204 80AEFE14 0C00BCBD */  jal     func_8002F2F4              
/* 05208 80AEFE18 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 0520C 80AEFE1C 10000002 */  beq     $zero, $zero, .L80AEFE28   
/* 05210 80AEFE20 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80AEFE24:
/* 05214 80AEFE24 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80AEFE28:
/* 05218 80AEFE28 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0521C 80AEFE2C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 05220 80AEFE30 03E00008 */  jr      $ra                        
/* 05224 80AEFE34 00000000 */  nop


