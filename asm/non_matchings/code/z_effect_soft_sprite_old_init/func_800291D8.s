glabel func_800291D8
/* AA0378 800291D8 27BDFFC0 */  addiu $sp, $sp, -0x40
/* AA037C 800291DC 3C0E8011 */  lui   $t6, %hi(D_801158F4) # $t6, 0x8011
/* AA0380 800291E0 3C0F8011 */  lui   $t7, %hi(D_801158F8) # $t7, 0x8011
/* AA0384 800291E4 8DCE58F4 */  lw    $t6, %lo(D_801158F4)($t6)
/* AA0388 800291E8 8DEF58F8 */  lw    $t7, %lo(D_801158F8)($t7)
/* AA038C 800291EC AFBF002C */  sw    $ra, 0x2c($sp)
/* AA0390 800291F0 AFA40040 */  sw    $a0, 0x40($sp)
/* AA0394 800291F4 AFA50044 */  sw    $a1, 0x44($sp)
/* AA0398 800291F8 AFA60048 */  sw    $a2, 0x48($sp)
/* AA039C 800291FC AFA7004C */  sw    $a3, 0x4c($sp)
/* AA03A0 80029200 AFAE003C */  sw    $t6, 0x3c($sp)
/* AA03A4 80029204 0C03F66B */  jal   Math_Rand_ZeroOne
/* AA03A8 80029208 AFAF0038 */   sw    $t7, 0x38($sp)
/* AA03AC 8002920C 3C0141A0 */  li    $at, 0x41A00000 # 0.000000
/* AA03B0 80029210 44812000 */  mtc1  $at, $f4
/* AA03B4 80029214 3C014120 */  li    $at, 0x41200000 # 0.000000
/* AA03B8 80029218 44814000 */  mtc1  $at, $f8
/* AA03BC 8002921C 46040182 */  mul.s $f6, $f0, $f4
/* AA03C0 80029220 93B9003C */  lbu   $t9, 0x3c($sp)
/* AA03C4 80029224 93A9003D */  lbu   $t1, 0x3d($sp)
/* AA03C8 80029228 93AB003E */  lbu   $t3, 0x3e($sp)
/* AA03CC 8002922C 93AD003F */  lbu   $t5, 0x3f($sp)
/* AA03D0 80029230 93AF0038 */  lbu   $t7, 0x38($sp)
/* AA03D4 80029234 8FA40040 */  lw    $a0, 0x40($sp)
/* AA03D8 80029238 46083281 */  sub.s $f10, $f6, $f8
/* AA03DC 8002923C 8FA50044 */  lw    $a1, 0x44($sp)
/* AA03E0 80029240 8FA60048 */  lw    $a2, 0x48($sp)
/* AA03E4 80029244 8FA7004C */  lw    $a3, 0x4c($sp)
/* AA03E8 80029248 4600540D */  trunc.w.s $f16, $f10
/* AA03EC 8002924C 44028000 */  mfc1  $v0, $f16
/* AA03F0 80029250 00000000 */  nop   
/* AA03F4 80029254 03224021 */  addu  $t0, $t9, $v0
/* AA03F8 80029258 93B90039 */  lbu   $t9, 0x39($sp)
/* AA03FC 8002925C 01225021 */  addu  $t2, $t1, $v0
/* AA0400 80029260 01626021 */  addu  $t4, $t3, $v0
/* AA0404 80029264 93A9003A */  lbu   $t1, 0x3a($sp)
/* AA0408 80029268 93AB003B */  lbu   $t3, 0x3b($sp)
/* AA040C 8002926C A3A8003C */  sb    $t0, 0x3c($sp)
/* AA0410 80029270 01A27021 */  addu  $t6, $t5, $v0
/* AA0414 80029274 01E2C021 */  addu  $t8, $t7, $v0
/* AA0418 80029278 A3B80038 */  sb    $t8, 0x38($sp)
/* AA041C 8002927C 03224021 */  addu  $t0, $t9, $v0
/* AA0420 80029280 87B9005A */  lh    $t9, 0x5a($sp)
/* AA0424 80029284 87B80056 */  lh    $t8, 0x56($sp)
/* AA0428 80029288 8FAD0050 */  lw    $t5, 0x50($sp)
/* AA042C 8002928C A3AA003D */  sb    $t2, 0x3d($sp)
/* AA0430 80029290 A3AC003E */  sb    $t4, 0x3e($sp)
/* AA0434 80029294 A3AE003F */  sb    $t6, 0x3f($sp)
/* AA0438 80029298 27AE003C */  addiu $t6, $sp, 0x3c
/* AA043C 8002929C 27AF0038 */  addiu $t7, $sp, 0x38
/* AA0440 800292A0 01225021 */  addu  $t2, $t1, $v0
/* AA0444 800292A4 01626021 */  addu  $t4, $t3, $v0
/* AA0448 800292A8 A3A80039 */  sb    $t0, 0x39($sp)
/* AA044C 800292AC A3AA003A */  sb    $t2, 0x3a($sp)
/* AA0450 800292B0 A3AC003B */  sb    $t4, 0x3b($sp)
/* AA0454 800292B4 AFAF0018 */  sw    $t7, 0x18($sp)
/* AA0458 800292B8 AFAE0014 */  sw    $t6, 0x14($sp)
/* AA045C 800292BC AFB90020 */  sw    $t9, 0x20($sp)
/* AA0460 800292C0 AFB8001C */  sw    $t8, 0x1c($sp)
/* AA0464 800292C4 0C00A418 */  jal   func_80029060
/* AA0468 800292C8 AFAD0010 */   sw    $t5, 0x10($sp)
/* AA046C 800292CC 8FBF002C */  lw    $ra, 0x2c($sp)
/* AA0470 800292D0 27BD0040 */  addiu $sp, $sp, 0x40
/* AA0474 800292D4 03E00008 */  jr    $ra
/* AA0478 800292D8 00000000 */   nop   

