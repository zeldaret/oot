glabel func_80AB2E1C
/* 0208C 80AB2E1C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 02090 80AB2E20 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 02094 80AB2E24 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 02098 80AB2E28 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 0209C 80AB2E2C 44813000 */  mtc1    $at, $f6                   ## $f6 = 1.00
/* 020A0 80AB2E30 C4840290 */  lwc1    $f4, 0x0290($a0)           ## 00000290
/* 020A4 80AB2E34 3C014270 */  lui     $at, 0x4270                ## $at = 42700000
/* 020A8 80AB2E38 44815000 */  mtc1    $at, $f10                  ## $f10 = 60.00
/* 020AC 80AB2E3C 46062200 */  add.s   $f8, $f4, $f6              
/* 020B0 80AB2E40 E4880290 */  swc1    $f8, 0x0290($a0)           ## 00000290
/* 020B4 80AB2E44 C4900290 */  lwc1    $f16, 0x0290($a0)          ## 00000290
/* 020B8 80AB2E48 4610503C */  c.lt.s  $f10, $f16                 
/* 020BC 80AB2E4C 00000000 */  nop
/* 020C0 80AB2E50 45020004 */  bc1fl   .L80AB2E64                 
/* 020C4 80AB2E54 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 020C8 80AB2E58 0C00B55C */  jal     Actor_Kill
              
/* 020CC 80AB2E5C 00000000 */  nop
/* 020D0 80AB2E60 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AB2E64:
/* 020D4 80AB2E64 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 020D8 80AB2E68 03E00008 */  jr      $ra                        
/* 020DC 80AB2E6C 00000000 */  nop


