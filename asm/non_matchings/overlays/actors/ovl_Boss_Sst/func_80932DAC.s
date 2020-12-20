glabel func_80932DAC
/* 067DC 80932DAC 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 067E0 80932DB0 AFBF001C */  sw      $ra, 0x001C($sp)
/* 067E4 80932DB4 AFB00018 */  sw      $s0, 0x0018($sp)
/* 067E8 80932DB8 AFA5002C */  sw      $a1, 0x002C($sp)
/* 067EC 80932DBC 84820198 */  lh      $v0, 0x0198($a0)           ## 00000198
/* 067F0 80932DC0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 067F4 80932DC4 10400002 */  beq     $v0, $zero, .L80932DD0
/* 067F8 80932DC8 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 067FC 80932DCC A48E0198 */  sh      $t6, 0x0198($a0)           ## 00000198
.L80932DD0:
/* 06800 80932DD0 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 06804 80932DD4 0C02927F */  jal     SkelAnime_FrameUpdateMatrix

/* 06808 80932DD8 AFA40020 */  sw      $a0, 0x0020($sp)
/* 0680C 80932DDC 3C0F8094 */  lui     $t7, %hi(D_80938C90)       ## $t7 = 80940000
/* 06810 80932DE0 8DEF8C90 */  lw      $t7, %lo(D_80938C90)($t7)
/* 06814 80932DE4 0C01DE0D */  jal     Math_CosS
              ## coss?
/* 06818 80932DE8 85E400B6 */  lh      $a0, 0x00B6($t7)           ## 809400B6
/* 0681C 80932DEC 3C014348 */  lui     $at, 0x4348                ## $at = 43480000
/* 06820 80932DF0 44812000 */  mtc1    $at, $f4                   ## $f4 = 200.00
/* 06824 80932DF4 C6080010 */  lwc1    $f8, 0x0010($s0)           ## 00000010
/* 06828 80932DF8 2604002C */  addiu   $a0, $s0, 0x002C           ## $a0 = 0000002C
/* 0682C 80932DFC 46040182 */  mul.s   $f6, $f0, $f4
/* 06830 80932E00 3C063F00 */  lui     $a2, 0x3F00                ## $a2 = 3F000000
/* 06834 80932E04 3C0741C8 */  lui     $a3, 0x41C8                ## $a3 = 41C80000
/* 06838 80932E08 46083280 */  add.s   $f10, $f6, $f8
/* 0683C 80932E0C 44055000 */  mfc1    $a1, $f10
/* 06840 80932E10 0C01E107 */  jal     Math_SmoothScaleMaxF

/* 06844 80932E14 00000000 */  nop
/* 06848 80932E18 3C188094 */  lui     $t8, %hi(D_80938C90)       ## $t8 = 80940000
/* 0684C 80932E1C 8F188C90 */  lw      $t8, %lo(D_80938C90)($t8)
/* 06850 80932E20 0C01DE1C */  jal     Math_SinS
              ## sins?
/* 06854 80932E24 870400B6 */  lh      $a0, 0x00B6($t8)           ## 809400B6
/* 06858 80932E28 3C014348 */  lui     $at, 0x4348                ## $at = 43480000
/* 0685C 80932E2C 44818000 */  mtc1    $at, $f16                  ## $f16 = 200.00
/* 06860 80932E30 C6040008 */  lwc1    $f4, 0x0008($s0)           ## 00000008
/* 06864 80932E34 26040024 */  addiu   $a0, $s0, 0x0024           ## $a0 = 00000024
/* 06868 80932E38 46100482 */  mul.s   $f18, $f0, $f16
/* 0686C 80932E3C 3C063F00 */  lui     $a2, 0x3F00                ## $a2 = 3F000000
/* 06870 80932E40 3C0741C8 */  lui     $a3, 0x41C8                ## $a3 = 41C80000
/* 06874 80932E44 46049180 */  add.s   $f6, $f18, $f4
/* 06878 80932E48 44053000 */  mfc1    $a1, $f6
/* 0687C 80932E4C 0C01E107 */  jal     Math_SmoothScaleMaxF

/* 06880 80932E50 00000000 */  nop
/* 06884 80932E54 260400B4 */  addiu   $a0, $s0, 0x00B4           ## $a0 = 000000B4
/* 06888 80932E58 860501A2 */  lh      $a1, 0x01A2($s0)           ## 000001A2
/* 0688C 80932E5C 0C01DE2B */  jal     Math_ApproxUpdateScaledS

/* 06890 80932E60 8606019A */  lh      $a2, 0x019A($s0)           ## 0000019A
/* 06894 80932E64 50400031 */  beql    $v0, $zero, .L80932F2C
/* 06898 80932E68 8619019A */  lh      $t9, 0x019A($s0)           ## 0000019A
/* 0689C 80932E6C 861901A2 */  lh      $t9, 0x01A2($s0)           ## 000001A2
/* 068A0 80932E70 3C058093 */  lui     $a1, %hi(D_80937854)       ## $a1 = 80930000
/* 068A4 80932E74 3C0640A0 */  lui     $a2, 0x40A0                ## $a2 = 40A00000
/* 068A8 80932E78 1320000A */  beq     $t9, $zero, .L80932EA4
/* 068AC 80932E7C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 068B0 80932E80 8608001C */  lh      $t0, 0x001C($s0)           ## 0000001C
/* 068B4 80932E84 A60001A2 */  sh      $zero, 0x01A2($s0)         ## 000001A2
/* 068B8 80932E88 8FA40020 */  lw      $a0, 0x0020($sp)
/* 068BC 80932E8C 00084880 */  sll     $t1, $t0,  2
/* 068C0 80932E90 00A92821 */  addu    $a1, $a1, $t1
/* 068C4 80932E94 0C029490 */  jal     SkelAnime_ChangeAnimTransitionStop
/* 068C8 80932E98 8CA57854 */  lw      $a1, %lo(D_80937854)($a1)
/* 068CC 80932E9C 1000000E */  beq     $zero, $zero, .L80932ED8
/* 068D0 80932EA0 860D0198 */  lh      $t5, 0x0198($s0)           ## 00000198
.L80932EA4:
/* 068D4 80932EA4 0C00BE0A */  jal     Audio_PlayActorSound2

/* 068D8 80932EA8 24053951 */  addiu   $a1, $zero, 0x3951         ## $a1 = 00003951
/* 068DC 80932EAC 860B001C */  lh      $t3, 0x001C($s0)           ## 0000001C
/* 068E0 80932EB0 240AF800 */  addiu   $t2, $zero, 0xF800         ## $t2 = FFFFF800
/* 068E4 80932EB4 3C058093 */  lui     $a1, %hi(D_8093785C)       ## $a1 = 80930000
/* 068E8 80932EB8 000B6080 */  sll     $t4, $t3,  2
/* 068EC 80932EBC A60A01A2 */  sh      $t2, 0x01A2($s0)           ## 000001A2
/* 068F0 80932EC0 00AC2821 */  addu    $a1, $a1, $t4
/* 068F4 80932EC4 8CA5785C */  lw      $a1, %lo(D_8093785C)($a1)
/* 068F8 80932EC8 8FA40020 */  lw      $a0, 0x0020($sp)
/* 068FC 80932ECC 0C029490 */  jal     SkelAnime_ChangeAnimTransitionStop
/* 06900 80932ED0 3C0640A0 */  lui     $a2, 0x40A0                ## $a2 = 40A00000
/* 06904 80932ED4 860D0198 */  lh      $t5, 0x0198($s0)           ## 00000198
.L80932ED8:
/* 06908 80932ED8 3C0142A0 */  lui     $at, 0x42A0                ## $at = 42A00000
/* 0690C 80932EDC 44818000 */  mtc1    $at, $f16                  ## $f16 = 80.00
/* 06910 80932EE0 448D4000 */  mtc1    $t5, $f8                   ## $f8 = 0.00
/* 06914 80932EE4 00000000 */  nop
/* 06918 80932EE8 468042A0 */  cvt.s.w $f10, $f8
/* 0691C 80932EEC 4610503C */  c.lt.s  $f10, $f16
/* 06920 80932EF0 00000000 */  nop
/* 06924 80932EF4 4502000D */  bc1fl   .L80932F2C
/* 06928 80932EF8 8619019A */  lh      $t9, 0x019A($s0)           ## 0000019A
/* 0692C 80932EFC 860E019A */  lh      $t6, 0x019A($s0)           ## 0000019A
/* 06930 80932F00 24180040 */  addiu   $t8, $zero, 0x0040         ## $t8 = 00000040
/* 06934 80932F04 25CFFFC0 */  addiu   $t7, $t6, 0xFFC0           ## $t7 = FFFFFFC0
/* 06938 80932F08 A60F019A */  sh      $t7, 0x019A($s0)           ## 0000019A
/* 0693C 80932F0C 8602019A */  lh      $v0, 0x019A($s0)           ## 0000019A
/* 06940 80932F10 28410040 */  slti    $at, $v0, 0x0040
/* 06944 80932F14 50200004 */  beql    $at, $zero, .L80932F28
/* 06948 80932F18 A602019A */  sh      $v0, 0x019A($s0)           ## 0000019A
/* 0694C 80932F1C 10000002 */  beq     $zero, $zero, .L80932F28
/* 06950 80932F20 A618019A */  sh      $t8, 0x019A($s0)           ## 0000019A
/* 06954 80932F24 A602019A */  sh      $v0, 0x019A($s0)           ## 0000019A
.L80932F28:
/* 06958 80932F28 8619019A */  lh      $t9, 0x019A($s0)           ## 0000019A
.L80932F2C:
/* 0695C 80932F2C 3C013B80 */  lui     $at, 0x3B80                ## $at = 3B800000
/* 06960 80932F30 44813000 */  mtc1    $at, $f6                   ## $f6 = 0.00
/* 06964 80932F34 44999000 */  mtc1    $t9, $f18                  ## $f18 = 0.00
/* 06968 80932F38 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 0696C 80932F3C 44815000 */  mtc1    $at, $f10                  ## $f10 = 0.50
/* 06970 80932F40 46809120 */  cvt.s.w $f4, $f18
/* 06974 80932F44 3C014316 */  lui     $at, 0x4316                ## $at = 43160000
/* 06978 80932F48 44819000 */  mtc1    $at, $f18                  ## $f18 = 150.00
/* 0697C 80932F4C 860800B4 */  lh      $t0, 0x00B4($s0)           ## 000000B4
/* 06980 80932F50 3C01BA00 */  lui     $at, 0xBA00                ## $at = BA000000
/* 06984 80932F54 86090198 */  lh      $t1, 0x0198($s0)           ## 00000198
/* 06988 80932F58 46062202 */  mul.s   $f8, $f4, $f6
/* 0698C 80932F5C 44813000 */  mtc1    $at, $f6                   ## $f6 = -0.00
/* 06990 80932F60 460A4400 */  add.s   $f16, $f8, $f10
/* 06994 80932F64 44885000 */  mtc1    $t0, $f10                  ## $f10 = 0.00
/* 06998 80932F68 46128102 */  mul.s   $f4, $f16, $f18
/* 0699C 80932F6C 46805420 */  cvt.s.w $f16, $f10
/* 069A0 80932F70 46062202 */  mul.s   $f8, $f4, $f6
/* 069A4 80932F74 00000000 */  nop
/* 069A8 80932F78 46104482 */  mul.s   $f18, $f8, $f16
/* 069AC 80932F7C 15200003 */  bne     $t1, $zero, .L80932F8C
/* 069B0 80932F80 E6120028 */  swc1    $f18, 0x0028($s0)          ## 00000028
/* 069B4 80932F84 0C24CBE8 */  jal     func_80932FA0
/* 069B8 80932F88 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80932F8C:
/* 069BC 80932F8C 8FBF001C */  lw      $ra, 0x001C($sp)
/* 069C0 80932F90 8FB00018 */  lw      $s0, 0x0018($sp)
/* 069C4 80932F94 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 069C8 80932F98 03E00008 */  jr      $ra
/* 069CC 80932F9C 00000000 */  nop
