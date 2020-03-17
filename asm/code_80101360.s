.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

.align 4

glabel func_80101360
/* B78500 80101360 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B78504 80101364 AFBF0014 */  sw    $ra, 0x14($sp)
/* B78508 80101368 AFA40018 */  sw    $a0, 0x18($sp)
/* B7850C 8010136C AFA5001C */  sw    $a1, 0x1c($sp)
/* B78510 80101370 AFA60020 */  sw    $a2, 0x20($sp)
/* B78514 80101374 0C040ECC */  jal   func_80103B30
/* B78518 80101378 AFA70024 */   sw    $a3, 0x24($sp)
/* B7851C 8010137C 10400003 */  beqz  $v0, .L8010138C
/* B78520 80101380 8FAE001C */   lw    $t6, 0x1c($sp)
/* B78524 80101384 10000013 */  b     .L801013D4
/* B78528 80101388 2402FFFF */   li    $v0, -1
.L8010138C:
/* B7852C 8010138C 3C0FA404 */  lui   $t7, 0xa404
/* B78530 80101390 ADEE0000 */  sw    $t6, ($t7)
/* B78534 80101394 0C001378 */  jal   osVirtualToPhysical
/* B78538 80101398 8FA40020 */   lw    $a0, 0x20($sp)
/* B7853C 8010139C 3C18A404 */  lui   $t8, %hi(D_A4040004) # $t8, 0xa404
/* B78540 801013A0 AF020004 */  sw    $v0, %lo(D_A4040004)($t8)
/* B78544 801013A4 8FB90018 */  lw    $t9, 0x18($sp)
/* B78548 801013A8 8FAB0024 */  lw    $t3, 0x24($sp)
/* B7854C 801013AC 00001025 */  move  $v0, $zero
/* B78550 801013B0 17200006 */  bnez  $t9, .L801013CC
/* B78554 801013B4 256CFFFF */   addiu $t4, $t3, -1
/* B78558 801013B8 8FA80024 */  lw    $t0, 0x24($sp)
/* B7855C 801013BC 3C0AA404 */  lui   $t2, %hi(D_A404000C) # $t2, 0xa404
/* B78560 801013C0 2509FFFF */  addiu $t1, $t0, -1
/* B78564 801013C4 10000003 */  b     .L801013D4
/* B78568 801013C8 AD49000C */   sw    $t1, %lo(D_A404000C)($t2)
.L801013CC:
/* B7856C 801013CC 3C0DA404 */  lui   $t5, %hi(D_A4040008) # $t5, 0xa404
/* B78570 801013D0 ADAC0008 */  sw    $t4, %lo(D_A4040008)($t5)
.L801013D4:
/* B78574 801013D4 8FBF0014 */  lw    $ra, 0x14($sp)
/* B78578 801013D8 27BD0018 */  addiu $sp, $sp, 0x18
/* B7857C 801013DC 03E00008 */  jr    $ra
/* B78580 801013E0 00000000 */   nop   
