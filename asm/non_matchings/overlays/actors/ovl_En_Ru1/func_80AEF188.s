glabel func_80AEF188
/* 04578 80AEF188 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0457C 80AEF18C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 04580 80AEF190 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 04584 80AEF194 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 04588 80AEF198 0C2BAC5D */  jal     func_80AEB174              
/* 0458C 80AEF19C 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 04590 80AEF1A0 1040000F */  beq     $v0, $zero, .L80AEF1E0     
/* 04594 80AEF1A4 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 04598 80AEF1A8 0C2BBC2F */  jal     func_80AEF0BC              
/* 0459C 80AEF1AC 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 045A0 80AEF1B0 5440000C */  bnel    $v0, $zero, .L80AEF1E4     
/* 045A4 80AEF1B4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 045A8 80AEF1B8 0C041B33 */  jal     func_80106CCC              
/* 045AC 80AEF1BC 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 045B0 80AEF1C0 3C028016 */  lui     $v0, 0x8016                ## $v0 = 80160000
/* 045B4 80AEF1C4 2442E660 */  addiu   $v0, $v0, 0xE660           ## $v0 = 8015E660
/* 045B8 80AEF1C8 944E0F20 */  lhu     $t6, 0x0F20($v0)           ## 8015F580
/* 045BC 80AEF1CC 8FB90018 */  lw      $t9, 0x0018($sp)           
/* 045C0 80AEF1D0 24180018 */  addiu   $t8, $zero, 0x0018         ## $t8 = 00000018
/* 045C4 80AEF1D4 35CF0004 */  ori     $t7, $t6, 0x0004           ## $t7 = 00000004
/* 045C8 80AEF1D8 A44F0F20 */  sh      $t7, 0x0F20($v0)           ## 8015F580
/* 045CC 80AEF1DC AF380264 */  sw      $t8, 0x0264($t9)           ## 00000264
.L80AEF1E0:
/* 045D0 80AEF1E0 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AEF1E4:
/* 045D4 80AEF1E4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 045D8 80AEF1E8 03E00008 */  jr      $ra                        
/* 045DC 80AEF1EC 00000000 */  nop
