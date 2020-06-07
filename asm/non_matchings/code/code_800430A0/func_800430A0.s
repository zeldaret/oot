.rdata
glabel D_80138FD0
    .asciz "\x1b[31m"
    .balign 4

glabel D_80138FD8
    .asciz "BGCheckCollection_typicalActorPos():位置が妥当ではありません。\npos (%f,%f,%f) file:%s line:%d\n"
    # EUC-JP: 位置が妥当ではありません。 | Position is not valid
    .balign 4

glabel D_80139038
    .asciz "\x1b[m"
    .balign 4

.late_rodata
glabel D_8013903C
    .float 32760

glabel D_80139040
    .float -32760

.text
glabel func_800430A0
/* ABA240 800430A0 27BDFEF0 */  addiu $sp, $sp, -0x110
/* ABA244 800430A4 AFBF002C */  sw    $ra, 0x2c($sp)
/* ABA248 800430A8 AFA40110 */  sw    $a0, 0x110($sp)
/* ABA24C 800430AC AFA50114 */  sw    $a1, 0x114($sp)
/* ABA250 800430B0 AFA60118 */  sw    $a2, 0x118($sp)
/* ABA254 800430B4 0C00FA4D */  jal   func_8003E934
/* ABA258 800430B8 00A02025 */   move  $a0, $a1
/* ABA25C 800430BC 10400074 */  beqz  $v0, .L80043290
/* ABA260 800430C0 8FAF0114 */   lw    $t7, 0x114($sp)
/* ABA264 800430C4 000FC080 */  sll   $t8, $t7, 2
/* ABA268 800430C8 030FC023 */  subu  $t8, $t8, $t7
/* ABA26C 800430CC 8FAE0110 */  lw    $t6, 0x110($sp)
/* ABA270 800430D0 0018C0C0 */  sll   $t8, $t8, 3
/* ABA274 800430D4 030FC021 */  addu  $t8, $t8, $t7
/* ABA278 800430D8 0018C080 */  sll   $t8, $t8, 2
/* ABA27C 800430DC 01D81821 */  addu  $v1, $t6, $t8
/* ABA280 800430E0 84790074 */  lh    $t9, 0x74($v1)
/* ABA284 800430E4 8C650068 */  lw    $a1, 0x68($v1)
/* ABA288 800430E8 8C66006C */  lw    $a2, 0x6c($v1)
/* ABA28C 800430EC 8C670070 */  lw    $a3, 0x70($v1)
/* ABA290 800430F0 AFB90010 */  sw    $t9, 0x10($sp)
/* ABA294 800430F4 84680076 */  lh    $t0, 0x76($v1)
/* ABA298 800430F8 27A400D0 */  addiu $a0, $sp, 0xd0
/* ABA29C 800430FC AFA80014 */  sw    $t0, 0x14($sp)
/* ABA2A0 80043100 84690078 */  lh    $t1, 0x78($v1)
/* ABA2A4 80043104 AFA90018 */  sw    $t1, 0x18($sp)
/* ABA2A8 80043108 C464007C */  lwc1  $f4, 0x7c($v1)
/* ABA2AC 8004310C E7A4001C */  swc1  $f4, 0x1c($sp)
/* ABA2B0 80043110 C4660080 */  lwc1  $f6, 0x80($v1)
/* ABA2B4 80043114 E7A60020 */  swc1  $f6, 0x20($sp)
/* ABA2B8 80043118 C4680084 */  lwc1  $f8, 0x84($v1)
/* ABA2BC 8004311C AFA30034 */  sw    $v1, 0x34($sp)
/* ABA2C0 80043120 0C029EC1 */  jal   func_800A7B04
/* ABA2C4 80043124 E7A80024 */   swc1  $f8, 0x24($sp)
/* ABA2C8 80043128 27A400D0 */  addiu $a0, $sp, 0xd0
/* ABA2CC 8004312C 0C029CF8 */  jal   func_800A73E0
/* ABA2D0 80043130 27A50090 */   addiu $a1, $sp, 0x90
/* ABA2D4 80043134 24010002 */  li    $at, 2
/* ABA2D8 80043138 10410055 */  beq   $v0, $at, .L80043290
/* ABA2DC 8004313C 8FA30034 */   lw    $v1, 0x34($sp)
/* ABA2E0 80043140 846A0094 */  lh    $t2, 0x94($v1)
/* ABA2E4 80043144 8C650088 */  lw    $a1, 0x88($v1)
/* ABA2E8 80043148 8C66008C */  lw    $a2, 0x8c($v1)
/* ABA2EC 8004314C 8C670090 */  lw    $a3, 0x90($v1)
/* ABA2F0 80043150 AFAA0010 */  sw    $t2, 0x10($sp)
/* ABA2F4 80043154 846B0096 */  lh    $t3, 0x96($v1)
/* ABA2F8 80043158 27A40050 */  addiu $a0, $sp, 0x50
/* ABA2FC 8004315C AFAB0014 */  sw    $t3, 0x14($sp)
/* ABA300 80043160 846C0098 */  lh    $t4, 0x98($v1)
/* ABA304 80043164 AFAC0018 */  sw    $t4, 0x18($sp)
/* ABA308 80043168 C46A009C */  lwc1  $f10, 0x9c($v1)
/* ABA30C 8004316C E7AA001C */  swc1  $f10, 0x1c($sp)
/* ABA310 80043170 C47000A0 */  lwc1  $f16, 0xa0($v1)
/* ABA314 80043174 E7B00020 */  swc1  $f16, 0x20($sp)
/* ABA318 80043178 C47200A4 */  lwc1  $f18, 0xa4($v1)
/* ABA31C 8004317C 0C029EC1 */  jal   func_800A7B04
/* ABA320 80043180 E7B20024 */   swc1  $f18, 0x24($sp)
/* ABA324 80043184 8FA50118 */  lw    $a1, 0x118($sp)
/* ABA328 80043188 27A40090 */  addiu $a0, $sp, 0x90
/* ABA32C 8004318C 27A60038 */  addiu $a2, $sp, 0x38
/* ABA330 80043190 24A50024 */  addiu $a1, $a1, 0x24
/* ABA334 80043194 0C029BBD */  jal   func_800A6EF4
/* ABA338 80043198 AFA50034 */   sw    $a1, 0x34($sp)
/* ABA33C 8004319C 27A40050 */  addiu $a0, $sp, 0x50
/* ABA340 800431A0 27A50038 */  addiu $a1, $sp, 0x38
/* ABA344 800431A4 0C029BBD */  jal   func_800A6EF4
/* ABA348 800431A8 27A60044 */   addiu $a2, $sp, 0x44
/* ABA34C 800431AC 27AF0044 */  addiu $t7, $sp, 0x44
/* ABA350 800431B0 8DF80000 */  lw    $t8, ($t7)
/* ABA354 800431B4 8FAD0034 */  lw    $t5, 0x34($sp)
/* ABA358 800431B8 3C018014 */  lui   $at, %hi(D_8013903C)
/* ABA35C 800431BC C420903C */  lwc1  $f0, %lo(D_8013903C)($at)
/* ABA360 800431C0 ADB80000 */  sw    $t8, ($t5)
/* ABA364 800431C4 8DEE0004 */  lw    $t6, 4($t7)
/* ABA368 800431C8 3C018014 */  lui   $at, %hi(D_80139040)
/* ABA36C 800431CC 3C048014 */  lui   $a0, %hi(D_80138FD0) # $a0, 0x8014
/* ABA370 800431D0 ADAE0004 */  sw    $t6, 4($t5)
/* ABA374 800431D4 8DF80008 */  lw    $t8, 8($t7)
/* ABA378 800431D8 ADB80008 */  sw    $t8, 8($t5)
/* ABA37C 800431DC C7A40044 */  lwc1  $f4, 0x44($sp)
/* ABA380 800431E0 4604003E */  c.le.s $f0, $f4
/* ABA384 800431E4 00000000 */  nop   
/* ABA388 800431E8 45010017 */  bc1t  .L80043248
/* ABA38C 800431EC 00000000 */   nop   
/* ABA390 800431F0 C4229040 */  lwc1  $f2, %lo(D_80139040)($at)
/* ABA394 800431F4 C7AC0048 */  lwc1  $f12, 0x48($sp)
/* ABA398 800431F8 4602203E */  c.le.s $f4, $f2
/* ABA39C 800431FC 00000000 */  nop   
/* ABA3A0 80043200 45010011 */  bc1t  .L80043248
/* ABA3A4 80043204 00000000 */   nop   
/* ABA3A8 80043208 460C003E */  c.le.s $f0, $f12
/* ABA3AC 8004320C 00000000 */  nop   
/* ABA3B0 80043210 4501000D */  bc1t  .L80043248
/* ABA3B4 80043214 00000000 */   nop   
/* ABA3B8 80043218 4602603E */  c.le.s $f12, $f2
/* ABA3BC 8004321C C7AE004C */  lwc1  $f14, 0x4c($sp)
/* ABA3C0 80043220 45010009 */  bc1t  .L80043248
/* ABA3C4 80043224 00000000 */   nop   
/* ABA3C8 80043228 460E003E */  c.le.s $f0, $f14
/* ABA3CC 8004322C 00000000 */  nop   
/* ABA3D0 80043230 45010005 */  bc1t  .L80043248
/* ABA3D4 80043234 00000000 */   nop   
/* ABA3D8 80043238 4602703E */  c.le.s $f14, $f2
/* ABA3DC 8004323C 00000000 */  nop   
/* ABA3E0 80043240 45020014 */  bc1fl .L80043294
/* ABA3E4 80043244 8FBF002C */   lw    $ra, 0x2c($sp)
.L80043248:
/* ABA3E8 80043248 0C00084C */  jal   osSyncPrintf
/* ABA3EC 8004324C 24848FD0 */   addiu $a0, %lo(D_80138FD0) # addiu $a0, $a0, -0x7030
/* ABA3F0 80043250 C7A60044 */  lwc1  $f6, 0x44($sp)
/* ABA3F4 80043254 C7AC0048 */  lwc1  $f12, 0x48($sp)
/* ABA3F8 80043258 C7AE004C */  lwc1  $f14, 0x4c($sp)
/* ABA3FC 8004325C 46003221 */  cvt.d.s $f8, $f6
/* ABA400 80043260 460062A1 */  cvt.d.s $f10, $f12
/* ABA404 80043264 46007421 */  cvt.d.s $f16, $f14
/* ABA408 80043268 44074000 */  mfc1  $a3, $f8
/* ABA40C 8004326C 44064800 */  mfc1  $a2, $f9
/* ABA410 80043270 3C048014 */  lui   $a0, %hi(D_80138FD8) # $a0, 0x8014
/* ABA414 80043274 24848FD8 */  addiu $a0, %lo(D_80138FD8) # addiu $a0, $a0, -0x7028
/* ABA418 80043278 F7B00018 */  sdc1  $f16, 0x18($sp)
/* ABA41C 8004327C 0C00084C */  jal   osSyncPrintf
/* ABA420 80043280 F7AA0010 */   sdc1  $f10, 0x10($sp)
/* ABA424 80043284 3C048014 */  lui   $a0, %hi(D_80139038) # $a0, 0x8014
/* ABA428 80043288 0C00084C */  jal   osSyncPrintf
/* ABA42C 8004328C 24849038 */   addiu $a0, %lo(D_80139038) # addiu $a0, $a0, -0x6fc8
.L80043290:
/* ABA430 80043290 8FBF002C */  lw    $ra, 0x2c($sp)
.L80043294:
/* ABA434 80043294 27BD0110 */  addiu $sp, $sp, 0x110
/* ABA438 80043298 03E00008 */  jr    $ra
/* ABA43C 8004329C 00000000 */   nop   

