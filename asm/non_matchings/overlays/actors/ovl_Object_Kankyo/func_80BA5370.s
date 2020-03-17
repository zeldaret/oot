glabel func_80BA5370
/* 028D0 80BA5370 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 028D4 80BA5374 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 028D8 80BA5378 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 028DC 80BA537C 342117A4 */  ori     $at, $at, 0x17A4           ## $at = 000117A4
/* 028E0 80BA5380 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 028E4 80BA5384 00A12021 */  addu    $a0, $a1, $at              
/* 028E8 80BA5388 90C51658 */  lbu     $a1, 0x1658($a2)           ## 00001658
/* 028EC 80BA538C 0C026062 */  jal     Object_IsLoaded
              
/* 028F0 80BA5390 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 028F4 80BA5394 10400009 */  beq     $v0, $zero, .L80BA53BC     
/* 028F8 80BA5398 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 028FC 80BA539C 90CF1658 */  lbu     $t7, 0x1658($a2)           ## 00001658
/* 02900 80BA53A0 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 02904 80BA53A4 3C0580BA */  lui     $a1, %hi(func_80BA53CC)    ## $a1 = 80BA0000
/* 02908 80BA53A8 A0CE1659 */  sb      $t6, 0x1659($a2)           ## 00001659
/* 0290C 80BA53AC 24A553CC */  addiu   $a1, $a1, %lo(func_80BA53CC) ## $a1 = 80BA53CC
/* 02910 80BA53B0 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 02914 80BA53B4 0C2E8AA8 */  jal     func_80BA2AA0              
/* 02918 80BA53B8 A0CF001E */  sb      $t7, 0x001E($a2)           ## 0000001E
.L80BA53BC:
/* 0291C 80BA53BC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02920 80BA53C0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 02924 80BA53C4 03E00008 */  jr      $ra                        
/* 02928 80BA53C8 00000000 */  nop


