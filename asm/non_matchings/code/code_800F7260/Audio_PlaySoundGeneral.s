glabel Audio_PlaySoundGeneral
/* B6E52C 800F738C 27BDFFF0 */  addiu $sp, $sp, -0x10
/* B6E530 800F7390 AFA40010 */  sw    $a0, 0x10($sp)
/* B6E534 800F7394 3084FFFF */  andi  $a0, $a0, 0xffff
/* B6E538 800F7398 00047303 */  sra   $t6, $a0, 0xc
/* B6E53C 800F739C 31CF00FF */  andi  $t7, $t6, 0xff
/* B6E540 800F73A0 3C188017 */  lui   $t8, %hi(D_8016E264)
/* B6E544 800F73A4 030FC021 */  addu  $t8, $t8, $t7
/* B6E548 800F73A8 9318E264 */  lbu   $t8, %lo(D_8016E264)($t8)
/* B6E54C 800F73AC AFB00004 */  sw    $s0, 4($sp)
/* B6E550 800F73B0 AFA60018 */  sw    $a2, 0x18($sp)
/* B6E554 800F73B4 30C600FF */  andi  $a2, $a2, 0xff
/* B6E558 800F73B8 00A08025 */  move  $s0, $a1
/* B6E55C 800F73BC AFB2000C */  sw    $s2, 0xc($sp)
/* B6E560 800F73C0 17000042 */  bnez  $t8, .L800F74CC
/* B6E564 800F73C4 AFB10008 */   sw    $s1, 8($sp)
/* B6E568 800F73C8 3C0B8013 */  lui   $t3, %hi(D_801333A0) # $t3, 0x8013
/* B6E56C 800F73CC 256B33A0 */  addiu $t3, %lo(D_801333A0) # addiu $t3, $t3, 0x33a0
/* B6E570 800F73D0 91790000 */  lbu   $t9, ($t3)
/* B6E574 800F73D4 240C0018 */  li    $t4, 24
/* B6E578 800F73D8 3C0F8013 */  lui   $t7, %hi(D_801333F4) # $t7, 0x8013
/* B6E57C 800F73DC 032C0019 */  multu $t9, $t4
/* B6E580 800F73E0 91EF33F4 */  lbu   $t7, %lo(D_801333F4)($t7)
/* B6E584 800F73E4 3C0A8017 */  lui   $t2, %hi(D_8016C9A0) # $t2, 0x8017
/* B6E588 800F73E8 254AC9A0 */  addiu $t2, %lo(D_8016C9A0) # addiu $t2, $t2, -0x3660
/* B6E58C 800F73EC 3C128017 */  lui   $s2, %hi(D_8016E2F8) # $s2, 0x8017
/* B6E590 800F73F0 3C118017 */  lui   $s1, %hi(D_8016E310) # $s1, 0x8017
/* B6E594 800F73F4 3C0D8017 */  lui   $t5, %hi(D_8016E2E0) # $t5, 0x8017
/* B6E598 800F73F8 25ADE2E0 */  addiu $t5, %lo(D_8016E2E0) # addiu $t5, $t5, -0x1d20
/* B6E59C 800F73FC 2631E310 */  addiu $s1, %lo(D_8016E310) # addiu $s1, $s1, -0x1cf0
/* B6E5A0 800F7400 2652E2F8 */  addiu $s2, %lo(D_8016E2F8) # addiu $s2, $s2, -0x1d08
/* B6E5A4 800F7404 00007012 */  mflo  $t6
/* B6E5A8 800F7408 014E1021 */  addu  $v0, $t2, $t6
/* B6E5AC 800F740C 15E00024 */  bnez  $t7, .L800F74A0
/* B6E5B0 800F7410 00001825 */   move  $v1, $zero
/* B6E5B4 800F7414 8FA90024 */  lw    $t1, 0x24($sp)
/* B6E5B8 800F7418 8FA80020 */  lw    $t0, 0x20($sp)
/* B6E5BC 800F741C 00032840 */  sll   $a1, $v1, 1
.L800F7420:
/* B6E5C0 800F7420 01A5C021 */  addu  $t8, $t5, $a1
/* B6E5C4 800F7424 97190000 */  lhu   $t9, ($t8)
/* B6E5C8 800F7428 02237021 */  addu  $t6, $s1, $v1
/* B6E5CC 800F742C 54990018 */  bnel  $a0, $t9, .L800F7490
/* B6E5D0 800F7430 24630001 */   addiu $v1, $v1, 1
/* B6E5D4 800F7434 91CF0000 */  lbu   $t7, ($t6)
/* B6E5D8 800F7438 0245C021 */  addu  $t8, $s2, $a1
/* B6E5DC 800F743C 0245C821 */  addu  $t9, $s2, $a1
/* B6E5E0 800F7440 15E00003 */  bnez  $t7, .L800F7450
/* B6E5E4 800F7444 2403000A */   li    $v1, 10
/* B6E5E8 800F7448 10000010 */  b     .L800F748C
/* B6E5EC 800F744C 97040000 */   lhu   $a0, ($t8)
.L800F7450:
/* B6E5F0 800F7450 972E0000 */  lhu   $t6, ($t9)
/* B6E5F4 800F7454 AC500004 */  sw    $s0, 4($v0)
/* B6E5F8 800F7458 A0460008 */  sb    $a2, 8($v0)
/* B6E5FC 800F745C AC47000C */  sw    $a3, 0xc($v0)
/* B6E600 800F7460 AC480010 */  sw    $t0, 0x10($v0)
/* B6E604 800F7464 AC490014 */  sw    $t1, 0x14($v0)
/* B6E608 800F7468 A44E0000 */  sh    $t6, ($v0)
/* B6E60C 800F746C 916F0000 */  lbu   $t7, ($t3)
/* B6E610 800F7470 25F80001 */  addiu $t8, $t7, 1
/* B6E614 800F7474 331900FF */  andi  $t9, $t8, 0xff
/* B6E618 800F7478 032C0019 */  multu $t9, $t4
/* B6E61C 800F747C A1780000 */  sb    $t8, ($t3)
/* B6E620 800F7480 00007012 */  mflo  $t6
/* B6E624 800F7484 014E1021 */  addu  $v0, $t2, $t6
/* B6E628 800F7488 00000000 */  nop   
.L800F748C:
/* B6E62C 800F748C 24630001 */  addiu $v1, $v1, 1
.L800F7490:
/* B6E630 800F7490 306300FF */  andi  $v1, $v1, 0xff
/* B6E634 800F7494 2861000A */  slti  $at, $v1, 0xa
/* B6E638 800F7498 5420FFE1 */  bnezl $at, .L800F7420
/* B6E63C 800F749C 00032840 */   sll   $a1, $v1, 1
.L800F74A0:
/* B6E640 800F74A0 8FA80020 */  lw    $t0, 0x20($sp)
/* B6E644 800F74A4 8FA90024 */  lw    $t1, 0x24($sp)
/* B6E648 800F74A8 A4440000 */  sh    $a0, ($v0)
/* B6E64C 800F74AC AC500004 */  sw    $s0, 4($v0)
/* B6E650 800F74B0 A0460008 */  sb    $a2, 8($v0)
/* B6E654 800F74B4 AC47000C */  sw    $a3, 0xc($v0)
/* B6E658 800F74B8 AC480010 */  sw    $t0, 0x10($v0)
/* B6E65C 800F74BC AC490014 */  sw    $t1, 0x14($v0)
/* B6E660 800F74C0 916F0000 */  lbu   $t7, ($t3)
/* B6E664 800F74C4 25F80001 */  addiu $t8, $t7, 1
/* B6E668 800F74C8 A1780000 */  sb    $t8, ($t3)
.L800F74CC:
/* B6E66C 800F74CC 8FB00004 */  lw    $s0, 4($sp)
/* B6E670 800F74D0 8FB10008 */  lw    $s1, 8($sp)
/* B6E674 800F74D4 8FB2000C */  lw    $s2, 0xc($sp)
/* B6E678 800F74D8 03E00008 */  jr    $ra
/* B6E67C 800F74DC 27BD0010 */   addiu $sp, $sp, 0x10

