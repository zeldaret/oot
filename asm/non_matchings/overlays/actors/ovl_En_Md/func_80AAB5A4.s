glabel func_80AAB5A4
/* 01354 80AAB5A4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01358 80AAB5A8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0135C 80AAB5AC 84A200A4 */  lh      $v0, 0x00A4($a1)           ## 000000A4
/* 01360 80AAB5B0 24010028 */  addiu   $at, $zero, 0x0028         ## $at = 00000028
/* 01364 80AAB5B4 3C038016 */  lui     $v1, %hi(gSaveContext)
/* 01368 80AAB5B8 1041001E */  beq     $v0, $at, .L80AAB634       
/* 0136C 80AAB5BC 240A00FF */  addiu   $t2, $zero, 0x00FF         ## $t2 = 000000FF
/* 01370 80AAB5C0 2463E660 */  addiu   $v1, %lo(gSaveContext)
/* 01374 80AAB5C4 3C0E8012 */  lui     $t6, %hi(gBitFlags+0x48)
/* 01378 80AAB5C8 8DCE7168 */  lw      $t6, %lo(gBitFlags+0x48)($t6)
/* 0137C 80AAB5CC 8C6F00A4 */  lw      $t7, 0x00A4($v1)           ## 8015E704
/* 01380 80AAB5D0 01CFC024 */  and     $t8, $t6, $t7              
/* 01384 80AAB5D4 5300000C */  beql    $t8, $zero, .L80AAB608     
/* 01388 80AAB5D8 3C0143C8 */  lui     $at, 0x43C8                ## $at = 43C80000
/* 0138C 80AAB5DC 94790ED6 */  lhu     $t9, 0x0ED6($v1)           ## 8015F536
/* 01390 80AAB5E0 24010055 */  addiu   $at, $zero, 0x0055         ## $at = 00000055
/* 01394 80AAB5E4 33281000 */  andi    $t0, $t9, 0x1000           ## $t0 = 00000000
/* 01398 80AAB5E8 55000007 */  bnel    $t0, $zero, .L80AAB608     
/* 0139C 80AAB5EC 3C0143C8 */  lui     $at, 0x43C8                ## $at = 43C80000
/* 013A0 80AAB5F0 14410004 */  bne     $v0, $at, .L80AAB604       
/* 013A4 80AAB5F4 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 013A8 80AAB5F8 44810000 */  mtc1    $at, $f0                   ## $f0 = 100.00
/* 013AC 80AAB5FC 10000005 */  beq     $zero, $zero, .L80AAB614   
/* 013B0 80AAB600 84860210 */  lh      $a2, 0x0210($a0)           ## 00000210
.L80AAB604:
/* 013B4 80AAB604 3C0143C8 */  lui     $at, 0x43C8                ## $at = 43C80000
.L80AAB608:
/* 013B8 80AAB608 44810000 */  mtc1    $at, $f0                   ## $f0 = 400.00
/* 013BC 80AAB60C 00000000 */  nop
/* 013C0 80AAB610 84860210 */  lh      $a2, 0x0210($a0)           ## 00000210
.L80AAB614:
/* 013C4 80AAB614 44070000 */  mfc1    $a3, $f0                   
/* 013C8 80AAB618 0C00D375 */  jal     func_80034DD4              
/* 013CC 80AAB61C AFA40018 */  sw      $a0, 0x0018($sp)           
/* 013D0 80AAB620 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 013D4 80AAB624 A4820210 */  sh      $v0, 0x0210($a0)           ## 00000210
/* 013D8 80AAB628 84890210 */  lh      $t1, 0x0210($a0)           ## 00000210
/* 013DC 80AAB62C 10000004 */  beq     $zero, $zero, .L80AAB640   
/* 013E0 80AAB630 A08900C8 */  sb      $t1, 0x00C8($a0)           ## 000000C8
.L80AAB634:
/* 013E4 80AAB634 A48A0210 */  sh      $t2, 0x0210($a0)           ## 00000210
/* 013E8 80AAB638 848B0210 */  lh      $t3, 0x0210($a0)           ## 00000210
/* 013EC 80AAB63C A08B00C8 */  sb      $t3, 0x00C8($a0)           ## 000000C8
.L80AAB640:
/* 013F0 80AAB640 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 013F4 80AAB644 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 013F8 80AAB648 03E00008 */  jr      $ra                        
/* 013FC 80AAB64C 00000000 */  nop
