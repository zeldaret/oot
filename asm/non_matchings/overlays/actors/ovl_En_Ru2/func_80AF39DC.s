glabel func_80AF39DC
/* 0148C 80AF39DC 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 01490 80AF39E0 AFB10018 */  sw      $s1, 0x0018($sp)           
/* 01494 80AF39E4 00808825 */  or      $s1, $a0, $zero            ## $s1 = 00000000
/* 01498 80AF39E8 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 0149C 80AF39EC AFB00014 */  sw      $s0, 0x0014($sp)           
/* 014A0 80AF39F0 24A420D8 */  addiu   $a0, $a1, 0x20D8           ## $a0 = 000020D8
/* 014A4 80AF39F4 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 014A8 80AF39F8 0C042F6F */  jal     func_8010BDBC              
/* 014AC 80AF39FC AFA40024 */  sw      $a0, 0x0024($sp)           
/* 014B0 80AF3A00 24030003 */  addiu   $v1, $zero, 0x0003         ## $v1 = 00000003
/* 014B4 80AF3A04 14620023 */  bne     $v1, $v0, .L80AF3A94       
/* 014B8 80AF3A08 A3A20033 */  sb      $v0, 0x0033($sp)           
/* 014BC 80AF3A0C 922E02C3 */  lbu     $t6, 0x02C3($s1)           ## 000002C3
/* 014C0 80AF3A10 3C0480AF */  lui     $a0, %hi(D_80AF51C4)       ## $a0 = 80AF0000
/* 014C4 80AF3A14 506E0020 */  beql    $v1, $t6, .L80AF3A98       
/* 014C8 80AF3A18 93AC0033 */  lbu     $t4, 0x0033($sp)           
/* 014CC 80AF3A1C 0C00084C */  jal     osSyncPrintf
              
/* 014D0 80AF3A20 248451C4 */  addiu   $a0, $a0, %lo(D_80AF51C4)  ## $a0 = 80AF51C4
/* 014D4 80AF3A24 922F02C2 */  lbu     $t7, 0x02C2($s1)           ## 000002C2
/* 014D8 80AF3A28 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
/* 014DC 80AF3A2C 24030003 */  addiu   $v1, $zero, 0x0003         ## $v1 = 00000003
/* 014E0 80AF3A30 25F80001 */  addiu   $t8, $t7, 0x0001           ## $t8 = 00000001
/* 014E4 80AF3A34 331900FF */  andi    $t9, $t8, 0x00FF           ## $t9 = 00000001
/* 014E8 80AF3A38 0321001A */  div     $zero, $t9, $at            
/* 014EC 80AF3A3C 00004010 */  mfhi    $t0                        
/* 014F0 80AF3A40 A23802C2 */  sb      $t8, 0x02C2($s1)           ## 000002C2
/* 014F4 80AF3A44 14680013 */  bne     $v1, $t0, .L80AF3A94       
/* 014F8 80AF3A48 3C0480AF */  lui     $a0, %hi(D_80AF51D8)       ## $a0 = 80AF0000
/* 014FC 80AF3A4C 8E031C44 */  lw      $v1, 0x1C44($s0)           ## 00001C44
/* 01500 80AF3A50 248451D8 */  addiu   $a0, $a0, %lo(D_80AF51D8)  ## $a0 = 80AF51D8
/* 01504 80AF3A54 0C00084C */  jal     osSyncPrintf
              
/* 01508 80AF3A58 AFA3002C */  sw      $v1, 0x002C($sp)           
/* 0150C 80AF3A5C 860907A0 */  lh      $t1, 0x07A0($s0)           ## 000007A0
/* 01510 80AF3A60 00095080 */  sll     $t2, $t1,  2               
/* 01514 80AF3A64 020A5821 */  addu    $t3, $s0, $t2              
/* 01518 80AF3A68 0C016C69 */  jal     func_8005B1A4              
/* 0151C 80AF3A6C 8D640790 */  lw      $a0, 0x0790($t3)           ## 00000790
/* 01520 80AF3A70 3C01444D */  lui     $at, 0x444D                ## $at = 444D0000
/* 01524 80AF3A74 8FA3002C */  lw      $v1, 0x002C($sp)           
/* 01528 80AF3A78 44812000 */  mtc1    $at, $f4                   ## $f4 = 820.00
/* 0152C 80AF3A7C 3C014334 */  lui     $at, 0x4334                ## $at = 43340000
/* 01530 80AF3A80 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 01534 80AF3A84 44814000 */  mtc1    $at, $f8                   ## $f8 = 180.00
/* 01538 80AF3A88 E4640024 */  swc1    $f4, 0x0024($v1)           ## 00000024
/* 0153C 80AF3A8C E4660028 */  swc1    $f6, 0x0028($v1)           ## 00000028
/* 01540 80AF3A90 E468002C */  swc1    $f8, 0x002C($v1)           ## 0000002C
.L80AF3A94:
/* 01544 80AF3A94 93AC0033 */  lbu     $t4, 0x0033($sp)           
.L80AF3A98:
/* 01548 80AF3A98 A22C02C3 */  sb      $t4, 0x02C3($s1)           ## 000002C3
/* 0154C 80AF3A9C 0C042F6F */  jal     func_8010BDBC              
/* 01550 80AF3AA0 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 01554 80AF3AA4 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 01558 80AF3AA8 14410007 */  bne     $v0, $at, .L80AF3AC8       
/* 0155C 80AF3AAC 240D0012 */  addiu   $t5, $zero, 0x0012         ## $t5 = 00000012
/* 01560 80AF3AB0 AE2D02A8 */  sw      $t5, 0x02A8($s1)           ## 000002A8
/* 01564 80AF3AB4 860E07A0 */  lh      $t6, 0x07A0($s0)           ## 000007A0
/* 01568 80AF3AB8 000E7880 */  sll     $t7, $t6,  2               
/* 0156C 80AF3ABC 020FC021 */  addu    $t8, $s0, $t7              
/* 01570 80AF3AC0 0C016C69 */  jal     func_8005B1A4              
/* 01574 80AF3AC4 8F040790 */  lw      $a0, 0x0790($t8)           ## 00000790
.L80AF3AC8:
/* 01578 80AF3AC8 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0157C 80AF3ACC 8FB00014 */  lw      $s0, 0x0014($sp)           
/* 01580 80AF3AD0 8FB10018 */  lw      $s1, 0x0018($sp)           
/* 01584 80AF3AD4 03E00008 */  jr      $ra                        
/* 01588 80AF3AD8 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000


