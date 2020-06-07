.rdata
glabel D_80147D98
    .asciz "%s|"
    .balign 4

glabel D_80147D9C
    .asciz "\nGBL_c1(%s, %s, %s, %s)|"
    .balign 4

glabel D_80147DB8
    .asciz "\nGBL_c2(%s, %s, %s, %s)"
    .balign 4

.text
glabel UCodeDisas_ParseRenderMode
/* B4F2C4 800D8124 27BDFFC8 */  addiu $sp, $sp, -0x38
/* B4F2C8 800D8128 AFB40030 */  sw    $s4, 0x30($sp)
/* B4F2CC 800D812C AFB3002C */  sw    $s3, 0x2c($sp)
/* B4F2D0 800D8130 00809825 */  move  $s3, $a0
/* B4F2D4 800D8134 00A0A025 */  move  $s4, $a1
/* B4F2D8 800D8138 AFBF0034 */  sw    $ra, 0x34($sp)
/* B4F2DC 800D813C AFB20028 */  sw    $s2, 0x28($sp)
/* B4F2E0 800D8140 AFB10024 */  sw    $s1, 0x24($sp)
/* B4F2E4 800D8144 AFB00020 */  sw    $s0, 0x20($sp)
/* B4F2E8 800D8148 3C108013 */  lui   $s0, %hi(sUCodeDisasRenderModeFlags) # $s0, 0x8013
/* B4F2EC 800D814C 3C128014 */  lui   $s2, %hi(D_80147D98) # $s2, 0x8014
/* B4F2F0 800D8150 3C118013 */  lui   $s1, %hi(D_8012DDDC) # $s1, 0x8013
/* B4F2F4 800D8154 2631DDDC */  addiu $s1, %lo(D_8012DDDC) # addiu $s1, $s1, -0x2224
/* B4F2F8 800D8158 26527D98 */  addiu $s2, %lo(D_80147D98) # addiu $s2, $s2, 0x7d98
/* B4F2FC 800D815C 2610DD1C */  addiu $s0, %lo(sUCodeDisasRenderModeFlags) # addiu $s0, $s0, -0x22e4
/* B4F300 800D8160 8E6200BC */  lw    $v0, 0xbc($s3)
/* B4F304 800D8164 8E0E0008 */  lw    $t6, 8($s0)
.L800D8168:
/* B4F308 800D8168 8E180004 */  lw    $t8, 4($s0)
/* B4F30C 800D816C 028E7824 */  and   $t7, $s4, $t6
/* B4F310 800D8170 55F80007 */  bnel  $t7, $t8, .L800D8190
/* B4F314 800D8174 2610000C */   addiu $s0, $s0, 0xc
/* B4F318 800D8178 10400004 */  beqz  $v0, .L800D818C
/* B4F31C 800D817C 02402025 */   move  $a0, $s2
/* B4F320 800D8180 0C00084C */  jal   osSyncPrintf
/* B4F324 800D8184 8E050000 */   lw    $a1, ($s0)
/* B4F328 800D8188 8E6200BC */  lw    $v0, 0xbc($s3)
.L800D818C:
/* B4F32C 800D818C 2610000C */  addiu $s0, $s0, 0xc
.L800D8190:
/* B4F330 800D8190 5611FFF5 */  bnel  $s0, $s1, .L800D8168
/* B4F334 800D8194 8E0E0008 */   lw    $t6, 8($s0)
/* B4F338 800D8198 14400004 */  bnez  $v0, .L800D81AC
/* B4F33C 800D819C 3C108013 */   lui   $s0, %hi(D_8012DDDC)
/* B4F340 800D81A0 3C108013 */  lui   $s0, %hi(D_8012DDDC) # $s0, 0x8013
/* B4F344 800D81A4 1000001C */  b     .L800D8218
/* B4F348 800D81A8 2610DDDC */   addiu $s0, %lo(D_8012DDDC) # addiu $s0, $s0, -0x2224
.L800D81AC:
/* B4F34C 800D81AC 00141482 */  srl   $v0, $s4, 0x12
/* B4F350 800D81B0 30423333 */  andi  $v0, $v0, 0x3333
/* B4F354 800D81B4 0002CB03 */  sra   $t9, $v0, 0xc
/* B4F358 800D81B8 33280003 */  andi  $t0, $t9, 3
/* B4F35C 800D81BC 00084880 */  sll   $t1, $t0, 2
/* B4F360 800D81C0 2610DDDC */  addiu $s0, %lo(D_8012DDDC)
/* B4F364 800D81C4 02095021 */  addu  $t2, $s0, $t1
/* B4F368 800D81C8 00025A03 */  sra   $t3, $v0, 8
/* B4F36C 800D81CC 316C0003 */  andi  $t4, $t3, 3
/* B4F370 800D81D0 8D450000 */  lw    $a1, ($t2)
/* B4F374 800D81D4 30490003 */  andi  $t1, $v0, 3
/* B4F378 800D81D8 00027903 */  sra   $t7, $v0, 4
/* B4F37C 800D81DC 31F80003 */  andi  $t8, $t7, 3
/* B4F380 800D81E0 00095080 */  sll   $t2, $t1, 2
/* B4F384 800D81E4 000C6880 */  sll   $t5, $t4, 2
/* B4F388 800D81E8 020A5821 */  addu  $t3, $s0, $t2
/* B4F38C 800D81EC 0018C880 */  sll   $t9, $t8, 2
/* B4F390 800D81F0 8D6C0030 */  lw    $t4, 0x30($t3)
/* B4F394 800D81F4 02194021 */  addu  $t0, $s0, $t9
/* B4F398 800D81F8 020D7021 */  addu  $t6, $s0, $t5
/* B4F39C 800D81FC 8DC60010 */  lw    $a2, 0x10($t6)
/* B4F3A0 800D8200 8D070020 */  lw    $a3, 0x20($t0)
/* B4F3A4 800D8204 3C048014 */  lui   $a0, %hi(D_80147D9C) # $a0, 0x8014
/* B4F3A8 800D8208 24847D9C */  addiu $a0, %lo(D_80147D9C) # addiu $a0, $a0, 0x7d9c
/* B4F3AC 800D820C 0C00084C */  jal   osSyncPrintf
/* B4F3B0 800D8210 AFAC0010 */   sw    $t4, 0x10($sp)
/* B4F3B4 800D8214 8E6200BC */  lw    $v0, 0xbc($s3)
.L800D8218:
/* B4F3B8 800D8218 10400019 */  beqz  $v0, .L800D8280
/* B4F3BC 800D821C 3C048014 */   lui   $a0, %hi(D_80147DB8) # $a0, 0x8014
/* B4F3C0 800D8220 00141402 */  srl   $v0, $s4, 0x10
/* B4F3C4 800D8224 30423333 */  andi  $v0, $v0, 0x3333
/* B4F3C8 800D8228 00026B03 */  sra   $t5, $v0, 0xc
/* B4F3CC 800D822C 31AE0003 */  andi  $t6, $t5, 3
/* B4F3D0 800D8230 000E7880 */  sll   $t7, $t6, 2
/* B4F3D4 800D8234 020FC021 */  addu  $t8, $s0, $t7
/* B4F3D8 800D8238 0002CA03 */  sra   $t9, $v0, 8
/* B4F3DC 800D823C 33280003 */  andi  $t0, $t9, 3
/* B4F3E0 800D8240 8F050000 */  lw    $a1, ($t8)
/* B4F3E4 800D8244 304F0003 */  andi  $t7, $v0, 3
/* B4F3E8 800D8248 00025903 */  sra   $t3, $v0, 4
/* B4F3EC 800D824C 316C0003 */  andi  $t4, $t3, 3
/* B4F3F0 800D8250 000FC080 */  sll   $t8, $t7, 2
/* B4F3F4 800D8254 00084880 */  sll   $t1, $t0, 2
/* B4F3F8 800D8258 0218C821 */  addu  $t9, $s0, $t8
/* B4F3FC 800D825C 000C6880 */  sll   $t5, $t4, 2
/* B4F400 800D8260 8F280030 */  lw    $t0, 0x30($t9)
/* B4F404 800D8264 020D7021 */  addu  $t6, $s0, $t5
/* B4F408 800D8268 02095021 */  addu  $t2, $s0, $t1
/* B4F40C 800D826C 8D460010 */  lw    $a2, 0x10($t2)
/* B4F410 800D8270 8DC70020 */  lw    $a3, 0x20($t6)
/* B4F414 800D8274 24847DB8 */  addiu $a0, %lo(D_80147DB8) # addiu $a0, $a0, 0x7db8
/* B4F418 800D8278 0C00084C */  jal   osSyncPrintf
/* B4F41C 800D827C AFA80010 */   sw    $t0, 0x10($sp)
.L800D8280:
/* B4F420 800D8280 8FBF0034 */  lw    $ra, 0x34($sp)
/* B4F424 800D8284 8FB00020 */  lw    $s0, 0x20($sp)
/* B4F428 800D8288 8FB10024 */  lw    $s1, 0x24($sp)
/* B4F42C 800D828C 8FB20028 */  lw    $s2, 0x28($sp)
/* B4F430 800D8290 8FB3002C */  lw    $s3, 0x2c($sp)
/* B4F434 800D8294 8FB40030 */  lw    $s4, 0x30($sp)
/* B4F438 800D8298 03E00008 */  jr    $ra
/* B4F43C 800D829C 27BD0038 */   addiu $sp, $sp, 0x38