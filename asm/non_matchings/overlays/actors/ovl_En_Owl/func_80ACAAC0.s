glabel func_80ACAAC0
/* 00BA0 80ACAAC0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00BA4 80ACAAC4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00BA8 80ACAAC8 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00BAC 80ACAACC AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00BB0 80ACAAD0 0C042F6F */  jal     func_8010BDBC              
/* 00BB4 80ACAAD4 24A420D8 */  addiu   $a0, $a1, 0x20D8           ## $a0 = 000020D8
/* 00BB8 80ACAAD8 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 00BBC 80ACAADC 54410010 */  bnel    $v0, $at, .L80ACAB20       
/* 00BC0 80ACAAE0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00BC4 80ACAAE4 0C041AF2 */  jal     func_80106BC8              
/* 00BC8 80ACAAE8 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 00BCC 80ACAAEC 1040000B */  beq     $v0, $zero, .L80ACAB1C     
/* 00BD0 80ACAAF0 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 00BD4 80ACAAF4 0C042DC8 */  jal     func_8010B720              
/* 00BD8 80ACAAF8 24052069 */  addiu   $a1, $zero, 0x2069         ## $a1 = 00002069
/* 00BDC 80ACAAFC 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00BE0 80ACAB00 3C0E80AD */  lui     $t6, %hi(func_80ACAA54)    ## $t6 = 80AD0000
/* 00BE4 80ACAB04 25CEAA54 */  addiu   $t6, $t6, %lo(func_80ACAA54) ## $t6 = 80ACAA54
/* 00BE8 80ACAB08 948F03FC */  lhu     $t7, 0x03FC($a0)           ## 000003FC
/* 00BEC 80ACAB0C AC8E040C */  sw      $t6, 0x040C($a0)           ## 0000040C
/* 00BF0 80ACAB10 31F8FFFD */  andi    $t8, $t7, 0xFFFD           ## $t8 = 00000000
/* 00BF4 80ACAB14 0C2B29C7 */  jal     func_80ACA71C              
/* 00BF8 80ACAB18 A49803FC */  sh      $t8, 0x03FC($a0)           ## 000003FC
.L80ACAB1C:
/* 00BFC 80ACAB1C 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80ACAB20:
/* 00C00 80ACAB20 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00C04 80ACAB24 03E00008 */  jr      $ra                        
/* 00C08 80ACAB28 00000000 */  nop
