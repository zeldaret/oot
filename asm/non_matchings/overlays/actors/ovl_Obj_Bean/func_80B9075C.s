glabel func_80B9075C
/* 01CDC 80B9075C 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 01CE0 80B90760 AFBF001C */  sw      $ra, 0x001C($sp)
/* 01CE4 80B90764 AFB10018 */  sw      $s1, 0x0018($sp)
/* 01CE8 80B90768 AFB00014 */  sw      $s0, 0x0014($sp)
/* 01CEC 80B9076C 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 01CF0 80B90770 0C2E3BFD */  jal     func_80B8EFF4
/* 01CF4 80B90774 00808825 */  or      $s1, $a0, $zero            ## $s1 = 00000000
/* 01CF8 80B90778 862E01F0 */  lh      $t6, 0x01F0($s1)           ## 000001F0
/* 01CFC 80B9077C 862F01F2 */  lh      $t7, 0x01F2($s1)           ## 000001F2
/* 01D00 80B90780 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 01D04 80B90784 15CF0017 */  bne     $t6, $t7, .L80B907E4
/* 01D08 80B90788 00000000 */  nop
/* 01D0C 80B9078C 0C2E3BD1 */  jal     func_80B8EF44
/* 01D10 80B90790 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 01D14 80B90794 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 01D18 80B90798 0C2E3BE0 */  jal     func_80B8EF80
/* 01D1C 80B9079C 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 01D20 80B907A0 0C2E4221 */  jal     func_80B90884
/* 01D24 80B907A4 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 01D28 80B907A8 8E380004 */  lw      $t8, 0x0004($s1)           ## 00000004
/* 01D2C 80B907AC 2401FFEF */  addiu   $at, $zero, 0xFFEF         ## $at = FFFFFFEF
/* 01D30 80B907B0 0301C824 */  and     $t9, $t8, $at
/* 01D34 80B907B4 AE390004 */  sw      $t9, 0x0004($s1)           ## 00000004
/* 01D38 80B907B8 8E040790 */  lw      $a0, 0x0790($s0)           ## 00000790
/* 01D3C 80B907BC 2401002D */  addiu   $at, $zero, 0x002D         ## $at = 0000002D
/* 01D40 80B907C0 84820142 */  lh      $v0, 0x0142($a0)           ## 00000142
/* 01D44 80B907C4 10410003 */  beq     $v0, $at, .L80B907D4
/* 01D48 80B907C8 2401002C */  addiu   $at, $zero, 0x002C         ## $at = 0000002C
/* 01D4C 80B907CC 14410026 */  bne     $v0, $at, .L80B90868
/* 01D50 80B907D0 00000000 */  nop
.L80B907D4:
/* 01D54 80B907D4 0C0169DF */  jal     Camera_ChangeSettingDefaultFlags
/* 01D58 80B907D8 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 01D5C 80B907DC 10000022 */  beq     $zero, $zero, .L80B90868
/* 01D60 80B907E0 00000000 */  nop
.L80B907E4:
/* 01D64 80B907E4 0C010D5B */  jal     func_8004356C
/* 01D68 80B907E8 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 01D6C 80B907EC 10400011 */  beq     $v0, $zero, .L80B90834
/* 01D70 80B907F0 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 01D74 80B907F4 0C00BE5D */  jal     func_8002F974
/* 01D78 80B907F8 240500CA */  addiu   $a1, $zero, 0x00CA         ## $a1 = 000000CA
/* 01D7C 80B907FC 860800A4 */  lh      $t0, 0x00A4($s0)           ## 000000A4
/* 01D80 80B90800 2401005B */  addiu   $at, $zero, 0x005B         ## $at = 0000005B
/* 01D84 80B90804 2405002C */  addiu   $a1, $zero, 0x002C         ## $a1 = 0000002C
/* 01D88 80B90808 15010006 */  bne     $t0, $at, .L80B90824
/* 01D8C 80B9080C 00000000 */  nop
/* 01D90 80B90810 8E040790 */  lw      $a0, 0x0790($s0)           ## 00000790
/* 01D94 80B90814 0C0169DF */  jal     Camera_ChangeSettingDefaultFlags
/* 01D98 80B90818 2405002D */  addiu   $a1, $zero, 0x002D         ## $a1 = 0000002D
/* 01D9C 80B9081C 10000012 */  beq     $zero, $zero, .L80B90868
/* 01DA0 80B90820 00000000 */  nop
.L80B90824:
/* 01DA4 80B90824 0C0169DF */  jal     Camera_ChangeSettingDefaultFlags
/* 01DA8 80B90828 8E040790 */  lw      $a0, 0x0790($s0)           ## 00000790
/* 01DAC 80B9082C 1000000E */  beq     $zero, $zero, .L80B90868
/* 01DB0 80B90830 00000000 */  nop
.L80B90834:
/* 01DB4 80B90834 922901F7 */  lbu     $t1, 0x01F7($s1)           ## 000001F7
/* 01DB8 80B90838 312A0080 */  andi    $t2, $t1, 0x0080           ## $t2 = 00000000
/* 01DBC 80B9083C 1140000A */  beq     $t2, $zero, .L80B90868
/* 01DC0 80B90840 00000000 */  nop
/* 01DC4 80B90844 8E040790 */  lw      $a0, 0x0790($s0)           ## 00000790
/* 01DC8 80B90848 2401002D */  addiu   $at, $zero, 0x002D         ## $at = 0000002D
/* 01DCC 80B9084C 84820142 */  lh      $v0, 0x0142($a0)           ## 00000142
/* 01DD0 80B90850 10410003 */  beq     $v0, $at, .L80B90860
/* 01DD4 80B90854 2401002C */  addiu   $at, $zero, 0x002C         ## $at = 0000002C
/* 01DD8 80B90858 14410003 */  bne     $v0, $at, .L80B90868
/* 01DDC 80B9085C 00000000 */  nop
.L80B90860:
/* 01DE0 80B90860 0C0169DF */  jal     Camera_ChangeSettingDefaultFlags
/* 01DE4 80B90864 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
.L80B90868:
/* 01DE8 80B90868 0C2E3AF9 */  jal     func_80B8EBE4
/* 01DEC 80B9086C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 01DF0 80B90870 8FBF001C */  lw      $ra, 0x001C($sp)
/* 01DF4 80B90874 8FB00014 */  lw      $s0, 0x0014($sp)
/* 01DF8 80B90878 8FB10018 */  lw      $s1, 0x0018($sp)
/* 01DFC 80B9087C 03E00008 */  jr      $ra
/* 01E00 80B90880 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
