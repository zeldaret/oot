glabel func_809BA0D8
/* 01DF8 809BA0D8 27BDFFB0 */  addiu   $sp, $sp, 0xFFB0           ## $sp = FFFFFFB0
/* 01DFC 809BA0DC AFBF0024 */  sw      $ra, 0x0024($sp)
/* 01E00 809BA0E0 AFB00020 */  sw      $s0, 0x0020($sp)
/* 01E04 809BA0E4 AFA50054 */  sw      $a1, 0x0054($sp)
/* 01E08 809BA0E8 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 01E0C 809BA0EC C4840068 */  lwc1    $f4, 0x0068($a0)           ## 00000068
/* 01E10 809BA0F0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01E14 809BA0F4 26050290 */  addiu   $a1, $s0, 0x0290           ## $a1 = 00000290
/* 01E18 809BA0F8 46040032 */  c.eq.s  $f0, $f4
/* 01E1C 809BA0FC 24840024 */  addiu   $a0, $a0, 0x0024           ## $a0 = 00000024
/* 01E20 809BA100 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 01E24 809BA104 3C073F00 */  lui     $a3, 0x3F00                ## $a3 = 3F000000
/* 01E28 809BA108 45020098 */  bc1fl   .L809BA36C
/* 01E2C 809BA10C 44050000 */  mfc1    $a1, $f0
/* 01E30 809BA110 0C01E027 */  jal     Math_Vec3f_Pitch

/* 01E34 809BA114 AFA4002C */  sw      $a0, 0x002C($sp)
/* 01E38 809BA118 00022400 */  sll     $a0, $v0, 16
/* 01E3C 809BA11C A7A20042 */  sh      $v0, 0x0042($sp)
/* 01E40 809BA120 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 01E44 809BA124 00042403 */  sra     $a0, $a0, 16
/* 01E48 809BA128 C606027C */  lwc1    $f6, 0x027C($s0)           ## 0000027C
/* 01E4C 809BA12C 87A40042 */  lh      $a0, 0x0042($sp)
/* 01E50 809BA130 46060202 */  mul.s   $f8, $f0, $f6
/* 01E54 809BA134 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 01E58 809BA138 E7A8003C */  swc1    $f8, 0x003C($sp)
/* 01E5C 809BA13C C60A027C */  lwc1    $f10, 0x027C($s0)          ## 0000027C
/* 01E60 809BA140 460A0402 */  mul.s   $f16, $f0, $f10
/* 01E64 809BA144 E7B00038 */  swc1    $f16, 0x0038($sp)
/* 01E68 809BA148 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 01E6C 809BA14C 860400B6 */  lh      $a0, 0x00B6($s0)           ## 000000B6
/* 01E70 809BA150 C7B20038 */  lwc1    $f18, 0x0038($sp)
/* 01E74 809BA154 860400B6 */  lh      $a0, 0x00B6($s0)           ## 000000B6
/* 01E78 809BA158 46120082 */  mul.s   $f2, $f0, $f18
/* 01E7C 809BA15C 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 01E80 809BA160 E7A20048 */  swc1    $f2, 0x0048($sp)
/* 01E84 809BA164 C7A20048 */  lwc1    $f2, 0x0048($sp)
/* 01E88 809BA168 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 01E8C 809BA16C C7A40038 */  lwc1    $f4, 0x0038($sp)
/* 01E90 809BA170 44804000 */  mtc1    $zero, $f8                 ## $f8 = 0.00
/* 01E94 809BA174 4602303E */  c.le.s  $f6, $f2
/* 01E98 809BA178 46040302 */  mul.s   $f12, $f0, $f4
/* 01E9C 809BA17C 8FA4002C */  lw      $a0, 0x002C($sp)
/* 01EA0 809BA180 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 01EA4 809BA184 45020004 */  bc1fl   .L809BA198
/* 01EA8 809BA188 46001007 */  neg.s   $f0, $f2
/* 01EAC 809BA18C 10000002 */  beq     $zero, $zero, .L809BA198
/* 01EB0 809BA190 46001006 */  mov.s   $f0, $f2
/* 01EB4 809BA194 46001007 */  neg.s   $f0, $f2
.L809BA198:
/* 01EB8 809BA198 8E050290 */  lw      $a1, 0x0290($s0)           ## 00000290
/* 01EBC 809BA19C 44070000 */  mfc1    $a3, $f0
/* 01EC0 809BA1A0 E7AC0044 */  swc1    $f12, 0x0044($sp)
/* 01EC4 809BA1A4 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF

/* 01EC8 809BA1A8 E7A80010 */  swc1    $f8, 0x0010($sp)
/* 01ECC 809BA1AC C7AE003C */  lwc1    $f14, 0x003C($sp)
/* 01ED0 809BA1B0 44805000 */  mtc1    $zero, $f10                ## $f10 = 0.00
/* 01ED4 809BA1B4 44808000 */  mtc1    $zero, $f16                ## $f16 = 0.00
/* 01ED8 809BA1B8 C7AC0044 */  lwc1    $f12, 0x0044($sp)
/* 01EDC 809BA1BC 460E503E */  c.le.s  $f10, $f14
/* 01EE0 809BA1C0 46000086 */  mov.s   $f2, $f0
/* 01EE4 809BA1C4 26040028 */  addiu   $a0, $s0, 0x0028           ## $a0 = 00000028
/* 01EE8 809BA1C8 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 01EEC 809BA1CC 45020004 */  bc1fl   .L809BA1E0
/* 01EF0 809BA1D0 46007007 */  neg.s   $f0, $f14
/* 01EF4 809BA1D4 10000002 */  beq     $zero, $zero, .L809BA1E0
/* 01EF8 809BA1D8 46007006 */  mov.s   $f0, $f14
/* 01EFC 809BA1DC 46007007 */  neg.s   $f0, $f14
.L809BA1E0:
/* 01F00 809BA1E0 8E050294 */  lw      $a1, 0x0294($s0)           ## 00000294
/* 01F04 809BA1E4 44070000 */  mfc1    $a3, $f0
/* 01F08 809BA1E8 E7AC0044 */  swc1    $f12, 0x0044($sp)
/* 01F0C 809BA1EC E7A2004C */  swc1    $f2, 0x004C($sp)
/* 01F10 809BA1F0 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF

/* 01F14 809BA1F4 E7B00010 */  swc1    $f16, 0x0010($sp)
/* 01F18 809BA1F8 C7AC0044 */  lwc1    $f12, 0x0044($sp)
/* 01F1C 809BA1FC 44809000 */  mtc1    $zero, $f18                ## $f18 = 0.00
/* 01F20 809BA200 C7A2004C */  lwc1    $f2, 0x004C($sp)
/* 01F24 809BA204 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 01F28 809BA208 460C903E */  c.le.s  $f18, $f12
/* 01F2C 809BA20C 2604002C */  addiu   $a0, $s0, 0x002C           ## $a0 = 0000002C
/* 01F30 809BA210 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 01F34 809BA214 46001080 */  add.s   $f2, $f2, $f0
/* 01F38 809BA218 45020004 */  bc1fl   .L809BA22C
/* 01F3C 809BA21C 46006007 */  neg.s   $f0, $f12
/* 01F40 809BA220 10000002 */  beq     $zero, $zero, .L809BA22C
/* 01F44 809BA224 46006006 */  mov.s   $f0, $f12
/* 01F48 809BA228 46006007 */  neg.s   $f0, $f12
.L809BA22C:
/* 01F4C 809BA22C 8E050298 */  lw      $a1, 0x0298($s0)           ## 00000298
/* 01F50 809BA230 44070000 */  mfc1    $a3, $f0
/* 01F54 809BA234 E7A2004C */  swc1    $f2, 0x004C($sp)
/* 01F58 809BA238 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF

/* 01F5C 809BA23C E7A40010 */  swc1    $f4, 0x0010($sp)
/* 01F60 809BA240 C7A2004C */  lwc1    $f2, 0x004C($sp)
/* 01F64 809BA244 46001080 */  add.s   $f2, $f2, $f0
/* 01F68 809BA248 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 01F6C 809BA24C E7A2004C */  swc1    $f2, 0x004C($sp)
/* 01F70 809BA250 3C01809C */  lui     $at, %hi(D_809BBCA4)       ## $at = 809C0000
/* 01F74 809BA254 C426BCA4 */  lwc1    $f6, %lo(D_809BBCA4)($at)
/* 01F78 809BA258 3C01809C */  lui     $at, %hi(D_809BBCA8)       ## $at = 809C0000
/* 01F7C 809BA25C C428BCA8 */  lwc1    $f8, %lo(D_809BBCA8)($at)
/* 01F80 809BA260 C7A2004C */  lwc1    $f2, 0x004C($sp)
/* 01F84 809BA264 C6120274 */  lwc1    $f18, 0x0274($s0)          ## 00000274
/* 01F88 809BA268 46080282 */  mul.s   $f10, $f0, $f8
/* 01F8C 809BA26C 44804000 */  mtc1    $zero, $f8                 ## $f8 = 0.00
/* 01F90 809BA270 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 01F94 809BA274 46081032 */  c.eq.s  $f2, $f8
/* 01F98 809BA278 460A3400 */  add.s   $f16, $f6, $f10
/* 01F9C 809BA27C 46109100 */  add.s   $f4, $f18, $f16
/* 01FA0 809BA280 45000028 */  bc1f    .L809BA324
/* 01FA4 809BA284 E6040274 */  swc1    $f4, 0x0274($s0)           ## 00000274
/* 01FA8 809BA288 8E0E0260 */  lw      $t6, 0x0260($s0)           ## 00000260
/* 01FAC 809BA28C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01FB0 809BA290 25CFFFFF */  addiu   $t7, $t6, 0xFFFF           ## $t7 = FFFFFFFF
/* 01FB4 809BA294 15E00015 */  bne     $t7, $zero, .L809BA2EC
/* 01FB8 809BA298 AE0F0260 */  sw      $t7, 0x0260($s0)           ## 00000260
/* 01FBC 809BA29C 0C26E7D8 */  jal     func_809B9F60
/* 01FC0 809BA2A0 8FA50054 */  lw      $a1, 0x0054($sp)
/* 01FC4 809BA2A4 0C26E7CA */  jal     func_809B9F28
/* 01FC8 809BA2A8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01FCC 809BA2AC 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 01FD0 809BA2B0 24A50184 */  addiu   $a1, $a1, 0x0184           ## $a1 = 06000184
/* 01FD4 809BA2B4 0C0294BE */  jal     SkelAnime_ChangeAnimDefaultRepeat
/* 01FD8 809BA2B8 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 01FDC 809BA2BC 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 01FE0 809BA2C0 00000000 */  nop
/* 01FE4 809BA2C4 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 01FE8 809BA2C8 44813000 */  mtc1    $at, $f6                   ## $f6 = 30.00
/* 01FEC 809BA2CC 3C014220 */  lui     $at, 0x4220                ## $at = 42200000
/* 01FF0 809BA2D0 44819000 */  mtc1    $at, $f18                  ## $f18 = 40.00
/* 01FF4 809BA2D4 46060282 */  mul.s   $f10, $f0, $f6
/* 01FF8 809BA2D8 46125400 */  add.s   $f16, $f10, $f18
/* 01FFC 809BA2DC 4600810D */  trunc.w.s $f4, $f16
/* 02000 809BA2E0 44082000 */  mfc1    $t0, $f4
/* 02004 809BA2E4 1000000B */  beq     $zero, $zero, .L809BA314
/* 02008 809BA2E8 AE080260 */  sw      $t0, 0x0260($s0)           ## 00000260
.L809BA2EC:
/* 0200C 809BA2EC 8E09025C */  lw      $t1, 0x025C($s0)           ## 0000025C
/* 02010 809BA2F0 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 02014 809BA2F4 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 02018 809BA2F8 51200004 */  beql    $t1, $zero, .L809BA30C
/* 0201C 809BA2FC 860A0032 */  lh      $t2, 0x0032($s0)           ## 00000032
/* 02020 809BA300 0C0294BE */  jal     SkelAnime_ChangeAnimDefaultRepeat
/* 02024 809BA304 24A50444 */  addiu   $a1, $a1, 0x0444           ## $a1 = 06000444
/* 02028 809BA308 860A0032 */  lh      $t2, 0x0032($s0)           ## 00000032
.L809BA30C:
/* 0202C 809BA30C 254B1F40 */  addiu   $t3, $t2, 0x1F40           ## $t3 = 00001F40
/* 02030 809BA310 A60B0032 */  sh      $t3, 0x0032($s0)           ## 00000032
.L809BA314:
/* 02034 809BA314 44804000 */  mtc1    $zero, $f8                 ## $f8 = 0.00
/* 02038 809BA318 AE00025C */  sw      $zero, 0x025C($s0)         ## 0000025C
/* 0203C 809BA31C 10000005 */  beq     $zero, $zero, .L809BA334
/* 02040 809BA320 E608027C */  swc1    $f8, 0x027C($s0)           ## 0000027C
.L809BA324:
/* 02044 809BA324 44813000 */  mtc1    $at, $f6                   ## $f6 = 0.00
/* 02048 809BA328 240C0001 */  addiu   $t4, $zero, 0x0001         ## $t4 = 00000001
/* 0204C 809BA32C AE0C025C */  sw      $t4, 0x025C($s0)           ## 0000025C
/* 02050 809BA330 E606027C */  swc1    $f6, 0x027C($s0)           ## 0000027C
.L809BA334:
/* 02054 809BA334 920D02BC */  lbu     $t5, 0x02BC($s0)           ## 000002BC
/* 02058 809BA338 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0205C 809BA33C 31AE0002 */  andi    $t6, $t5, 0x0002           ## $t6 = 00000000
/* 02060 809BA340 51C00007 */  beql    $t6, $zero, .L809BA360
/* 02064 809BA344 86190032 */  lh      $t9, 0x0032($s0)           ## 00000032
/* 02068 809BA348 0C00BE0A */  jal     Audio_PlayActorSound2

/* 0206C 809BA34C 240538CB */  addiu   $a1, $zero, 0x38CB         ## $a1 = 000038CB
/* 02070 809BA350 920F02BC */  lbu     $t7, 0x02BC($s0)           ## 000002BC
/* 02074 809BA354 31F8FFFD */  andi    $t8, $t7, 0xFFFD           ## $t8 = 00000000
/* 02078 809BA358 A21802BC */  sb      $t8, 0x02BC($s0)           ## 000002BC
/* 0207C 809BA35C 86190032 */  lh      $t9, 0x0032($s0)           ## 00000032
.L809BA360:
/* 02080 809BA360 1000000D */  beq     $zero, $zero, .L809BA398
/* 02084 809BA364 A61900B6 */  sh      $t9, 0x00B6($s0)           ## 000000B6
/* 02088 809BA368 44050000 */  mfc1    $a1, $f0
.L809BA36C:
/* 0208C 809BA36C 26040068 */  addiu   $a0, $s0, 0x0068           ## $a0 = 00000068
/* 02090 809BA370 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF

/* 02094 809BA374 E7A00010 */  swc1    $f0, 0x0010($sp)
/* 02098 809BA378 44805000 */  mtc1    $zero, $f10                ## $f10 = 0.00
/* 0209C 809BA37C 00000000 */  nop
/* 020A0 809BA380 460A0032 */  c.eq.s  $f0, $f10
/* 020A4 809BA384 00000000 */  nop
/* 020A8 809BA388 45000003 */  bc1f    .L809BA398
/* 020AC 809BA38C 00000000 */  nop
/* 020B0 809BA390 0C26E7CA */  jal     func_809B9F28
/* 020B4 809BA394 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L809BA398:
/* 020B8 809BA398 0C02927F */  jal     SkelAnime_FrameUpdateMatrix

/* 020BC 809BA39C 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 020C0 809BA3A0 C6120164 */  lwc1    $f18, 0x0164($s0)          ## 00000164
/* 020C4 809BA3A4 4600940D */  trunc.w.s $f16, $f18
/* 020C8 809BA3A8 44098000 */  mfc1    $t1, $f16
/* 020CC 809BA3AC 00000000 */  nop
/* 020D0 809BA3B0 5520000D */  bnel    $t1, $zero, .L809BA3E8
/* 020D4 809BA3B4 C6080164 */  lwc1    $f8, 0x0164($s0)           ## 00000164
/* 020D8 809BA3B8 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 020DC 809BA3BC 00000000 */  nop
/* 020E0 809BA3C0 3C01809C */  lui     $at, %hi(D_809BBCAC)       ## $at = 809C0000
/* 020E4 809BA3C4 C424BCAC */  lwc1    $f4, %lo(D_809BBCAC)($at)
/* 020E8 809BA3C8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 020EC 809BA3CC 4604003E */  c.le.s  $f0, $f4
/* 020F0 809BA3D0 00000000 */  nop
/* 020F4 809BA3D4 45020004 */  bc1fl   .L809BA3E8
/* 020F8 809BA3D8 C6080164 */  lwc1    $f8, 0x0164($s0)           ## 00000164
/* 020FC 809BA3DC 0C00BE0A */  jal     Audio_PlayActorSound2

/* 02100 809BA3E0 240538CA */  addiu   $a1, $zero, 0x38CA         ## $a1 = 000038CA
/* 02104 809BA3E4 C6080164 */  lwc1    $f8, 0x0164($s0)           ## 00000164
.L809BA3E8:
/* 02108 809BA3E8 44805000 */  mtc1    $zero, $f10                ## $f10 = 0.00
/* 0210C 809BA3EC C612027C */  lwc1    $f18, 0x027C($s0)          ## 0000027C
/* 02110 809BA3F0 4600418D */  trunc.w.s $f6, $f8
/* 02114 809BA3F4 46125032 */  c.eq.s  $f10, $f18
/* 02118 809BA3F8 44023000 */  mfc1    $v0, $f6
/* 0211C 809BA3FC 4503000A */  bc1tl   .L809BA428
/* 02120 809BA400 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 02124 809BA404 10400002 */  beq     $v0, $zero, .L809BA410
/* 02128 809BA408 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 0212C 809BA40C 14410005 */  bne     $v0, $at, .L809BA424
.L809BA410:
/* 02130 809BA410 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02134 809BA414 0C00BE0A */  jal     Audio_PlayActorSound2

/* 02138 809BA418 240538C9 */  addiu   $a1, $zero, 0x38C9         ## $a1 = 000038C9
/* 0213C 809BA41C 1000000A */  beq     $zero, $zero, .L809BA448
/* 02140 809BA420 8FBF0024 */  lw      $ra, 0x0024($sp)
.L809BA424:
/* 02144 809BA424 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
.L809BA428:
/* 02148 809BA428 10410004 */  beq     $v0, $at, .L809BA43C
/* 0214C 809BA42C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02150 809BA430 24010007 */  addiu   $at, $zero, 0x0007         ## $at = 00000007
/* 02154 809BA434 54410004 */  bnel    $v0, $at, .L809BA448
/* 02158 809BA438 8FBF0024 */  lw      $ra, 0x0024($sp)
.L809BA43C:
/* 0215C 809BA43C 0C00BE0A */  jal     Audio_PlayActorSound2

/* 02160 809BA440 240538C8 */  addiu   $a1, $zero, 0x38C8         ## $a1 = 000038C8
/* 02164 809BA444 8FBF0024 */  lw      $ra, 0x0024($sp)
.L809BA448:
/* 02168 809BA448 8FB00020 */  lw      $s0, 0x0020($sp)
/* 0216C 809BA44C 27BD0050 */  addiu   $sp, $sp, 0x0050           ## $sp = 00000000
/* 02170 809BA450 03E00008 */  jr      $ra
/* 02174 809BA454 00000000 */  nop


