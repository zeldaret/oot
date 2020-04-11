.late_rodata
glabel D_80A0E1DC
    .float 0.2
    .balign 4

glabel D_80A0E1E0
    .float 0.4



.text
glabel func_80A0D4FC
/* 01E3C 80A0D4FC 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 01E40 80A0D500 F7B60020 */  sdc1    $f22, 0x0020($sp)          
/* 01E44 80A0D504 3C0180A1 */  lui     $at, %hi(D_80A0E1DC)       ## $at = 80A10000
/* 01E48 80A0D508 C436E1DC */  lwc1    $f22, %lo(D_80A0E1DC)($at) 
/* 01E4C 80A0D50C AFB20030 */  sw      $s2, 0x0030($sp)           
/* 01E50 80A0D510 AFB1002C */  sw      $s1, 0x002C($sp)           
/* 01E54 80A0D514 AFB00028 */  sw      $s0, 0x0028($sp)           
/* 01E58 80A0D518 F7B40018 */  sdc1    $f20, 0x0018($sp)          
/* 01E5C 80A0D51C 3C0180A1 */  lui     $at, %hi(D_80A0E1E0)       ## $at = 80A10000
/* 01E60 80A0D520 AFBF0034 */  sw      $ra, 0x0034($sp)           
/* 01E64 80A0D524 24900620 */  addiu   $s0, $a0, 0x0620           ## $s0 = 00000620
/* 01E68 80A0D528 C434E1E0 */  lwc1    $f20, %lo(D_80A0E1E0)($at) 
/* 01E6C 80A0D52C 00008825 */  or      $s1, $zero, $zero          ## $s1 = 00000000
/* 01E70 80A0D530 24120001 */  addiu   $s2, $zero, 0x0001         ## $s2 = 00000001
.L80A0D534:
/* 01E74 80A0D534 920E0000 */  lbu     $t6, 0x0000($s0)           ## 00000620
/* 01E78 80A0D538 564E0029 */  bnel    $s2, $t6, .L80A0D5E0       
/* 01E7C 80A0D53C 26310001 */  addiu   $s1, $s1, 0x0001           ## $s1 = 00000001
/* 01E80 80A0D540 920F0001 */  lbu     $t7, 0x0001($s0)           ## 00000621
/* 01E84 80A0D544 25F8FFFF */  addiu   $t8, $t7, 0xFFFF           ## $t8 = FFFFFFFF
/* 01E88 80A0D548 331900FF */  andi    $t9, $t8, 0x00FF           ## $t9 = 000000FF
/* 01E8C 80A0D54C 17200002 */  bne     $t9, $zero, .L80A0D558     
/* 01E90 80A0D550 A2180001 */  sb      $t8, 0x0001($s0)           ## 00000621
/* 01E94 80A0D554 A2000000 */  sb      $zero, 0x0000($s0)         ## 00000620
.L80A0D558:
/* 01E98 80A0D558 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 01E9C 80A0D55C 00000000 */  nop
/* 01EA0 80A0D560 46140102 */  mul.s   $f4, $f0, $f20             
/* 01EA4 80A0D564 46162181 */  sub.s   $f6, $f4, $f22             
/* 01EA8 80A0D568 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 01EAC 80A0D56C E606002C */  swc1    $f6, 0x002C($s0)           ## 0000064C
/* 01EB0 80A0D570 C60C0020 */  lwc1    $f12, 0x0020($s0)          ## 00000640
/* 01EB4 80A0D574 C60A0014 */  lwc1    $f10, 0x0014($s0)          ## 00000634
/* 01EB8 80A0D578 46140202 */  mul.s   $f8, $f0, $f20             
/* 01EBC 80A0D57C C60E0024 */  lwc1    $f14, 0x0024($s0)          ## 00000644
/* 01EC0 80A0D580 460C5480 */  add.s   $f18, $f10, $f12           
/* 01EC4 80A0D584 C6040018 */  lwc1    $f4, 0x0018($s0)           ## 00000638
/* 01EC8 80A0D588 C6100028 */  lwc1    $f16, 0x0028($s0)          ## 00000648
/* 01ECC 80A0D58C E6120014 */  swc1    $f18, 0x0014($s0)          ## 00000634
/* 01ED0 80A0D590 C612002C */  lwc1    $f18, 0x002C($s0)          ## 0000064C
/* 01ED4 80A0D594 460E2180 */  add.s   $f6, $f4, $f14             
/* 01ED8 80A0D598 46164081 */  sub.s   $f2, $f8, $f22             
/* 01EDC 80A0D59C C608001C */  lwc1    $f8, 0x001C($s0)           ## 0000063C
/* 01EE0 80A0D5A0 E6060018 */  swc1    $f6, 0x0018($s0)           ## 00000638
/* 01EE4 80A0D5A4 46126100 */  add.s   $f4, $f12, $f18            
/* 01EE8 80A0D5A8 C6060030 */  lwc1    $f6, 0x0030($s0)           ## 00000650
/* 01EEC 80A0D5AC C6120004 */  lwc1    $f18, 0x0004($s0)          ## 00000624
/* 01EF0 80A0D5B0 46104280 */  add.s   $f10, $f8, $f16            
/* 01EF4 80A0D5B4 E6040020 */  swc1    $f4, 0x0020($s0)           ## 00000640
/* 01EF8 80A0D5B8 C6040008 */  lwc1    $f4, 0x0008($s0)           ## 00000628
/* 01EFC 80A0D5BC 46067200 */  add.s   $f8, $f14, $f6             
/* 01F00 80A0D5C0 E60A001C */  swc1    $f10, 0x001C($s0)          ## 0000063C
/* 01F04 80A0D5C4 E6020034 */  swc1    $f2, 0x0034($s0)           ## 00000654
/* 01F08 80A0D5C8 46028280 */  add.s   $f10, $f16, $f2            
/* 01F0C 80A0D5CC E6080024 */  swc1    $f8, 0x0024($s0)           ## 00000644
/* 01F10 80A0D5D0 46049180 */  add.s   $f6, $f18, $f4             
/* 01F14 80A0D5D4 E60A0028 */  swc1    $f10, 0x0028($s0)          ## 00000648
/* 01F18 80A0D5D8 E6060004 */  swc1    $f6, 0x0004($s0)           ## 00000624
/* 01F1C 80A0D5DC 26310001 */  addiu   $s1, $s1, 0x0001           ## $s1 = 00000002
.L80A0D5E0:
/* 01F20 80A0D5E0 00118C00 */  sll     $s1, $s1, 16               
/* 01F24 80A0D5E4 00118C03 */  sra     $s1, $s1, 16               
/* 01F28 80A0D5E8 2A2100C8 */  slti    $at, $s1, 0x00C8           
/* 01F2C 80A0D5EC 1420FFD1 */  bne     $at, $zero, .L80A0D534     
/* 01F30 80A0D5F0 26100038 */  addiu   $s0, $s0, 0x0038           ## $s0 = 00000658
/* 01F34 80A0D5F4 8FBF0034 */  lw      $ra, 0x0034($sp)           
/* 01F38 80A0D5F8 D7B40018 */  ldc1    $f20, 0x0018($sp)          
/* 01F3C 80A0D5FC D7B60020 */  ldc1    $f22, 0x0020($sp)          
/* 01F40 80A0D600 8FB00028 */  lw      $s0, 0x0028($sp)           
/* 01F44 80A0D604 8FB1002C */  lw      $s1, 0x002C($sp)           
/* 01F48 80A0D608 8FB20030 */  lw      $s2, 0x0030($sp)           
/* 01F4C 80A0D60C 03E00008 */  jr      $ra                        
/* 01F50 80A0D610 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000


