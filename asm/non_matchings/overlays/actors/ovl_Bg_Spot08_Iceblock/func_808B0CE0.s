.late_rodata

glabel D_808B1884
    .float 0.0016

glabel D_808B1888
    .float 0.0016

glabel D_808B188C
    .float 9.58738019108e-05

.text
glabel func_808B0CE0
/* 00380 808B0CE0 27BDFF18 */  addiu   $sp, $sp, 0xFF18           ## $sp = FFFFFF18
/* 00384 808B0CE4 AFBF001C */  sw      $ra, 0x001C($sp)
/* 00388 808B0CE8 AFB00018 */  sw      $s0, 0x0018($sp)
/* 0038C 808B0CEC 8482001C */  lh      $v0, 0x001C($a0)           ## 0000001C
/* 00390 808B0CF0 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00394 808B0CF4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00398 808B0CF8 304200FF */  andi    $v0, $v0, 0x00FF           ## $v0 = 00000000
/* 0039C 808B0CFC 10410008 */  beq     $v0, $at, .L808B0D20
/* 003A0 808B0D00 8CA31C44 */  lw      $v1, 0x1C44($a1)           ## 00001C44
/* 003A4 808B0D04 24010011 */  addiu   $at, $zero, 0x0011         ## $at = 00000011
/* 003A8 808B0D08 10410003 */  beq     $v0, $at, .L808B0D18
/* 003AC 808B0D0C 240E0002 */  addiu   $t6, $zero, 0x0002         ## $t6 = 00000002
/* 003B0 808B0D10 10000005 */  beq     $zero, $zero, .L808B0D28
/* 003B4 808B0D14 AFAE0084 */  sw      $t6, 0x0084($sp)
.L808B0D18:
/* 003B8 808B0D18 10000003 */  beq     $zero, $zero, .L808B0D28
/* 003BC 808B0D1C AFA00084 */  sw      $zero, 0x0084($sp)
.L808B0D20:
/* 003C0 808B0D20 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 003C4 808B0D24 AFAF0084 */  sw      $t7, 0x0084($sp)
.L808B0D28:
/* 003C8 808B0D28 24640024 */  addiu   $a0, $v1, 0x0024           ## $a0 = 00000024
/* 003CC 808B0D2C 26050024 */  addiu   $a1, $s0, 0x0024           ## $a1 = 00000024
/* 003D0 808B0D30 0C01DFB4 */  jal     Math_Vec3f_Diff
              ## Vec3f_Sub
/* 003D4 808B0D34 27A600C8 */  addiu   $a2, $sp, 0x00C8           ## $a2 = FFFFFFE0
/* 003D8 808B0D38 3C014316 */  lui     $at, 0x4316                ## $at = 43160000
/* 003DC 808B0D3C 44812000 */  mtc1    $at, $f4                   ## $f4 = 150.00
/* 003E0 808B0D40 C6060054 */  lwc1    $f6, 0x0054($s0)           ## 00000054
/* 003E4 808B0D44 C7AA00CC */  lwc1    $f10, 0x00CC($sp)
/* 003E8 808B0D48 27A400C8 */  addiu   $a0, $sp, 0x00C8           ## $a0 = FFFFFFE0
/* 003EC 808B0D4C 46062202 */  mul.s   $f8, $f4, $f6
/* 003F0 808B0D50 46085401 */  sub.s   $f16, $f10, $f8
/* 003F4 808B0D54 0C032D8A */  jal     Math3D_Vec3fMagnitude
/* 003F8 808B0D58 E7B000CC */  swc1    $f16, 0x00CC($sp)
/* 003FC 808B0D5C 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00400 808B0D60 E7A00088 */  swc1    $f0, 0x0088($sp)
/* 00404 808B0D64 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 00408 808B0D68 44819000 */  mtc1    $at, $f18                  ## $f18 = 0.50
/* 0040C 808B0D6C 3C01808B */  lui     $at, %hi(D_808B1884)       ## $at = 808B0000
/* 00410 808B0D70 C4261884 */  lwc1    $f6, %lo(D_808B1884)($at)
/* 00414 808B0D74 46120101 */  sub.s   $f4, $f0, $f18
/* 00418 808B0D78 44804000 */  mtc1    $zero, $f8                 ## $f8 = 0.00
/* 0041C 808B0D7C 46062282 */  mul.s   $f10, $f4, $f6
/* 00420 808B0D80 E7A800A8 */  swc1    $f8, 0x00A8($sp)
/* 00424 808B0D84 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00428 808B0D88 E7AA00A4 */  swc1    $f10, 0x00A4($sp)
/* 0042C 808B0D8C 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 00430 808B0D90 44818000 */  mtc1    $at, $f16                  ## $f16 = 0.50
/* 00434 808B0D94 3C01808B */  lui     $at, %hi(D_808B1888)       ## $at = 808B0000
/* 00438 808B0D98 C4241888 */  lwc1    $f4, %lo(D_808B1888)($at)
/* 0043C 808B0D9C 46100481 */  sub.s   $f18, $f0, $f16
/* 00440 808B0DA0 44804000 */  mtc1    $zero, $f8                 ## $f8 = 0.00
/* 00444 808B0DA4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00448 808B0DA8 46049182 */  mul.s   $f6, $f18, $f4
/* 0044C 808B0DAC E7A600AC */  swc1    $f6, 0x00AC($sp)
/* 00450 808B0DB0 C60A0168 */  lwc1    $f10, 0x0168($s0)          ## 00000168
/* 00454 808B0DB4 E7A800D8 */  swc1    $f8, 0x00D8($sp)
/* 00458 808B0DB8 E7AA00D4 */  swc1    $f10, 0x00D4($sp)
/* 0045C 808B0DBC C6100170 */  lwc1    $f16, 0x0170($s0)          ## 00000170
/* 00460 808B0DC0 0C010D5B */  jal     func_8004356C
/* 00464 808B0DC4 E7B000DC */  swc1    $f16, 0x00DC($sp)
/* 00468 808B0DC8 1040001C */  beq     $v0, $zero, .L808B0E3C
/* 0046C 808B0DCC 3C014040 */  lui     $at, 0x4040                ## $at = 40400000
/* 00470 808B0DD0 44819000 */  mtc1    $at, $f18                  ## $f18 = 3.00
/* 00474 808B0DD4 C7A40088 */  lwc1    $f4, 0x0088($sp)
/* 00478 808B0DD8 27A400C8 */  addiu   $a0, $sp, 0x00C8           ## $a0 = FFFFFFE0
/* 0047C 808B0DDC 27A500D4 */  addiu   $a1, $sp, 0x00D4           ## $a1 = FFFFFFEC
/* 00480 808B0DE0 4604903C */  c.lt.s  $f18, $f4
/* 00484 808B0DE4 00000000 */  nop
/* 00488 808B0DE8 45000014 */  bc1f    .L808B0E3C
/* 0048C 808B0DEC 00000000 */  nop
/* 00490 808B0DF0 0C01DFB4 */  jal     Math_Vec3f_Diff
              ## Vec3f_Sub
/* 00494 808B0DF4 27A600BC */  addiu   $a2, $sp, 0x00BC           ## $a2 = FFFFFFD4
/* 00498 808B0DF8 8FA20084 */  lw      $v0, 0x0084($sp)
/* 0049C 808B0DFC 3C01808B */  lui     $at, %hi(D_808B16C8)       ## $at = 808B0000
/* 004A0 808B0E00 C7AA0088 */  lwc1    $f10, 0x0088($sp)
/* 004A4 808B0E04 00021080 */  sll     $v0, $v0,  2
/* 004A8 808B0E08 00220821 */  addu    $at, $at, $v0
/* 004AC 808B0E0C C42616C8 */  lwc1    $f6, %lo(D_808B16C8)($at)
/* 004B0 808B0E10 C6100050 */  lwc1    $f16, 0x0050($s0)          ## 00000050
/* 004B4 808B0E14 27A400BC */  addiu   $a0, $sp, 0x00BC           ## $a0 = FFFFFFD4
/* 004B8 808B0E18 460A3202 */  mul.s   $f8, $f6, $f10
/* 004BC 808B0E1C 00802825 */  or      $a1, $a0, $zero            ## $a1 = FFFFFFD4
/* 004C0 808B0E20 AFA2002C */  sw      $v0, 0x002C($sp)
/* 004C4 808B0E24 46104483 */  div.s   $f18, $f8, $f16
/* 004C8 808B0E28 44069000 */  mfc1    $a2, $f18
/* 004CC 808B0E2C 0C22C2EA */  jal     func_808B0BA8
/* 004D0 808B0E30 00000000 */  nop
/* 004D4 808B0E34 1000000E */  beq     $zero, $zero, .L808B0E70
/* 004D8 808B0E38 3C06BC23 */  lui     $a2, 0xBC23                ## $a2 = BC230000
.L808B0E3C:
/* 004DC 808B0E3C 3C19808B */  lui     $t9, %hi(D_808B16BC)       ## $t9 = 808B0000
/* 004E0 808B0E40 273916BC */  addiu   $t9, $t9, %lo(D_808B16BC)  ## $t9 = 808B16BC
/* 004E4 808B0E44 8F290000 */  lw      $t1, 0x0000($t9)           ## 808B16BC
/* 004E8 808B0E48 27B800BC */  addiu   $t8, $sp, 0x00BC           ## $t8 = FFFFFFD4
/* 004EC 808B0E4C 8F280004 */  lw      $t0, 0x0004($t9)           ## 808B16C0
/* 004F0 808B0E50 AF090000 */  sw      $t1, 0x0000($t8)           ## FFFFFFD4
/* 004F4 808B0E54 8F290008 */  lw      $t1, 0x0008($t9)           ## 808B16C4
/* 004F8 808B0E58 AF080004 */  sw      $t0, 0x0004($t8)           ## FFFFFFD8
/* 004FC 808B0E5C AF090008 */  sw      $t1, 0x0008($t8)           ## FFFFFFDC
/* 00500 808B0E60 8FAA0084 */  lw      $t2, 0x0084($sp)
/* 00504 808B0E64 000A5880 */  sll     $t3, $t2,  2
/* 00508 808B0E68 AFAB002C */  sw      $t3, 0x002C($sp)
/* 0050C 808B0E6C 3C06BC23 */  lui     $a2, 0xBC23                ## $a2 = BC230000
.L808B0E70:
/* 00510 808B0E70 34C6D70A */  ori     $a2, $a2, 0xD70A           ## $a2 = BC23D70A
/* 00514 808B0E74 27A400B0 */  addiu   $a0, $sp, 0x00B0           ## $a0 = FFFFFFC8
/* 00518 808B0E78 0C22C2EA */  jal     func_808B0BA8
/* 0051C 808B0E7C 27A500D4 */  addiu   $a1, $sp, 0x00D4           ## $a1 = FFFFFFEC
/* 00520 808B0E80 26070174 */  addiu   $a3, $s0, 0x0174           ## $a3 = 00000174
/* 00524 808B0E84 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000174
/* 00528 808B0E88 00E03025 */  or      $a2, $a3, $zero            ## $a2 = 00000174
/* 0052C 808B0E8C AFA70028 */  sw      $a3, 0x0028($sp)
/* 00530 808B0E90 0C01DFA7 */  jal     Math_Vec3f_Sum
              ## Vec3f_Add
/* 00534 808B0E94 27A500BC */  addiu   $a1, $sp, 0x00BC           ## $a1 = FFFFFFD4
/* 00538 808B0E98 8FA60028 */  lw      $a2, 0x0028($sp)
/* 0053C 808B0E9C 27A500B0 */  addiu   $a1, $sp, 0x00B0           ## $a1 = FFFFFFC8
/* 00540 808B0EA0 0C01DFA7 */  jal     Math_Vec3f_Sum
              ## Vec3f_Add
/* 00544 808B0EA4 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 00548 808B0EA8 8FA60028 */  lw      $a2, 0x0028($sp)
/* 0054C 808B0EAC 27A500A4 */  addiu   $a1, $sp, 0x00A4           ## $a1 = FFFFFFBC
/* 00550 808B0EB0 0C01DFA7 */  jal     Math_Vec3f_Sum
              ## Vec3f_Add
/* 00554 808B0EB4 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 00558 808B0EB8 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 0055C 808B0EBC 8FA50028 */  lw      $a1, 0x0028($sp)
/* 00560 808B0EC0 26040168 */  addiu   $a0, $s0, 0x0168           ## $a0 = 00000168
/* 00564 808B0EC4 E6040178 */  swc1    $f4, 0x0178($s0)           ## 00000178
/* 00568 808B0EC8 AFA40024 */  sw      $a0, 0x0024($sp)
/* 0056C 808B0ECC 0C01DFA7 */  jal     Math_Vec3f_Sum
              ## Vec3f_Add
/* 00570 808B0ED0 27A60098 */  addiu   $a2, $sp, 0x0098           ## $a2 = FFFFFFB0
/* 00574 808B0ED4 8FAC002C */  lw      $t4, 0x002C($sp)
/* 00578 808B0ED8 3C01808B */  lui     $at, %hi(D_808B16D4)       ## $at = 808B0000
/* 0057C 808B0EDC C7A60098 */  lwc1    $f6, 0x0098($sp)
/* 00580 808B0EE0 002C0821 */  addu    $at, $at, $t4
/* 00584 808B0EE4 C42016D4 */  lwc1    $f0, %lo(D_808B16D4)($at)
/* 00588 808B0EE8 C7A800A0 */  lwc1    $f8, 0x00A0($sp)
/* 0058C 808B0EEC 8FA40024 */  lw      $a0, 0x0024($sp)
/* 00590 808B0EF0 46003282 */  mul.s   $f10, $f6, $f0
/* 00594 808B0EF4 27A50098 */  addiu   $a1, $sp, 0x0098           ## $a1 = FFFFFFB0
/* 00598 808B0EF8 46004402 */  mul.s   $f16, $f8, $f0
/* 0059C 808B0EFC E7AA0098 */  swc1    $f10, 0x0098($sp)
/* 005A0 808B0F00 0C22C311 */  jal     func_808B0C44
/* 005A4 808B0F04 E7B000A0 */  swc1    $f16, 0x00A0($sp)
/* 005A8 808B0F08 1040002A */  beq     $v0, $zero, .L808B0FB4
/* 005AC 808B0F0C 8FA80024 */  lw      $t0, 0x0024($sp)
/* 005B0 808B0F10 C60C0170 */  lwc1    $f12, 0x0170($s0)          ## 00000170
/* 005B4 808B0F14 0C032D57 */  jal     Math3D_Dist1DSq
/* 005B8 808B0F18 C60E0168 */  lwc1    $f14, 0x0168($s0)          ## 00000168
/* 005BC 808B0F1C 8FAD002C */  lw      $t5, 0x002C($sp)
/* 005C0 808B0F20 3C01808B */  lui     $at, %hi(D_808B16E0)       ## $at = 808B0000
/* 005C4 808B0F24 3C05808B */  lui     $a1, %hi(D_808B16B0)       ## $a1 = 808B0000
/* 005C8 808B0F28 002D0821 */  addu    $at, $at, $t5
/* 005CC 808B0F2C C42C16E0 */  lwc1    $f12, %lo(D_808B16E0)($at)
/* 005D0 808B0F30 24A516B0 */  addiu   $a1, $a1, %lo(D_808B16B0)  ## $a1 = 808B16B0
/* 005D4 808B0F34 27A40098 */  addiu   $a0, $sp, 0x0098           ## $a0 = FFFFFFB0
/* 005D8 808B0F38 4600603C */  c.lt.s  $f12, $f0
/* 005DC 808B0F3C 00000000 */  nop
/* 005E0 808B0F40 4500000D */  bc1f    .L808B0F78
/* 005E4 808B0F44 00000000 */  nop
/* 005E8 808B0F48 46006083 */  div.s   $f2, $f12, $f0
/* 005EC 808B0F4C C6120168 */  lwc1    $f18, 0x0168($s0)          ## 00000168
/* 005F0 808B0F50 C60A0170 */  lwc1    $f10, 0x0170($s0)          ## 00000170
/* 005F4 808B0F54 3C01808B */  lui     $at, %hi(D_808B16EC)       ## $at = 808B0000
/* 005F8 808B0F58 46029102 */  mul.s   $f4, $f18, $f2
/* 005FC 808B0F5C E6040168 */  swc1    $f4, 0x0168($s0)           ## 00000168
/* 00600 808B0F60 46025202 */  mul.s   $f8, $f10, $f2
/* 00604 808B0F64 8FAE002C */  lw      $t6, 0x002C($sp)
/* 00608 808B0F68 002E0821 */  addu    $at, $at, $t6
/* 0060C 808B0F6C C42616EC */  lwc1    $f6, %lo(D_808B16EC)($at)
/* 00610 808B0F70 E6080170 */  swc1    $f8, 0x0170($s0)           ## 00000170
/* 00614 808B0F74 E606016C */  swc1    $f6, 0x016C($s0)           ## 0000016C
.L808B0F78:
/* 00618 808B0F78 0C22C2F5 */  jal     func_808B0BD4
/* 0061C 808B0F7C 8FA60024 */  lw      $a2, 0x0024($sp)
/* 00620 808B0F80 27A4008C */  addiu   $a0, $sp, 0x008C           ## $a0 = FFFFFFA4
/* 00624 808B0F84 0C22C311 */  jal     func_808B0C44
/* 00628 808B0F88 27A50098 */  addiu   $a1, $sp, 0x0098           ## $a1 = FFFFFFB0
/* 0062C 808B0F8C 10400007 */  beq     $v0, $zero, .L808B0FAC
/* 00630 808B0F90 27AF008C */  addiu   $t7, $sp, 0x008C           ## $t7 = FFFFFFA4
/* 00634 808B0F94 8DF90000 */  lw      $t9, 0x0000($t7)           ## FFFFFFA4
/* 00638 808B0F98 AE190180 */  sw      $t9, 0x0180($s0)           ## 00000180
/* 0063C 808B0F9C 8DF80004 */  lw      $t8, 0x0004($t7)           ## FFFFFFA8
/* 00640 808B0FA0 AE180184 */  sw      $t8, 0x0184($s0)           ## 00000184
/* 00644 808B0FA4 8DF90008 */  lw      $t9, 0x0008($t7)           ## FFFFFFAC
/* 00648 808B0FA8 AE190188 */  sw      $t9, 0x0188($s0)           ## 00000188
.L808B0FAC:
/* 0064C 808B0FAC 1000000A */  beq     $zero, $zero, .L808B0FD8
/* 00650 808B0FB0 26070180 */  addiu   $a3, $s0, 0x0180           ## $a3 = 00000180
.L808B0FB4:
/* 00654 808B0FB4 3C09808B */  lui     $t1, %hi(D_808B16B0)       ## $t1 = 808B0000
/* 00658 808B0FB8 252916B0 */  addiu   $t1, $t1, %lo(D_808B16B0)  ## $t1 = 808B16B0
/* 0065C 808B0FBC 8D2B0000 */  lw      $t3, 0x0000($t1)           ## 808B16B0
/* 00660 808B0FC0 26070180 */  addiu   $a3, $s0, 0x0180           ## $a3 = 00000180
/* 00664 808B0FC4 AD0B0000 */  sw      $t3, 0x0000($t0)           ## 00000000
/* 00668 808B0FC8 8D2A0004 */  lw      $t2, 0x0004($t1)           ## 808B16B4
/* 0066C 808B0FCC AD0A0004 */  sw      $t2, 0x0004($t0)           ## 00000004
/* 00670 808B0FD0 8D2B0008 */  lw      $t3, 0x0008($t1)           ## 808B16B8
/* 00674 808B0FD4 AD0B0008 */  sw      $t3, 0x0008($t0)           ## 00000008
.L808B0FD8:
/* 00678 808B0FD8 3C04808B */  lui     $a0, %hi(D_808B16B0)       ## $a0 = 808B0000
/* 0067C 808B0FDC 248416B0 */  addiu   $a0, $a0, %lo(D_808B16B0)  ## $a0 = 808B16B0
/* 00680 808B0FE0 8FA50024 */  lw      $a1, 0x0024($sp)
/* 00684 808B0FE4 0C032BFB */  jal     Math3D_Cos
/* 00688 808B0FE8 AFA7002C */  sw      $a3, 0x002C($sp)
/* 0068C 808B0FEC 0C03F4DA */  jal     Math_acosf
/* 00690 808B0FF0 46000306 */  mov.s   $f12, $f0
/* 00694 808B0FF4 8FA5002C */  lw      $a1, 0x002C($sp)
/* 00698 808B0FF8 46000306 */  mov.s   $f12, $f0
/* 0069C 808B0FFC 0C0348FF */  jal     func_800D23FC
/* 006A0 808B1000 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 006A4 808B1004 860C00B6 */  lh      $t4, 0x00B6($s0)           ## 000000B6
/* 006A8 808B1008 3C01808B */  lui     $at, %hi(D_808B188C)       ## $at = 808B0000
/* 006AC 808B100C C424188C */  lwc1    $f4, %lo(D_808B188C)($at)
/* 006B0 808B1010 448C8000 */  mtc1    $t4, $f16                  ## $f16 = 0.00
/* 006B4 808B1014 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 006B8 808B1018 468084A0 */  cvt.s.w $f18, $f16
/* 006BC 808B101C 46049302 */  mul.s   $f12, $f18, $f4
/* 006C0 808B1020 0C034348 */  jal     Matrix_RotateY
/* 006C4 808B1024 00000000 */  nop
/* 006C8 808B1028 0C034236 */  jal     Matrix_Get
/* 006CC 808B102C 27A40044 */  addiu   $a0, $sp, 0x0044           ## $a0 = FFFFFF5C
/* 006D0 808B1030 27A40044 */  addiu   $a0, $sp, 0x0044           ## $a0 = FFFFFF5C
/* 006D4 808B1034 260500B4 */  addiu   $a1, $s0, 0x00B4           ## $a1 = 000000B4
/* 006D8 808B1038 0C034833 */  jal     func_800D20CC
/* 006DC 808B103C 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 006E0 808B1040 8FBF001C */  lw      $ra, 0x001C($sp)
/* 006E4 808B1044 8FB00018 */  lw      $s0, 0x0018($sp)
/* 006E8 808B1048 27BD00E8 */  addiu   $sp, $sp, 0x00E8           ## $sp = 00000000
/* 006EC 808B104C 03E00008 */  jr      $ra
/* 006F0 808B1050 00000000 */  nop
