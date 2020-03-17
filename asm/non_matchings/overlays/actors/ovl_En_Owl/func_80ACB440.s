glabel func_80ACB440
/* 01520 80ACB440 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 01524 80ACB444 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 01528 80ACB448 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0152C 80ACB44C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 01530 80ACB450 24A420D8 */  addiu   $a0, $a1, 0x20D8           ## $a0 = 000020D8
/* 01534 80ACB454 0C042F6F */  jal     func_8010BDBC              
/* 01538 80ACB458 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 0153C 80ACB45C 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 01540 80ACB460 14410021 */  bne     $v0, $at, .L80ACB4E8       
/* 01544 80ACB464 8FA60024 */  lw      $a2, 0x0024($sp)           
/* 01548 80ACB468 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 0154C 80ACB46C 0C041AF2 */  jal     func_80106BC8              
/* 01550 80ACB470 AFA60024 */  sw      $a2, 0x0024($sp)           
/* 01554 80ACB474 1040001C */  beq     $v0, $zero, .L80ACB4E8     
/* 01558 80ACB478 8FA60024 */  lw      $a2, 0x0024($sp)           
/* 0155C 80ACB47C 3C020001 */  lui     $v0, 0x0001                ## $v0 = 00010000
/* 01560 80ACB480 00461021 */  addu    $v0, $v0, $a2              
/* 01564 80ACB484 904204BD */  lbu     $v0, 0x04BD($v0)           ## 000104BD
/* 01568 80ACB488 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 0156C 80ACB48C 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 01570 80ACB490 10400005 */  beq     $v0, $zero, .L80ACB4A8     
/* 01574 80ACB494 00000000 */  nop
/* 01578 80ACB498 10410009 */  beq     $v0, $at, .L80ACB4C0       
/* 0157C 80ACB49C 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 01580 80ACB4A0 1000000D */  beq     $zero, $zero, .L80ACB4D8   
/* 01584 80ACB4A4 961803FC */  lhu     $t8, 0x03FC($s0)           ## 000003FC
.L80ACB4A8:
/* 01588 80ACB4A8 0C042DC8 */  jal     func_8010B720              
/* 0158C 80ACB4AC 240510C1 */  addiu   $a1, $zero, 0x10C1         ## $a1 = 000010C1
/* 01590 80ACB4B0 3C0E80AD */  lui     $t6, %hi(func_80ACB4FC)    ## $t6 = 80AD0000
/* 01594 80ACB4B4 25CEB4FC */  addiu   $t6, $t6, %lo(func_80ACB4FC) ## $t6 = 80ACB4FC
/* 01598 80ACB4B8 10000006 */  beq     $zero, $zero, .L80ACB4D4   
/* 0159C 80ACB4BC AE0E040C */  sw      $t6, 0x040C($s0)           ## 0000040C
.L80ACB4C0:
/* 015A0 80ACB4C0 0C042DC8 */  jal     func_8010B720              
/* 015A4 80ACB4C4 240510C3 */  addiu   $a1, $zero, 0x10C3         ## $a1 = 000010C3
/* 015A8 80ACB4C8 3C0F80AD */  lui     $t7, %hi(func_80ACA7E0)    ## $t7 = 80AD0000
/* 015AC 80ACB4CC 25EFA7E0 */  addiu   $t7, $t7, %lo(func_80ACA7E0) ## $t7 = 80ACA7E0
/* 015B0 80ACB4D0 AE0F040C */  sw      $t7, 0x040C($s0)           ## 0000040C
.L80ACB4D4:
/* 015B4 80ACB4D4 961803FC */  lhu     $t8, 0x03FC($s0)           ## 000003FC
.L80ACB4D8:
/* 015B8 80ACB4D8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 015BC 80ACB4DC 3319FFFD */  andi    $t9, $t8, 0xFFFD           ## $t9 = 00000000
/* 015C0 80ACB4E0 0C2B29C7 */  jal     func_80ACA71C              
/* 015C4 80ACB4E4 A61903FC */  sh      $t9, 0x03FC($s0)           ## 000003FC
.L80ACB4E8:
/* 015C8 80ACB4E8 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 015CC 80ACB4EC 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 015D0 80ACB4F0 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 015D4 80ACB4F4 03E00008 */  jr      $ra                        
/* 015D8 80ACB4F8 00000000 */  nop


