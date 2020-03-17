.rdata
glabel D_801447E4
    .asciz "\x1b[41;37mcamera control: error: fulled sub camera system area\n\x1b[m"
    .balign 4

glabel D_80144828
    .asciz "camera control: \x1b[46m \x1b[47;34m create new sub camera [%d] \x1b[46m \x1b[m\n"
    .balign 4

.text
glabel func_800C0230
/* B373D0 800C0230 27BDFFD8 */  addiu $sp, $sp, -0x28
/* B373D4 800C0234 AFB00018 */  sw    $s0, 0x18($sp)
/* B373D8 800C0238 AFBF001C */  sw    $ra, 0x1c($sp)
/* B373DC 800C023C 00803825 */  move  $a3, $a0
/* B373E0 800C0240 24100001 */  li    $s0, 1
/* B373E4 800C0244 00107080 */  sll   $t6, $s0, 2
.L800C0248:
/* B373E8 800C0248 00EE7821 */  addu  $t7, $a3, $t6
/* B373EC 800C024C 8DF80790 */  lw    $t8, 0x790($t7)
/* B373F0 800C0250 53000008 */  beql  $t8, $zero, .L800C0274
/* B373F4 800C0254 24010004 */   li    $at, 4
/* B373F8 800C0258 26100001 */  addiu $s0, $s0, 1
/* B373FC 800C025C 00108400 */  sll   $s0, $s0, 0x10
/* B37400 800C0260 00108403 */  sra   $s0, $s0, 0x10
/* B37404 800C0264 2A010004 */  slti  $at, $s0, 4
/* B37408 800C0268 5420FFF7 */  bnezl $at, .L800C0248
/* B3740C 800C026C 00107080 */   sll   $t6, $s0, 2
/* B37410 800C0270 24010004 */  li    $at, 4
.L800C0274:
/* B37414 800C0274 16010006 */  bne   $s0, $at, .L800C0290
/* B37418 800C0278 3C048014 */   lui   $a0, %hi(D_80144828)
/* B3741C 800C027C 3C048014 */  lui   $a0, %hi(D_801447E4) # $a0, 0x8014
/* B37420 800C0280 0C00084C */  jal   osSyncPrintf
/* B37424 800C0284 248447E4 */   addiu $a0, %lo(D_801447E4) # addiu $a0, $a0, 0x47e4
/* B37428 800C0288 1000001B */  b     .L800C02F8
/* B3742C 800C028C 2402FFFF */   li    $v0, -1
.L800C0290:
/* B37430 800C0290 0010C880 */  sll   $t9, $s0, 2
/* B37434 800C0294 00F94021 */  addu  $t0, $a3, $t9
/* B37438 800C0298 AFA80020 */  sw    $t0, 0x20($sp)
/* B3743C 800C029C 24844828 */  addiu $a0, %lo(D_80144828)
/* B37440 800C02A0 02002825 */  move  $a1, $s0
/* B37444 800C02A4 0C00084C */  jal   osSyncPrintf
/* B37448 800C02A8 AFA70028 */   sw    $a3, 0x28($sp)
/* B3744C 800C02AC 00104880 */  sll   $t1, $s0, 2
/* B37450 800C02B0 01304823 */  subu  $t1, $t1, $s0
/* B37454 800C02B4 000948C0 */  sll   $t1, $t1, 3
/* B37458 800C02B8 01304823 */  subu  $t1, $t1, $s0
/* B3745C 800C02BC 8FA70028 */  lw    $a3, 0x28($sp)
/* B37460 800C02C0 00094880 */  sll   $t1, $t1, 2
/* B37464 800C02C4 01304823 */  subu  $t1, $t1, $s0
/* B37468 800C02C8 00094880 */  sll   $t1, $t1, 2
/* B3746C 800C02CC 8FAA0020 */  lw    $t2, 0x20($sp)
/* B37470 800C02D0 00E92021 */  addu  $a0, $a3, $t1
/* B37474 800C02D4 248401E0 */  addiu $a0, $a0, 0x1e0
/* B37478 800C02D8 24E500B8 */  addiu $a1, $a3, 0xb8
/* B3747C 800C02DC 24E607C0 */  addiu $a2, $a3, 0x7c0
/* B37480 800C02E0 0C015F1B */  jal   func_80057C6C
/* B37484 800C02E4 AD440790 */   sw    $a0, 0x790($t2)
/* B37488 800C02E8 8FAB0020 */  lw    $t3, 0x20($sp)
/* B3748C 800C02EC 02001025 */  move  $v0, $s0
/* B37490 800C02F0 8D6C0790 */  lw    $t4, 0x790($t3)
/* B37494 800C02F4 A5900164 */  sh    $s0, 0x164($t4)
.L800C02F8:
/* B37498 800C02F8 8FBF001C */  lw    $ra, 0x1c($sp)
/* B3749C 800C02FC 8FB00018 */  lw    $s0, 0x18($sp)
/* B374A0 800C0300 27BD0028 */  addiu $sp, $sp, 0x28
/* B374A4 800C0304 03E00008 */  jr    $ra
/* B374A8 800C0308 00000000 */   nop   

