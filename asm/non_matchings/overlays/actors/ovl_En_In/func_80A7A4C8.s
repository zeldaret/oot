glabel func_80A7A4C8
/* 01518 80A7A4C8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0151C 80A7A4CC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01520 80A7A4D0 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 01524 80A7A4D4 848E0308 */  lh      $t6, 0x0308($a0)           ## 00000308
/* 01528 80A7A4D8 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 0152C 80A7A4DC 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 01530 80A7A4E0 15C1001D */  bne     $t6, $at, .L80A7A558       
/* 01534 80A7A4E4 24070020 */  addiu   $a3, $zero, 0x0020         ## $a3 = 00000020
/* 01538 80A7A4E8 0C29E6EB */  jal     func_80A79BAC              
/* 0153C 80A7A4EC AFA40018 */  sw      $a0, 0x0018($sp)           
/* 01540 80A7A4F0 3C028016 */  lui     $v0, 0x8016                ## $v0 = 80160000
/* 01544 80A7A4F4 2442E660 */  addiu   $v0, $v0, 0xE660           ## $v0 = 8015E660
/* 01548 80A7A4F8 944F13FA */  lhu     $t7, 0x13FA($v0)           ## 8015FA5A
/* 0154C 80A7A4FC 944B0F0C */  lhu     $t3, 0x0F0C($v0)           ## 8015F56C
/* 01550 80A7A500 3C01FFFF */  lui     $at, 0xFFFF                ## $at = FFFF0000
/* 01554 80A7A504 31F8FFF0 */  andi    $t8, $t7, 0xFFF0           ## $t8 = 00000000
/* 01558 80A7A508 37080001 */  ori     $t0, $t8, 0x0001           ## $t0 = 00000001
/* 0155C 80A7A50C 34217FFF */  ori     $at, $at, 0x7FFF           ## $at = FFFF7FFF
/* 01560 80A7A510 01014824 */  and     $t1, $t0, $at              
/* 01564 80A7A514 A44813FA */  sh      $t0, 0x13FA($v0)           ## 8015FA5A
/* 01568 80A7A518 352A8000 */  ori     $t2, $t1, 0x8000           ## $t2 = 00008000
/* 0156C 80A7A51C 316CFFFB */  andi    $t4, $t3, 0xFFFB           ## $t4 = 00000000
/* 01570 80A7A520 A44A13FA */  sh      $t2, 0x13FA($v0)           ## 8015FA5A
/* 01574 80A7A524 A44C0F0C */  sh      $t4, 0x0F0C($v0)           ## 8015F56C
/* 01578 80A7A528 0C01DD7C */  jal     func_800775F0              
/* 0157C 80A7A52C 24040040 */  addiu   $a0, $zero, 0x0040         ## $a0 = 00000040
/* 01580 80A7A530 8FA2001C */  lw      $v0, 0x001C($sp)           
/* 01584 80A7A534 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 01588 80A7A538 240D0036 */  addiu   $t5, $zero, 0x0036         ## $t5 = 00000036
/* 0158C 80A7A53C 00220821 */  addu    $at, $at, $v0              
/* 01590 80A7A540 A02004BF */  sb      $zero, 0x04BF($at)         ## 000104BF
/* 01594 80A7A544 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 01598 80A7A548 00220821 */  addu    $at, $at, $v0              
/* 0159C 80A7A54C A02D03DC */  sb      $t5, 0x03DC($at)           ## 000103DC
/* 015A0 80A7A550 8FAE0018 */  lw      $t6, 0x0018($sp)           
/* 015A4 80A7A554 A5C00308 */  sh      $zero, 0x0308($t6)         ## 00000308
.L80A7A558:
/* 015A8 80A7A558 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 015AC 80A7A55C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 015B0 80A7A560 03E00008 */  jr      $ra                        
/* 015B4 80A7A564 00000000 */  nop
