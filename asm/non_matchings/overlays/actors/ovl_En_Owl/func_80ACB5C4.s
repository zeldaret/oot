glabel func_80ACB5C4
/* 016A4 80ACB5C4 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 016A8 80ACB5C8 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 016AC 80ACB5CC 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 016B0 80ACB5D0 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 016B4 80ACB5D4 24A420D8 */  addiu   $a0, $a1, 0x20D8           ## $a0 = 000020D8
/* 016B8 80ACB5D8 0C042F6F */  jal     func_8010BDBC              
/* 016BC 80ACB5DC AFA50024 */  sw      $a1, 0x0024($sp)           
/* 016C0 80ACB5E0 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 016C4 80ACB5E4 14410021 */  bne     $v0, $at, .L80ACB66C       
/* 016C8 80ACB5E8 8FA60024 */  lw      $a2, 0x0024($sp)           
/* 016CC 80ACB5EC 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 016D0 80ACB5F0 0C041AF2 */  jal     func_80106BC8              
/* 016D4 80ACB5F4 AFA60024 */  sw      $a2, 0x0024($sp)           
/* 016D8 80ACB5F8 1040001C */  beq     $v0, $zero, .L80ACB66C     
/* 016DC 80ACB5FC 8FA60024 */  lw      $a2, 0x0024($sp)           
/* 016E0 80ACB600 3C020001 */  lui     $v0, 0x0001                ## $v0 = 00010000
/* 016E4 80ACB604 00461021 */  addu    $v0, $v0, $a2              
/* 016E8 80ACB608 904204BD */  lbu     $v0, 0x04BD($v0)           ## 000104BD
/* 016EC 80ACB60C 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 016F0 80ACB610 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 016F4 80ACB614 10400005 */  beq     $v0, $zero, .L80ACB62C     
/* 016F8 80ACB618 00000000 */  nop
/* 016FC 80ACB61C 10410009 */  beq     $v0, $at, .L80ACB644       
/* 01700 80ACB620 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 01704 80ACB624 1000000D */  beq     $zero, $zero, .L80ACB65C   
/* 01708 80ACB628 961803FC */  lhu     $t8, 0x03FC($s0)           ## 000003FC
.L80ACB62C:
/* 0170C 80ACB62C 0C042DC8 */  jal     func_8010B720              
/* 01710 80ACB630 240510C5 */  addiu   $a1, $zero, 0x10C5         ## $a1 = 000010C5
/* 01714 80ACB634 3C0E80AD */  lui     $t6, %hi(func_80ACB680)    ## $t6 = 80AD0000
/* 01718 80ACB638 25CEB680 */  addiu   $t6, $t6, %lo(func_80ACB680) ## $t6 = 80ACB680
/* 0171C 80ACB63C 10000006 */  beq     $zero, $zero, .L80ACB658   
/* 01720 80ACB640 AE0E040C */  sw      $t6, 0x040C($s0)           ## 0000040C
.L80ACB644:
/* 01724 80ACB644 0C042DC8 */  jal     func_8010B720              
/* 01728 80ACB648 240510C7 */  addiu   $a1, $zero, 0x10C7         ## $a1 = 000010C7
/* 0172C 80ACB64C 3C0F80AD */  lui     $t7, %hi(func_80ACA7E0)    ## $t7 = 80AD0000
/* 01730 80ACB650 25EFA7E0 */  addiu   $t7, $t7, %lo(func_80ACA7E0) ## $t7 = 80ACA7E0
/* 01734 80ACB654 AE0F040C */  sw      $t7, 0x040C($s0)           ## 0000040C
.L80ACB658:
/* 01738 80ACB658 961803FC */  lhu     $t8, 0x03FC($s0)           ## 000003FC
.L80ACB65C:
/* 0173C 80ACB65C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01740 80ACB660 3319FFFD */  andi    $t9, $t8, 0xFFFD           ## $t9 = 00000000
/* 01744 80ACB664 0C2B29C7 */  jal     func_80ACA71C              
/* 01748 80ACB668 A61903FC */  sh      $t9, 0x03FC($s0)           ## 000003FC
.L80ACB66C:
/* 0174C 80ACB66C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01750 80ACB670 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 01754 80ACB674 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 01758 80ACB678 03E00008 */  jr      $ra                        
/* 0175C 80ACB67C 00000000 */  nop


