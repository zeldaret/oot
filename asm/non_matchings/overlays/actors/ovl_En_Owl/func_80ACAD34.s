glabel func_80ACAD34
/* 00E14 80ACAD34 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00E18 80ACAD38 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00E1C 80ACAD3C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00E20 80ACAD40 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00E24 80ACAD44 24A420D8 */  addiu   $a0, $a1, 0x20D8           ## $a0 = 000020D8
/* 00E28 80ACAD48 0C042F6F */  jal     func_8010BDBC              
/* 00E2C 80ACAD4C AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00E30 80ACAD50 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 00E34 80ACAD54 14410021 */  bne     $v0, $at, .L80ACADDC       
/* 00E38 80ACAD58 8FA60024 */  lw      $a2, 0x0024($sp)           
/* 00E3C 80ACAD5C 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 00E40 80ACAD60 0C041AF2 */  jal     func_80106BC8              
/* 00E44 80ACAD64 AFA60024 */  sw      $a2, 0x0024($sp)           
/* 00E48 80ACAD68 1040001C */  beq     $v0, $zero, .L80ACADDC     
/* 00E4C 80ACAD6C 8FA60024 */  lw      $a2, 0x0024($sp)           
/* 00E50 80ACAD70 3C020001 */  lui     $v0, 0x0001                ## $v0 = 00010000
/* 00E54 80ACAD74 00461021 */  addu    $v0, $v0, $a2              
/* 00E58 80ACAD78 904204BD */  lbu     $v0, 0x04BD($v0)           ## 000104BD
/* 00E5C 80ACAD7C 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00E60 80ACAD80 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 00E64 80ACAD84 10400005 */  beq     $v0, $zero, .L80ACAD9C     
/* 00E68 80ACAD88 00000000 */  nop
/* 00E6C 80ACAD8C 10410009 */  beq     $v0, $at, .L80ACADB4       
/* 00E70 80ACAD90 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 00E74 80ACAD94 1000000D */  beq     $zero, $zero, .L80ACADCC   
/* 00E78 80ACAD98 961803FC */  lhu     $t8, 0x03FC($s0)           ## 000003FC
.L80ACAD9C:
/* 00E7C 80ACAD9C 0C042DC8 */  jal     func_8010B720              
/* 00E80 80ACADA0 2405206F */  addiu   $a1, $zero, 0x206F         ## $a1 = 0000206F
/* 00E84 80ACADA4 3C0E80AD */  lui     $t6, %hi(func_80ACADF0)    ## $t6 = 80AD0000
/* 00E88 80ACADA8 25CEADF0 */  addiu   $t6, $t6, %lo(func_80ACADF0) ## $t6 = 80ACADF0
/* 00E8C 80ACADAC 10000006 */  beq     $zero, $zero, .L80ACADC8   
/* 00E90 80ACADB0 AE0E040C */  sw      $t6, 0x040C($s0)           ## 0000040C
.L80ACADB4:
/* 00E94 80ACADB4 0C042DC8 */  jal     func_8010B720              
/* 00E98 80ACADB8 24052070 */  addiu   $a1, $zero, 0x2070         ## $a1 = 00002070
/* 00E9C 80ACADBC 3C0F80AD */  lui     $t7, %hi(func_80ACA7E0)    ## $t7 = 80AD0000
/* 00EA0 80ACADC0 25EFA7E0 */  addiu   $t7, $t7, %lo(func_80ACA7E0) ## $t7 = 80ACA7E0
/* 00EA4 80ACADC4 AE0F040C */  sw      $t7, 0x040C($s0)           ## 0000040C
.L80ACADC8:
/* 00EA8 80ACADC8 961803FC */  lhu     $t8, 0x03FC($s0)           ## 000003FC
.L80ACADCC:
/* 00EAC 80ACADCC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00EB0 80ACADD0 3319FFFD */  andi    $t9, $t8, 0xFFFD           ## $t9 = 00000000
/* 00EB4 80ACADD4 0C2B29C7 */  jal     func_80ACA71C              
/* 00EB8 80ACADD8 A61903FC */  sh      $t9, 0x03FC($s0)           ## 000003FC
.L80ACADDC:
/* 00EBC 80ACADDC 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00EC0 80ACADE0 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00EC4 80ACADE4 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00EC8 80ACADE8 03E00008 */  jr      $ra                        
/* 00ECC 80ACADEC 00000000 */  nop


