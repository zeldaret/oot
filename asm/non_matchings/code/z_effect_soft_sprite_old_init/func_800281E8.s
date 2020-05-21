glabel func_800281E8
/* A9F388 800281E8 27BDFFB0 */  addiu $sp, $sp, -0x50
/* A9F38C 800281EC AFBF0014 */  sw    $ra, 0x14($sp)
/* A9F390 800281F0 AFA40050 */  sw    $a0, 0x50($sp)
/* A9F394 800281F4 AFA50054 */  sw    $a1, 0x54($sp)
/* A9F398 800281F8 AFA7005C */  sw    $a3, 0x5c($sp)
/* A9F39C 800281FC 00C02825 */  move  $a1, $a2
/* A9F3A0 80028200 0C01DF90 */  jal   Math_Vec3f_Copy
/* A9F3A4 80028204 27A40018 */   addiu $a0, $sp, 0x18
/* A9F3A8 80028208 27A40024 */  addiu $a0, $sp, 0x24
/* A9F3AC 8002820C 0C01DF90 */  jal   Math_Vec3f_Copy
/* A9F3B0 80028210 8FA5005C */   lw    $a1, 0x5c($sp)
/* A9F3B4 80028214 27A40030 */  addiu $a0, $sp, 0x30
/* A9F3B8 80028218 0C01DF90 */  jal   Math_Vec3f_Copy
/* A9F3BC 8002821C 8FA50060 */   lw    $a1, 0x60($sp)
/* A9F3C0 80028220 8FAF0064 */  lw    $t7, 0x64($sp)
/* A9F3C4 80028224 27AE003C */  addiu $t6, $sp, 0x3c
/* A9F3C8 80028228 27A80040 */  addiu $t0, $sp, 0x40
/* A9F3CC 8002822C 89F90000 */  lwl   $t9, ($t7)
/* A9F3D0 80028230 99F90003 */  lwr   $t9, 3($t7)
/* A9F3D4 80028234 00002825 */  move  $a1, $zero
/* A9F3D8 80028238 24060080 */  li    $a2, 128
/* A9F3DC 8002823C A9D90000 */  swl   $t9, ($t6)
/* A9F3E0 80028240 B9D90003 */  swr   $t9, 3($t6)
/* A9F3E4 80028244 8FA90068 */  lw    $t1, 0x68($sp)
/* A9F3E8 80028248 27A70018 */  addiu $a3, $sp, 0x18
/* A9F3EC 8002824C 892B0000 */  lwl   $t3, ($t1)
/* A9F3F0 80028250 992B0003 */  lwr   $t3, 3($t1)
/* A9F3F4 80028254 A90B0000 */  swl   $t3, ($t0)
/* A9F3F8 80028258 B90B0003 */  swr   $t3, 3($t0)
/* A9F3FC 8002825C 97AC0056 */  lhu   $t4, 0x56($sp)
/* A9F400 80028260 87AD006E */  lh    $t5, 0x6e($sp)
/* A9F404 80028264 87AE0072 */  lh    $t6, 0x72($sp)
/* A9F408 80028268 87AF0076 */  lh    $t7, 0x76($sp)
/* A9F40C 8002826C 93B8007B */  lbu   $t8, 0x7b($sp)
/* A9F410 80028270 8FA40050 */  lw    $a0, 0x50($sp)
/* A9F414 80028274 A7AC004A */  sh    $t4, 0x4a($sp)
/* A9F418 80028278 A7AD0044 */  sh    $t5, 0x44($sp)
/* A9F41C 8002827C A7AE0046 */  sh    $t6, 0x46($sp)
/* A9F420 80028280 A7AF0048 */  sh    $t7, 0x48($sp)
/* A9F424 80028284 0C009DE6 */  jal   EffectSs_Spawn
/* A9F428 80028288 A3B8004C */   sb    $t8, 0x4c($sp)
/* A9F42C 8002828C 8FBF0014 */  lw    $ra, 0x14($sp)
/* A9F430 80028290 27BD0050 */  addiu $sp, $sp, 0x50
/* A9F434 80028294 03E00008 */  jr    $ra
/* A9F438 80028298 00000000 */   nop   

