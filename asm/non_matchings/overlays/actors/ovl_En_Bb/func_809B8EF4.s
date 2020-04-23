.late_rodata
glabel D_809BBC8C
    .float 0.2
glabel D_809BBC90
    .float 65535.0
glabel D_809BBC94
    .float 0.1

.text
glabel func_809B8EF4
/* 00C14 809B8EF4 27BDFFB0 */  addiu   $sp, $sp, 0xFFB0           ## $sp = FFFFFFB0
/* 00C18 809B8EF8 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 00C1C 809B8EFC AFB00020 */  sw      $s0, 0x0020($sp)
/* 00C20 809B8F00 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00C24 809B8F04 AFBF0024 */  sw      $ra, 0x0024($sp)
/* 00C28 809B8F08 AFA50054 */  sw      $a1, 0x0054($sp)
/* 00C2C 809B8F0C 3C0542A0 */  lui     $a1, 0x42A0                ## $a1 = 42A00000
/* 00C30 809B8F10 24840288 */  addiu   $a0, $a0, 0x0288           ## $a0 = 00000288
/* 00C34 809B8F14 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 00C38 809B8F18 3C074120 */  lui     $a3, 0x4120                ## $a3 = 41200000
/* 00C3C 809B8F1C 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF

/* 00C40 809B8F20 E7A40010 */  swc1    $f4, 0x0010($sp)
/* 00C44 809B8F24 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 00C48 809B8F28 2604028C */  addiu   $a0, $s0, 0x028C           ## $a0 = 0000028C
/* 00C4C 809B8F2C 3C0542C8 */  lui     $a1, 0x42C8                ## $a1 = 42C80000
/* 00C50 809B8F30 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 00C54 809B8F34 3C074120 */  lui     $a3, 0x4120                ## $a3 = 41200000
/* 00C58 809B8F38 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF

/* 00C5C 809B8F3C E7A60010 */  swc1    $f6, 0x0010($sp)
/* 00C60 809B8F40 3C01C6FA */  lui     $at, 0xC6FA                ## $at = C6FA0000
/* 00C64 809B8F44 44814000 */  mtc1    $at, $f8                   ## $f8 = -32000.00
/* 00C68 809B8F48 C6020080 */  lwc1    $f2, 0x0080($s0)           ## 00000080
/* 00C6C 809B8F4C 4602403C */  c.lt.s  $f8, $f2
/* 00C70 809B8F50 00000000 */  nop
/* 00C74 809B8F54 4500000D */  bc1f    .L809B8F8C
/* 00C78 809B8F58 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 00C7C 809B8F5C 44815000 */  mtc1    $at, $f10                  ## $f10 = 50.00
/* 00C80 809B8F60 C6120280 */  lwc1    $f18, 0x0280($s0)          ## 00000280
/* 00C84 809B8F64 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 00C88 809B8F68 460A1400 */  add.s   $f16, $f2, $f10
/* 00C8C 809B8F6C 26040028 */  addiu   $a0, $s0, 0x0028           ## $a0 = 00000028
/* 00C90 809B8F70 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 00C94 809B8F74 3C073F00 */  lui     $a3, 0x3F00                ## $a3 = 3F000000
/* 00C98 809B8F78 46128100 */  add.s   $f4, $f16, $f18
/* 00C9C 809B8F7C E7A60010 */  swc1    $f6, 0x0010($sp)
/* 00CA0 809B8F80 44052000 */  mfc1    $a1, $f4
/* 00CA4 809B8F84 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF

/* 00CA8 809B8F88 00000000 */  nop
.L809B8F8C:
/* 00CAC 809B8F8C 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 00CB0 809B8F90 0C02927F */  jal     SkelAnime_FrameUpdateMatrix

/* 00CB4 809B8F94 AFA40034 */  sw      $a0, 0x0034($sp)
/* 00CB8 809B8F98 0C0329DD */  jal     func_800CA774
/* 00CBC 809B8F9C C60C0274 */  lwc1    $f12, 0x0274($s0)          ## 00000274
/* 00CC0 809B8FA0 44804000 */  mtc1    $zero, $f8                 ## $f8 = 0.00
/* 00CC4 809B8FA4 00000000 */  nop
/* 00CC8 809B8FA8 46080032 */  c.eq.s  $f0, $f8
/* 00CCC 809B8FAC 00000000 */  nop
/* 00CD0 809B8FB0 45000010 */  bc1f    .L809B8FF4
/* 00CD4 809B8FB4 00000000 */  nop
/* 00CD8 809B8FB8 860E026A */  lh      $t6, 0x026A($s0)           ## 0000026A
/* 00CDC 809B8FBC 11C00006 */  beq     $t6, $zero, .L809B8FD8
/* 00CE0 809B8FC0 00000000 */  nop
/* 00CE4 809B8FC4 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00CE8 809B8FC8 00000000 */  nop
/* 00CEC 809B8FCC 46000280 */  add.s   $f10, $f0, $f0
/* 00CF0 809B8FD0 10000008 */  beq     $zero, $zero, .L809B8FF4
/* 00CF4 809B8FD4 E60A0284 */  swc1    $f10, 0x0284($s0)          ## 00000284
.L809B8FD8:
/* 00CF8 809B8FD8 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00CFC 809B8FDC 00000000 */  nop
/* 00D00 809B8FE0 3C014080 */  lui     $at, 0x4080                ## $at = 40800000
/* 00D04 809B8FE4 44818000 */  mtc1    $at, $f16                  ## $f16 = 4.00
/* 00D08 809B8FE8 00000000 */  nop
/* 00D0C 809B8FEC 46100482 */  mul.s   $f18, $f0, $f16
/* 00D10 809B8FF0 E6120284 */  swc1    $f18, 0x0284($s0)          ## 00000284
.L809B8FF4:
/* 00D14 809B8FF4 0C0329DD */  jal     func_800CA774
/* 00D18 809B8FF8 C60C0274 */  lwc1    $f12, 0x0274($s0)          ## 00000274
/* 00D1C 809B8FFC 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 00D20 809B9000 44811000 */  mtc1    $at, $f2                   ## $f2 = 1.00
/* 00D24 809B9004 C6060284 */  lwc1    $f6, 0x0284($s0)           ## 00000284
/* 00D28 809B9008 C6040028 */  lwc1    $f4, 0x0028($s0)           ## 00000028
/* 00D2C 809B900C 3C01809C */  lui     $at, %hi(D_809BBC8C)       ## $at = 809C0000
/* 00D30 809B9010 46061200 */  add.s   $f8, $f2, $f6
/* 00D34 809B9014 C6120274 */  lwc1    $f18, 0x0274($s0)          ## 00000274
/* 00D38 809B9018 8E05027C */  lw      $a1, 0x027C($s0)           ## 0000027C
/* 00D3C 809B901C 44061000 */  mfc1    $a2, $f2
/* 00D40 809B9020 46080282 */  mul.s   $f10, $f0, $f8
/* 00D44 809B9024 26040068 */  addiu   $a0, $s0, 0x0068           ## $a0 = 00000068
/* 00D48 809B9028 3C073F00 */  lui     $a3, 0x3F00                ## $a3 = 3F000000
/* 00D4C 809B902C 460A2400 */  add.s   $f16, $f4, $f10
/* 00D50 809B9030 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 00D54 809B9034 E6100028 */  swc1    $f16, 0x0028($s0)          ## 00000028
/* 00D58 809B9038 C426BC8C */  lwc1    $f6, %lo(D_809BBC8C)($at)
/* 00D5C 809B903C 46069200 */  add.s   $f8, $f18, $f6
/* 00D60 809B9040 E6080274 */  swc1    $f8, 0x0274($s0)           ## 00000274
/* 00D64 809B9044 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF

/* 00D68 809B9048 E7A40010 */  swc1    $f4, 0x0010($sp)
/* 00D6C 809B904C 26040024 */  addiu   $a0, $s0, 0x0024           ## $a0 = 00000024
/* 00D70 809B9050 26050008 */  addiu   $a1, $s0, 0x0008           ## $a1 = 00000008
/* 00D74 809B9054 AFA5002C */  sw      $a1, 0x002C($sp)
/* 00D78 809B9058 0C01E00A */  jal     Math_Vec3f_DistXZ

/* 00D7C 809B905C AFA40030 */  sw      $a0, 0x0030($sp)
/* 00D80 809B9060 3C014396 */  lui     $at, 0x4396                ## $at = 43960000
/* 00D84 809B9064 44815000 */  mtc1    $at, $f10                  ## $f10 = 300.00
/* 00D88 809B9068 8FA5002C */  lw      $a1, 0x002C($sp)
/* 00D8C 809B906C 4600503C */  c.lt.s  $f10, $f0
/* 00D90 809B9070 00000000 */  nop
/* 00D94 809B9074 4502000E */  bc1fl   .L809B90B0
/* 00D98 809B9078 8E0F0260 */  lw      $t7, 0x0260($s0)           ## 00000260
/* 00D9C 809B907C 0C01E01A */  jal     Math_Vec3f_Yaw

/* 00DA0 809B9080 8FA40030 */  lw      $a0, 0x0030($sp)
/* 00DA4 809B9084 A602026E */  sh      $v0, 0x026E($s0)           ## 0000026E
/* 00DA8 809B9088 8605026E */  lh      $a1, 0x026E($s0)           ## 0000026E
/* 00DAC 809B908C 26040032 */  addiu   $a0, $s0, 0x0032           ## $a0 = 00000032
/* 00DB0 809B9090 AFA4002C */  sw      $a0, 0x002C($sp)
/* 00DB4 809B9094 AFA00010 */  sw      $zero, 0x0010($sp)
/* 00DB8 809B9098 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 00DBC 809B909C 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS

/* 00DC0 809B90A0 240707D0 */  addiu   $a3, $zero, 0x07D0         ## $a3 = 000007D0
/* 00DC4 809B90A4 1000011F */  beq     $zero, $zero, .L809B9524
/* 00DC8 809B90A8 8605026E */  lh      $a1, 0x026E($s0)           ## 0000026E
/* 00DCC 809B90AC 8E0F0260 */  lw      $t7, 0x0260($s0)           ## 00000260
.L809B90B0:
/* 00DD0 809B90B0 25F8FFFF */  addiu   $t8, $t7, 0xFFFF           ## $t8 = FFFFFFFF
/* 00DD4 809B90B4 1F00005C */  bgtz    $t8, .L809B9228
/* 00DD8 809B90B8 AE180260 */  sw      $t8, 0x0260($s0)           ## 00000260
/* 00DDC 809B90BC 860A026A */  lh      $t2, 0x026A($s0)           ## 0000026A
/* 00DE0 809B90C0 C60C0274 */  lwc1    $f12, 0x0274($s0)          ## 00000274
/* 00DE4 809B90C4 394B0001 */  xori    $t3, $t2, 0x0001           ## $t3 = 00000001
/* 00DE8 809B90C8 0C0329DD */  jal     func_800CA774
/* 00DEC 809B90CC A60B026A */  sh      $t3, 0x026A($s0)           ## 0000026A
/* 00DF0 809B90D0 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 00DF4 809B90D4 44818000 */  mtc1    $at, $f16                  ## $f16 = 10.00
/* 00DF8 809B90D8 8618026A */  lh      $t8, 0x026A($s0)           ## 0000026A
/* 00DFC 809B90DC 44805000 */  mtc1    $zero, $f10                ## $f10 = 0.00
/* 00E00 809B90E0 46100482 */  mul.s   $f18, $f0, $f16
/* 00E04 809B90E4 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00E08 809B90E8 24A50444 */  addiu   $a1, $a1, 0x0444           ## $a1 = 06000444
/* 00E0C 809B90EC E60A0068 */  swc1    $f10, 0x0068($s0)          ## 00000068
/* 00E10 809B90F0 4600918D */  trunc.w.s $f6, $f18
/* 00E14 809B90F4 440D3000 */  mfc1    $t5, $f6
/* 00E18 809B90F8 00000000 */  nop
/* 00E1C 809B90FC 000D7400 */  sll     $t6, $t5, 16
/* 00E20 809B9100 000E7C03 */  sra     $t7, $t6, 16
/* 00E24 809B9104 448F4000 */  mtc1    $t7, $f8                   ## $f8 = 0.00
/* 00E28 809B9108 00000000 */  nop
/* 00E2C 809B910C 46804120 */  cvt.s.w $f4, $f8
/* 00E30 809B9110 13000027 */  beq     $t8, $zero, .L809B91B0
/* 00E34 809B9114 E6040280 */  swc1    $f4, 0x0280($s0)           ## 00000280
/* 00E38 809B9118 8E190324 */  lw      $t9, 0x0324($s0)           ## 00000324
/* 00E3C 809B911C 3C014348 */  lui     $at, 0x4348                ## $at = 43480000
/* 00E40 809B9120 17200023 */  bne     $t9, $zero, .L809B91B0
/* 00E44 809B9124 00000000 */  nop
/* 00E48 809B9128 C6100090 */  lwc1    $f16, 0x0090($s0)          ## 00000090
/* 00E4C 809B912C 44819000 */  mtc1    $at, $f18                  ## $f18 = 200.00
/* 00E50 809B9130 860A0032 */  lh      $t2, 0x0032($s0)           ## 00000032
/* 00E54 809B9134 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00E58 809B9138 4612803C */  c.lt.s  $f16, $f18
/* 00E5C 809B913C A60A026E */  sh      $t2, 0x026E($s0)           ## 0000026E
/* 00E60 809B9140 8FA40034 */  lw      $a0, 0x0034($sp)
/* 00E64 809B9144 45000005 */  bc1f    .L809B915C
/* 00E68 809B9148 00000000 */  nop
/* 00E6C 809B914C 0C0294BE */  jal     SkelAnime_ChangeAnimDefaultRepeat
/* 00E70 809B9150 24A50184 */  addiu   $a1, $a1, 0x0184           ## $a1 = 06000184
/* 00E74 809B9154 860B008A */  lh      $t3, 0x008A($s0)           ## 0000008A
/* 00E78 809B9158 A60B026E */  sh      $t3, 0x026E($s0)           ## 0000026E
.L809B915C:
/* 00E7C 809B915C 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00E80 809B9160 00000000 */  nop
/* 00E84 809B9164 3C013FC0 */  lui     $at, 0x3FC0                ## $at = 3FC00000
/* 00E88 809B9168 44813000 */  mtc1    $at, $f6                   ## $f6 = 1.50
/* 00E8C 809B916C 3C0140C0 */  lui     $at, 0x40C0                ## $at = 40C00000
/* 00E90 809B9170 44812000 */  mtc1    $at, $f4                   ## $f4 = 6.00
/* 00E94 809B9174 46060202 */  mul.s   $f8, $f0, $f6
/* 00E98 809B9178 46044280 */  add.s   $f10, $f8, $f4
/* 00E9C 809B917C 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00EA0 809B9180 E60A027C */  swc1    $f10, 0x027C($s0)          ## 0000027C
/* 00EA4 809B9184 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 00EA8 809B9188 44818000 */  mtc1    $at, $f16                  ## $f16 = 5.00
/* 00EAC 809B918C 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 00EB0 809B9190 44813000 */  mtc1    $at, $f6                   ## $f6 = 20.00
/* 00EB4 809B9194 46100482 */  mul.s   $f18, $f0, $f16
/* 00EB8 809B9198 A6000268 */  sh      $zero, 0x0268($s0)         ## 00000268
/* 00EBC 809B919C 46069200 */  add.s   $f8, $f18, $f6
/* 00EC0 809B91A0 4600410D */  trunc.w.s $f4, $f8
/* 00EC4 809B91A4 440D2000 */  mfc1    $t5, $f4
/* 00EC8 809B91A8 1000001F */  beq     $zero, $zero, .L809B9228
/* 00ECC 809B91AC AE0D0260 */  sw      $t5, 0x0260($s0)           ## 00000260
.L809B91B0:
/* 00ED0 809B91B0 0C0294BE */  jal     SkelAnime_ChangeAnimDefaultRepeat
/* 00ED4 809B91B4 8FA40034 */  lw      $a0, 0x0034($sp)
/* 00ED8 809B91B8 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00EDC 809B91BC 00000000 */  nop
/* 00EE0 809B91C0 3C013FC0 */  lui     $at, 0x3FC0                ## $at = 3FC00000
/* 00EE4 809B91C4 44815000 */  mtc1    $at, $f10                  ## $f10 = 1.50
/* 00EE8 809B91C8 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 00EEC 809B91CC 44819000 */  mtc1    $at, $f18                  ## $f18 = 1.00
/* 00EF0 809B91D0 460A0402 */  mul.s   $f16, $f0, $f10
/* 00EF4 809B91D4 46128180 */  add.s   $f6, $f16, $f18
/* 00EF8 809B91D8 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00EFC 809B91DC E606027C */  swc1    $f6, 0x027C($s0)           ## 0000027C
/* 00F00 809B91E0 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 00F04 809B91E4 44814000 */  mtc1    $at, $f8                   ## $f8 = 20.00
/* 00F08 809B91E8 3C014220 */  lui     $at, 0x4220                ## $at = 42200000
/* 00F0C 809B91EC 44815000 */  mtc1    $at, $f10                  ## $f10 = 40.00
/* 00F10 809B91F0 46080102 */  mul.s   $f4, $f0, $f8
/* 00F14 809B91F4 C60C0274 */  lwc1    $f12, 0x0274($s0)          ## 00000274
/* 00F18 809B91F8 460A2400 */  add.s   $f16, $f4, $f10
/* 00F1C 809B91FC 4600848D */  trunc.w.s $f18, $f16
/* 00F20 809B9200 440F9000 */  mfc1    $t7, $f18
/* 00F24 809B9204 0C0329C8 */  jal     func_800CA720
/* 00F28 809B9208 AE0F0260 */  sw      $t7, 0x0260($s0)           ## 00000260
/* 00F2C 809B920C 3C01809C */  lui     $at, %hi(D_809BBC90)       ## $at = 809C0000
/* 00F30 809B9210 C426BC90 */  lwc1    $f6, %lo(D_809BBC90)($at)
/* 00F34 809B9214 46060202 */  mul.s   $f8, $f0, $f6
/* 00F38 809B9218 4600410D */  trunc.w.s $f4, $f8
/* 00F3C 809B921C 44192000 */  mfc1    $t9, $f4
/* 00F40 809B9220 00000000 */  nop
/* 00F44 809B9224 A619026E */  sh      $t9, 0x026E($s0)           ## 0000026E
.L809B9228:
/* 00F48 809B9228 3C014316 */  lui     $at, 0x4316                ## $at = 43160000
/* 00F4C 809B922C 44815000 */  mtc1    $at, $f10                  ## $f10 = 150.00
/* 00F50 809B9230 C6000090 */  lwc1    $f0, 0x0090($s0)           ## 00000090
/* 00F54 809B9234 3C014348 */  lui     $at, 0x4348                ## $at = 43480000
/* 00F58 809B9238 460A003C */  c.lt.s  $f0, $f10
/* 00F5C 809B923C 00000000 */  nop
/* 00F60 809B9240 45020026 */  bc1fl   .L809B92DC
/* 00F64 809B9244 44814000 */  mtc1    $at, $f8                   ## $f8 = 200.00
/* 00F68 809B9248 860A0268 */  lh      $t2, 0x0268($s0)           ## 00000268
/* 00F6C 809B924C 51400023 */  beql    $t2, $zero, .L809B92DC
/* 00F70 809B9250 44814000 */  mtc1    $at, $f8                   ## $f8 = 200.00
/* 00F74 809B9254 860B026A */  lh      $t3, 0x026A($s0)           ## 0000026A
/* 00F78 809B9258 8FA40034 */  lw      $a0, 0x0034($sp)
/* 00F7C 809B925C 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00F80 809B9260 55600026 */  bnel    $t3, $zero, .L809B92FC
/* 00F84 809B9264 8E020324 */  lw      $v0, 0x0324($s0)           ## 00000324
/* 00F88 809B9268 0C0294BE */  jal     SkelAnime_ChangeAnimDefaultRepeat
/* 00F8C 809B926C 24A50184 */  addiu   $a1, $a1, 0x0184           ## $a1 = 06000184
/* 00F90 809B9270 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00F94 809B9274 00000000 */  nop
/* 00F98 809B9278 3C013FC0 */  lui     $at, 0x3FC0                ## $at = 3FC00000
/* 00F9C 809B927C 44818000 */  mtc1    $at, $f16                  ## $f16 = 1.50
/* 00FA0 809B9280 3C0140C0 */  lui     $at, 0x40C0                ## $at = 40C00000
/* 00FA4 809B9284 44813000 */  mtc1    $at, $f6                   ## $f6 = 6.00
/* 00FA8 809B9288 46100482 */  mul.s   $f18, $f0, $f16
/* 00FAC 809B928C 46069200 */  add.s   $f8, $f18, $f6
/* 00FB0 809B9290 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00FB4 809B9294 E608027C */  swc1    $f8, 0x027C($s0)           ## 0000027C
/* 00FB8 809B9298 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 00FBC 809B929C 44812000 */  mtc1    $at, $f4                   ## $f4 = 5.00
/* 00FC0 809B92A0 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 00FC4 809B92A4 44818000 */  mtc1    $at, $f16                  ## $f16 = 20.00
/* 00FC8 809B92A8 46040282 */  mul.s   $f10, $f0, $f4
/* 00FCC 809B92AC 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 00FD0 809B92B0 A60F026A */  sh      $t7, 0x026A($s0)           ## 0000026A
/* 00FD4 809B92B4 860E008A */  lh      $t6, 0x008A($s0)           ## 0000008A
/* 00FD8 809B92B8 8618026A */  lh      $t8, 0x026A($s0)           ## 0000026A
/* 00FDC 809B92BC A60E026E */  sh      $t6, 0x026E($s0)           ## 0000026E
/* 00FE0 809B92C0 46105480 */  add.s   $f18, $f10, $f16
/* 00FE4 809B92C4 A6180268 */  sh      $t8, 0x0268($s0)           ## 00000268
/* 00FE8 809B92C8 4600918D */  trunc.w.s $f6, $f18
/* 00FEC 809B92CC 440D3000 */  mfc1    $t5, $f6
/* 00FF0 809B92D0 10000009 */  beq     $zero, $zero, .L809B92F8
/* 00FF4 809B92D4 AE0D0260 */  sw      $t5, 0x0260($s0)           ## 00000260
/* 00FF8 809B92D8 44814000 */  mtc1    $at, $f8                   ## $f8 = 20.00
.L809B92DC:
/* 00FFC 809B92DC 00000000 */  nop
/* 01000 809B92E0 4608003C */  c.lt.s  $f0, $f8
/* 01004 809B92E4 00000000 */  nop
/* 01008 809B92E8 45020004 */  bc1fl   .L809B92FC
/* 0100C 809B92EC 8E020324 */  lw      $v0, 0x0324($s0)           ## 00000324
/* 01010 809B92F0 8619008A */  lh      $t9, 0x008A($s0)           ## 0000008A
/* 01014 809B92F4 A619026E */  sh      $t9, 0x026E($s0)           ## 0000026E
.L809B92F8:
/* 01018 809B92F8 8E020324 */  lw      $v0, 0x0324($s0)           ## 00000324
.L809B92FC:
/* 0101C 809B92FC 8FA40054 */  lw      $a0, 0x0054($sp)
/* 01020 809B9300 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 01024 809B9304 54400006 */  bnel    $v0, $zero, .L809B9320
/* 01028 809B9308 844A001C */  lh      $t2, 0x001C($v0)           ## 0000001C
/* 0102C 809B930C 0C26E0BA */  jal     func_809B82E8
/* 01030 809B9310 3C064396 */  lui     $a2, 0x4396                ## $a2 = 43960000
/* 01034 809B9314 10000007 */  beq     $zero, $zero, .L809B9334
/* 01038 809B9318 AFA2004C */  sw      $v0, 0x004C($sp)
/* 0103C 809B931C 844A001C */  lh      $t2, 0x001C($v0)           ## 0000001C
.L809B9320:
/* 01040 809B9320 55400004 */  bnel    $t2, $zero, .L809B9334
/* 01044 809B9324 AFA0004C */  sw      $zero, 0x004C($sp)
/* 01048 809B9328 10000002 */  beq     $zero, $zero, .L809B9334
/* 0104C 809B932C AFA2004C */  sw      $v0, 0x004C($sp)
/* 01050 809B9330 AFA0004C */  sw      $zero, 0x004C($sp)
.L809B9334:
/* 01054 809B9334 8FAB004C */  lw      $t3, 0x004C($sp)
/* 01058 809B9338 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0105C 809B933C 260D0032 */  addiu   $t5, $s0, 0x0032           ## $t5 = 00000032
/* 01060 809B9340 1160003A */  beq     $t3, $zero, .L809B942C
/* 01064 809B9344 01602825 */  or      $a1, $t3, $zero            ## $a1 = 00000000
/* 01068 809B9348 260C0028 */  addiu   $t4, $s0, 0x0028           ## $t4 = 00000028
/* 0106C 809B934C 0C00B69E */  jal     func_8002DA78
/* 01070 809B9350 AFAC0034 */  sw      $t4, 0x0034($sp)
/* 01074 809B9354 860D026C */  lh      $t5, 0x026C($s0)           ## 0000026C
/* 01078 809B9358 A602026E */  sh      $v0, 0x026E($s0)           ## 0000026E
/* 0107C 809B935C 26040032 */  addiu   $a0, $s0, 0x0032           ## $a0 = 00000032
/* 01080 809B9360 15A0000E */  bne     $t5, $zero, .L809B939C
/* 01084 809B9364 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 01088 809B9368 8FAE004C */  lw      $t6, 0x004C($sp)
/* 0108C 809B936C 8E0F0324 */  lw      $t7, 0x0324($s0)           ## 00000324
/* 01090 809B9370 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 01094 809B9374 51CF000A */  beql    $t6, $t7, .L809B93A0
/* 01098 809B9378 8605026E */  lh      $a1, 0x026E($s0)           ## 0000026E
/* 0109C 809B937C C6040068 */  lwc1    $f4, 0x0068($s0)           ## 00000068
/* 010A0 809B9380 44815000 */  mtc1    $at, $f10                  ## $f10 = 0.50
/* 010A4 809B9384 24188000 */  addiu   $t8, $zero, 0x8000         ## $t8 = FFFF8000
/* 010A8 809B9388 A618026C */  sh      $t8, 0x026C($s0)           ## 0000026C
/* 010AC 809B938C 460A2402 */  mul.s   $f16, $f4, $f10
/* 010B0 809B9390 8FB9004C */  lw      $t9, 0x004C($sp)
/* 010B4 809B9394 AE190324 */  sw      $t9, 0x0324($s0)           ## 00000324
/* 010B8 809B9398 E6100068 */  swc1    $f16, 0x0068($s0)          ## 00000068
.L809B939C:
/* 010BC 809B939C 8605026E */  lh      $a1, 0x026E($s0)           ## 0000026E
.L809B93A0:
/* 010C0 809B93A0 AFA4002C */  sw      $a0, 0x002C($sp)
/* 010C4 809B93A4 AFA00010 */  sw      $zero, 0x0010($sp)
/* 010C8 809B93A8 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS

/* 010CC 809B93AC 24071388 */  addiu   $a3, $zero, 0x1388         ## $a3 = 00001388
/* 010D0 809B93B0 8FAA004C */  lw      $t2, 0x004C($sp)
/* 010D4 809B93B4 44809000 */  mtc1    $zero, $f18                ## $f18 = 0.00
/* 010D8 809B93B8 8FA40030 */  lw      $a0, 0x0030($sp)
/* 010DC 809B93BC 8D450024 */  lw      $a1, 0x0024($t2)           ## 00000024
/* 010E0 809B93C0 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 010E4 809B93C4 3C073FC0 */  lui     $a3, 0x3FC0                ## $a3 = 3FC00000
/* 010E8 809B93C8 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF

/* 010EC 809B93CC E7B20010 */  swc1    $f18, 0x0010($sp)
/* 010F0 809B93D0 8FAB004C */  lw      $t3, 0x004C($sp)
/* 010F4 809B93D4 3C014220 */  lui     $at, 0x4220                ## $at = 42200000
/* 010F8 809B93D8 44814000 */  mtc1    $at, $f8                   ## $f8 = 40.00
/* 010FC 809B93DC C5660028 */  lwc1    $f6, 0x0028($t3)           ## 00000028
/* 01100 809B93E0 44805000 */  mtc1    $zero, $f10                ## $f10 = 0.00
/* 01104 809B93E4 8FA40034 */  lw      $a0, 0x0034($sp)
/* 01108 809B93E8 46083100 */  add.s   $f4, $f6, $f8
/* 0110C 809B93EC 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 01110 809B93F0 3C073FC0 */  lui     $a3, 0x3FC0                ## $a3 = 3FC00000
/* 01114 809B93F4 E7AA0010 */  swc1    $f10, 0x0010($sp)
/* 01118 809B93F8 44052000 */  mfc1    $a1, $f4
/* 0111C 809B93FC 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF

/* 01120 809B9400 00000000 */  nop
/* 01124 809B9404 8FAC004C */  lw      $t4, 0x004C($sp)
/* 01128 809B9408 44808000 */  mtc1    $zero, $f16                ## $f16 = 0.00
/* 0112C 809B940C 2604002C */  addiu   $a0, $s0, 0x002C           ## $a0 = 0000002C
/* 01130 809B9410 8D85002C */  lw      $a1, 0x002C($t4)           ## 0000002C
/* 01134 809B9414 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 01138 809B9418 3C073FC0 */  lui     $a3, 0x3FC0                ## $a3 = 3FC00000
/* 0113C 809B941C 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF

/* 01140 809B9420 E7B00010 */  swc1    $f16, 0x0010($sp)
/* 01144 809B9424 10000004 */  beq     $zero, $zero, .L809B9438
/* 01148 809B9428 8604026C */  lh      $a0, 0x026C($s0)           ## 0000026C
.L809B942C:
/* 0114C 809B942C AE000324 */  sw      $zero, 0x0324($s0)         ## 00000324
/* 01150 809B9430 AFAD002C */  sw      $t5, 0x002C($sp)
/* 01154 809B9434 8604026C */  lh      $a0, 0x026C($s0)           ## 0000026C
.L809B9438:
/* 01158 809B9438 50800014 */  beql    $a0, $zero, .L809B948C
/* 0115C 809B943C 8608007E */  lh      $t0, 0x007E($s0)           ## 0000007E
/* 01160 809B9440 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 01164 809B9444 00000000 */  nop
/* 01168 809B9448 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 0116C 809B944C 44813000 */  mtc1    $at, $f6                   ## $f6 = 10.00
/* 01170 809B9450 46000487 */  neg.s   $f18, $f0
/* 01174 809B9454 C6040028 */  lwc1    $f4, 0x0028($s0)           ## 00000028
/* 01178 809B9458 46069202 */  mul.s   $f8, $f18, $f6
/* 0117C 809B945C 860E026C */  lh      $t6, 0x026C($s0)           ## 0000026C
/* 01180 809B9460 8605026E */  lh      $a1, 0x026E($s0)           ## 0000026E
/* 01184 809B9464 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 01188 809B9468 25CF1000 */  addiu   $t7, $t6, 0x1000           ## $t7 = 00001000
/* 0118C 809B946C A60F026C */  sh      $t7, 0x026C($s0)           ## 0000026C
/* 01190 809B9470 240707D0 */  addiu   $a3, $zero, 0x07D0         ## $a3 = 000007D0
/* 01194 809B9474 46082280 */  add.s   $f10, $f4, $f8
/* 01198 809B9478 E60A0028 */  swc1    $f10, 0x0028($s0)          ## 00000028
/* 0119C 809B947C AFA00010 */  sw      $zero, 0x0010($sp)
/* 011A0 809B9480 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS

/* 011A4 809B9484 8FA4002C */  lw      $a0, 0x002C($sp)
/* 011A8 809B9488 8608007E */  lh      $t0, 0x007E($s0)           ## 0000007E
.L809B948C:
/* 011AC 809B948C 86090032 */  lh      $t1, 0x0032($s0)           ## 00000032
/* 011B0 809B9490 8605026E */  lh      $a1, 0x026E($s0)           ## 0000026E
/* 011B4 809B9494 8E180324 */  lw      $t8, 0x0324($s0)           ## 00000324
/* 011B8 809B9498 01091023 */  subu    $v0, $t0, $t1
/* 011BC 809B949C 01052023 */  subu    $a0, $t0, $a1
/* 011C0 809B94A0 00021400 */  sll     $v0, $v0, 16
/* 011C4 809B94A4 00042400 */  sll     $a0, $a0, 16
/* 011C8 809B94A8 00021403 */  sra     $v0, $v0, 16
/* 011CC 809B94AC 1700001D */  bne     $t8, $zero, .L809B9524
/* 011D0 809B94B0 00042403 */  sra     $a0, $a0, 16
/* 011D4 809B94B4 96190088 */  lhu     $t9, 0x0088($s0)           ## 00000088
/* 011D8 809B94B8 332A0008 */  andi    $t2, $t9, 0x0008           ## $t2 = 00000000
/* 011DC 809B94BC 5140001A */  beql    $t2, $zero, .L809B9528
/* 011E0 809B94C0 8FA4002C */  lw      $a0, 0x002C($sp)
/* 011E4 809B94C4 04400003 */  bltz    $v0, .L809B94D4
/* 011E8 809B94C8 00021823 */  subu    $v1, $zero, $v0
/* 011EC 809B94CC 10000001 */  beq     $zero, $zero, .L809B94D4
/* 011F0 809B94D0 00401825 */  or      $v1, $v0, $zero            ## $v1 = 00000000
.L809B94D4:
/* 011F4 809B94D4 28614001 */  slti    $at, $v1, 0x4001
/* 011F8 809B94D8 10200007 */  beq     $at, $zero, .L809B94F8
/* 011FC 809B94DC 01085821 */  addu    $t3, $t0, $t0
/* 01200 809B94E0 04800003 */  bltz    $a0, .L809B94F0
/* 01204 809B94E4 00041023 */  subu    $v0, $zero, $a0
/* 01208 809B94E8 10000001 */  beq     $zero, $zero, .L809B94F0
/* 0120C 809B94EC 00801025 */  or      $v0, $a0, $zero            ## $v0 = 00000000
.L809B94F0:
/* 01210 809B94F0 28414001 */  slti    $at, $v0, 0x4001
/* 01214 809B94F4 1420000B */  bne     $at, $zero, .L809B9524
.L809B94F8:
/* 01218 809B94F8 01696023 */  subu    $t4, $t3, $t1
/* 0121C 809B94FC 24018000 */  addiu   $at, $zero, 0x8000         ## $at = FFFF8000
/* 01220 809B9500 01816821 */  addu    $t5, $t4, $at
/* 01224 809B9504 A60D026E */  sh      $t5, 0x026E($s0)           ## 0000026E
/* 01228 809B9508 8605026E */  lh      $a1, 0x026E($s0)           ## 0000026E
/* 0122C 809B950C AFA00010 */  sw      $zero, 0x0010($sp)
/* 01230 809B9510 8FA4002C */  lw      $a0, 0x002C($sp)
/* 01234 809B9514 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 01238 809B9518 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS

/* 0123C 809B951C 24070BB8 */  addiu   $a3, $zero, 0x0BB8         ## $a3 = 00000BB8
/* 01240 809B9520 8605026E */  lh      $a1, 0x026E($s0)           ## 0000026E
.L809B9524:
/* 01244 809B9524 8FA4002C */  lw      $a0, 0x002C($sp)
.L809B9528:
/* 01248 809B9528 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 0124C 809B952C 240703E8 */  addiu   $a3, $zero, 0x03E8         ## $a3 = 000003E8
/* 01250 809B9530 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS

/* 01254 809B9534 AFA00010 */  sw      $zero, 0x0010($sp)
/* 01258 809B9538 920302BD */  lbu     $v1, 0x02BD($s0)           ## 000002BD
/* 0125C 809B953C 30630002 */  andi    $v1, $v1, 0x0002           ## $v1 = 00000000
/* 01260 809B9540 54600006 */  bnel    $v1, $zero, .L809B955C
/* 01264 809B9544 8618008A */  lh      $t8, 0x008A($s0)           ## 0000008A
/* 01268 809B9548 920E02BC */  lbu     $t6, 0x02BC($s0)           ## 000002BC
/* 0126C 809B954C 31CF0002 */  andi    $t7, $t6, 0x0002           ## $t7 = 00000000
/* 01270 809B9550 51E00020 */  beql    $t7, $zero, .L809B95D4
/* 01274 809B9554 3C0140C0 */  lui     $at, 0x40C0                ## $at = 40C00000
/* 01278 809B9558 8618008A */  lh      $t8, 0x008A($s0)           ## 0000008A
.L809B955C:
/* 0127C 809B955C 34018000 */  ori     $at, $zero, 0x8000         ## $at = 00008000
/* 01280 809B9560 24024000 */  addiu   $v0, $zero, 0x4000         ## $v0 = 00004000
/* 01284 809B9564 0301C821 */  addu    $t9, $t8, $at
/* 01288 809B9568 10600003 */  beq     $v1, $zero, .L809B9578
/* 0128C 809B956C A619026E */  sh      $t9, 0x026E($s0)           ## 0000026E
/* 01290 809B9570 1000000E */  beq     $zero, $zero, .L809B95AC
/* 01294 809B9574 24028000 */  addiu   $v0, $zero, 0x8000         ## $v0 = FFFF8000
.L809B9578:
/* 01298 809B9578 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0129C 809B957C 240538CB */  addiu   $a1, $zero, 0x38CB         ## $a1 = 000038CB
/* 012A0 809B9580 0C00BE0A */  jal     Audio_PlayActorSound2

/* 012A4 809B9584 A7A20046 */  sh      $v0, 0x0046($sp)
/* 012A8 809B9588 8FAA0054 */  lw      $t2, 0x0054($sp)
/* 012AC 809B958C 3C0B0001 */  lui     $t3, 0x0001                ## $t3 = 00010000
/* 012B0 809B9590 87A20046 */  lh      $v0, 0x0046($sp)
/* 012B4 809B9594 016A5821 */  addu    $t3, $t3, $t2
/* 012B8 809B9598 8D6B1DE4 */  lw      $t3, 0x1DE4($t3)           ## 00011DE4
/* 012BC 809B959C 316C0001 */  andi    $t4, $t3, 0x0001           ## $t4 = 00000000
/* 012C0 809B95A0 51800003 */  beql    $t4, $zero, .L809B95B0
/* 012C4 809B95A4 860D008A */  lh      $t5, 0x008A($s0)           ## 0000008A
/* 012C8 809B95A8 2402C000 */  addiu   $v0, $zero, 0xC000         ## $v0 = FFFFC000
.L809B95AC:
/* 012CC 809B95AC 860D008A */  lh      $t5, 0x008A($s0)           ## 0000008A
.L809B95B0:
/* 012D0 809B95B0 920F02BD */  lbu     $t7, 0x02BD($s0)           ## 000002BD
/* 012D4 809B95B4 921902BC */  lbu     $t9, 0x02BC($s0)           ## 000002BC
/* 012D8 809B95B8 01A27021 */  addu    $t6, $t5, $v0
/* 012DC 809B95BC 31F8FFFD */  andi    $t8, $t7, 0xFFFD           ## $t8 = 00000000
/* 012E0 809B95C0 332AFFFD */  andi    $t2, $t9, 0xFFFD           ## $t2 = 00000000
/* 012E4 809B95C4 A60E0032 */  sh      $t6, 0x0032($s0)           ## 00000032
/* 012E8 809B95C8 A21802BD */  sb      $t8, 0x02BD($s0)           ## 000002BD
/* 012EC 809B95CC A20A02BC */  sb      $t2, 0x02BC($s0)           ## 000002BC
/* 012F0 809B95D0 3C0140C0 */  lui     $at, 0x40C0                ## $at = 40C00000
.L809B95D4:
/* 012F4 809B95D4 44819000 */  mtc1    $at, $f18                  ## $f18 = 6.00
/* 012F8 809B95D8 C610027C */  lwc1    $f16, 0x027C($s0)          ## 0000027C
/* 012FC 809B95DC 4610903E */  c.le.s  $f18, $f16
/* 01300 809B95E0 00000000 */  nop
/* 01304 809B95E4 45020020 */  bc1fl   .L809B9668
/* 01308 809B95E8 C6060164 */  lwc1    $f6, 0x0164($s0)           ## 00000164
/* 0130C 809B95EC C6060164 */  lwc1    $f6, 0x0164($s0)           ## 00000164
/* 01310 809B95F0 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 01314 809B95F4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01318 809B95F8 4600310D */  trunc.w.s $f4, $f6
/* 0131C 809B95FC 44022000 */  mfc1    $v0, $f4
/* 01320 809B9600 00000000 */  nop
/* 01324 809B9604 10400003 */  beq     $v0, $zero, .L809B9614
/* 01328 809B9608 00000000 */  nop
/* 0132C 809B960C 54410009 */  bnel    $v0, $at, .L809B9634
/* 01330 809B9610 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
.L809B9614:
/* 01334 809B9614 0C00BE0A */  jal     Audio_PlayActorSound2

/* 01338 809B9618 240538C9 */  addiu   $a1, $zero, 0x38C9         ## $a1 = 000038C9
/* 0133C 809B961C C6080164 */  lwc1    $f8, 0x0164($s0)           ## 00000164
/* 01340 809B9620 4600428D */  trunc.w.s $f10, $f8
/* 01344 809B9624 44025000 */  mfc1    $v0, $f10
/* 01348 809B9628 1000001C */  beq     $zero, $zero, .L809B969C
/* 0134C 809B962C 00000000 */  nop
/* 01350 809B9630 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
.L809B9634:
/* 01354 809B9634 10410004 */  beq     $v0, $at, .L809B9648
/* 01358 809B9638 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0135C 809B963C 24010007 */  addiu   $at, $zero, 0x0007         ## $at = 00000007
/* 01360 809B9640 14410016 */  bne     $v0, $at, .L809B969C
/* 01364 809B9644 00000000 */  nop
.L809B9648:
/* 01368 809B9648 0C00BE0A */  jal     Audio_PlayActorSound2

/* 0136C 809B964C 240538C8 */  addiu   $a1, $zero, 0x38C8         ## $a1 = 000038C8
/* 01370 809B9650 C6100164 */  lwc1    $f16, 0x0164($s0)          ## 00000164
/* 01374 809B9654 4600848D */  trunc.w.s $f18, $f16
/* 01378 809B9658 44029000 */  mfc1    $v0, $f18
/* 0137C 809B965C 1000000F */  beq     $zero, $zero, .L809B969C
/* 01380 809B9660 00000000 */  nop
/* 01384 809B9664 C6060164 */  lwc1    $f6, 0x0164($s0)           ## 00000164
.L809B9668:
/* 01388 809B9668 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 0138C 809B966C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01390 809B9670 4600310D */  trunc.w.s $f4, $f6
/* 01394 809B9674 44022000 */  mfc1    $v0, $f4
/* 01398 809B9678 00000000 */  nop
/* 0139C 809B967C 14410007 */  bne     $v0, $at, .L809B969C
/* 013A0 809B9680 00000000 */  nop
/* 013A4 809B9684 0C00BE0A */  jal     Audio_PlayActorSound2

/* 013A8 809B9688 240538C8 */  addiu   $a1, $zero, 0x38C8         ## $a1 = 000038C8
/* 013AC 809B968C C6080164 */  lwc1    $f8, 0x0164($s0)           ## 00000164
/* 013B0 809B9690 4600428D */  trunc.w.s $f10, $f8
/* 013B4 809B9694 44025000 */  mfc1    $v0, $f10
/* 013B8 809B9698 00000000 */  nop
.L809B969C:
/* 013BC 809B969C 5440000D */  bnel    $v0, $zero, .L809B96D4
/* 013C0 809B96A0 86180032 */  lh      $t8, 0x0032($s0)           ## 00000032
/* 013C4 809B96A4 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 013C8 809B96A8 00000000 */  nop
/* 013CC 809B96AC 3C01809C */  lui     $at, %hi(D_809BBC94)       ## $at = 809C0000
/* 013D0 809B96B0 C430BC94 */  lwc1    $f16, %lo(D_809BBC94)($at)
/* 013D4 809B96B4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 013D8 809B96B8 4610003C */  c.lt.s  $f0, $f16
/* 013DC 809B96BC 00000000 */  nop
/* 013E0 809B96C0 45020004 */  bc1fl   .L809B96D4
/* 013E4 809B96C4 86180032 */  lh      $t8, 0x0032($s0)           ## 00000032
/* 013E8 809B96C8 0C00BE0A */  jal     Audio_PlayActorSound2

/* 013EC 809B96CC 240538CA */  addiu   $a1, $zero, 0x38CA         ## $a1 = 000038CA
/* 013F0 809B96D0 86180032 */  lh      $t8, 0x0032($s0)           ## 00000032
.L809B96D4:
/* 013F4 809B96D4 A61800B6 */  sh      $t8, 0x00B6($s0)           ## 000000B6
/* 013F8 809B96D8 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 013FC 809B96DC 8FB00020 */  lw      $s0, 0x0020($sp)
/* 01400 809B96E0 27BD0050 */  addiu   $sp, $sp, 0x0050           ## $sp = 00000000
/* 01404 809B96E4 03E00008 */  jr      $ra
/* 01408 809B96E8 00000000 */  nop
