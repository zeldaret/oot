.rdata
glabel D_80144870
    .asciz "\x1b[41;37mcamera control: error: never clear camera !!\n\x1b[m"
    .balign 4

glabel D_801448AC
    .asciz "camera control: \x1b[46m \x1b[47;34m clear sub camera [%d] \x1b[46m \x1b[m\n"
    .balign 4

glabel D_801448EC
    .asciz "\x1b[41;37mcamera control: error: camera No.%d already cleared\n\x1b[m"
    .balign 4

.text
glabel func_800C0384
/* B37524 800C0384 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B37528 800C0388 AFA50024 */  sw    $a1, 0x24($sp)
/* B3752C 800C038C 00052C00 */  sll   $a1, $a1, 0x10
/* B37530 800C0390 00052C03 */  sra   $a1, $a1, 0x10
/* B37534 800C0394 2401FFFF */  li    $at, -1
/* B37538 800C0398 AFBF0014 */  sw    $ra, 0x14($sp)
/* B3753C 800C039C 14A10003 */  bne   $a1, $at, .L800C03AC
/* B37540 800C03A0 00803825 */   move  $a3, $a0
/* B37544 800C03A4 10000003 */  b     .L800C03B4
/* B37548 800C03A8 848607A0 */   lh    $a2, 0x7a0($a0)
.L800C03AC:
/* B3754C 800C03AC 00053400 */  sll   $a2, $a1, 0x10
/* B37550 800C03B0 00063403 */  sra   $a2, $a2, 0x10
.L800C03B4:
/* B37554 800C03B4 14C00007 */  bnez  $a2, .L800C03D4
/* B37558 800C03B8 3C048014 */   lui   $a0, %hi(D_80144870) # $a0, 0x8014
/* B3755C 800C03BC 24844870 */  addiu $a0, %lo(D_80144870) # addiu $a0, $a0, 0x4870
/* B37560 800C03C0 A7A6001E */  sh    $a2, 0x1e($sp)
/* B37564 800C03C4 0C00084C */  jal   osSyncPrintf
/* B37568 800C03C8 AFA70020 */   sw    $a3, 0x20($sp)
/* B3756C 800C03CC 87A6001E */  lh    $a2, 0x1e($sp)
/* B37570 800C03D0 8FA70020 */  lw    $a3, 0x20($sp)
.L800C03D4:
/* B37574 800C03D4 00067080 */  sll   $t6, $a2, 2
/* B37578 800C03D8 00EE1021 */  addu  $v0, $a3, $t6
/* B3757C 800C03DC 8C440790 */  lw    $a0, 0x790($v0)
/* B37580 800C03E0 00C02825 */  move  $a1, $a2
/* B37584 800C03E4 1080000D */  beqz  $a0, .L800C041C
/* B37588 800C03E8 00000000 */   nop   
/* B3758C 800C03EC 24050100 */  li    $a1, 256
/* B37590 800C03F0 AFA20018 */  sw    $v0, 0x18($sp)
/* B37594 800C03F4 0C0160D5 */  jal   func_80058354
/* B37598 800C03F8 A7A6001E */   sh    $a2, 0x1e($sp)
/* B3759C 800C03FC 8FA20018 */  lw    $v0, 0x18($sp)
/* B375A0 800C0400 87A5001E */  lh    $a1, 0x1e($sp)
/* B375A4 800C0404 3C048014 */  lui   $a0, %hi(D_801448AC) # $a0, 0x8014
/* B375A8 800C0408 248448AC */  addiu $a0, %lo(D_801448AC) # addiu $a0, $a0, 0x48ac
/* B375AC 800C040C 0C00084C */  jal   osSyncPrintf
/* B375B0 800C0410 AC400790 */   sw    $zero, 0x790($v0)
/* B375B4 800C0414 10000005 */  b     .L800C042C
/* B375B8 800C0418 8FBF0014 */   lw    $ra, 0x14($sp)
.L800C041C:
/* B375BC 800C041C 3C048014 */  lui   $a0, %hi(D_801448EC) # $a0, 0x8014
/* B375C0 800C0420 0C00084C */  jal   osSyncPrintf
/* B375C4 800C0424 248448EC */   addiu $a0, %lo(D_801448EC) # addiu $a0, $a0, 0x48ec
/* B375C8 800C0428 8FBF0014 */  lw    $ra, 0x14($sp)
.L800C042C:
/* B375CC 800C042C 27BD0020 */  addiu $sp, $sp, 0x20
/* B375D0 800C0430 03E00008 */  jr    $ra
/* B375D4 800C0434 00000000 */   nop   

