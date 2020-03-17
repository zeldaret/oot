glabel EnMa1_Draw
/* 00E14 80AA14A4 27BDFF98 */  addiu   $sp, $sp, 0xFF98           ## $sp = FFFFFF98
/* 00E18 80AA14A8 AFB20030 */  sw      $s2, 0x0030($sp)           
/* 00E1C 80AA14AC 00A09025 */  or      $s2, $a1, $zero            ## $s2 = 00000000
/* 00E20 80AA14B0 AFBF0034 */  sw      $ra, 0x0034($sp)           
/* 00E24 80AA14B4 AFB1002C */  sw      $s1, 0x002C($sp)           
/* 00E28 80AA14B8 AFB00028 */  sw      $s0, 0x0028($sp)           
/* 00E2C 80AA14BC 8CA50000 */  lw      $a1, 0x0000($a1)           ## 00000000
/* 00E30 80AA14C0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00E34 80AA14C4 3C0680AA */  lui     $a2, %hi(D_80AA16E0)       ## $a2 = 80AA0000
/* 00E38 80AA14C8 24C616E0 */  addiu   $a2, $a2, %lo(D_80AA16E0)  ## $a2 = 80AA16E0
/* 00E3C 80AA14CC 27A40044 */  addiu   $a0, $sp, 0x0044           ## $a0 = FFFFFFDC
/* 00E40 80AA14D0 240704CA */  addiu   $a3, $zero, 0x04CA         ## $a3 = 000004CA
/* 00E44 80AA14D4 0C031AB1 */  jal     func_800C6AC4              
/* 00E48 80AA14D8 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 00E4C 80AA14DC 864E07A0 */  lh      $t6, 0x07A0($s2)           ## 000007A0
/* 00E50 80AA14E0 26040024 */  addiu   $a0, $s0, 0x0024           ## $a0 = 00000024
/* 00E54 80AA14E4 000E7880 */  sll     $t7, $t6,  2               
/* 00E58 80AA14E8 024FC021 */  addu    $t8, $s2, $t7              
/* 00E5C 80AA14EC 8F020790 */  lw      $v0, 0x0790($t8)           ## 00000790
/* 00E60 80AA14F0 0C01E00A */  jal     Math_Vec3f_DistXZ
              
/* 00E64 80AA14F4 2445005C */  addiu   $a1, $v0, 0x005C           ## $a1 = 0000005C
/* 00E68 80AA14F8 46000306 */  mov.s   $f12, $f0                  
/* 00E6C 80AA14FC 0C03D89A */  jal     func_800F6268              
/* 00E70 80AA1500 2405002F */  addiu   $a1, $zero, 0x002F         ## $a1 = 0000002F
/* 00E74 80AA1504 0C024F46 */  jal     func_80093D18              
/* 00E78 80AA1508 8E440000 */  lw      $a0, 0x0000($s2)           ## 00000000
/* 00E7C 80AA150C 8E2302C0 */  lw      $v1, 0x02C0($s1)           ## 000002C0
/* 00E80 80AA1510 3C08DB06 */  lui     $t0, 0xDB06                ## $t0 = DB060000
/* 00E84 80AA1514 35080024 */  ori     $t0, $t0, 0x0024           ## $t0 = DB060024
/* 00E88 80AA1518 24790008 */  addiu   $t9, $v1, 0x0008           ## $t9 = 00000008
/* 00E8C 80AA151C AE3902C0 */  sw      $t9, 0x02C0($s1)           ## 000002C0
/* 00E90 80AA1520 AC680000 */  sw      $t0, 0x0000($v1)           ## 00000000
/* 00E94 80AA1524 860901E6 */  lh      $t1, 0x01E6($s0)           ## 000001E6
/* 00E98 80AA1528 3C0480AA */  lui     $a0, %hi(D_80AA16C4)       ## $a0 = 80AA0000
/* 00E9C 80AA152C 3C068016 */  lui     $a2, 0x8016                ## $a2 = 80160000
/* 00EA0 80AA1530 00095080 */  sll     $t2, $t1,  2               
/* 00EA4 80AA1534 008A2021 */  addu    $a0, $a0, $t2              
/* 00EA8 80AA1538 8C8416C4 */  lw      $a0, %lo(D_80AA16C4)($a0)  
/* 00EAC 80AA153C 24C66FA8 */  addiu   $a2, $a2, 0x6FA8           ## $a2 = 80166FA8
/* 00EB0 80AA1540 3C0500FF */  lui     $a1, 0x00FF                ## $a1 = 00FF0000
/* 00EB4 80AA1544 00046100 */  sll     $t4, $a0,  4               
/* 00EB8 80AA1548 000C6F02 */  srl     $t5, $t4, 28               
/* 00EBC 80AA154C 000D7080 */  sll     $t6, $t5,  2               
/* 00EC0 80AA1550 00CE7821 */  addu    $t7, $a2, $t6              
/* 00EC4 80AA1554 8DF80000 */  lw      $t8, 0x0000($t7)           ## 00000000
/* 00EC8 80AA1558 34A5FFFF */  ori     $a1, $a1, 0xFFFF           ## $a1 = 00FFFFFF
/* 00ECC 80AA155C 00855824 */  and     $t3, $a0, $a1              
/* 00ED0 80AA1560 3C078000 */  lui     $a3, 0x8000                ## $a3 = 80000000
/* 00ED4 80AA1564 0178C821 */  addu    $t9, $t3, $t8              
/* 00ED8 80AA1568 03274021 */  addu    $t0, $t9, $a3              
/* 00EDC 80AA156C AC680004 */  sw      $t0, 0x0004($v1)           ## 00000004
/* 00EE0 80AA1570 8E2302C0 */  lw      $v1, 0x02C0($s1)           ## 000002C0
/* 00EE4 80AA1574 3C0ADB06 */  lui     $t2, 0xDB06                ## $t2 = DB060000
/* 00EE8 80AA1578 354A0020 */  ori     $t2, $t2, 0x0020           ## $t2 = DB060020
/* 00EEC 80AA157C 24690008 */  addiu   $t1, $v1, 0x0008           ## $t1 = 00000008
/* 00EF0 80AA1580 AE2902C0 */  sw      $t1, 0x02C0($s1)           ## 000002C0
/* 00EF4 80AA1584 AC6A0000 */  sw      $t2, 0x0000($v1)           ## 00000000
/* 00EF8 80AA1588 860C01E4 */  lh      $t4, 0x01E4($s0)           ## 000001E4
/* 00EFC 80AA158C 3C0480AA */  lui     $a0, %hi(D_80AA16D0)       ## $a0 = 80AA0000
/* 00F00 80AA1590 000C6880 */  sll     $t5, $t4,  2               
/* 00F04 80AA1594 008D2021 */  addu    $a0, $a0, $t5              
/* 00F08 80AA1598 8C8416D0 */  lw      $a0, %lo(D_80AA16D0)($a0)  
/* 00F0C 80AA159C 3C0D80AA */  lui     $t5, %hi(func_80AA1448)    ## $t5 = 80AA0000
/* 00F10 80AA15A0 3C0C80AA */  lui     $t4, %hi(func_80AA12BC)    ## $t4 = 80AA0000
/* 00F14 80AA15A4 00047900 */  sll     $t7, $a0,  4               
/* 00F18 80AA15A8 000F5F02 */  srl     $t3, $t7, 28               
/* 00F1C 80AA15AC 000BC080 */  sll     $t8, $t3,  2               
/* 00F20 80AA15B0 00D8C821 */  addu    $t9, $a2, $t8              
/* 00F24 80AA15B4 8F280000 */  lw      $t0, 0x0000($t9)           ## 00000008
/* 00F28 80AA15B8 00857024 */  and     $t6, $a0, $a1              
/* 00F2C 80AA15BC 258C12BC */  addiu   $t4, $t4, %lo(func_80AA12BC) ## $t4 = 80AA12BC
/* 00F30 80AA15C0 01C84821 */  addu    $t1, $t6, $t0              
/* 00F34 80AA15C4 01275021 */  addu    $t2, $t1, $a3              
/* 00F38 80AA15C8 AC6A0004 */  sw      $t2, 0x0004($v1)           ## 00000004
/* 00F3C 80AA15CC 9207014E */  lbu     $a3, 0x014E($s0)           ## 0000014E
/* 00F40 80AA15D0 8E06016C */  lw      $a2, 0x016C($s0)           ## 0000016C
/* 00F44 80AA15D4 8E050150 */  lw      $a1, 0x0150($s0)           ## 00000150
/* 00F48 80AA15D8 25AD1448 */  addiu   $t5, $t5, %lo(func_80AA1448) ## $t5 = 80AA1448
/* 00F4C 80AA15DC AFAD0014 */  sw      $t5, 0x0014($sp)           
/* 00F50 80AA15E0 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00F54 80AA15E4 AFAC0010 */  sw      $t4, 0x0010($sp)           
/* 00F58 80AA15E8 0C0286B2 */  jal     func_800A1AC8              
/* 00F5C 80AA15EC 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 00F60 80AA15F0 3C0680AA */  lui     $a2, %hi(D_80AA16F0)       ## $a2 = 80AA0000
/* 00F64 80AA15F4 24C616F0 */  addiu   $a2, $a2, %lo(D_80AA16F0)  ## $a2 = 80AA16F0
/* 00F68 80AA15F8 27A40044 */  addiu   $a0, $sp, 0x0044           ## $a0 = FFFFFFDC
/* 00F6C 80AA15FC 8E450000 */  lw      $a1, 0x0000($s2)           ## 00000000
/* 00F70 80AA1600 0C031AD5 */  jal     func_800C6B54              
/* 00F74 80AA1604 240704ED */  addiu   $a3, $zero, 0x04ED         ## $a3 = 000004ED
/* 00F78 80AA1608 8FBF0034 */  lw      $ra, 0x0034($sp)           
/* 00F7C 80AA160C 8FB00028 */  lw      $s0, 0x0028($sp)           
/* 00F80 80AA1610 8FB1002C */  lw      $s1, 0x002C($sp)           
/* 00F84 80AA1614 8FB20030 */  lw      $s2, 0x0030($sp)           
/* 00F88 80AA1618 03E00008 */  jr      $ra                        
/* 00F8C 80AA161C 27BD0068 */  addiu   $sp, $sp, 0x0068           ## $sp = 00000000

