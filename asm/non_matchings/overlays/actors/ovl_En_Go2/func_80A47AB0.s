glabel func_80A47AB0
/* 04D80 80A47AB0 27BDFFA8 */  addiu   $sp, $sp, 0xFFA8           ## $sp = FFFFFFA8
/* 04D84 80A47AB4 3C0F80A5 */  lui     $t7, %hi(D_80A48560)       ## $t7 = 80A50000
/* 04D88 80A47AB8 AFBF001C */  sw      $ra, 0x001C($sp)
/* 04D8C 80A47ABC AFB10018 */  sw      $s1, 0x0018($sp)
/* 04D90 80A47AC0 AFB00014 */  sw      $s0, 0x0014($sp)
/* 04D94 80A47AC4 AFA40058 */  sw      $a0, 0x0058($sp)
/* 04D98 80A47AC8 25EF8560 */  addiu   $t7, $t7, %lo(D_80A48560)  ## $t7 = 80A48560
/* 04D9C 80A47ACC 8DF90000 */  lw      $t9, 0x0000($t7)           ## 80A48560
/* 04DA0 80A47AD0 27AE0048 */  addiu   $t6, $sp, 0x0048           ## $t6 = FFFFFFF0
/* 04DA4 80A47AD4 8DF80004 */  lw      $t8, 0x0004($t7)           ## 80A48564
/* 04DA8 80A47AD8 ADD90000 */  sw      $t9, 0x0000($t6)           ## FFFFFFF0
/* 04DAC 80A47ADC 8DF90008 */  lw      $t9, 0x0008($t7)           ## 80A48568
/* 04DB0 80A47AE0 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 04DB4 80A47AE4 ADD80004 */  sw      $t8, 0x0004($t6)           ## FFFFFFF4
/* 04DB8 80A47AE8 ADD90008 */  sw      $t9, 0x0008($t6)           ## FFFFFFF8
/* 04DBC 80A47AEC 8CA50000 */  lw      $a1, 0x0000($a1)           ## 00000000
/* 04DC0 80A47AF0 3C0680A5 */  lui     $a2, %hi(D_80A485FC)       ## $a2 = 80A50000
/* 04DC4 80A47AF4 24C685FC */  addiu   $a2, $a2, %lo(D_80A485FC)  ## $a2 = 80A485FC
/* 04DC8 80A47AF8 27A40030 */  addiu   $a0, $sp, 0x0030           ## $a0 = FFFFFFD8
/* 04DCC 80A47AFC 24070B62 */  addiu   $a3, $zero, 0x0B62         ## $a3 = 00000B62
/* 04DD0 80A47B00 0C031AB1 */  jal     Graph_OpenDisp
/* 04DD4 80A47B04 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 04DD8 80A47B08 0C024F46 */  jal     func_80093D18
/* 04DDC 80A47B0C 8E240000 */  lw      $a0, 0x0000($s1)           ## 00000000
/* 04DE0 80A47B10 8FA20058 */  lw      $v0, 0x0058($sp)
/* 04DE4 80A47B14 3C0880A4 */  lui     $t0, %hi(func_80A47024)    ## $t0 = 80A40000
/* 04DE8 80A47B18 25087024 */  addiu   $t0, $t0, %lo(func_80A47024) ## $t0 = 80A47024
/* 04DEC 80A47B1C 8C490190 */  lw      $t1, 0x0190($v0)           ## 00000190
/* 04DF0 80A47B20 55090005 */  bnel    $t0, $t1, .L80A47B38
/* 04DF4 80A47B24 C4400068 */  lwc1    $f0, 0x0068($v0)           ## 00000068
/* 04DF8 80A47B28 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 04DFC 80A47B2C 10000003 */  beq     $zero, $zero, .L80A47B3C
/* 04E00 80A47B30 4600010D */  trunc.w.s $f4, $f0
/* 04E04 80A47B34 C4400068 */  lwc1    $f0, 0x0068($v0)           ## 00000068
.L80A47B38:
/* 04E08 80A47B38 4600010D */  trunc.w.s $f4, $f0
.L80A47B3C:
/* 04E0C 80A47B3C 8E2A009C */  lw      $t2, 0x009C($s1)           ## 0000009C
/* 04E10 80A47B40 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 04E14 80A47B44 844600B8 */  lh      $a2, 0x00B8($v0)           ## 000000B8
/* 04E18 80A47B48 440C2000 */  mfc1    $t4, $f4
/* 04E1C 80A47B4C 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 04E20 80A47B50 000C6C00 */  sll     $t5, $t4, 16
/* 04E24 80A47B54 000D7403 */  sra     $t6, $t5, 16
/* 04E28 80A47B58 000E7880 */  sll     $t7, $t6,  2
/* 04E2C 80A47B5C 01EE7823 */  subu    $t7, $t7, $t6
/* 04E30 80A47B60 000F7880 */  sll     $t7, $t7,  2
/* 04E34 80A47B64 01EE7823 */  subu    $t7, $t7, $t6
/* 04E38 80A47B68 000F7900 */  sll     $t7, $t7,  4
/* 04E3C 80A47B6C 01EE7823 */  subu    $t7, $t7, $t6
/* 04E40 80A47B70 000F78C0 */  sll     $t7, $t7,  3
/* 04E44 80A47B74 014F0019 */  multu   $t2, $t7
/* 04E48 80A47B78 00002012 */  mflo    $a0
/* 04E4C 80A47B7C 00042400 */  sll     $a0, $a0, 16
/* 04E50 80A47B80 0C034421 */  jal     Matrix_RotateZYX
/* 04E54 80A47B84 00042403 */  sra     $a0, $a0, 16
/* 04E58 80A47B88 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 04E5C 80A47B8C 3C19DA38 */  lui     $t9, 0xDA38                ## $t9 = DA380000
/* 04E60 80A47B90 37390003 */  ori     $t9, $t9, 0x0003           ## $t9 = DA380003
/* 04E64 80A47B94 24580008 */  addiu   $t8, $v0, 0x0008           ## $t8 = 00000008
/* 04E68 80A47B98 AE1802C0 */  sw      $t8, 0x02C0($s0)           ## 000002C0
/* 04E6C 80A47B9C AC590000 */  sw      $t9, 0x0000($v0)           ## 00000000
/* 04E70 80A47BA0 8E240000 */  lw      $a0, 0x0000($s1)           ## 00000000
/* 04E74 80A47BA4 3C0580A5 */  lui     $a1, %hi(D_80A4860C)       ## $a1 = 80A50000
/* 04E78 80A47BA8 24A5860C */  addiu   $a1, $a1, %lo(D_80A4860C)  ## $a1 = 80A4860C
/* 04E7C 80A47BAC 24060B6E */  addiu   $a2, $zero, 0x0B6E         ## $a2 = 00000B6E
/* 04E80 80A47BB0 0C0346A2 */  jal     Matrix_NewMtx
/* 04E84 80A47BB4 AFA2002C */  sw      $v0, 0x002C($sp)
/* 04E88 80A47BB8 8FA3002C */  lw      $v1, 0x002C($sp)
/* 04E8C 80A47BBC 3C0B0601 */  lui     $t3, 0x0601                ## $t3 = 06010000
/* 04E90 80A47BC0 256BC140 */  addiu   $t3, $t3, 0xC140           ## $t3 = 0600C140
/* 04E94 80A47BC4 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 04E98 80A47BC8 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 04E9C 80A47BCC 3C09DE00 */  lui     $t1, 0xDE00                ## $t1 = DE000000
/* 04EA0 80A47BD0 3C0680A5 */  lui     $a2, %hi(D_80A4861C)       ## $a2 = 80A50000
/* 04EA4 80A47BD4 24480008 */  addiu   $t0, $v0, 0x0008           ## $t0 = 00000008
/* 04EA8 80A47BD8 AE0802C0 */  sw      $t0, 0x02C0($s0)           ## 000002C0
/* 04EAC 80A47BDC AC4B0004 */  sw      $t3, 0x0004($v0)           ## 00000004
/* 04EB0 80A47BE0 AC490000 */  sw      $t1, 0x0000($v0)           ## 00000000
/* 04EB4 80A47BE4 8E250000 */  lw      $a1, 0x0000($s1)           ## 00000000
/* 04EB8 80A47BE8 24C6861C */  addiu   $a2, $a2, %lo(D_80A4861C)  ## $a2 = 80A4861C
/* 04EBC 80A47BEC 27A40030 */  addiu   $a0, $sp, 0x0030           ## $a0 = FFFFFFD8
/* 04EC0 80A47BF0 0C031AD5 */  jal     Graph_CloseDisp
/* 04EC4 80A47BF4 24070B72 */  addiu   $a3, $zero, 0x0B72         ## $a3 = 00000B72
/* 04EC8 80A47BF8 8FA50058 */  lw      $a1, 0x0058($sp)
/* 04ECC 80A47BFC 27A40048 */  addiu   $a0, $sp, 0x0048           ## $a0 = FFFFFFF0
/* 04ED0 80A47C00 0C0346BD */  jal     Matrix_MultVec3f
/* 04ED4 80A47C04 24A50038 */  addiu   $a1, $a1, 0x0038           ## $a1 = 00000038
/* 04ED8 80A47C08 8FBF001C */  lw      $ra, 0x001C($sp)
/* 04EDC 80A47C0C 8FB00014 */  lw      $s0, 0x0014($sp)
/* 04EE0 80A47C10 8FB10018 */  lw      $s1, 0x0018($sp)
/* 04EE4 80A47C14 27BD0058 */  addiu   $sp, $sp, 0x0058           ## $sp = 00000000
/* 04EE8 80A47C18 03E00008 */  jr      $ra
/* 04EEC 80A47C1C 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001


