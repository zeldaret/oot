glabel func_809E5E58
/* 00688 809E5E58 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 0068C 809E5E5C AFB00028 */  sw      $s0, 0x0028($sp)
/* 00690 809E5E60 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00694 809E5E64 AFBF002C */  sw      $ra, 0x002C($sp)
/* 00698 809E5E68 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 0069C 809E5E6C 0C028800 */  jal     Animation_GetLastFrame

/* 006A0 809E5E70 248402B8 */  addiu   $a0, $a0, 0x02B8           ## $a0 = 060002B8
/* 006A4 809E5E74 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 006A8 809E5E78 3C01C040 */  lui     $at, 0xC040                ## $at = C0400000
/* 006AC 809E5E7C 44814000 */  mtc1    $at, $f8                   ## $f8 = -3.00
/* 006B0 809E5E80 46802120 */  cvt.s.w $f4, $f4
/* 006B4 809E5E84 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 006B8 809E5E88 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 006BC 809E5E8C 240E0002 */  addiu   $t6, $zero, 0x0002         ## $t6 = 00000002
/* 006C0 809E5E90 AFAE0014 */  sw      $t6, 0x0014($sp)
/* 006C4 809E5E94 24A502B8 */  addiu   $a1, $a1, 0x02B8           ## $a1 = 060002B8
/* 006C8 809E5E98 44072000 */  mfc1    $a3, $f4
/* 006CC 809E5E9C 2604017C */  addiu   $a0, $s0, 0x017C           ## $a0 = 0000017C
/* 006D0 809E5EA0 3C06BFC0 */  lui     $a2, 0xBFC0                ## $a2 = BFC00000
/* 006D4 809E5EA4 E7A80018 */  swc1    $f8, 0x0018($sp)
/* 006D8 809E5EA8 0C029468 */  jal     Animation_Change

/* 006DC 809E5EAC E7A60010 */  swc1    $f6, 0x0010($sp)
/* 006E0 809E5EB0 8E020254 */  lw      $v0, 0x0254($s0)           ## 00000254
/* 006E4 809E5EB4 240F000F */  addiu   $t7, $zero, 0x000F         ## $t7 = 0000000F
/* 006E8 809E5EB8 A60F01C6 */  sh      $t7, 0x01C6($s0)           ## 000001C6
/* 006EC 809E5EBC 90580097 */  lbu     $t8, 0x0097($v0)           ## 00000097
/* 006F0 809E5EC0 24050003 */  addiu   $a1, $zero, 0x0003         ## $a1 = 00000003
/* 006F4 809E5EC4 00051980 */  sll     $v1, $a1,  6
/* 006F8 809E5EC8 3319FFFE */  andi    $t9, $t8, 0xFFFE           ## $t9 = 00000000
/* 006FC 809E5ECC A0590097 */  sb      $t9, 0x0097($v0)           ## 00000097
/* 00700 809E5ED0 8E080254 */  lw      $t0, 0x0254($s0)           ## 00000254
/* 00704 809E5ED4 24420080 */  addiu   $v0, $v0, 0x0080           ## $v0 = 00000080
/* 00708 809E5ED8 01031021 */  addu    $v0, $t0, $v1
/* 0070C 809E5EDC 90490017 */  lbu     $t1, 0x0017($v0)           ## 00000097
/* 00710 809E5EE0 312AFFFE */  andi    $t2, $t1, 0xFFFE           ## $t2 = 00000000
/* 00714 809E5EE4 A04A0017 */  sb      $t2, 0x0017($v0)           ## 00000097
/* 00718 809E5EE8 8E0B0254 */  lw      $t3, 0x0254($s0)           ## 00000254
/* 0071C 809E5EEC 3C0A809E */  lui     $t2, %hi(func_809E6A04)    ## $t2 = 809E0000
/* 00720 809E5EF0 254A6A04 */  addiu   $t2, $t2, %lo(func_809E6A04) ## $t2 = 809E6A04
/* 00724 809E5EF4 01631021 */  addu    $v0, $t3, $v1
/* 00728 809E5EF8 904C0057 */  lbu     $t4, 0x0057($v0)           ## 000000D7
/* 0072C 809E5EFC 318DFFFE */  andi    $t5, $t4, 0xFFFE           ## $t5 = 00000000
/* 00730 809E5F00 A04D0057 */  sb      $t5, 0x0057($v0)           ## 000000D7
/* 00734 809E5F04 8E0E0254 */  lw      $t6, 0x0254($s0)           ## 00000254
/* 00738 809E5F08 01C31021 */  addu    $v0, $t6, $v1
/* 0073C 809E5F0C 904F0097 */  lbu     $t7, 0x0097($v0)           ## 00000117
/* 00740 809E5F10 31F8FFFE */  andi    $t8, $t7, 0xFFFE           ## $t8 = 0000000E
/* 00744 809E5F14 A0580097 */  sb      $t8, 0x0097($v0)           ## 00000117
/* 00748 809E5F18 8E190254 */  lw      $t9, 0x0254($s0)           ## 00000254
/* 0074C 809E5F1C 03231021 */  addu    $v0, $t9, $v1
/* 00750 809E5F20 904800D7 */  lbu     $t0, 0x00D7($v0)           ## 00000157
/* 00754 809E5F24 3109FFFE */  andi    $t1, $t0, 0xFFFE           ## $t1 = 00000000
/* 00758 809E5F28 A04900D7 */  sb      $t1, 0x00D7($v0)           ## 00000157
/* 0075C 809E5F2C AE0A01C0 */  sw      $t2, 0x01C0($s0)           ## 000001C0
/* 00760 809E5F30 8FBF002C */  lw      $ra, 0x002C($sp)
/* 00764 809E5F34 8FB00028 */  lw      $s0, 0x0028($sp)
/* 00768 809E5F38 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 0076C 809E5F3C 03E00008 */  jr      $ra
/* 00770 809E5F40 00000000 */  nop
