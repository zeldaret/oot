glabel func_80ACA998
/* 00A78 80ACA998 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00A7C 80ACA99C AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00A80 80ACA9A0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00A84 80ACA9A4 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00A88 80ACA9A8 24A420D8 */  addiu   $a0, $a1, 0x20D8           ## $a0 = 000020D8
/* 00A8C 80ACA9AC 0C042F6F */  jal     func_8010BDBC              
/* 00A90 80ACA9B0 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00A94 80ACA9B4 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 00A98 80ACA9B8 14410021 */  bne     $v0, $at, .L80ACAA40       
/* 00A9C 80ACA9BC 8FA60024 */  lw      $a2, 0x0024($sp)           
/* 00AA0 80ACA9C0 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 00AA4 80ACA9C4 0C041AF2 */  jal     func_80106BC8              
/* 00AA8 80ACA9C8 AFA60024 */  sw      $a2, 0x0024($sp)           
/* 00AAC 80ACA9CC 1040001C */  beq     $v0, $zero, .L80ACAA40     
/* 00AB0 80ACA9D0 8FA60024 */  lw      $a2, 0x0024($sp)           
/* 00AB4 80ACA9D4 3C020001 */  lui     $v0, 0x0001                ## $v0 = 00010000
/* 00AB8 80ACA9D8 00461021 */  addu    $v0, $v0, $a2              
/* 00ABC 80ACA9DC 904204BD */  lbu     $v0, 0x04BD($v0)           ## 000104BD
/* 00AC0 80ACA9E0 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00AC4 80ACA9E4 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 00AC8 80ACA9E8 10400005 */  beq     $v0, $zero, .L80ACAA00     
/* 00ACC 80ACA9EC 00000000 */  nop
/* 00AD0 80ACA9F0 10410009 */  beq     $v0, $at, .L80ACAA18       
/* 00AD4 80ACA9F4 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 00AD8 80ACA9F8 1000000D */  beq     $zero, $zero, .L80ACAA30   
/* 00ADC 80ACA9FC 961803FC */  lhu     $t8, 0x03FC($s0)           ## 000003FC
.L80ACAA00:
/* 00AE0 80ACAA00 0C042DC8 */  jal     func_8010B720              
/* 00AE4 80ACAA04 24052069 */  addiu   $a1, $zero, 0x2069         ## $a1 = 00002069
/* 00AE8 80ACAA08 3C0E80AD */  lui     $t6, %hi(func_80ACAA54)    ## $t6 = 80AD0000
/* 00AEC 80ACAA0C 25CEAA54 */  addiu   $t6, $t6, %lo(func_80ACAA54) ## $t6 = 80ACAA54
/* 00AF0 80ACAA10 10000006 */  beq     $zero, $zero, .L80ACAA2C   
/* 00AF4 80ACAA14 AE0E040C */  sw      $t6, 0x040C($s0)           ## 0000040C
.L80ACAA18:
/* 00AF8 80ACAA18 0C042DC8 */  jal     func_8010B720              
/* 00AFC 80ACAA1C 2405206B */  addiu   $a1, $zero, 0x206B         ## $a1 = 0000206B
/* 00B00 80ACAA20 3C0F80AD */  lui     $t7, %hi(func_80ACA7E0)    ## $t7 = 80AD0000
/* 00B04 80ACAA24 25EFA7E0 */  addiu   $t7, $t7, %lo(func_80ACA7E0) ## $t7 = 80ACA7E0
/* 00B08 80ACAA28 AE0F040C */  sw      $t7, 0x040C($s0)           ## 0000040C
.L80ACAA2C:
/* 00B0C 80ACAA2C 961803FC */  lhu     $t8, 0x03FC($s0)           ## 000003FC
.L80ACAA30:
/* 00B10 80ACAA30 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00B14 80ACAA34 3319FFFD */  andi    $t9, $t8, 0xFFFD           ## $t9 = 00000000
/* 00B18 80ACAA38 0C2B29C7 */  jal     func_80ACA71C              
/* 00B1C 80ACAA3C A61903FC */  sh      $t9, 0x03FC($s0)           ## 000003FC
.L80ACAA40:
/* 00B20 80ACAA40 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00B24 80ACAA44 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00B28 80ACAA48 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00B2C 80ACAA4C 03E00008 */  jr      $ra                        
/* 00B30 80ACAA50 00000000 */  nop
