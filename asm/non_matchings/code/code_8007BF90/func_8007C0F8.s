.late_rodata
glabel D_8013CB80
    .float 0.01

.text
glabel func_8007C0F8
/* AF3298 8007C0F8 27BDFFC8 */  addiu $sp, $sp, -0x38
/* AF329C 8007C0FC AFBF0014 */  sw    $ra, 0x14($sp)
/* AF32A0 8007C100 AFA40038 */  sw    $a0, 0x38($sp)
/* AF32A4 8007C104 C4A60000 */  lwc1  $f6, ($a1)
/* AF32A8 8007C108 C4C40000 */  lwc1  $f4, ($a2)
/* AF32AC 8007C10C C4AA0004 */  lwc1  $f10, 4($a1)
/* AF32B0 8007C110 C4C80004 */  lwc1  $f8, 4($a2)
/* AF32B4 8007C114 46062081 */  sub.s $f2, $f4, $f6
/* AF32B8 8007C118 C4A60008 */  lwc1  $f6, 8($a1)
/* AF32BC 8007C11C C4C40008 */  lwc1  $f4, 8($a2)
/* AF32C0 8007C120 460A4401 */  sub.s $f16, $f8, $f10
/* AF32C4 8007C124 46021202 */  mul.s $f8, $f2, $f2
/* AF32C8 8007C128 3C018014 */  lui   $at, %hi(D_8013CB80)
/* AF32CC 8007C12C 46062481 */  sub.s $f18, $f4, $f6
/* AF32D0 8007C130 46108282 */  mul.s $f10, $f16, $f16
/* AF32D4 8007C134 C42ECB80 */  lwc1  $f14, %lo(D_8013CB80)($at)
/* AF32D8 8007C138 E7B00030 */  swc1  $f16, 0x30($sp)
/* AF32DC 8007C13C 46129182 */  mul.s $f6, $f18, $f18
/* AF32E0 8007C140 E7B20034 */  swc1  $f18, 0x34($sp)
/* AF32E4 8007C144 E7A2002C */  swc1  $f2, 0x2c($sp)
/* AF32E8 8007C148 460A4100 */  add.s $f4, $f8, $f10
/* AF32EC 8007C14C 46062000 */  add.s $f0, $f4, $f6
/* AF32F0 8007C150 0C01F016 */  jal   func_8007C058
/* AF32F4 8007C154 46000304 */   sqrt.s $f12, $f0
/* AF32F8 8007C158 C7A2002C */  lwc1  $f2, 0x2c($sp)
/* AF32FC 8007C15C C7B00030 */  lwc1  $f16, 0x30($sp)
/* AF3300 8007C160 C7B20034 */  lwc1  $f18, 0x34($sp)
/* AF3304 8007C164 46001203 */  div.s $f8, $f2, $f0
/* AF3308 8007C168 27AE0020 */  addiu $t6, $sp, 0x20
/* AF330C 8007C16C 8FA20038 */  lw    $v0, 0x38($sp)
/* AF3310 8007C170 46008283 */  div.s $f10, $f16, $f0
/* AF3314 8007C174 E7A80020 */  swc1  $f8, 0x20($sp)
/* AF3318 8007C178 46009103 */  div.s $f4, $f18, $f0
/* AF331C 8007C17C E7AA0024 */  swc1  $f10, 0x24($sp)
/* AF3320 8007C180 E7A40028 */  swc1  $f4, 0x28($sp)
/* AF3324 8007C184 8DD80000 */  lw    $t8, ($t6)
/* AF3328 8007C188 AC580000 */  sw    $t8, ($v0)
/* AF332C 8007C18C 8DCF0004 */  lw    $t7, 4($t6)
/* AF3330 8007C190 AC4F0004 */  sw    $t7, 4($v0)
/* AF3334 8007C194 8DD80008 */  lw    $t8, 8($t6)
/* AF3338 8007C198 AC580008 */  sw    $t8, 8($v0)
/* AF333C 8007C19C 8FBF0014 */  lw    $ra, 0x14($sp)
/* AF3340 8007C1A0 27BD0038 */  addiu $sp, $sp, 0x38
/* AF3344 8007C1A4 03E00008 */  jr    $ra
/* AF3348 8007C1A8 00000000 */   nop   

