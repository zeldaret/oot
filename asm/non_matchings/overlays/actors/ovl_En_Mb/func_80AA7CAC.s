glabel func_80AA7CAC
/* 01C5C 80AA7CAC 27BDFFA8 */  addiu   $sp, $sp, 0xFFA8           ## $sp = FFFFFFA8
/* 01C60 80AA7CB0 AFBF0034 */  sw      $ra, 0x0034($sp)
/* 01C64 80AA7CB4 AFB10030 */  sw      $s1, 0x0030($sp)
/* 01C68 80AA7CB8 AFB0002C */  sw      $s0, 0x002C($sp)
/* 01C6C 80AA7CBC 8CB11C44 */  lw      $s1, 0x1C44($a1)           ## 00001C44
/* 01C70 80AA7CC0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01C74 80AA7CC4 AFA0004C */  sw      $zero, 0x004C($sp)
/* 01C78 80AA7CC8 86070032 */  lh      $a3, 0x0032($s0)           ## 00000032
/* 01C7C 80AA7CCC AFA5005C */  sw      $a1, 0x005C($sp)
/* 01C80 80AA7CD0 0C00CE6E */  jal     func_800339B8
/* 01C84 80AA7CD4 3C0642DC */  lui     $a2, 0x42DC                ## $a2 = 42DC0000
/* 01C88 80AA7CD8 2C4E0001 */  sltiu   $t6, $v0, 0x0001
/* 01C8C 80AA7CDC AFAE0048 */  sw      $t6, 0x0048($sp)
/* 01C90 80AA7CE0 C60401A4 */  lwc1    $f4, 0x01A4($s0)           ## 000001A4
/* 01C94 80AA7CE4 2604018C */  addiu   $a0, $s0, 0x018C           ## $a0 = 0000018C
/* 01C98 80AA7CE8 AFA4003C */  sw      $a0, 0x003C($sp)
/* 01C9C 80AA7CEC 4600218D */  trunc.w.s $f6, $f4
/* 01CA0 80AA7CF0 44183000 */  mfc1    $t8, $f6
/* 01CA4 80AA7CF4 0C02927F */  jal     SkelAnime_FrameUpdateMatrix

/* 01CA8 80AA7CF8 AFB80050 */  sw      $t8, 0x0050($sp)
/* 01CAC 80AA7CFC 10400007 */  beq     $v0, $zero, .L80AA7D1C
/* 01CB0 80AA7D00 8FA4003C */  lw      $a0, 0x003C($sp)
/* 01CB4 80AA7D04 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 01CB8 80AA7D08 0C0294BE */  jal     SkelAnime_ChangeAnimationDefaultRepeat
/* 01CBC 80AA7D0C 24A52F10 */  addiu   $a1, $a1, 0x2F10           ## $a1 = 06002F10
/* 01CC0 80AA7D10 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01CC4 80AA7D14 0C00BE0A */  jal     Audio_PlayActorSound2

/* 01CC8 80AA7D18 240538BA */  addiu   $a1, $zero, 0x38BA         ## $a1 = 000038BA
.L80AA7D1C:
/* 01CCC 80AA7D1C 8602032E */  lh      $v0, 0x032E($s0)           ## 0000032E
/* 01CD0 80AA7D20 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 01CD4 80AA7D24 24080001 */  addiu   $t0, $zero, 0x0001         ## $t0 = 00000001
/* 01CD8 80AA7D28 1040000B */  beq     $v0, $zero, .L80AA7D58
/* 01CDC 80AA7D2C 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 01CE0 80AA7D30 2459FFFF */  addiu   $t9, $v0, 0xFFFF           ## $t9 = FFFFFFFF
/* 01CE4 80AA7D34 A619032E */  sh      $t9, 0x032E($s0)           ## 0000032E
/* 01CE8 80AA7D38 86050032 */  lh      $a1, 0x0032($s0)           ## 00000032
/* 01CEC 80AA7D3C AFA00010 */  sw      $zero, 0x0010($sp)
/* 01CF0 80AA7D40 260400B6 */  addiu   $a0, $s0, 0x00B6           ## $a0 = 000000B6
/* 01CF4 80AA7D44 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 01CF8 80AA7D48 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS

/* 01CFC 80AA7D4C 24071F40 */  addiu   $a3, $zero, 0x1F40         ## $a3 = 00001F40
/* 01D00 80AA7D50 10000021 */  beq     $zero, $zero, .L80AA7DD8
/* 01D04 80AA7D54 AFA00048 */  sw      $zero, 0x0048($sp)
.L80AA7D58:
/* 01D08 80AA7D58 44814000 */  mtc1    $at, $f8                   ## $f8 = 0.00
/* 01D0C 80AA7D5C A6080334 */  sh      $t0, 0x0334($s0)           ## 00000334
/* 01D10 80AA7D60 3C014080 */  lui     $at, 0x4080                ## $at = 40800000
/* 01D14 80AA7D64 E6080068 */  swc1    $f8, 0x0068($s0)           ## 00000068
/* 01D18 80AA7D68 44815000 */  mtc1    $at, $f10                  ## $f10 = 4.00
/* 01D1C 80AA7D6C 24090003 */  addiu   $t1, $zero, 0x0003         ## $t1 = 00000003
/* 01D20 80AA7D70 240A0064 */  addiu   $t2, $zero, 0x0064         ## $t2 = 00000064
/* 01D24 80AA7D74 240B000F */  addiu   $t3, $zero, 0x000F         ## $t3 = 0000000F
/* 01D28 80AA7D78 AFAB001C */  sw      $t3, 0x001C($sp)
/* 01D2C 80AA7D7C AFAA0018 */  sw      $t2, 0x0018($sp)
/* 01D30 80AA7D80 AFA90010 */  sw      $t1, 0x0010($sp)
/* 01D34 80AA7D84 AFA00020 */  sw      $zero, 0x0020($sp)
/* 01D38 80AA7D88 8FA4005C */  lw      $a0, 0x005C($sp)
/* 01D3C 80AA7D8C 26060024 */  addiu   $a2, $s0, 0x0024           ## $a2 = 00000024
/* 01D40 80AA7D90 3C0740A0 */  lui     $a3, 0x40A0                ## $a3 = 40A00000
/* 01D44 80AA7D94 0C00CC98 */  jal     func_80033260
/* 01D48 80AA7D98 E7AA0014 */  swc1    $f10, 0x0014($sp)
/* 01D4C 80AA7D9C C61001A4 */  lwc1    $f16, 0x01A4($s0)          ## 000001A4
/* 01D50 80AA7DA0 8FAD0050 */  lw      $t5, 0x0050($sp)
/* 01D54 80AA7DA4 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 01D58 80AA7DA8 4600848D */  trunc.w.s $f18, $f16
/* 01D5C 80AA7DAC 44029000 */  mfc1    $v0, $f18
/* 01D60 80AA7DB0 00000000 */  nop
/* 01D64 80AA7DB4 51A20009 */  beql    $t5, $v0, .L80AA7DDC
/* 01D68 80AA7DB8 920303C4 */  lbu     $v1, 0x03C4($s0)           ## 000003C4
/* 01D6C 80AA7DBC 10410004 */  beq     $v0, $at, .L80AA7DD0
/* 01D70 80AA7DC0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01D74 80AA7DC4 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
/* 01D78 80AA7DC8 54410004 */  bnel    $v0, $at, .L80AA7DDC
/* 01D7C 80AA7DCC 920303C4 */  lbu     $v1, 0x03C4($s0)           ## 000003C4
.L80AA7DD0:
/* 01D80 80AA7DD0 0C00BE0A */  jal     Audio_PlayActorSound2

/* 01D84 80AA7DD4 240538BF */  addiu   $a1, $zero, 0x38BF         ## $a1 = 000038BF
.L80AA7DD8:
/* 01D88 80AA7DD8 920303C4 */  lbu     $v1, 0x03C4($s0)           ## 000003C4
.L80AA7DDC:
/* 01D8C 80AA7DDC 306E0002 */  andi    $t6, $v1, 0x0002           ## $t6 = 00000000
/* 01D90 80AA7DE0 51C00034 */  beql    $t6, $zero, .L80AA7EB4
/* 01D94 80AA7DE4 8E2D0680 */  lw      $t5, 0x0680($s1)           ## 00000680
/* 01D98 80AA7DE8 8E0F03B8 */  lw      $t7, 0x03B8($s0)           ## 000003B8
/* 01D9C 80AA7DEC 8FB80048 */  lw      $t8, 0x0048($sp)
/* 01DA0 80AA7DF0 306CFFFD */  andi    $t4, $v1, 0xFFFD           ## $t4 = 00000000
/* 01DA4 80AA7DF4 562F002E */  bnel    $s1, $t7, .L80AA7EB0
/* 01DA8 80AA7DF8 A20C03C4 */  sb      $t4, 0x03C4($s0)           ## 000003C4
/* 01DAC 80AA7DFC 57000029 */  bnel    $t8, $zero, .L80AA7EA4
/* 01DB0 80AA7E00 240B0001 */  addiu   $t3, $zero, 0x0001         ## $t3 = 00000001
/* 01DB4 80AA7E04 8E390680 */  lw      $t9, 0x0680($s1)           ## 00000680
/* 01DB8 80AA7E08 33280080 */  andi    $t0, $t9, 0x0080           ## $t0 = 00000000
/* 01DBC 80AA7E0C 55000025 */  bnel    $t0, $zero, .L80AA7EA4
/* 01DC0 80AA7E10 240B0001 */  addiu   $t3, $zero, 0x0001         ## $t3 = 00000001
/* 01DC4 80AA7E14 82220A78 */  lb      $v0, 0x0A78($s1)           ## 00000A78
/* 01DC8 80AA7E18 0441000F */  bgez    $v0, .L80AA7E58
/* 01DCC 80AA7E1C 2841FFD9 */  slti    $at, $v0, 0xFFD9
/* 01DD0 80AA7E20 50200005 */  beql    $at, $zero, .L80AA7E38
/* 01DD4 80AA7E24 A2200A78 */  sb      $zero, 0x0A78($s1)         ## 00000A78
/* 01DD8 80AA7E28 A2200A78 */  sb      $zero, 0x0A78($s1)         ## 00000A78
/* 01DDC 80AA7E2C 1000000A */  beq     $zero, $zero, .L80AA7E58
/* 01DE0 80AA7E30 920303C4 */  lbu     $v1, 0x03C4($s0)           ## 000003C4
/* 01DE4 80AA7E34 A2200A78 */  sb      $zero, 0x0A78($s1)         ## 00000A78
.L80AA7E38:
/* 01DE8 80AA7E38 8FA4005C */  lw      $a0, 0x005C($sp)
/* 01DEC 80AA7E3C 3C190001 */  lui     $t9, 0x0001                ## $t9 = 00010000
/* 01DF0 80AA7E40 2405FFF8 */  addiu   $a1, $zero, 0xFFF8         ## $a1 = FFFFFFF8
/* 01DF4 80AA7E44 0324C821 */  addu    $t9, $t9, $a0
/* 01DF8 80AA7E48 8F391D58 */  lw      $t9, 0x1D58($t9)           ## 00011D58
/* 01DFC 80AA7E4C 0320F809 */  jalr    $ra, $t9
/* 01E00 80AA7E50 00000000 */  nop
/* 01E04 80AA7E54 920303C4 */  lbu     $v1, 0x03C4($s0)           ## 000003C4
.L80AA7E58:
/* 01E08 80AA7E58 8FA2005C */  lw      $v0, 0x005C($sp)
/* 01E0C 80AA7E5C 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 01E10 80AA7E60 306A0004 */  andi    $t2, $v1, 0x0004           ## $t2 = 00000000
/* 01E14 80AA7E64 15400006 */  bne     $t2, $zero, .L80AA7E80
/* 01E18 80AA7E68 00411021 */  addu    $v0, $v0, $at
/* 01E1C 80AA7E6C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 01E20 80AA7E70 2405083E */  addiu   $a1, $zero, 0x083E         ## $a1 = 0000083E
/* 01E24 80AA7E74 0C00BE0A */  jal     Audio_PlayActorSound2

/* 01E28 80AA7E78 AFA20038 */  sw      $v0, 0x0038($sp)
/* 01E2C 80AA7E7C 8FA20038 */  lw      $v0, 0x0038($sp)
.L80AA7E80:
/* 01E30 80AA7E80 8C591D4C */  lw      $t9, 0x1D4C($v0)           ## 00001D4C
/* 01E34 80AA7E84 8FA4005C */  lw      $a0, 0x005C($sp)
/* 01E38 80AA7E88 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 01E3C 80AA7E8C 0320F809 */  jalr    $ra, $t9
/* 01E40 80AA7E90 00000000 */  nop
/* 01E44 80AA7E94 50400003 */  beql    $v0, $zero, .L80AA7EA4
/* 01E48 80AA7E98 240B0001 */  addiu   $t3, $zero, 0x0001         ## $t3 = 00000001
/* 01E4C 80AA7E9C AE300118 */  sw      $s0, 0x0118($s1)           ## 00000118
/* 01E50 80AA7EA0 240B0001 */  addiu   $t3, $zero, 0x0001         ## $t3 = 00000001
.L80AA7EA4:
/* 01E54 80AA7EA4 10000002 */  beq     $zero, $zero, .L80AA7EB0
/* 01E58 80AA7EA8 AFAB004C */  sw      $t3, 0x004C($sp)
/* 01E5C 80AA7EAC A20C03C4 */  sb      $t4, 0x03C4($s0)           ## 000003C4
.L80AA7EB0:
/* 01E60 80AA7EB0 8E2D0680 */  lw      $t5, 0x0680($s1)           ## 00000680
.L80AA7EB4:
/* 01E64 80AA7EB4 31AE0080 */  andi    $t6, $t5, 0x0080           ## $t6 = 00000000
/* 01E68 80AA7EB8 51C0002B */  beql    $t6, $zero, .L80AA7F68
/* 01E6C 80AA7EBC 8FA80048 */  lw      $t0, 0x0048($sp)
/* 01E70 80AA7EC0 8E2F0118 */  lw      $t7, 0x0118($s1)           ## 00000118
/* 01E74 80AA7EC4 24180001 */  addiu   $t8, $zero, 0x0001         ## $t8 = 00000001
/* 01E78 80AA7EC8 560F0027 */  bnel    $s0, $t7, .L80AA7F68
/* 01E7C 80AA7ECC 8FA80048 */  lw      $t0, 0x0048($sp)
/* 01E80 80AA7ED0 860400B6 */  lh      $a0, 0x00B6($s0)           ## 000000B6
/* 01E84 80AA7ED4 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 01E88 80AA7ED8 AFB8004C */  sw      $t8, 0x004C($sp)
/* 01E8C 80AA7EDC E7A00040 */  swc1    $f0, 0x0040($sp)
/* 01E90 80AA7EE0 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 01E94 80AA7EE4 860400B6 */  lh      $a0, 0x00B6($s0)           ## 000000B6
/* 01E98 80AA7EE8 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 01E9C 80AA7EEC 44813000 */  mtc1    $at, $f6                   ## $f6 = 10.00
/* 01EA0 80AA7EF0 C7A40040 */  lwc1    $f4, 0x0040($sp)
/* 01EA4 80AA7EF4 3C0142B2 */  lui     $at, 0x42B2                ## $at = 42B20000
/* 01EA8 80AA7EF8 44819000 */  mtc1    $at, $f18                  ## $f18 = 89.00
/* 01EAC 80AA7EFC 46062202 */  mul.s   $f8, $f4, $f6
/* 01EB0 80AA7F00 C60A0024 */  lwc1    $f10, 0x0024($s0)          ## 00000024
/* 01EB4 80AA7F04 46120102 */  mul.s   $f4, $f0, $f18
/* 01EB8 80AA7F08 46085400 */  add.s   $f16, $f10, $f8
/* 01EBC 80AA7F0C 46102180 */  add.s   $f6, $f4, $f16
/* 01EC0 80AA7F10 E6260024 */  swc1    $f6, 0x0024($s1)           ## 00000024
/* 01EC4 80AA7F14 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 01EC8 80AA7F18 860400B6 */  lh      $a0, 0x00B6($s0)           ## 000000B6
/* 01ECC 80AA7F1C E7A00040 */  swc1    $f0, 0x0040($sp)
/* 01ED0 80AA7F20 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 01ED4 80AA7F24 860400B6 */  lh      $a0, 0x00B6($s0)           ## 000000B6
/* 01ED8 80AA7F28 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 01EDC 80AA7F2C 44814000 */  mtc1    $at, $f8                   ## $f8 = 10.00
/* 01EE0 80AA7F30 C7AA0040 */  lwc1    $f10, 0x0040($sp)
/* 01EE4 80AA7F34 3C0142B2 */  lui     $at, 0x42B2                ## $at = 42B20000
/* 01EE8 80AA7F38 44813000 */  mtc1    $at, $f6                   ## $f6 = 89.00
/* 01EEC 80AA7F3C 46085482 */  mul.s   $f18, $f10, $f8
/* 01EF0 80AA7F40 C604002C */  lwc1    $f4, 0x002C($s0)           ## 0000002C
/* 01EF4 80AA7F44 44801000 */  mtc1    $zero, $f2                 ## $f2 = 0.00
/* 01EF8 80AA7F48 46060282 */  mul.s   $f10, $f0, $f6
/* 01EFC 80AA7F4C A6200850 */  sh      $zero, 0x0850($s1)         ## 00000850
/* 01F00 80AA7F50 E6220068 */  swc1    $f2, 0x0068($s1)           ## 00000068
/* 01F04 80AA7F54 E6220060 */  swc1    $f2, 0x0060($s1)           ## 00000060
/* 01F08 80AA7F58 46122400 */  add.s   $f16, $f4, $f18
/* 01F0C 80AA7F5C 46105200 */  add.s   $f8, $f10, $f16
/* 01F10 80AA7F60 E628002C */  swc1    $f8, 0x002C($s1)           ## 0000002C
/* 01F14 80AA7F64 8FA80048 */  lw      $t0, 0x0048($sp)
.L80AA7F68:
/* 01F18 80AA7F68 8FA9004C */  lw      $t1, 0x004C($sp)
/* 01F1C 80AA7F6C 51000023 */  beql    $t0, $zero, .L80AA7FFC
/* 01F20 80AA7F70 8FBF0034 */  lw      $ra, 0x0034($sp)
/* 01F24 80AA7F74 55200006 */  bnel    $t1, $zero, .L80AA7F90
/* 01F28 80AA7F78 920B03C4 */  lbu     $t3, 0x03C4($s0)           ## 000003C4
/* 01F2C 80AA7F7C 8E2A0680 */  lw      $t2, 0x0680($s1)           ## 00000680
/* 01F30 80AA7F80 31590080 */  andi    $t9, $t2, 0x0080           ## $t9 = 00000000
/* 01F34 80AA7F84 53200017 */  beql    $t9, $zero, .L80AA7FE4
/* 01F38 80AA7F88 3C01C120 */  lui     $at, 0xC120                ## $at = C1200000
/* 01F3C 80AA7F8C 920B03C4 */  lbu     $t3, 0x03C4($s0)           ## 000003C4
.L80AA7F90:
/* 01F40 80AA7F90 3C014080 */  lui     $at, 0x4080                ## $at = 40800000
/* 01F44 80AA7F94 240F00C8 */  addiu   $t7, $zero, 0x00C8         ## $t7 = 000000C8
/* 01F48 80AA7F98 316CFFFD */  andi    $t4, $t3, 0xFFFD           ## $t4 = 00000000
/* 01F4C 80AA7F9C A20C03C4 */  sb      $t4, 0x03C4($s0)           ## 000003C4
/* 01F50 80AA7FA0 8E220680 */  lw      $v0, 0x0680($s1)           ## 00000680
/* 01F54 80AA7FA4 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 01F58 80AA7FA8 304D0080 */  andi    $t5, $v0, 0x0080           ## $t5 = 00000000
/* 01F5C 80AA7FAC 51A0000D */  beql    $t5, $zero, .L80AA7FE4
/* 01F60 80AA7FB0 3C01C120 */  lui     $at, 0xC120                ## $at = C1200000
/* 01F64 80AA7FB4 44810000 */  mtc1    $at, $f0                   ## $f0 = -10.00
/* 01F68 80AA7FB8 2401FF7F */  addiu   $at, $zero, 0xFF7F         ## $at = FFFFFF7F
/* 01F6C 80AA7FBC 00417024 */  and     $t6, $v0, $at
/* 01F70 80AA7FC0 AE2E0680 */  sw      $t6, 0x0680($s1)           ## 00000680
/* 01F74 80AA7FC4 AE200118 */  sw      $zero, 0x0118($s1)         ## 00000118
/* 01F78 80AA7FC8 A62F0850 */  sh      $t7, 0x0850($s1)           ## 00000850
/* 01F7C 80AA7FCC 86070032 */  lh      $a3, 0x0032($s0)           ## 00000032
/* 01F80 80AA7FD0 44060000 */  mfc1    $a2, $f0
/* 01F84 80AA7FD4 8FA4005C */  lw      $a0, 0x005C($sp)
/* 01F88 80AA7FD8 0C00BDC7 */  jal     func_8002F71C
/* 01F8C 80AA7FDC E7A00010 */  swc1    $f0, 0x0010($sp)
/* 01F90 80AA7FE0 3C01C120 */  lui     $at, 0xC120                ## $at = C1200000
.L80AA7FE4:
/* 01F94 80AA7FE4 44812000 */  mtc1    $at, $f4                   ## $f4 = -10.00
/* 01F98 80AA7FE8 A6000334 */  sh      $zero, 0x0334($s0)         ## 00000334
/* 01F9C 80AA7FEC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01FA0 80AA7FF0 0C2A9B48 */  jal     func_80AA6D20
/* 01FA4 80AA7FF4 E6040068 */  swc1    $f4, 0x0068($s0)           ## 00000068
/* 01FA8 80AA7FF8 8FBF0034 */  lw      $ra, 0x0034($sp)
.L80AA7FFC:
/* 01FAC 80AA7FFC 8FB0002C */  lw      $s0, 0x002C($sp)
/* 01FB0 80AA8000 8FB10030 */  lw      $s1, 0x0030($sp)
/* 01FB4 80AA8004 03E00008 */  jr      $ra
/* 01FB8 80AA8008 27BD0058 */  addiu   $sp, $sp, 0x0058           ## $sp = 00000000


