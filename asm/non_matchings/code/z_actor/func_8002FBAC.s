.rdata
glabel D_801362BC
    .asciz "../z_actor.c"
    .balign 4

glabel D_801362CC
    .asciz "-------- DISPLAY Y=%f\n"
    .balign 4

glabel D_801362E4
    .asciz "../z_actor.c"
    .balign 4

glabel D_801362F4
    .asciz "../z_actor.c"
    .balign 4

glabel D_80136304
    .asciz "../z_actor.c"
    .balign 4

.late_rodata
glabel D_80136B1C
    .float 0.025

glabel D_80136B20
    .float 0.05

glabel D_80136B24
    .float 0.05

glabel D_80136B28
    .float 0.2

glabel D_80136B2C
    .float 0.1

glabel D_80136B30
    .float 0.1

    .word 0 # forced padding
glabel D_80136B38
    .double 0.200000000000000011102230246252

glabel D_80136B40
    .float 0.025

glabel D_80136B44
    .float 3.1415927 # M_PI

glabel D_80136B48
    .float 3.1415927 # M_PI

.text
glabel func_8002FBAC
/* AA6D4C 8002FBAC 27BDFF08 */  addiu $sp, $sp, -0xf8
/* AA6D50 8002FBB0 AFBF0024 */  sw    $ra, 0x24($sp)
/* AA6D54 8002FBB4 AFA400F8 */  sw    $a0, 0xf8($sp)
/* AA6D58 8002FBB8 8C850000 */  lw    $a1, ($a0)
/* AA6D5C 8002FBBC 3C068013 */  lui   $a2, %hi(D_801362BC) # $a2, 0x8013
/* AA6D60 8002FBC0 24C662BC */  addiu $a2, %lo(D_801362BC) # addiu $a2, $a2, 0x62bc
/* AA6D64 8002FBC4 27A400DC */  addiu $a0, $sp, 0xdc
/* AA6D68 8002FBC8 240714BC */  li    $a3, 5308
/* AA6D6C 8002FBCC 0C031AB1 */  jal   func_800C6AC4
/* AA6D70 8002FBD0 AFA500EC */   sw    $a1, 0xec($sp)
/* AA6D74 8002FBD4 3C088016 */  lui   $t0, %hi(gSaveContext) # $t0, 0x8016
/* AA6D78 8002FBD8 2508E660 */  addiu $t0, %lo(gSaveContext) # addiu $t0, $t0, -0x19a0
/* AA6D7C 8002FBDC 810313B3 */  lb    $v1, 0x13b3($t0)
/* AA6D80 8002FBE0 241800FF */  li    $t8, 255
/* AA6D84 8002FBE4 10600224 */  beqz  $v1, .L80030478
/* AA6D88 8002FBE8 2467FFD8 */   addiu $a3, $v1, -0x28
/* AA6D8C 8002FBEC 8D0F0004 */  lw    $t7, 4($t0)
/* AA6D90 8002FBF0 3C014270 */  li    $at, 0x42700000 # 0.000000
/* AA6D94 8002FBF4 00E04825 */  move  $t1, $a3
/* AA6D98 8002FBF8 15E00005 */  bnez  $t7, .L8002FC10
/* AA6D9C 8002FBFC 3C048016 */   lui   $a0, %hi(D_8015BC14)
/* AA6DA0 8002FC00 3C0142A0 */  li    $at, 0x42A00000 # 0.000000
/* AA6DA4 8002FC04 44812000 */  mtc1  $at, $f4
/* AA6DA8 8002FC08 10000004 */  b     .L8002FC1C
/* AA6DAC 8002FC0C E7A400D8 */   swc1  $f4, 0xd8($sp)
.L8002FC10:
/* AA6DB0 8002FC10 44813000 */  mtc1  $at, $f6
/* AA6DB4 8002FC14 00000000 */  nop   
/* AA6DB8 8002FC18 E7A600D8 */  swc1  $f6, 0xd8($sp)
.L8002FC1C:
/* AA6DBC 8002FC1C 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* AA6DC0 8002FC20 44819000 */  mtc1  $at, $f18
/* AA6DC4 8002FC24 AFB800D0 */  sw    $t8, 0xd0($sp)
/* AA6DC8 8002FC28 04E10014 */  bgez  $a3, .L8002FC7C
/* AA6DCC 8002FC2C E7B200D4 */   swc1  $f18, 0xd4($sp)
/* AA6DD0 8002FC30 24630001 */  addiu $v1, $v1, 1
/* AA6DD4 8002FC34 04600003 */  bltz  $v1, .L8002FC44
/* AA6DD8 8002FC38 A10313B3 */   sb    $v1, 0x13b3($t0)
/* AA6DDC 8002FC3C 10000002 */  b     .L8002FC48
/* AA6DE0 8002FC40 00601025 */   move  $v0, $v1
.L8002FC44:
/* AA6DE4 8002FC44 00031023 */  negu  $v0, $v1
.L8002FC48:
/* AA6DE8 8002FC48 44824000 */  mtc1  $v0, $f8
/* AA6DEC 8002FC4C 3C018013 */  lui   $at, %hi(D_80136B1C)
/* AA6DF0 8002FC50 C4246B1C */  lwc1  $f4, %lo(D_80136B1C)($at)
/* AA6DF4 8002FC54 468042A0 */  cvt.s.w $f10, $f8
/* AA6DF8 8002FC58 3C048016 */  lui   $a0, %hi(D_8015BC14) # $a0, 0x8016
/* AA6DFC 8002FC5C 2484BC14 */  addiu $a0, %lo(D_8015BC14) # addiu $a0, $a0, -0x43ec
/* AA6E00 8002FC60 2419003C */  li    $t9, 60
/* AA6E04 8002FC64 AC990000 */  sw    $t9, ($a0)
/* AA6E08 8002FC68 3C018016 */  lui   $at, %hi(D_8015BC18)
/* AA6E0C 8002FC6C 46045182 */  mul.s $f6, $f10, $f4
/* AA6E10 8002FC70 E432BC18 */  swc1  $f18, %lo(D_8015BC18)($at)
/* AA6E14 8002FC74 10000128 */  b     .L80030118
/* AA6E18 8002FC78 E7A600D4 */   swc1  $f6, 0xd4($sp)
.L8002FC7C:
/* AA6E1C 8002FC7C 2484BC14 */  addiu $a0, %lo(D_8015BC14)
/* AA6E20 8002FC80 8C820000 */  lw    $v0, ($a0)
/* AA6E24 8002FC84 10400003 */  beqz  $v0, .L8002FC94
/* AA6E28 8002FC88 244AFFFF */   addiu $t2, $v0, -1
/* AA6E2C 8002FC8C 10000122 */  b     .L80030118
/* AA6E30 8002FC90 AC8A0000 */   sw    $t2, ($a0)
.L8002FC94:
/* AA6E34 8002FC94 3C018016 */  lui   $at, %hi(D_8015BC18)
/* AA6E38 8002FC98 C420BC18 */  lwc1  $f0, %lo(D_8015BC18)($at)
/* AA6E3C 8002FC9C 44804000 */  mtc1  $zero, $f8
/* AA6E40 8002FCA0 00000000 */  nop   
/* AA6E44 8002FCA4 4600403C */  c.lt.s $f8, $f0
/* AA6E48 8002FCA8 00000000 */  nop   
/* AA6E4C 8002FCAC 450000B5 */  bc1f  .L8002FF84
/* AA6E50 8002FCB0 3C048016 */   lui   $a0, %hi(gSaveContext+0x1368) # $a0, 0x8016
/* AA6E54 8002FCB4 3C058016 */  lui   $a1, %hi(gSaveContext+0x13a0) # $a1, 0x8016
/* AA6E58 8002FCB8 E7A000C0 */  swc1  $f0, 0xc0($sp)
/* AA6E5C 8002FCBC 24A5FA00 */  addiu $a1, %lo(gSaveContext+0x13a0) # addiu $a1, $a1, -0x600
/* AA6E60 8002FCC0 2484F9C8 */  addiu $a0, %lo(gSaveContext+0x1368) # addiu $a0, $a0, -0x638
/* AA6E64 8002FCC4 0C01DFF4 */  jal   Math_Vec3f_DistXYZAndStoreDiff
/* AA6E68 8002FCC8 27A600B4 */   addiu $a2, $sp, 0xb4
/* AA6E6C 8002FCCC 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* AA6E70 8002FCD0 44819000 */  mtc1  $at, $f18
/* AA6E74 8002FCD4 3C0141A0 */  li    $at, 0x41A00000 # 0.000000
/* AA6E78 8002FCD8 44815000 */  mtc1  $at, $f10
/* AA6E7C 8002FCDC 3C048016 */  lui   $a0, %hi(D_8015BC18) # $a0, 0x8016
/* AA6E80 8002FCE0 46000406 */  mov.s $f16, $f0
/* AA6E84 8002FCE4 460A003C */  c.lt.s $f0, $f10
/* AA6E88 8002FCE8 3C018016 */  lui   $at, %hi(D_8015BC18)
/* AA6E8C 8002FCEC 2484BC18 */  addiu $a0, %lo(D_8015BC18) # addiu $a0, $a0, -0x43e8
/* AA6E90 8002FCF0 24050000 */  li    $a1, 0
/* AA6E94 8002FCF4 4502000B */  bc1fl .L8002FD24
/* AA6E98 8002FCF8 C4860000 */   lwc1  $f6, ($a0)
/* AA6E9C 8002FCFC 44802000 */  mtc1  $zero, $f4
/* AA6EA0 8002FD00 3C048016 */  lui   $a0, %hi(gSaveContext+0x13a0) # $a0, 0x8016
/* AA6EA4 8002FD04 3C058016 */  lui   $a1, %hi(gSaveContext+0x1368) # $a1, 0x8016
/* AA6EA8 8002FD08 24A5F9C8 */  addiu $a1, %lo(gSaveContext+0x1368) # addiu $a1, $a1, -0x638
/* AA6EAC 8002FD0C 2484FA00 */  addiu $a0, %lo(gSaveContext+0x13a0) # addiu $a0, $a0, -0x600
/* AA6EB0 8002FD10 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA6EB4 8002FD14 E424BC18 */   swc1  $f4, %lo(D_8015BC18)($at)
/* AA6EB8 8002FD18 10000048 */  b     .L8002FE3C
/* AA6EBC 8002FD1C 3C0140C0 */   lui   $at, 0x40c0
/* AA6EC0 8002FD20 C4860000 */  lwc1  $f6, ($a0)
.L8002FD24:
/* AA6EC4 8002FD24 3C0141A0 */  li    $at, 0x41A00000 # 0.000000
/* AA6EC8 8002FD28 44815000 */  mtc1  $at, $f10
/* AA6ECC 8002FD2C 46069203 */  div.s $f8, $f18, $f6
/* AA6ED0 8002FD30 3C018013 */  lui   $at, %hi(D_80136B20)
/* AA6ED4 8002FD34 C4246B20 */  lwc1  $f4, %lo(D_80136B20)($at)
/* AA6ED8 8002FD38 3C018013 */  lui   $at, %hi(D_80136B24)
/* AA6EDC 8002FD3C 46004302 */  mul.s $f12, $f8, $f0
/* AA6EE0 8002FD40 460C5383 */  div.s $f14, $f10, $f12
/* AA6EE4 8002FD44 4604703C */  c.lt.s $f14, $f4
/* AA6EE8 8002FD48 00000000 */  nop   
/* AA6EEC 8002FD4C 45020003 */  bc1fl .L8002FD5C
/* AA6EF0 8002FD50 44067000 */   mfc1  $a2, $f14
/* AA6EF4 8002FD54 C42E6B24 */  lwc1  $f14, %lo(D_80136B24)($at)
/* AA6EF8 8002FD58 44067000 */  mfc1  $a2, $f14
.L8002FD5C:
/* AA6EFC 8002FD5C E7AC009C */  swc1  $f12, 0x9c($sp)
/* AA6F00 8002FD60 0C01DE80 */  jal   Math_ApproxF
/* AA6F04 8002FD64 E7B000B0 */   swc1  $f16, 0xb0($sp)
/* AA6F08 8002FD68 3C018016 */  lui   $at, %hi(D_8015BC18)
/* AA6F0C 8002FD6C C426BC18 */  lwc1  $f6, %lo(D_8015BC18)($at)
/* AA6F10 8002FD70 C7A800C0 */  lwc1  $f8, 0xc0($sp)
/* AA6F14 8002FD74 C7B000B0 */  lwc1  $f16, 0xb0($sp)
/* AA6F18 8002FD78 3C018016 */  lui   $at, %hi(gSaveContext+0x1368)
/* AA6F1C 8002FD7C 46083283 */  div.s $f10, $f6, $f8
/* AA6F20 8002FD80 C7A800B4 */  lwc1  $f8, 0xb4($sp)
/* AA6F24 8002FD84 C426F9C8 */  lwc1  $f6, %lo(gSaveContext+0x1368)($at)
/* AA6F28 8002FD88 3C018016 */  lui   $at, %hi(gSaveContext+0x13a0)
/* AA6F2C 8002FD8C C7AC009C */  lwc1  $f12, 0x9c($sp)
/* AA6F30 8002FD90 3C048013 */  lui   $a0, %hi(D_801362CC) # $a0, 0x8013
/* AA6F34 8002FD94 248462CC */  addiu $a0, %lo(D_801362CC) # addiu $a0, $a0, 0x62cc
/* AA6F38 8002FD98 46105102 */  mul.s $f4, $f10, $f16
/* AA6F3C 8002FD9C 46102083 */  div.s $f2, $f4, $f16
/* AA6F40 8002FDA0 46024282 */  mul.s $f10, $f8, $f2
/* AA6F44 8002FDA4 460A3100 */  add.s $f4, $f6, $f10
/* AA6F48 8002FDA8 C7A600B8 */  lwc1  $f6, 0xb8($sp)
/* AA6F4C 8002FDAC 46023282 */  mul.s $f10, $f6, $f2
/* AA6F50 8002FDB0 E424FA00 */  swc1  $f4, %lo(gSaveContext+0x13a0)($at)
/* AA6F54 8002FDB4 3C018016 */  lui   $at, %hi(gSaveContext+0x136c)
/* AA6F58 8002FDB8 C428F9CC */  lwc1  $f8, %lo(gSaveContext+0x136c)($at)
/* AA6F5C 8002FDBC 3C018016 */  lui   $at, %hi(gSaveContext+0x13a4)
/* AA6F60 8002FDC0 460A4100 */  add.s $f4, $f8, $f10
/* AA6F64 8002FDC4 C7A800BC */  lwc1  $f8, 0xbc($sp)
/* AA6F68 8002FDC8 46024282 */  mul.s $f10, $f8, $f2
/* AA6F6C 8002FDCC E424FA04 */  swc1  $f4, %lo(gSaveContext+0x13a4)($at)
/* AA6F70 8002FDD0 3C018016 */  lui   $at, %hi(gSaveContext+0x1370)
/* AA6F74 8002FDD4 C426F9D0 */  lwc1  $f6, %lo(gSaveContext+0x1370)($at)
/* AA6F78 8002FDD8 3C018016 */  lui   $at, %hi(gSaveContext+0x13a8)
/* AA6F7C 8002FDDC 460A3100 */  add.s $f4, $f6, $f10
/* AA6F80 8002FDE0 E424FA08 */  swc1  $f4, %lo(gSaveContext+0x13a8)($at)
/* AA6F84 8002FDE4 3C013F00 */  li    $at, 0x3F000000 # 0.000000
/* AA6F88 8002FDE8 44814000 */  mtc1  $at, $f8
/* AA6F8C 8002FDEC 3C018013 */  lui   $at, %hi(D_80136B28)
/* AA6F90 8002FDF0 C7A400D8 */  lwc1  $f4, 0xd8($sp)
/* AA6F94 8002FDF4 46086302 */  mul.s $f12, $f12, $f8
/* AA6F98 8002FDF8 C4286B28 */  lwc1  $f8, %lo(D_80136B28)($at)
/* AA6F9C 8002FDFC 460C8381 */  sub.s $f14, $f16, $f12
/* AA6FA0 8002FE00 460C6182 */  mul.s $f6, $f12, $f12
/* AA6FA4 8002FE04 00000000 */  nop   
/* AA6FA8 8002FE08 460E7282 */  mul.s $f10, $f14, $f14
/* AA6FAC 8002FE0C 460A3001 */  sub.s $f0, $f6, $f10
/* AA6FB0 8002FE10 46000004 */  sqrt.s $f0, $f0
/* AA6FB4 8002FE14 46080182 */  mul.s $f6, $f0, $f8
/* AA6FB8 8002FE18 46062280 */  add.s $f10, $f4, $f6
/* AA6FBC 8002FE1C E7AA00D8 */  swc1  $f10, 0xd8($sp)
/* AA6FC0 8002FE20 C7A800D8 */  lwc1  $f8, 0xd8($sp)
/* AA6FC4 8002FE24 46004121 */  cvt.d.s $f4, $f8
/* AA6FC8 8002FE28 44072000 */  mfc1  $a3, $f4
/* AA6FCC 8002FE2C 44062800 */  mfc1  $a2, $f5
/* AA6FD0 8002FE30 0C00084C */  jal   osSyncPrintf
/* AA6FD4 8002FE34 00000000 */   nop   
/* AA6FD8 8002FE38 3C0140C0 */  li    $at, 0x40C00000 # 0.000000
.L8002FE3C:
/* AA6FDC 8002FE3C 44816000 */  mtc1  $at, $f12
/* AA6FE0 8002FE40 0C00CFC8 */  jal   Math_Rand_CenteredFloat
/* AA6FE4 8002FE44 00000000 */   nop   
/* AA6FE8 8002FE48 3C018016 */  lui   $at, %hi(gSaveContext+0x13a0)
/* AA6FEC 8002FE4C C426FA00 */  lwc1  $f6, %lo(gSaveContext+0x13a0)($at)
/* AA6FF0 8002FE50 46060280 */  add.s $f10, $f0, $f6
/* AA6FF4 8002FE54 0C03F66B */  jal   Math_Rand_ZeroOne
/* AA6FF8 8002FE58 E7AA00A4 */   swc1  $f10, 0xa4($sp)
/* AA6FFC 8002FE5C 3C0140C0 */  li    $at, 0x40C00000 # 0.000000
/* AA7000 8002FE60 44816000 */  mtc1  $at, $f12
/* AA7004 8002FE64 3C018016 */  lui   $at, %hi(gSaveContext+0x13a4)
/* AA7008 8002FE68 C428FA04 */  lwc1  $f8, %lo(gSaveContext+0x13a4)($at)
/* AA700C 8002FE6C 3C0142A0 */  li    $at, 0x42A00000 # 0.000000
/* AA7010 8002FE70 460C0282 */  mul.s $f10, $f0, $f12
/* AA7014 8002FE74 44812000 */  mtc1  $at, $f4
/* AA7018 8002FE78 00000000 */  nop   
/* AA701C 8002FE7C 46044180 */  add.s $f6, $f8, $f4
/* AA7020 8002FE80 46065200 */  add.s $f8, $f10, $f6
/* AA7024 8002FE84 0C00CFC8 */  jal   Math_Rand_CenteredFloat
/* AA7028 8002FE88 E7A800A8 */   swc1  $f8, 0xa8($sp)
/* AA702C 8002FE8C 3C018016 */  lui   $at, %hi(gSaveContext+0x13a8)
/* AA7030 8002FE90 C424FA08 */  lwc1  $f4, %lo(gSaveContext+0x13a8)($at)
/* AA7034 8002FE94 3C0B8011 */  lui   $t3, %hi(D_80116060) # $t3, 0x8011
/* AA7038 8002FE98 3C0C8011 */  lui   $t4, %hi(D_80116064) # $t4, 0x8011
/* AA703C 8002FE9C 46040280 */  add.s $f10, $f0, $f4
/* AA7040 8002FEA0 258C6064 */  addiu $t4, %lo(D_80116064) # addiu $t4, $t4, 0x6064
/* AA7044 8002FEA4 256B6060 */  addiu $t3, %lo(D_80116060) # addiu $t3, $t3, 0x6060
/* AA7048 8002FEA8 3C068011 */  lui   $a2, %hi(D_80116048) # $a2, 0x8011
/* AA704C 8002FEAC 3C078011 */  lui   $a3, %hi(D_80116054) # $a3, 0x8011
/* AA7050 8002FEB0 240D03E8 */  li    $t5, 1000
/* AA7054 8002FEB4 240E0010 */  li    $t6, 16
/* AA7058 8002FEB8 E7AA00AC */  swc1  $f10, 0xac($sp)
/* AA705C 8002FEBC AFAE001C */  sw    $t6, 0x1c($sp)
/* AA7060 8002FEC0 AFAD0018 */  sw    $t5, 0x18($sp)
/* AA7064 8002FEC4 24E76054 */  addiu $a3, %lo(D_80116054) # addiu $a3, $a3, 0x6054
/* AA7068 8002FEC8 24C66048 */  addiu $a2, %lo(D_80116048) # addiu $a2, $a2, 0x6048
/* AA706C 8002FECC AFAB0010 */  sw    $t3, 0x10($sp)
/* AA7070 8002FED0 AFAC0014 */  sw    $t4, 0x14($sp)
/* AA7074 8002FED4 8FA400F8 */  lw    $a0, 0xf8($sp)
/* AA7078 8002FED8 0C00A2EC */  jal   func_80028BB0
/* AA707C 8002FEDC 27A500A4 */   addiu $a1, $sp, 0xa4
/* AA7080 8002FEE0 3C018016 */  lui   $at, %hi(D_8015BC18)
/* AA7084 8002FEE4 C428BC18 */  lwc1  $f8, %lo(D_8015BC18)($at)
/* AA7088 8002FEE8 44803000 */  mtc1  $zero, $f6
/* AA708C 8002FEEC 3C0F8016 */  lui   $t7, %hi(gSaveContext+0x1368) # $t7, 0x8016
/* AA7090 8002FEF0 25EFF9C8 */  addiu $t7, %lo(gSaveContext+0x1368) # addiu $t7, $t7, -0x638
/* AA7094 8002FEF4 46083032 */  c.eq.s $f6, $f8
/* AA7098 8002FEF8 3C088016 */  lui   $t0, %hi(gSaveContext) # $t0, 0x8016
/* AA709C 8002FEFC 45000017 */  bc1f  .L8002FF5C
/* AA70A0 8002FF00 00000000 */   nop   
/* AA70A4 8002FF04 8DF90000 */  lw    $t9, ($t7)
/* AA70A8 8002FF08 3C028016 */  lui   $v0, %hi(gSaveContext+0x13a0) # $v0, 0x8016
/* AA70AC 8002FF0C 2442FA00 */  addiu $v0, %lo(gSaveContext+0x13a0) # addiu $v0, $v0, -0x600
/* AA70B0 8002FF10 AC590000 */  sw    $t9, ($v0)
/* AA70B4 8002FF14 8DF80004 */  lw    $t8, 4($t7)
/* AA70B8 8002FF18 240A06FF */  li    $t2, 1791
/* AA70BC 8002FF1C 3C018016 */  lui   $at, %hi(gSaveContext+0x13ae) # $at, 0x8016
/* AA70C0 8002FF20 AC580004 */  sw    $t8, 4($v0)
/* AA70C4 8002FF24 8DF90008 */  lw    $t9, 8($t7)
/* AA70C8 8002FF28 240B0028 */  li    $t3, 40
/* AA70CC 8002FF2C AC590008 */  sw    $t9, 8($v0)
/* AA70D0 8002FF30 8DF8000C */  lw    $t8, 0xc($t7)
/* AA70D4 8002FF34 AC58000C */  sw    $t8, 0xc($v0)
/* AA70D8 8002FF38 8DF90010 */  lw    $t9, 0x10($t7)
/* AA70DC 8002FF3C AC590010 */  sw    $t9, 0x10($v0)
/* AA70E0 8002FF40 8DF80014 */  lw    $t8, 0x14($t7)
/* AA70E4 8002FF44 AC580014 */  sw    $t8, 0x14($v0)
/* AA70E8 8002FF48 8DF90018 */  lw    $t9, 0x18($t7)
/* AA70EC 8002FF4C AC590018 */  sw    $t9, 0x18($v0)
/* AA70F0 8002FF50 A42AFA0E */  sh    $t2, %lo(gSaveContext+0x13ae)($at)
/* AA70F4 8002FF54 3C018016 */  lui   $at, %hi(gSaveContext+0x13b3) # $at, 0x8016
/* AA70F8 8002FF58 A02BFA13 */  sb    $t3, %lo(gSaveContext+0x13b3)($at)
.L8002FF5C:
/* AA70FC 8002FF5C 3C028016 */  lui   $v0, %hi(gSaveContext+0x13a0)
/* AA7100 8002FF60 2442FA00 */  addiu $v0, %lo(gSaveContext+0x13a0) # addiu $v0, $v0, -0x600
/* AA7104 8002FF64 8C4D0000 */  lw    $t5, ($v0)
/* AA7108 8002FF68 8C4C0004 */  lw    $t4, 4($v0)
/* AA710C 8002FF6C 2508E660 */  addiu $t0, %lo(gSaveContext) # addiu $t0, $t0, -0x19a0
/* AA7110 8002FF70 AC4D0000 */  sw    $t5, ($v0)
/* AA7114 8002FF74 8C4D0008 */  lw    $t5, 8($v0)
/* AA7118 8002FF78 AC4C0004 */  sw    $t4, 4($v0)
/* AA711C 8002FF7C 10000066 */  b     .L80030118
/* AA7120 8002FF80 AC4D0008 */   sw    $t5, 8($v0)
.L8002FF84:
/* AA7124 8002FF84 58E00065 */  blezl $a3, .L8003011C
/* AA7128 8002FF88 8FAE00F8 */   lw    $t6, 0xf8($sp)
/* AA712C 8002FF8C 44872000 */  mtc1  $a3, $f4
/* AA7130 8002FF90 3C018013 */  lui   $at, %hi(D_80136B2C)
/* AA7134 8002FF94 C4266B2C */  lwc1  $f6, %lo(D_80136B2C)($at)
/* AA7138 8002FF98 468022A0 */  cvt.s.w $f10, $f4
/* AA713C 8002FF9C 8FAE00F8 */  lw    $t6, 0xf8($sp)
/* AA7140 8002FFA0 46065302 */  mul.s $f12, $f10, $f6
/* AA7144 8002FFA4 4612603C */  c.lt.s $f12, $f18
/* AA7148 8002FFA8 00000000 */  nop   
/* AA714C 8002FFAC 45020042 */  bc1fl .L800300B8
/* AA7150 8002FFB0 00076100 */   sll   $t4, $a3, 4
/* AA7154 8002FFB4 C5C800E0 */  lwc1  $f8, 0xe0($t6)
/* AA7158 8002FFB8 C7AA00D8 */  lwc1  $f10, 0xd8($sp)
/* AA715C 8002FFBC 3C058016 */  lui   $a1, %hi(gSaveContext+0x13a0) # $a1, 0x8016
/* AA7160 8002FFC0 E7A8007C */  swc1  $f8, 0x7c($sp)
/* AA7164 8002FFC4 C5C400E4 */  lwc1  $f4, 0xe4($t6)
/* AA7168 8002FFC8 24A5FA00 */  addiu $a1, %lo(gSaveContext+0x13a0) # addiu $a1, $a1, -0x600
/* AA716C 8002FFCC 27A4007C */  addiu $a0, $sp, 0x7c
/* AA7170 8002FFD0 460A2181 */  sub.s $f6, $f4, $f10
/* AA7174 8002FFD4 27A60070 */  addiu $a2, $sp, 0x70
/* AA7178 8002FFD8 E7A60080 */  swc1  $f6, 0x80($sp)
/* AA717C 8002FFDC C5C800E8 */  lwc1  $f8, 0xe8($t6)
/* AA7180 8002FFE0 E7AC0030 */  swc1  $f12, 0x30($sp)
/* AA7184 8002FFE4 AFA900CC */  sw    $t1, 0xcc($sp)
/* AA7188 8002FFE8 AFA70034 */  sw    $a3, 0x34($sp)
/* AA718C 8002FFEC AFA300F0 */  sw    $v1, 0xf0($sp)
/* AA7190 8002FFF0 0C01DFF4 */  jal   Math_Vec3f_DistXYZAndStoreDiff
/* AA7194 8002FFF4 E7A80084 */   swc1  $f8, 0x84($sp)
/* AA7198 8002FFF8 8FA70034 */  lw    $a3, 0x34($sp)
/* AA719C 8002FFFC 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* AA71A0 80030000 44819000 */  mtc1  $at, $f18
/* AA71A4 80030004 24EFFFFF */  addiu $t7, $a3, -1
/* AA71A8 80030008 448F2000 */  mtc1  $t7, $f4
/* AA71AC 8003000C 3C018013 */  lui   $at, %hi(D_80136B30)
/* AA71B0 80030010 C4266B30 */  lwc1  $f6, %lo(D_80136B30)($at)
/* AA71B4 80030014 468022A0 */  cvt.s.w $f10, $f4
/* AA71B8 80030018 C7AC0030 */  lwc1  $f12, 0x30($sp)
/* AA71BC 8003001C 3C018016 */  lui   $at, %hi(gSaveContext+0x13a0)
/* AA71C0 80030020 3C198016 */  lui   $t9, %hi(gSaveContext+0x13a0) # $t9, 0x8016
/* AA71C4 80030024 2739FA00 */  addiu $t9, %lo(gSaveContext+0x13a0) # addiu $t9, $t9, -0x600
/* AA71C8 80030028 3C188016 */  lui   $t8, %hi(gSaveContext+0x13a0) # $t8, 0x8016
/* AA71CC 8003002C 46065202 */  mul.s $f8, $f10, $f6
/* AA71D0 80030030 460C9281 */  sub.s $f10, $f18, $f12
/* AA71D4 80030034 8FA300F0 */  lw    $v1, 0xf0($sp)
/* AA71D8 80030038 8FA900CC */  lw    $t1, 0xcc($sp)
/* AA71DC 8003003C 2718FA00 */  addiu $t8, %lo(gSaveContext+0x13a0) # addiu $t8, $t8, -0x600
/* AA71E0 80030040 3C088016 */  lui   $t0, %hi(gSaveContext) # $t0, 0x8016
/* AA71E4 80030044 2508E660 */  addiu $t0, %lo(gSaveContext) # addiu $t0, $t0, -0x19a0
/* AA71E8 80030048 46089101 */  sub.s $f4, $f18, $f8
/* AA71EC 8003004C 46045183 */  div.s $f6, $f10, $f4
/* AA71F0 80030050 C7AA0070 */  lwc1  $f10, 0x70($sp)
/* AA71F4 80030054 46003202 */  mul.s $f8, $f6, $f0
/* AA71F8 80030058 C7A6007C */  lwc1  $f6, 0x7c($sp)
/* AA71FC 8003005C 46004083 */  div.s $f2, $f8, $f0
/* AA7200 80030060 46025102 */  mul.s $f4, $f10, $f2
/* AA7204 80030064 C7AA0074 */  lwc1  $f10, 0x74($sp)
/* AA7208 80030068 46062200 */  add.s $f8, $f4, $f6
/* AA720C 8003006C 46025102 */  mul.s $f4, $f10, $f2
/* AA7210 80030070 C7A60080 */  lwc1  $f6, 0x80($sp)
/* AA7214 80030074 C7AA0078 */  lwc1  $f10, 0x78($sp)
/* AA7218 80030078 E428FA00 */  swc1  $f8, %lo(gSaveContext+0x13a0)($at)
/* AA721C 8003007C 3C018016 */  lui   $at, %hi(gSaveContext+0x13a4)
/* AA7220 80030080 46062200 */  add.s $f8, $f4, $f6
/* AA7224 80030084 46025102 */  mul.s $f4, $f10, $f2
/* AA7228 80030088 C7A60084 */  lwc1  $f6, 0x84($sp)
/* AA722C 8003008C E428FA04 */  swc1  $f8, %lo(gSaveContext+0x13a4)($at)
/* AA7230 80030090 3C018016 */  lui   $at, %hi(gSaveContext+0x13a8)
/* AA7234 80030094 46062200 */  add.s $f8, $f4, $f6
/* AA7238 80030098 E428FA08 */  swc1  $f8, %lo(gSaveContext+0x13a8)($at)
/* AA723C 8003009C 8F2B0000 */  lw    $t3, ($t9)
/* AA7240 800300A0 AF0B0000 */  sw    $t3, ($t8)
/* AA7244 800300A4 8F2A0004 */  lw    $t2, 4($t9)
/* AA7248 800300A8 AF0A0004 */  sw    $t2, 4($t8)
/* AA724C 800300AC 8F2B0008 */  lw    $t3, 8($t9)
/* AA7250 800300B0 AF0B0008 */  sw    $t3, 8($t8)
/* AA7254 800300B4 00076100 */  sll   $t4, $a3, 4
.L800300B8:
/* AA7258 800300B8 01876023 */  subu  $t4, $t4, $a3
/* AA725C 800300BC 000C6040 */  sll   $t4, $t4, 1
/* AA7260 800300C0 240D00FF */  li    $t5, 255
/* AA7264 800300C4 01AC1023 */  subu  $v0, $t5, $t4
/* AA7268 800300C8 04410005 */  bgez  $v0, .L800300E0
/* AA726C 800300CC AFA200D0 */   sw    $v0, 0xd0($sp)
/* AA7270 800300D0 AD000E80 */  sw    $zero, 0xe80($t0)
/* AA7274 800300D4 A10013B3 */  sb    $zero, 0x13b3($t0)
/* AA7278 800300D8 10000003 */  b     .L800300E8
/* AA727C 800300DC AFA000D0 */   sw    $zero, 0xd0($sp)
.L800300E0:
/* AA7280 800300E0 24630001 */  addiu $v1, $v1, 1
/* AA7284 800300E4 A10313B3 */  sb    $v1, 0x13b3($t0)
.L800300E8:
/* AA7288 800300E8 44895000 */  mtc1  $t1, $f10
/* AA728C 800300EC 3C018013 */  lui   $at, %hi(D_80136B38)
/* AA7290 800300F0 D4286B38 */  ldc1  $f8, %lo(D_80136B38)($at)
/* AA7294 800300F4 46805120 */  cvt.s.w $f4, $f10
/* AA7298 800300F8 3C013FF0 */  li    $at, 0x3FF00000 # 0.000000
/* AA729C 800300FC 44812800 */  mtc1  $at, $f5
/* AA72A0 80030100 460021A1 */  cvt.d.s $f6, $f4
/* AA72A4 80030104 44802000 */  mtc1  $zero, $f4
/* AA72A8 80030108 46283282 */  mul.d $f10, $f6, $f8
/* AA72AC 8003010C 46245180 */  add.d $f6, $f10, $f4
/* AA72B0 80030110 46203220 */  cvt.s.d $f8, $f6
/* AA72B4 80030114 E7A800D4 */  swc1  $f8, 0xd4($sp)
.L80030118:
/* AA72B8 80030118 8FAE00F8 */  lw    $t6, 0xf8($sp)
.L8003011C:
/* AA72BC 8003011C 91CF1D6C */  lbu   $t7, 0x1d6c($t6)
/* AA72C0 80030120 55E000AE */  bnezl $t7, .L800303DC
/* AA72C4 80030124 C50213A4 */   lwc1  $f2, 0x13a4($t0)
/* AA72C8 80030128 850213B0 */  lh    $v0, 0x13b0($t0)
/* AA72CC 8003012C 8D180000 */  lw    $t8, ($t0)
/* AA72D0 80030130 3C010001 */  lui   $at, 1
/* AA72D4 80030134 145800A8 */  bne   $v0, $t8, .L800303D8
/* AA72D8 80030138 01C11021 */   addu  $v0, $t6, $at
/* AA72DC 8003013C 80591CBC */  lb    $t9, 0x1cbc($v0)
/* AA72E0 80030140 910A13B2 */  lbu   $t2, 0x13b2($t0)
/* AA72E4 80030144 8FAB00EC */  lw    $t3, 0xec($sp)
/* AA72E8 80030148 24050019 */  li    $a1, 25
/* AA72EC 8003014C 572A00A3 */  bnel  $t9, $t2, .L800303DC
/* AA72F0 80030150 C50213A4 */   lwc1  $f2, 0x13a4($t0)
/* AA72F4 80030154 8D6402D0 */  lw    $a0, 0x2d0($t3)
/* AA72F8 80030158 0C024DDD */  jal   func_80093774
/* AA72FC 8003015C AFA20034 */   sw    $v0, 0x34($sp)
/* AA7300 80030160 8FAD00EC */  lw    $t5, 0xec($sp)
/* AA7304 80030164 3C038016 */  lui   $v1, %hi(gSaveContext) # $v1, 0x8016
/* AA7308 80030168 2463E660 */  addiu $v1, %lo(gSaveContext) # addiu $v1, $v1, -0x19a0
/* AA730C 8003016C ADA202D0 */  sw    $v0, 0x2d0($t5)
/* AA7310 80030170 C46013A8 */  lwc1  $f0, 0x13a8($v1)
/* AA7314 80030174 C7AA00D8 */  lwc1  $f10, 0xd8($sp)
/* AA7318 80030178 C46213A4 */  lwc1  $f2, 0x13a4($v1)
/* AA731C 8003017C 44060000 */  mfc1  $a2, $f0
/* AA7320 80030180 C46C13A0 */  lwc1  $f12, 0x13a0($v1)
/* AA7324 80030184 00003825 */  move  $a3, $zero
/* AA7328 80030188 0C034261 */  jal   Matrix_Translate
/* AA732C 8003018C 460A1380 */   add.s $f14, $f2, $f10
/* AA7330 80030190 3C018013 */  lui   $at, %hi(D_80136B40)
/* AA7334 80030194 C4246B40 */  lwc1  $f4, %lo(D_80136B40)($at)
/* AA7338 80030198 C7A600D4 */  lwc1  $f6, 0xd4($sp)
/* AA733C 8003019C 24070001 */  li    $a3, 1
/* AA7340 800301A0 46062302 */  mul.s $f12, $f4, $f6
/* AA7344 800301A4 44066000 */  mfc1  $a2, $f12
/* AA7348 800301A8 0C0342A3 */  jal   Matrix_Scale
/* AA734C 800301AC 46006386 */   mov.s $f14, $f12
/* AA7350 800301B0 8FA400F8 */  lw    $a0, 0xf8($sp)
/* AA7354 800301B4 3C010001 */  lui   $at, (0x00011DA0 >> 16) # lui $at, 1
/* AA7358 800301B8 34211DA0 */  ori   $at, (0x00011DA0 & 0xFFFF) # ori $at, $at, 0x1da0
/* AA735C 800301BC 24050001 */  li    $a1, 1
/* AA7360 800301C0 0C03424C */  jal   Matrix_Mult
/* AA7364 800301C4 00812021 */   addu  $a0, $a0, $at
/* AA7368 800301C8 0C034213 */  jal   Matrix_Push
/* AA736C 800301CC 00000000 */   nop   
/* AA7370 800301D0 8FA400EC */  lw    $a0, 0xec($sp)
/* AA7374 800301D4 3C0FE700 */  lui   $t7, 0xe700
/* AA7378 800301D8 3C0EFA00 */  lui   $t6, (0xFA008080 >> 16) # lui $t6, 0xfa00
/* AA737C 800301DC 8C8202D0 */  lw    $v0, 0x2d0($a0)
/* AA7380 800301E0 35CE8080 */  ori   $t6, (0xFA008080 & 0xFFFF) # ori $t6, $t6, 0x8080
/* AA7384 800301E4 2401C800 */  li    $at, -14336
/* AA7388 800301E8 244C0008 */  addiu $t4, $v0, 8
/* AA738C 800301EC AC8C02D0 */  sw    $t4, 0x2d0($a0)
/* AA7390 800301F0 AC400004 */  sw    $zero, 4($v0)
/* AA7394 800301F4 AC4F0000 */  sw    $t7, ($v0)
/* AA7398 800301F8 8C8202D0 */  lw    $v0, 0x2d0($a0)
/* AA739C 800301FC 3C0F64C8 */  lui   $t7, (0x64C800FF >> 16) # lui $t7, 0x64c8
/* AA73A0 80030200 35EF00FF */  ori   $t7, (0x64C800FF & 0xFFFF) # ori $t7, $t7, 0xff
/* AA73A4 80030204 24580008 */  addiu $t8, $v0, 8
/* AA73A8 80030208 AC9802D0 */  sw    $t8, 0x2d0($a0)
/* AA73AC 8003020C AC4E0000 */  sw    $t6, ($v0)
/* AA73B0 80030210 8FB900D0 */  lw    $t9, 0xd0($sp)
/* AA73B4 80030214 3C0CFB00 */  li    $t4, 0xFB000000 # 0.000000
/* AA73B8 80030218 332A00FF */  andi  $t2, $t9, 0xff
/* AA73BC 8003021C 01415825 */  or    $t3, $t2, $at
/* AA73C0 80030220 AC4B0004 */  sw    $t3, 4($v0)
/* AA73C4 80030224 8C8202D0 */  lw    $v0, 0x2d0($a0)
/* AA73C8 80030228 3C014F80 */  li    $at, 0x4F800000 # 0.000000
/* AA73CC 8003022C 244D0008 */  addiu $t5, $v0, 8
/* AA73D0 80030230 AC8D02D0 */  sw    $t5, 0x2d0($a0)
/* AA73D4 80030234 AC4F0004 */  sw    $t7, 4($v0)
/* AA73D8 80030238 AC4C0000 */  sw    $t4, ($v0)
/* AA73DC 8003023C 8FB80034 */  lw    $t8, 0x34($sp)
/* AA73E0 80030240 8F0E1DE4 */  lw    $t6, 0x1de4($t8)
/* AA73E4 80030244 000EC880 */  sll   $t9, $t6, 2
/* AA73E8 80030248 032EC823 */  subu  $t9, $t9, $t6
/* AA73EC 8003024C 0019C900 */  sll   $t9, $t9, 4
/* AA73F0 80030250 032EC823 */  subu  $t9, $t9, $t6
/* AA73F4 80030254 0019C8C0 */  sll   $t9, $t9, 3
/* AA73F8 80030258 032EC823 */  subu  $t9, $t9, $t6
/* AA73FC 8003025C 0019C880 */  sll   $t9, $t9, 2
/* AA7400 80030260 332AFFFF */  andi  $t2, $t9, 0xffff
/* AA7404 80030264 448A4000 */  mtc1  $t2, $f8
/* AA7408 80030268 05410004 */  bgez  $t2, .L8003027C
/* AA740C 8003026C 468042A0 */   cvt.s.w $f10, $f8
/* AA7410 80030270 44812000 */  mtc1  $at, $f4
/* AA7414 80030274 00000000 */  nop   
/* AA7418 80030278 46045280 */  add.s $f10, $f10, $f4
.L8003027C:
/* AA741C 8003027C 3C018013 */  lui   $at, %hi(D_80136B44)
/* AA7420 80030280 C4266B44 */  lwc1  $f6, %lo(D_80136B44)($at)
/* AA7424 80030284 3C014700 */  li    $at, 0x47000000 # 0.000000
/* AA7428 80030288 44812000 */  mtc1  $at, $f4
/* AA742C 8003028C 46065202 */  mul.s $f8, $f10, $f6
/* AA7430 80030290 24050001 */  li    $a1, 1
/* AA7434 80030294 0C0343B5 */  jal   Matrix_RotateZ
/* AA7438 80030298 46044303 */   div.s $f12, $f8, $f4
/* AA743C 8003029C 8FA700EC */  lw    $a3, 0xec($sp)
/* AA7440 800302A0 3C0DDA38 */  lui   $t5, (0xDA380003 >> 16) # lui $t5, 0xda38
/* AA7444 800302A4 35AD0003 */  ori   $t5, (0xDA380003 & 0xFFFF) # ori $t5, $t5, 3
/* AA7448 800302A8 8CE202D0 */  lw    $v0, 0x2d0($a3)
/* AA744C 800302AC 3C058013 */  lui   $a1, %hi(D_801362E4) # $a1, 0x8013
/* AA7450 800302B0 24A562E4 */  addiu $a1, %lo(D_801362E4) # addiu $a1, $a1, 0x62e4
/* AA7454 800302B4 244B0008 */  addiu $t3, $v0, 8
/* AA7458 800302B8 ACEB02D0 */  sw    $t3, 0x2d0($a3)
/* AA745C 800302BC AC4D0000 */  sw    $t5, ($v0)
/* AA7460 800302C0 8FAC00F8 */  lw    $t4, 0xf8($sp)
/* AA7464 800302C4 24061552 */  li    $a2, 5458
/* AA7468 800302C8 8D840000 */  lw    $a0, ($t4)
/* AA746C 800302CC 0C0346A2 */  jal   Matrix_NewMtx
/* AA7470 800302D0 AFA20058 */   sw    $v0, 0x58($sp)
/* AA7474 800302D4 8FA30058 */  lw    $v1, 0x58($sp)
/* AA7478 800302D8 3C040401 */  lui   $a0, %hi(D_04010130) # $a0, 0x401
/* AA747C 800302DC 24840130 */  addiu $a0, %lo(D_04010130) # addiu $a0, $a0, 0x130
/* AA7480 800302E0 AC620004 */  sw    $v0, 4($v1)
/* AA7484 800302E4 8FA500EC */  lw    $a1, 0xec($sp)
/* AA7488 800302E8 3C18DE00 */  li    $t8, 0xDE000000 # 0.000000
/* AA748C 800302EC 8CA202D0 */  lw    $v0, 0x2d0($a1)
/* AA7490 800302F0 244F0008 */  addiu $t7, $v0, 8
/* AA7494 800302F4 ACAF02D0 */  sw    $t7, 0x2d0($a1)
/* AA7498 800302F8 AC440004 */  sw    $a0, 4($v0)
/* AA749C 800302FC AC580000 */  sw    $t8, ($v0)
/* AA74A0 80030300 0C034221 */  jal   Matrix_Pull
/* AA74A4 80030304 AFA40030 */   sw    $a0, 0x30($sp)
/* AA74A8 80030308 8FAE0034 */  lw    $t6, 0x34($sp)
/* AA74AC 8003030C 3C014F80 */  li    $at, 0x4F800000 # 0.000000
/* AA74B0 80030310 8DD91DE4 */  lw    $t9, 0x1de4($t6)
/* AA74B4 80030314 00195080 */  sll   $t2, $t9, 2
/* AA74B8 80030318 01595021 */  addu  $t2, $t2, $t9
/* AA74BC 8003031C 000A5080 */  sll   $t2, $t2, 2
/* AA74C0 80030320 01595023 */  subu  $t2, $t2, $t9
/* AA74C4 80030324 000A5080 */  sll   $t2, $t2, 2
/* AA74C8 80030328 01595023 */  subu  $t2, $t2, $t9
/* AA74CC 8003032C 000A5100 */  sll   $t2, $t2, 4
/* AA74D0 80030330 314BFFFF */  andi  $t3, $t2, 0xffff
/* AA74D4 80030334 01606827 */  not   $t5, $t3
/* AA74D8 80030338 448D5000 */  mtc1  $t5, $f10
/* AA74DC 8003033C 05A10004 */  bgez  $t5, .L80030350
/* AA74E0 80030340 468051A0 */   cvt.s.w $f6, $f10
/* AA74E4 80030344 44814000 */  mtc1  $at, $f8
/* AA74E8 80030348 00000000 */  nop   
/* AA74EC 8003034C 46083180 */  add.s $f6, $f6, $f8
.L80030350:
/* AA74F0 80030350 3C018013 */  lui   $at, %hi(D_80136B48)
/* AA74F4 80030354 C4246B48 */  lwc1  $f4, %lo(D_80136B48)($at)
/* AA74F8 80030358 3C014700 */  li    $at, 0x47000000 # 0.000000
/* AA74FC 8003035C 44814000 */  mtc1  $at, $f8
/* AA7500 80030360 46043282 */  mul.s $f10, $f6, $f4
/* AA7504 80030364 24050001 */  li    $a1, 1
/* AA7508 80030368 0C0343B5 */  jal   Matrix_RotateZ
/* AA750C 8003036C 46085303 */   div.s $f12, $f10, $f8
/* AA7510 80030370 8FAC00EC */  lw    $t4, 0xec($sp)
/* AA7514 80030374 3C18DA38 */  lui   $t8, (0xDA380003 >> 16) # lui $t8, 0xda38
/* AA7518 80030378 37180003 */  ori   $t8, (0xDA380003 & 0xFFFF) # ori $t8, $t8, 3
/* AA751C 8003037C 8D8202D0 */  lw    $v0, 0x2d0($t4)
/* AA7520 80030380 3C058013 */  lui   $a1, %hi(D_801362F4) # $a1, 0x8013
/* AA7524 80030384 24A562F4 */  addiu $a1, %lo(D_801362F4) # addiu $a1, $a1, 0x62f4
/* AA7528 80030388 244F0008 */  addiu $t7, $v0, 8
/* AA752C 8003038C AD8F02D0 */  sw    $t7, 0x2d0($t4)
/* AA7530 80030390 AC580000 */  sw    $t8, ($v0)
/* AA7534 80030394 8FAE00F8 */  lw    $t6, 0xf8($sp)
/* AA7538 80030398 24061557 */  li    $a2, 5463
/* AA753C 8003039C 8DC40000 */  lw    $a0, ($t6)
/* AA7540 800303A0 0C0346A2 */  jal   Matrix_NewMtx
/* AA7544 800303A4 AFA20050 */   sw    $v0, 0x50($sp)
/* AA7548 800303A8 8FA30050 */  lw    $v1, 0x50($sp)
/* AA754C 800303AC 3C0BDE00 */  lui   $t3, 0xde00
/* AA7550 800303B0 3C088016 */  lui   $t0, %hi(gSaveContext) # $t0, 0x8016
/* AA7554 800303B4 AC620004 */  sw    $v0, 4($v1)
/* AA7558 800303B8 8FB900EC */  lw    $t9, 0xec($sp)
/* AA755C 800303BC 2508E660 */  addiu $t0, %lo(gSaveContext) # addiu $t0, $t0, -0x19a0
/* AA7560 800303C0 8F2202D0 */  lw    $v0, 0x2d0($t9)
/* AA7564 800303C4 244A0008 */  addiu $t2, $v0, 8
/* AA7568 800303C8 AF2A02D0 */  sw    $t2, 0x2d0($t9)
/* AA756C 800303CC AC4B0000 */  sw    $t3, ($v0)
/* AA7570 800303D0 8FAD0030 */  lw    $t5, 0x30($sp)
/* AA7574 800303D4 AC4D0004 */  sw    $t5, 4($v0)
.L800303D8:
/* AA7578 800303D8 C50213A4 */  lwc1  $f2, 0x13a4($t0)
.L800303DC:
/* AA757C 800303DC C7A400D8 */  lwc1  $f4, 0xd8($sp)
/* AA7580 800303E0 C50C13A0 */  lwc1  $f12, 0x13a0($t0)
/* AA7584 800303E4 3C0143FA */  li    $at, 0x43FA0000 # 0.000000
/* AA7588 800303E8 46041280 */  add.s $f10, $f2, $f4
/* AA758C 800303EC 44812000 */  mtc1  $at, $f4
/* AA7590 800303F0 C50013A8 */  lwc1  $f0, 0x13a8($t0)
/* AA7594 800303F4 4600618D */  trunc.w.s $f6, $f12
/* AA7598 800303F8 3C048016 */  lui   $a0, %hi(D_8015BC00) # $a0, 0x8016
/* AA759C 800303FC 240E00FF */  li    $t6, 255
/* AA75A0 80030400 4600520D */  trunc.w.s $f8, $f10
/* AA75A4 80030404 C7AA00D4 */  lwc1  $f10, 0xd4($sp)
/* AA75A8 80030408 44053000 */  mfc1  $a1, $f6
/* AA75AC 8003040C 4600018D */  trunc.w.s $f6, $f0
/* AA75B0 80030410 44064000 */  mfc1  $a2, $f8
/* AA75B4 80030414 460A2202 */  mul.s $f8, $f4, $f10
/* AA75B8 80030418 240A00FF */  li    $t2, 255
/* AA75BC 8003041C 44073000 */  mfc1  $a3, $f6
/* AA75C0 80030420 241900FF */  li    $t9, 255
/* AA75C4 80030424 00052C00 */  sll   $a1, $a1, 0x10
/* AA75C8 80030428 00063400 */  sll   $a2, $a2, 0x10
/* AA75CC 8003042C 00073C00 */  sll   $a3, $a3, 0x10
/* AA75D0 80030430 4600418D */  trunc.w.s $f6, $f8
/* AA75D4 80030434 00073C03 */  sra   $a3, $a3, 0x10
/* AA75D8 80030438 00063403 */  sra   $a2, $a2, 0x10
/* AA75DC 8003043C 00052C03 */  sra   $a1, $a1, 0x10
/* AA75E0 80030440 440D3000 */  mfc1  $t5, $f6
/* AA75E4 80030444 AFB90018 */  sw    $t9, 0x18($sp)
/* AA75E8 80030448 AFAA0014 */  sw    $t2, 0x14($sp)
/* AA75EC 8003044C AFAE0010 */  sw    $t6, 0x10($sp)
/* AA75F0 80030450 2484BC00 */  addiu $a0, %lo(D_8015BC00) # addiu $a0, $a0, -0x4400
/* AA75F4 80030454 0C01E763 */  jal   Lights_InitType0PositionalLight
/* AA75F8 80030458 AFAD001C */   sw    $t5, 0x1c($sp)
/* AA75FC 8003045C 8FAF00F8 */  lw    $t7, 0xf8($sp)
/* AA7600 80030460 3C068013 */  lui   $a2, %hi(D_80136304) # $a2, 0x8013
/* AA7604 80030464 24C66304 */  addiu $a2, %lo(D_80136304) # addiu $a2, $a2, 0x6304
/* AA7608 80030468 27A400DC */  addiu $a0, $sp, 0xdc
/* AA760C 8003046C 24071562 */  li    $a3, 5474
/* AA7610 80030470 0C031AD5 */  jal   func_800C6B54
/* AA7614 80030474 8DE50000 */   lw    $a1, ($t7)
.L80030478:
/* AA7618 80030478 8FBF0024 */  lw    $ra, 0x24($sp)
/* AA761C 8003047C 27BD00F8 */  addiu $sp, $sp, 0xf8
/* AA7620 80030480 03E00008 */  jr    $ra
/* AA7624 80030484 00000000 */   nop   

