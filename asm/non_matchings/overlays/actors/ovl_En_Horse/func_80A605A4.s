glabel func_80A605A4
/* 052B4 80A605A4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 052B8 80A605A8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 052BC 80A605AC AFA60020 */  sw      $a2, 0x0020($sp)           
/* 052C0 80A605B0 0C298113 */  jal     func_80A6044C              
/* 052C4 80A605B4 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 052C8 80A605B8 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 052CC 80A605BC 240E0002 */  addiu   $t6, $zero, 0x0002         ## $t6 = 00000002
/* 052D0 80A605C0 948F0384 */  lhu     $t7, 0x0384($a0)           ## 00000384
/* 052D4 80A605C4 AC8E0380 */  sw      $t6, 0x0380($a0)           ## 00000380
/* 052D8 80A605C8 31F8FFFE */  andi    $t8, $t7, 0xFFFE           ## $t8 = 00000000
/* 052DC 80A605CC A4980384 */  sh      $t8, 0x0384($a0)           ## 00000384
/* 052E0 80A605D0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 052E4 80A605D4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 052E8 80A605D8 03E00008 */  jr      $ra                        
/* 052EC 80A605DC 00000000 */  nop
