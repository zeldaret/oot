glabel EnDaiku_Init
/* 000B0 809E2BE0 27BDFFB0 */  addiu   $sp, $sp, 0xFFB0           ## $sp = FFFFFFB0
/* 000B4 809E2BE4 AFBF002C */  sw      $ra, 0x002C($sp)
/* 000B8 809E2BE8 AFB00028 */  sw      $s0, 0x0028($sp)
/* 000BC 809E2BEC AFA50054 */  sw      $a1, 0x0054($sp)
/* 000C0 809E2BF0 8482001C */  lh      $v0, 0x001C($a0)           ## 0000001C
/* 000C4 809E2BF4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 000C8 809E2BF8 24080001 */  addiu   $t0, $zero, 0x0001         ## $t0 = 00000001
/* 000CC 809E2BFC 30420003 */  andi    $v0, $v0, 0x0003           ## $v0 = 00000000
/* 000D0 809E2C00 14400009 */  bne     $v0, $zero, .L809E2C28
/* 000D4 809E2C04 00001825 */  or      $v1, $zero, $zero          ## $v1 = 00000000
/* 000D8 809E2C08 3C048016 */  lui     $a0, 0x8016                ## $a0 = 80160000
/* 000DC 809E2C0C 2484E660 */  addiu   $a0, $a0, 0xE660           ## $a0 = 8015E660
/* 000E0 809E2C10 948E0EE6 */  lhu     $t6, 0x0EE6($a0)           ## 8015F546
/* 000E4 809E2C14 31CF0001 */  andi    $t7, $t6, 0x0001           ## $t7 = 00000000
/* 000E8 809E2C18 11E00003 */  beq     $t7, $zero, .L809E2C28
/* 000EC 809E2C1C 00000000 */  nop
/* 000F0 809E2C20 1000001C */  beq     $zero, $zero, .L809E2C94
/* 000F4 809E2C24 24030001 */  addiu   $v1, $zero, 0x0001         ## $v1 = 00000001
.L809E2C28:
/* 000F8 809E2C28 3C048016 */  lui     $a0, 0x8016                ## $a0 = 80160000
/* 000FC 809E2C2C 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00100 809E2C30 14410007 */  bne     $v0, $at, .L809E2C50
/* 00104 809E2C34 2484E660 */  addiu   $a0, $a0, 0xE660           ## $a0 = 8015E660
/* 00108 809E2C38 94980EE6 */  lhu     $t8, 0x0EE6($a0)           ## 8015F546
/* 0010C 809E2C3C 33190002 */  andi    $t9, $t8, 0x0002           ## $t9 = 00000000
/* 00110 809E2C40 53200004 */  beql    $t9, $zero, .L809E2C54
/* 00114 809E2C44 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 00118 809E2C48 10000012 */  beq     $zero, $zero, .L809E2C94
/* 0011C 809E2C4C 24030001 */  addiu   $v1, $zero, 0x0001         ## $v1 = 00000001
.L809E2C50:
/* 00120 809E2C50 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
.L809E2C54:
/* 00124 809E2C54 54410008 */  bnel    $v0, $at, .L809E2C78
/* 00128 809E2C58 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 0012C 809E2C5C 94890EE6 */  lhu     $t1, 0x0EE6($a0)           ## 8015F546
/* 00130 809E2C60 312A0004 */  andi    $t2, $t1, 0x0004           ## $t2 = 00000000
/* 00134 809E2C64 51400004 */  beql    $t2, $zero, .L809E2C78
/* 00138 809E2C68 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 0013C 809E2C6C 10000009 */  beq     $zero, $zero, .L809E2C94
/* 00140 809E2C70 24030001 */  addiu   $v1, $zero, 0x0001         ## $v1 = 00000001
/* 00144 809E2C74 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
.L809E2C78:
/* 00148 809E2C78 54410007 */  bnel    $v0, $at, .L809E2C98
/* 0014C 809E2C7C 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00150 809E2C80 948B0EE6 */  lhu     $t3, 0x0EE6($a0)           ## 8015F546
/* 00154 809E2C84 316C0008 */  andi    $t4, $t3, 0x0008           ## $t4 = 00000000
/* 00158 809E2C88 51800003 */  beql    $t4, $zero, .L809E2C98
/* 0015C 809E2C8C 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00160 809E2C90 24030001 */  addiu   $v1, $zero, 0x0001         ## $v1 = 00000001
.L809E2C94:
/* 00164 809E2C94 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
.L809E2C98:
/* 00168 809E2C98 14610008 */  bne     $v1, $at, .L809E2CBC
/* 0016C 809E2C9C 260400B4 */  addiu   $a0, $s0, 0x00B4           ## $a0 = 000000B4
/* 00170 809E2CA0 8FAD0054 */  lw      $t5, 0x0054($sp)
/* 00174 809E2CA4 2401000C */  addiu   $at, $zero, 0x000C         ## $at = 0000000C
/* 00178 809E2CA8 85AE00A4 */  lh      $t6, 0x00A4($t5)           ## 000000A4
/* 0017C 809E2CAC 15C10003 */  bne     $t6, $at, .L809E2CBC
/* 00180 809E2CB0 00000000 */  nop
/* 00184 809E2CB4 10000008 */  beq     $zero, $zero, .L809E2CD8
/* 00188 809E2CB8 00004025 */  or      $t0, $zero, $zero          ## $t0 = 00000000
.L809E2CBC:
/* 0018C 809E2CBC 14600006 */  bne     $v1, $zero, .L809E2CD8
/* 00190 809E2CC0 8FAF0054 */  lw      $t7, 0x0054($sp)
/* 00194 809E2CC4 85F800A4 */  lh      $t8, 0x00A4($t7)           ## 000000A4
/* 00198 809E2CC8 24010039 */  addiu   $at, $zero, 0x0039         ## $at = 00000039
/* 0019C 809E2CCC 57010003 */  bnel    $t8, $at, .L809E2CDC
/* 001A0 809E2CD0 861900B8 */  lh      $t9, 0x00B8($s0)           ## 000000B8
/* 001A4 809E2CD4 00004025 */  or      $t0, $zero, $zero          ## $t0 = 00000000
.L809E2CD8:
/* 001A8 809E2CD8 861900B8 */  lh      $t9, 0x00B8($s0)           ## 000000B8
.L809E2CDC:
/* 001AC 809E2CDC A60000B8 */  sh      $zero, 0x00B8($s0)         ## 000000B8
/* 001B0 809E2CE0 3C068003 */  lui     $a2, 0x8003                ## $a2 = 80030000
/* 001B4 809E2CE4 3329003F */  andi    $t1, $t9, 0x003F           ## $t1 = 00000000
/* 001B8 809E2CE8 AE090240 */  sw      $t1, 0x0240($s0)           ## 00000240
/* 001BC 809E2CEC AFA80044 */  sw      $t0, 0x0044($sp)
/* 001C0 809E2CF0 24C6B5EC */  addiu   $a2, $a2, 0xB5EC           ## $a2 = 8002B5EC
/* 001C4 809E2CF4 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 001C8 809E2CF8 0C00AC78 */  jal     ActorShape_Init

/* 001CC 809E2CFC 3C074220 */  lui     $a3, 0x4220                ## $a3 = 42200000
/* 001D0 809E2D00 2605014C */  addiu   $a1, $s0, 0x014C           ## $a1 = 0000014C
/* 001D4 809E2D04 3C060600 */  lui     $a2, 0x0600                ## $a2 = 06000000
/* 001D8 809E2D08 260A026C */  addiu   $t2, $s0, 0x026C           ## $t2 = 0000026C
/* 001DC 809E2D0C 260B02D2 */  addiu   $t3, $s0, 0x02D2           ## $t3 = 000002D2
/* 001E0 809E2D10 240C0011 */  addiu   $t4, $zero, 0x0011         ## $t4 = 00000011
/* 001E4 809E2D14 AFAC0018 */  sw      $t4, 0x0018($sp)
/* 001E8 809E2D18 AFAB0014 */  sw      $t3, 0x0014($sp)
/* 001EC 809E2D1C AFAA0010 */  sw      $t2, 0x0010($sp)
/* 001F0 809E2D20 24C67958 */  addiu   $a2, $a2, 0x7958           ## $a2 = 06007958
/* 001F4 809E2D24 AFA50038 */  sw      $a1, 0x0038($sp)
/* 001F8 809E2D28 8FA40054 */  lw      $a0, 0x0054($sp)
/* 001FC 809E2D2C 0C0291BE */  jal     SkelAnime_InitSV
/* 00200 809E2D30 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 00204 809E2D34 8FA80044 */  lw      $t0, 0x0044($sp)
/* 00208 809E2D38 8FA40054 */  lw      $a0, 0x0054($sp)
/* 0020C 809E2D3C 26050194 */  addiu   $a1, $s0, 0x0194           ## $a1 = 00000194
/* 00210 809E2D40 15000005 */  bne     $t0, $zero, .L809E2D58
/* 00214 809E2D44 00000000 */  nop
/* 00218 809E2D48 0C00B55C */  jal     Actor_Kill

/* 0021C 809E2D4C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00220 809E2D50 10000071 */  beq     $zero, $zero, .L809E2F18
/* 00224 809E2D54 8FBF002C */  lw      $ra, 0x002C($sp)
.L809E2D58:
/* 00228 809E2D58 0C0170D9 */  jal     CollisionCheck_AllocCylinder

/* 0022C 809E2D5C AFA50034 */  sw      $a1, 0x0034($sp)
/* 00230 809E2D60 3C07809E */  lui     $a3, %hi(D_809E4060)       ## $a3 = 809E0000
/* 00234 809E2D64 8FA50034 */  lw      $a1, 0x0034($sp)
/* 00238 809E2D68 24E74060 */  addiu   $a3, $a3, %lo(D_809E4060)  ## $a3 = 809E4060
/* 0023C 809E2D6C 8FA40054 */  lw      $a0, 0x0054($sp)
/* 00240 809E2D70 0C01712B */  jal     ActorCollider_InitCylinder

/* 00244 809E2D74 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 00248 809E2D78 3C05809E */  lui     $a1, %hi(D_809E4098)       ## $a1 = 809E0000
/* 0024C 809E2D7C 3C06809E */  lui     $a2, %hi(D_809E408C)       ## $a2 = 809E0000
/* 00250 809E2D80 24C6408C */  addiu   $a2, $a2, %lo(D_809E408C)  ## $a2 = 809E408C
/* 00254 809E2D84 24A54098 */  addiu   $a1, $a1, %lo(D_809E4098)  ## $a1 = 809E4098
/* 00258 809E2D88 0C0187BF */  jal     func_80061EFC
/* 0025C 809E2D8C 26040098 */  addiu   $a0, $s0, 0x0098           ## $a0 = 00000098
/* 00260 809E2D90 3C03809E */  lui     $v1, %hi(D_809E40B8)       ## $v1 = 809E0000
/* 00264 809E2D94 246340B8 */  addiu   $v1, $v1, %lo(D_809E40B8)  ## $v1 = 809E40B8
/* 00268 809E2D98 0C028800 */  jal     SkelAnime_GetFrameCount

/* 0026C 809E2D9C 8C640000 */  lw      $a0, 0x0000($v1)           ## 809E40B8
/* 00270 809E2DA0 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 00274 809E2DA4 3C03809E */  lui     $v1, %hi(D_809E40B8)       ## $v1 = 809E0000
/* 00278 809E2DA8 246340B8 */  addiu   $v1, $v1, %lo(D_809E40B8)  ## $v1 = 809E40B8
/* 0027C 809E2DAC 468021A0 */  cvt.s.w $f6, $f4
/* 00280 809E2DB0 906D0008 */  lbu     $t5, 0x0008($v1)           ## 809E40C0
/* 00284 809E2DB4 C468000C */  lwc1    $f8, 0x000C($v1)           ## 809E40C4
/* 00288 809E2DB8 8C650000 */  lw      $a1, 0x0000($v1)           ## 809E40B8
/* 0028C 809E2DBC 8FA40038 */  lw      $a0, 0x0038($sp)
/* 00290 809E2DC0 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 00294 809E2DC4 E7A60010 */  swc1    $f6, 0x0010($sp)
/* 00298 809E2DC8 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 0029C 809E2DCC AFAD0014 */  sw      $t5, 0x0014($sp)
/* 002A0 809E2DD0 0C029468 */  jal     SkelAnime_ChangeAnim

/* 002A4 809E2DD4 E7A80018 */  swc1    $f8, 0x0018($sp)
/* 002A8 809E2DD8 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 002AC 809E2DDC 240E0004 */  addiu   $t6, $zero, 0x0004         ## $t6 = 00000004
/* 002B0 809E2DE0 AFAE0014 */  sw      $t6, 0x0014($sp)
/* 002B4 809E2DE4 44060000 */  mfc1    $a2, $f0
/* 002B8 809E2DE8 44070000 */  mfc1    $a3, $f0
/* 002BC 809E2DEC 8FA40054 */  lw      $a0, 0x0054($sp)
/* 002C0 809E2DF0 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 002C4 809E2DF4 0C00B92D */  jal     func_8002E4B4
/* 002C8 809E2DF8 E7A00010 */  swc1    $f0, 0x0010($sp)
/* 002CC 809E2DFC 8A090030 */  lwl     $t1, 0x0030($s0)           ## 00000030
/* 002D0 809E2E00 9A090033 */  lwr     $t1, 0x0033($s0)           ## 00000033
/* 002D4 809E2E04 8E0B0024 */  lw      $t3, 0x0024($s0)           ## 00000024
/* 002D8 809E2E08 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 002DC 809E2E0C AA090338 */  swl     $t1, 0x0338($s0)           ## 00000338
/* 002E0 809E2E10 BA09033B */  swr     $t1, 0x033B($s0)           ## 0000033B
/* 002E4 809E2E14 AE0B0340 */  sw      $t3, 0x0340($s0)           ## 00000340
/* 002E8 809E2E18 44815000 */  mtc1    $at, $f10                  ## $f10 = 5.00
/* 002EC 809E2E1C 96090034 */  lhu     $t1, 0x0034($s0)           ## 00000034
/* 002F0 809E2E20 8E0B002C */  lw      $t3, 0x002C($s0)           ## 0000002C
/* 002F4 809E2E24 8E0A0028 */  lw      $t2, 0x0028($s0)           ## 00000028
/* 002F8 809E2E28 240F0006 */  addiu   $t7, $zero, 0x0006         ## $t7 = 00000006
/* 002FC 809E2E2C 2418FFFF */  addiu   $t8, $zero, 0xFFFF         ## $t8 = FFFFFFFF
/* 00300 809E2E30 A20F001F */  sb      $t7, 0x001F($s0)           ## 0000001F
/* 00304 809E2E34 AE1801F4 */  sw      $t8, 0x01F4($s0)           ## 000001F4
/* 00308 809E2E38 E60A01F0 */  swc1    $f10, 0x01F0($s0)          ## 000001F0
/* 0030C 809E2E3C A609033C */  sh      $t1, 0x033C($s0)           ## 0000033C
/* 00310 809E2E40 AE0B0348 */  sw      $t3, 0x0348($s0)           ## 00000348
/* 00314 809E2E44 AE0A0344 */  sw      $t2, 0x0344($s0)           ## 00000344
/* 00318 809E2E48 8FAC0054 */  lw      $t4, 0x0054($sp)
/* 0031C 809E2E4C 2401000C */  addiu   $at, $zero, 0x000C         ## $at = 0000000C
/* 00320 809E2E50 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00324 809E2E54 858D00A4 */  lh      $t5, 0x00A4($t4)           ## 000000A4
/* 00328 809E2E58 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 0032C 809E2E5C 55A1000B */  bnel    $t5, $at, .L809E2E8C
/* 00330 809E2E60 8602001C */  lh      $v0, 0x001C($s0)           ## 0000001C
/* 00334 809E2E64 0C278ACC */  jal     func_809E2B30
/* 00338 809E2E68 260601F4 */  addiu   $a2, $s0, 0x01F4           ## $a2 = 000001F4
/* 0033C 809E2E6C 8E0E023C */  lw      $t6, 0x023C($s0)           ## 0000023C
/* 00340 809E2E70 3C18809E */  lui     $t8, %hi(func_809E336C)    ## $t8 = 809E0000
/* 00344 809E2E74 2718336C */  addiu   $t8, $t8, %lo(func_809E336C) ## $t8 = 809E336C
/* 00348 809E2E78 35CF0006 */  ori     $t7, $t6, 0x0006           ## $t7 = 00000006
/* 0034C 809E2E7C AE0F023C */  sw      $t7, 0x023C($s0)           ## 0000023C
/* 00350 809E2E80 10000024 */  beq     $zero, $zero, .L809E2F14
/* 00354 809E2E84 AE180190 */  sw      $t8, 0x0190($s0)           ## 00000190
/* 00358 809E2E88 8602001C */  lh      $v0, 0x001C($s0)           ## 0000001C
.L809E2E8C:
/* 0035C 809E2E8C 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00360 809E2E90 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00364 809E2E94 30420003 */  andi    $v0, $v0, 0x0003           ## $v0 = 00000000
/* 00368 809E2E98 10410004 */  beq     $v0, $at, .L809E2EAC
/* 0036C 809E2E9C 24050004 */  addiu   $a1, $zero, 0x0004         ## $a1 = 00000004
/* 00370 809E2EA0 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 00374 809E2EA4 14410007 */  bne     $v0, $at, .L809E2EC4
/* 00378 809E2EA8 260601F4 */  addiu   $a2, $s0, 0x01F4           ## $a2 = 000001F4
.L809E2EAC:
/* 0037C 809E2EAC 0C278ACC */  jal     func_809E2B30
/* 00380 809E2EB0 260601F4 */  addiu   $a2, $s0, 0x01F4           ## $a2 = 000001F4
/* 00384 809E2EB4 8E19023C */  lw      $t9, 0x023C($s0)           ## 0000023C
/* 00388 809E2EB8 37290002 */  ori     $t1, $t9, 0x0002           ## $t1 = 00000002
/* 0038C 809E2EBC 10000007 */  beq     $zero, $zero, .L809E2EDC
/* 00390 809E2EC0 AE09023C */  sw      $t1, 0x023C($s0)           ## 0000023C
.L809E2EC4:
/* 00394 809E2EC4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00398 809E2EC8 0C278ACC */  jal     func_809E2B30
/* 0039C 809E2ECC 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 003A0 809E2ED0 8E0A023C */  lw      $t2, 0x023C($s0)           ## 0000023C
/* 003A4 809E2ED4 354B0006 */  ori     $t3, $t2, 0x0006           ## $t3 = 00000006
/* 003A8 809E2ED8 AE0B023C */  sw      $t3, 0x023C($s0)           ## 0000023C
.L809E2EDC:
/* 003AC 809E2EDC 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 003B0 809E2EE0 00000000 */  nop
/* 003B4 809E2EE4 C610015C */  lwc1    $f16, 0x015C($s0)          ## 0000015C
/* 003B8 809E2EE8 3C0E809E */  lui     $t6, %hi(func_809E3338)    ## $t6 = 809E0000
/* 003BC 809E2EEC 25CE3338 */  addiu   $t6, $t6, %lo(func_809E3338) ## $t6 = 809E3338
/* 003C0 809E2EF0 46100482 */  mul.s   $f18, $f0, $f16
/* 003C4 809E2EF4 AE0E0190 */  sw      $t6, 0x0190($s0)           ## 00000190
/* 003C8 809E2EF8 4600910D */  trunc.w.s $f4, $f18
/* 003CC 809E2EFC 440D2000 */  mfc1    $t5, $f4
/* 003D0 809E2F00 00000000 */  nop
/* 003D4 809E2F04 448D3000 */  mtc1    $t5, $f6                   ## $f6 = 0.00
/* 003D8 809E2F08 00000000 */  nop
/* 003DC 809E2F0C 46803220 */  cvt.s.w $f8, $f6
/* 003E0 809E2F10 E6080164 */  swc1    $f8, 0x0164($s0)           ## 00000164
.L809E2F14:
/* 003E4 809E2F14 8FBF002C */  lw      $ra, 0x002C($sp)
.L809E2F18:
/* 003E8 809E2F18 8FB00028 */  lw      $s0, 0x0028($sp)
/* 003EC 809E2F1C 27BD0050 */  addiu   $sp, $sp, 0x0050           ## $sp = 00000000
/* 003F0 809E2F20 03E00008 */  jr      $ra
/* 003F4 809E2F24 00000000 */  nop
