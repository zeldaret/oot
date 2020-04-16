glabel func_80AFB0C4
/* 009A4 80AFB0C4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 009A8 80AFB0C8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 009AC 80AFB0CC 90820281 */  lbu     $v0, 0x0281($a0)           ## 00000281
/* 009B0 80AFB0D0 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 009B4 80AFB0D4 304E0002 */  andi    $t6, $v0, 0x0002           ## $t6 = 00000000
/* 009B8 80AFB0D8 11C00009 */  beq     $t6, $zero, .L80AFB100     
/* 009BC 80AFB0DC 304FFFFD */  andi    $t7, $v0, 0xFFFD           ## $t7 = 00000000
/* 009C0 80AFB0E0 A08F0281 */  sb      $t7, 0x0281($a0)           ## 00000281
/* 009C4 80AFB0E4 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 009C8 80AFB0E8 0C00D594 */  jal     func_80035650              
/* 009CC 80AFB0EC 24850288 */  addiu   $a1, $a0, 0x0288           ## $a1 = 00000288
/* 009D0 80AFB0F0 0C2BEA88 */  jal     func_80AFAA20              
/* 009D4 80AFB0F4 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 009D8 80AFB0F8 10000007 */  beq     $zero, $zero, .L80AFB118   
/* 009DC 80AFB0FC 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AFB100:
/* 009E0 80AFB100 90B81C26 */  lbu     $t8, 0x1C26($a1)           ## 00001C26
/* 009E4 80AFB104 53000004 */  beql    $t8, $zero, .L80AFB118     
/* 009E8 80AFB108 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 009EC 80AFB10C 0C2BEA88 */  jal     func_80AFAA20              
/* 009F0 80AFB110 00000000 */  nop
/* 009F4 80AFB114 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AFB118:
/* 009F8 80AFB118 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 009FC 80AFB11C 03E00008 */  jr      $ra                        
/* 00A00 80AFB120 00000000 */  nop
