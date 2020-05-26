.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

.align 4

/* B7B2F0 80104150 00000000 */  nop   
/* B7B2F4 80104154 00000000 */  nop   
/* B7B2F8 80104158 00000000 */  nop   
/* B7B2FC 8010415C 00000000 */  nop   
glabel guNormalize
/* B7B300 80104160 C4840000 */  lwc1  $f4, ($a0)
/* B7B304 80104164 C4A60000 */  lwc1  $f6, ($a1)
/* B7B308 80104168 C4C80000 */  lwc1  $f8, ($a2)
/* B7B30C 8010416C 46042282 */  mul.s $f10, $f4, $f4
/* B7B310 80104170 3C083F80 */  li    $t0, 0x3F800000 # 0.000000
/* B7B314 80104174 46063402 */  mul.s $f16, $f6, $f6
/* B7B318 80104178 46105480 */  add.s $f18, $f10, $f16
/* B7B31C 8010417C 46084402 */  mul.s $f16, $f8, $f8
/* B7B320 80104180 46128280 */  add.s $f10, $f16, $f18
/* B7B324 80104184 44889000 */  mtc1  $t0, $f18
/* B7B328 80104188 46005404 */  sqrt.s $f16, $f10
/* B7B32C 8010418C 46109283 */  div.s $f10, $f18, $f16
/* B7B330 80104190 460A2402 */  mul.s $f16, $f4, $f10
/* B7B334 80104194 00000000 */  nop   
/* B7B338 80104198 460A3482 */  mul.s $f18, $f6, $f10
/* B7B33C 8010419C 00000000 */  nop   
/* B7B340 801041A0 460A4102 */  mul.s $f4, $f8, $f10
/* B7B344 801041A4 E4900000 */  swc1  $f16, ($a0)
/* B7B348 801041A8 E4B20000 */  swc1  $f18, ($a1)
/* B7B34C 801041AC 03E00008 */  jr    $ra
/* B7B350 801041B0 E4C40000 */   swc1  $f4, ($a2)
