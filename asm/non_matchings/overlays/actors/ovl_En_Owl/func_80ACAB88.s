glabel func_80ACAB88
/* 00C68 80ACAB88 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00C6C 80ACAB8C AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00C70 80ACAB90 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00C74 80ACAB94 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00C78 80ACAB98 24A420D8 */  addiu   $a0, $a1, 0x20D8           ## $a0 = 000020D8
/* 00C7C 80ACAB9C 0C042F6F */  jal     func_8010BDBC              
/* 00C80 80ACABA0 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00C84 80ACABA4 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 00C88 80ACABA8 1441002B */  bne     $v0, $at, .L80ACAC58       
/* 00C8C 80ACABAC 8FA60024 */  lw      $a2, 0x0024($sp)           
/* 00C90 80ACABB0 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 00C94 80ACABB4 0C041AF2 */  jal     func_80106BC8              
/* 00C98 80ACABB8 AFA60024 */  sw      $a2, 0x0024($sp)           
/* 00C9C 80ACABBC 10400026 */  beq     $v0, $zero, .L80ACAC58     
/* 00CA0 80ACABC0 8FA60024 */  lw      $a2, 0x0024($sp)           
/* 00CA4 80ACABC4 3C020001 */  lui     $v0, 0x0001                ## $v0 = 00010000
/* 00CA8 80ACABC8 00461021 */  addu    $v0, $v0, $a2              
/* 00CAC 80ACABCC 904204BD */  lbu     $v0, 0x04BD($v0)           ## 000104BD
/* 00CB0 80ACABD0 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00CB4 80ACABD4 3C0E8016 */  lui     $t6, 0x8016                ## $t6 = 80160000
/* 00CB8 80ACABD8 10400005 */  beq     $v0, $zero, .L80ACABF0     
/* 00CBC 80ACABDC 00000000 */  nop
/* 00CC0 80ACABE0 10410013 */  beq     $v0, $at, .L80ACAC30       
/* 00CC4 80ACABE4 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 00CC8 80ACABE8 10000017 */  beq     $zero, $zero, .L80ACAC48   
/* 00CCC 80ACABEC 960803FC */  lhu     $t0, 0x03FC($s0)           ## 000003FC
.L80ACABF0:
/* 00CD0 80ACABF0 95CEF53C */  lhu     $t6, -0x0AC4($t6)          ## 8015F53C
/* 00CD4 80ACABF4 2405206D */  addiu   $a1, $zero, 0x206D         ## $a1 = 0000206D
/* 00CD8 80ACABF8 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 00CDC 80ACABFC 31CF0001 */  andi    $t7, $t6, 0x0001           ## $t7 = 00000000
/* 00CE0 80ACAC00 11E00005 */  beq     $t7, $zero, .L80ACAC18     
/* 00CE4 80ACAC04 00000000 */  nop
/* 00CE8 80ACAC08 0C042DC8 */  jal     func_8010B720              
/* 00CEC 80ACAC0C 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 00CF0 80ACAC10 10000003 */  beq     $zero, $zero, .L80ACAC20   
/* 00CF4 80ACAC14 00000000 */  nop
.L80ACAC18:
/* 00CF8 80ACAC18 0C042DC8 */  jal     func_8010B720              
/* 00CFC 80ACAC1C 2405206C */  addiu   $a1, $zero, 0x206C         ## $a1 = 0000206C
.L80ACAC20:
/* 00D00 80ACAC20 3C1880AD */  lui     $t8, %hi(func_80ACAC6C)    ## $t8 = 80AD0000
/* 00D04 80ACAC24 2718AC6C */  addiu   $t8, $t8, %lo(func_80ACAC6C) ## $t8 = 80ACAC6C
/* 00D08 80ACAC28 10000006 */  beq     $zero, $zero, .L80ACAC44   
/* 00D0C 80ACAC2C AE18040C */  sw      $t8, 0x040C($s0)           ## 0000040C
.L80ACAC30:
/* 00D10 80ACAC30 0C042DC8 */  jal     func_8010B720              
/* 00D14 80ACAC34 2405206E */  addiu   $a1, $zero, 0x206E         ## $a1 = 0000206E
/* 00D18 80ACAC38 3C1980AD */  lui     $t9, %hi(func_80ACA7E0)    ## $t9 = 80AD0000
/* 00D1C 80ACAC3C 2739A7E0 */  addiu   $t9, $t9, %lo(func_80ACA7E0) ## $t9 = 80ACA7E0
/* 00D20 80ACAC40 AE19040C */  sw      $t9, 0x040C($s0)           ## 0000040C
.L80ACAC44:
/* 00D24 80ACAC44 960803FC */  lhu     $t0, 0x03FC($s0)           ## 000003FC
.L80ACAC48:
/* 00D28 80ACAC48 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00D2C 80ACAC4C 3109FFFD */  andi    $t1, $t0, 0xFFFD           ## $t1 = 00000000
/* 00D30 80ACAC50 0C2B29C7 */  jal     func_80ACA71C              
/* 00D34 80ACAC54 A60903FC */  sh      $t1, 0x03FC($s0)           ## 000003FC
.L80ACAC58:
/* 00D38 80ACAC58 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00D3C 80ACAC5C 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00D40 80ACAC60 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00D44 80ACAC64 03E00008 */  jr      $ra                        
/* 00D48 80ACAC68 00000000 */  nop


