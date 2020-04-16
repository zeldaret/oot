glabel func_80AEE2F8
/* 036E8 80AEE2F8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 036EC 80AEE2FC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 036F0 80AEE300 948E0088 */  lhu     $t6, 0x0088($a0)           ## 00000088
/* 036F4 80AEE304 00A03025 */  or      $a2, $a1, $zero            ## $a2 = 00000000
/* 036F8 80AEE308 31CF0001 */  andi    $t7, $t6, 0x0001           ## $t7 = 00000000
/* 036FC 80AEE30C 11E00018 */  beq     $t7, $zero, .L80AEE370     
/* 03700 80AEE310 00000000 */  nop
/* 03704 80AEE314 9082007D */  lbu     $v0, 0x007D($a0)           ## 0000007D
/* 03708 80AEE318 24010032 */  addiu   $at, $zero, 0x0032         ## $at = 00000032
/* 0370C 80AEE31C 10410014 */  beq     $v0, $at, .L80AEE370       
/* 03710 80AEE320 00402825 */  or      $a1, $v0, $zero            ## $a1 = 00000000
/* 03714 80AEE324 0C00FAE1 */  jal     DynaPolyInfo_GetActor
              ## DynaPolyInfo_getActor
/* 03718 80AEE328 24C407C0 */  addiu   $a0, $a2, 0x07C0           ## $a0 = 000007C0
/* 0371C 80AEE32C 10400010 */  beq     $v0, $zero, .L80AEE370     
/* 03720 80AEE330 00000000 */  nop
/* 03724 80AEE334 84580000 */  lh      $t8, 0x0000($v0)           ## 00000000
/* 03728 80AEE338 240100E6 */  addiu   $at, $zero, 0x00E6         ## $at = 000000E6
/* 0372C 80AEE33C 1701000C */  bne     $t8, $at, .L80AEE370       
/* 03730 80AEE340 00000000 */  nop
/* 03734 80AEE344 8459001C */  lh      $t9, 0x001C($v0)           ## 0000001C
/* 03738 80AEE348 3C028016 */  lui     $v0, 0x8016                ## $v0 = 80160000
/* 0373C 80AEE34C 24010038 */  addiu   $at, $zero, 0x0038         ## $at = 00000038
/* 03740 80AEE350 00194203 */  sra     $t0, $t9,  8               
/* 03744 80AEE354 3109003F */  andi    $t1, $t0, 0x003F           ## $t1 = 00000000
/* 03748 80AEE358 15210005 */  bne     $t1, $at, .L80AEE370       
/* 0374C 80AEE35C 2442E660 */  addiu   $v0, $v0, 0xE660           ## $v0 = 8015E660
/* 03750 80AEE360 944A0F20 */  lhu     $t2, 0x0F20($v0)           ## 8015F580
/* 03754 80AEE364 354B0001 */  ori     $t3, $t2, 0x0001           ## $t3 = 00000001
/* 03758 80AEE368 10000006 */  beq     $zero, $zero, .L80AEE384   
/* 0375C 80AEE36C A44B0F20 */  sh      $t3, 0x0F20($v0)           ## 8015F580
.L80AEE370:
/* 03760 80AEE370 3C028016 */  lui     $v0, 0x8016                ## $v0 = 80160000
/* 03764 80AEE374 2442E660 */  addiu   $v0, $v0, 0xE660           ## $v0 = 8015E660
/* 03768 80AEE378 944C0F20 */  lhu     $t4, 0x0F20($v0)           ## 8015F580
/* 0376C 80AEE37C 318DFFFE */  andi    $t5, $t4, 0xFFFE           ## $t5 = 00000000
/* 03770 80AEE380 A44D0F20 */  sh      $t5, 0x0F20($v0)           ## 8015F580
.L80AEE384:
/* 03774 80AEE384 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 03778 80AEE388 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0377C 80AEE38C 03E00008 */  jr      $ra                        
/* 03780 80AEE390 00000000 */  nop
