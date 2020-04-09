glabel EnZl4_Draw
/* 02D9C 80B5E54C 27BDFF78 */  addiu   $sp, $sp, 0xFF78           ## $sp = FFFFFF78
/* 02DA0 80B5E550 3C0F80B6 */  lui     $t7, %hi(D_80B5FB48)       ## $t7 = 80B60000
/* 02DA4 80B5E554 AFBF002C */  sw      $ra, 0x002C($sp)
/* 02DA8 80B5E558 AFB00028 */  sw      $s0, 0x0028($sp)
/* 02DAC 80B5E55C AFA5008C */  sw      $a1, 0x008C($sp)
/* 02DB0 80B5E560 25EFFB48 */  addiu   $t7, $t7, %lo(D_80B5FB48)  ## $t7 = 80B5FB48
/* 02DB4 80B5E564 8DF90000 */  lw      $t9, 0x0000($t7)           ## 80B5FB48
/* 02DB8 80B5E568 8DF80004 */  lw      $t8, 0x0004($t7)           ## 80B5FB4C
/* 02DBC 80B5E56C 27AE0074 */  addiu   $t6, $sp, 0x0074           ## $t6 = FFFFFFEC
/* 02DC0 80B5E570 ADD90000 */  sw      $t9, 0x0000($t6)           ## FFFFFFEC
/* 02DC4 80B5E574 ADD80004 */  sw      $t8, 0x0004($t6)           ## FFFFFFF0
/* 02DC8 80B5E578 8DF8000C */  lw      $t8, 0x000C($t7)           ## 80B5FB54
/* 02DCC 80B5E57C 8DF90008 */  lw      $t9, 0x0008($t7)           ## 80B5FB50
/* 02DD0 80B5E580 3C0B80B6 */  lui     $t3, %hi(D_80B5FB58)       ## $t3 = 80B60000
/* 02DD4 80B5E584 256BFB58 */  addiu   $t3, $t3, %lo(D_80B5FB58)  ## $t3 = 80B5FB58
/* 02DD8 80B5E588 ADD8000C */  sw      $t8, 0x000C($t6)           ## FFFFFFF8
/* 02DDC 80B5E58C ADD90008 */  sw      $t9, 0x0008($t6)           ## FFFFFFF4
/* 02DE0 80B5E590 8D6D0000 */  lw      $t5, 0x0000($t3)           ## 80B5FB58
/* 02DE4 80B5E594 27AA0058 */  addiu   $t2, $sp, 0x0058           ## $t2 = FFFFFFD0
/* 02DE8 80B5E598 8D6C0004 */  lw      $t4, 0x0004($t3)           ## 80B5FB5C
/* 02DEC 80B5E59C AD4D0000 */  sw      $t5, 0x0000($t2)           ## FFFFFFD0
/* 02DF0 80B5E5A0 8D6D0008 */  lw      $t5, 0x0008($t3)           ## 80B5FB60
/* 02DF4 80B5E5A4 AD4C0004 */  sw      $t4, 0x0004($t2)           ## FFFFFFD4
/* 02DF8 80B5E5A8 8D6C000C */  lw      $t4, 0x000C($t3)           ## 80B5FB64
/* 02DFC 80B5E5AC AD4D0008 */  sw      $t5, 0x0008($t2)           ## FFFFFFD8
/* 02E00 80B5E5B0 8D6D0010 */  lw      $t5, 0x0010($t3)           ## 80B5FB68
/* 02E04 80B5E5B4 AD4C000C */  sw      $t4, 0x000C($t2)           ## FFFFFFDC
/* 02E08 80B5E5B8 8D6C0014 */  lw      $t4, 0x0014($t3)           ## 80B5FB6C
/* 02E0C 80B5E5BC AD4D0010 */  sw      $t5, 0x0010($t2)           ## FFFFFFE0
/* 02E10 80B5E5C0 8D6D0018 */  lw      $t5, 0x0018($t3)           ## 80B5FB70
/* 02E14 80B5E5C4 AD4C0014 */  sw      $t4, 0x0014($t2)           ## FFFFFFE4
/* 02E18 80B5E5C8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 02E1C 80B5E5CC AD4D0018 */  sw      $t5, 0x0018($t2)           ## FFFFFFE8
/* 02E20 80B5E5D0 8FAE008C */  lw      $t6, 0x008C($sp)
/* 02E24 80B5E5D4 3C0680B6 */  lui     $a2, %hi(D_80B5FB80)       ## $a2 = 80B60000
/* 02E28 80B5E5D8 24C6FB80 */  addiu   $a2, $a2, %lo(D_80B5FB80)  ## $a2 = 80B5FB80
/* 02E2C 80B5E5DC 8DC50000 */  lw      $a1, 0x0000($t6)           ## FFFFFFEC
/* 02E30 80B5E5E0 27A40044 */  addiu   $a0, $sp, 0x0044           ## $a0 = FFFFFFBC
/* 02E34 80B5E5E4 240707DC */  addiu   $a3, $zero, 0x07DC         ## $a3 = 000007DC
/* 02E38 80B5E5E8 0C031AB1 */  jal     Graph_OpenDisps
/* 02E3C 80B5E5EC AFA50054 */  sw      $a1, 0x0054($sp)
/* 02E40 80B5E5F0 8FA80054 */  lw      $t0, 0x0054($sp)
/* 02E44 80B5E5F4 3C18DB06 */  lui     $t8, 0xDB06                ## $t8 = DB060000
/* 02E48 80B5E5F8 37180020 */  ori     $t8, $t8, 0x0020           ## $t8 = DB060020
/* 02E4C 80B5E5FC 8D0202C0 */  lw      $v0, 0x02C0($t0)           ## 000002C0
/* 02E50 80B5E600 27A90058 */  addiu   $t1, $sp, 0x0058           ## $t1 = FFFFFFD0
/* 02E54 80B5E604 3C068016 */  lui     $a2, 0x8016                ## $a2 = 80160000
/* 02E58 80B5E608 244F0008 */  addiu   $t7, $v0, 0x0008           ## $t7 = 00000008
/* 02E5C 80B5E60C AD0F02C0 */  sw      $t7, 0x02C0($t0)           ## 000002C0
/* 02E60 80B5E610 AC580000 */  sw      $t8, 0x0000($v0)           ## 00000000
/* 02E64 80B5E614 9219020B */  lbu     $t9, 0x020B($s0)           ## 0000020B
/* 02E68 80B5E618 24C66FA8 */  addiu   $a2, $a2, 0x6FA8           ## $a2 = 80166FA8
/* 02E6C 80B5E61C 3C0500FF */  lui     $a1, 0x00FF                ## $a1 = 00FF0000
/* 02E70 80B5E620 00195080 */  sll     $t2, $t9,  2
/* 02E74 80B5E624 012A5821 */  addu    $t3, $t1, $t2
/* 02E78 80B5E628 8D640000 */  lw      $a0, 0x0000($t3)           ## 00000000
/* 02E7C 80B5E62C 34A5FFFF */  ori     $a1, $a1, 0xFFFF           ## $a1 = 00FFFFFF
/* 02E80 80B5E630 3C078000 */  lui     $a3, 0x8000                ## $a3 = 80000000
/* 02E84 80B5E634 00046900 */  sll     $t5, $a0,  4
/* 02E88 80B5E638 000D7702 */  srl     $t6, $t5, 28
/* 02E8C 80B5E63C 000E7880 */  sll     $t7, $t6,  2
/* 02E90 80B5E640 00CFC021 */  addu    $t8, $a2, $t7
/* 02E94 80B5E644 8F190000 */  lw      $t9, 0x0000($t8)           ## DB060020
/* 02E98 80B5E648 00856024 */  and     $t4, $a0, $a1
/* 02E9C 80B5E64C 3C0EDB06 */  lui     $t6, 0xDB06                ## $t6 = DB060000
/* 02EA0 80B5E650 01995021 */  addu    $t2, $t4, $t9
/* 02EA4 80B5E654 01475821 */  addu    $t3, $t2, $a3
/* 02EA8 80B5E658 AC4B0004 */  sw      $t3, 0x0004($v0)           ## 00000004
/* 02EAC 80B5E65C 8D0202C0 */  lw      $v0, 0x02C0($t0)           ## 000002C0
/* 02EB0 80B5E660 35CE0024 */  ori     $t6, $t6, 0x0024           ## $t6 = DB060024
/* 02EB4 80B5E664 244D0008 */  addiu   $t5, $v0, 0x0008           ## $t5 = 00000008
/* 02EB8 80B5E668 AD0D02C0 */  sw      $t5, 0x02C0($t0)           ## 000002C0
/* 02EBC 80B5E66C AC4E0000 */  sw      $t6, 0x0000($v0)           ## 00000000
/* 02EC0 80B5E670 920F020A */  lbu     $t7, 0x020A($s0)           ## 0000020A
/* 02EC4 80B5E674 000FC080 */  sll     $t8, $t7,  2
/* 02EC8 80B5E678 01386021 */  addu    $t4, $t1, $t8
/* 02ECC 80B5E67C 8D840000 */  lw      $a0, 0x0000($t4)           ## 00000000
/* 02ED0 80B5E680 00045100 */  sll     $t2, $a0,  4
/* 02ED4 80B5E684 000A5F02 */  srl     $t3, $t2, 28
/* 02ED8 80B5E688 000B6880 */  sll     $t5, $t3,  2
/* 02EDC 80B5E68C 00CD7021 */  addu    $t6, $a2, $t5
/* 02EE0 80B5E690 8DCF0000 */  lw      $t7, 0x0000($t6)           ## DB060024
/* 02EE4 80B5E694 0085C824 */  and     $t9, $a0, $a1
/* 02EE8 80B5E698 3C0BDB06 */  lui     $t3, 0xDB06                ## $t3 = DB060000
/* 02EEC 80B5E69C 032FC021 */  addu    $t8, $t9, $t7
/* 02EF0 80B5E6A0 03076021 */  addu    $t4, $t8, $a3
/* 02EF4 80B5E6A4 AC4C0004 */  sw      $t4, 0x0004($v0)           ## 00000004
/* 02EF8 80B5E6A8 8D0202C0 */  lw      $v0, 0x02C0($t0)           ## 000002C0
/* 02EFC 80B5E6AC 356B0028 */  ori     $t3, $t3, 0x0028           ## $t3 = DB060028
/* 02F00 80B5E6B0 244A0008 */  addiu   $t2, $v0, 0x0008           ## $t2 = 00000008
/* 02F04 80B5E6B4 AD0A02C0 */  sw      $t2, 0x02C0($t0)           ## 000002C0
/* 02F08 80B5E6B8 AC4B0000 */  sw      $t3, 0x0000($v0)           ## 00000000
/* 02F0C 80B5E6BC 920D020C */  lbu     $t5, 0x020C($s0)           ## 0000020C
/* 02F10 80B5E6C0 000D7080 */  sll     $t6, $t5,  2
/* 02F14 80B5E6C4 03AE2021 */  addu    $a0, $sp, $t6
/* 02F18 80B5E6C8 8C840074 */  lw      $a0, 0x0074($a0)           ## 00000074
/* 02F1C 80B5E6CC 00047900 */  sll     $t7, $a0,  4
/* 02F20 80B5E6D0 000FC702 */  srl     $t8, $t7, 28
/* 02F24 80B5E6D4 00186080 */  sll     $t4, $t8,  2
/* 02F28 80B5E6D8 00CC5021 */  addu    $t2, $a2, $t4
/* 02F2C 80B5E6DC 8D4B0000 */  lw      $t3, 0x0000($t2)           ## 00000008
/* 02F30 80B5E6E0 0085C824 */  and     $t9, $a0, $a1
/* 02F34 80B5E6E4 032B6821 */  addu    $t5, $t9, $t3
/* 02F38 80B5E6E8 01A77021 */  addu    $t6, $t5, $a3
/* 02F3C 80B5E6EC AC4E0004 */  sw      $t6, 0x0004($v0)           ## 00000004
/* 02F40 80B5E6F0 8FAF008C */  lw      $t7, 0x008C($sp)
/* 02F44 80B5E6F4 0C024F46 */  jal     func_80093D18
/* 02F48 80B5E6F8 8DE40000 */  lw      $a0, 0x0000($t7)           ## 00000008
/* 02F4C 80B5E6FC 8E050150 */  lw      $a1, 0x0150($s0)           ## 00000150
/* 02F50 80B5E700 8E06016C */  lw      $a2, 0x016C($s0)           ## 0000016C
/* 02F54 80B5E704 9207014E */  lbu     $a3, 0x014E($s0)           ## 0000014E
/* 02F58 80B5E708 3C1880B6 */  lui     $t8, %hi(func_80B5E364)    ## $t8 = 80B60000
/* 02F5C 80B5E70C 3C0C80B6 */  lui     $t4, %hi(func_80B5E4F0)    ## $t4 = 80B60000
/* 02F60 80B5E710 258CE4F0 */  addiu   $t4, $t4, %lo(func_80B5E4F0) ## $t4 = 80B5E4F0
/* 02F64 80B5E714 2718E364 */  addiu   $t8, $t8, %lo(func_80B5E364) ## $t8 = 80B5E364
/* 02F68 80B5E718 AFB80010 */  sw      $t8, 0x0010($sp)
/* 02F6C 80B5E71C AFAC0014 */  sw      $t4, 0x0014($sp)
/* 02F70 80B5E720 AFB00018 */  sw      $s0, 0x0018($sp)
/* 02F74 80B5E724 0C0286B2 */  jal     SkelAnime_DrawSV
/* 02F78 80B5E728 8FA4008C */  lw      $a0, 0x008C($sp)
/* 02F7C 80B5E72C 8FAA008C */  lw      $t2, 0x008C($sp)
/* 02F80 80B5E730 3C0680B6 */  lui     $a2, %hi(D_80B5FB90)       ## $a2 = 80B60000
/* 02F84 80B5E734 24C6FB90 */  addiu   $a2, $a2, %lo(D_80B5FB90)  ## $a2 = 80B5FB90
/* 02F88 80B5E738 27A40044 */  addiu   $a0, $sp, 0x0044           ## $a0 = FFFFFFBC
/* 02F8C 80B5E73C 240707FB */  addiu   $a3, $zero, 0x07FB         ## $a3 = 000007FB
/* 02F90 80B5E740 0C031AD5 */  jal     Graph_CloseDisps
/* 02F94 80B5E744 8D450000 */  lw      $a1, 0x0000($t2)           ## 00000000
/* 02F98 80B5E748 8FBF002C */  lw      $ra, 0x002C($sp)
/* 02F9C 80B5E74C 8FB00028 */  lw      $s0, 0x0028($sp)
/* 02FA0 80B5E750 27BD0088 */  addiu   $sp, $sp, 0x0088           ## $sp = 00000000
/* 02FA4 80B5E754 03E00008 */  jr      $ra
/* 02FA8 80B5E758 00000000 */  nop
/* 02FAC 80B5E75C 00000000 */  nop

