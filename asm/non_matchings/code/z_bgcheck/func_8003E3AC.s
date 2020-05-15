glabel func_8003E3AC
/* AB554C 8003E3AC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AB5550 8003E3B0 AFBF0014 */  sw    $ra, 0x14($sp)
/* AB5554 8003E3B4 AFA40018 */  sw    $a0, 0x18($sp)
/* AB5558 8003E3B8 AFA5001C */  sw    $a1, 0x1c($sp)
/* AB555C 8003E3BC AFA60020 */  sw    $a2, 0x20($sp)
/* AB5560 8003E3C0 AFA70024 */  sw    $a3, 0x24($sp)
/* AB5564 8003E3C4 A4A60000 */  sh    $a2, ($a1)
/* AB5568 8003E3C8 8FB8001C */  lw    $t8, 0x1c($sp)
/* AB556C 8003E3CC 2406FFFE */  li    $a2, -2
/* AB5570 8003E3D0 A7000002 */  sh    $zero, 2($t8)
/* AB5574 8003E3D4 8FA50020 */  lw    $a1, 0x20($sp)
/* AB5578 8003E3D8 8FA40018 */  lw    $a0, 0x18($sp)
/* AB557C 8003E3DC 00052880 */  sll   $a1, $a1, 2
/* AB5580 8003E3E0 0C030EDC */  jal   THA_AllocEndAlign
/* AB5584 8003E3E4 24840074 */   addiu $a0, $a0, 0x74
/* AB5588 8003E3E8 8FB9001C */  lw    $t9, 0x1c($sp)
/* AB558C 8003E3EC 3C048014 */  lui   $a0, %hi(D_80138A80) # $a0, 0x8014
/* AB5590 8003E3F0 14400006 */  bnez  $v0, .L8003E40C
/* AB5594 8003E3F4 AF220004 */   sw    $v0, 4($t9)
/* AB5598 8003E3F8 3C058014 */  lui   $a1, %hi(D_80138AA4) # $a1, 0x8014
/* AB559C 8003E3FC 24A58AA4 */  addiu $a1, %lo(D_80138AA4) # addiu $a1, $a1, -0x755c
/* AB55A0 8003E400 24848A80 */  addiu $a0, %lo(D_80138A80) # addiu $a0, $a0, -0x7580
/* AB55A4 8003E404 0C0007FC */  jal   __assert
/* AB55A8 8003E408 24061757 */   li    $a2, 5975
.L8003E40C:
/* AB55AC 8003E40C 3C068014 */  lui   $a2, %hi(D_80138AB4) # $a2, 0x8014
/* AB55B0 8003E410 24C68AB4 */  addiu $a2, %lo(D_80138AB4) # addiu $a2, $a2, -0x754c
/* AB55B4 8003E414 8FA40018 */  lw    $a0, 0x18($sp)
/* AB55B8 8003E418 8FA50024 */  lw    $a1, 0x24($sp)
/* AB55BC 8003E41C 0C031521 */  jal   GameState_AllocEnd
/* AB55C0 8003E420 2407175B */   li    $a3, 5979
/* AB55C4 8003E424 8FA8001C */  lw    $t0, 0x1c($sp)
/* AB55C8 8003E428 3C048014 */  lui   $a0, %hi(D_80138AC4) # $a0, 0x8014
/* AB55CC 8003E42C 14400006 */  bnez  $v0, .L8003E448
/* AB55D0 8003E430 AD020008 */   sw    $v0, 8($t0)
/* AB55D4 8003E434 3C058014 */  lui   $a1, %hi(D_80138AE0) # $a1, 0x8014
/* AB55D8 8003E438 24A58AE0 */  addiu $a1, %lo(D_80138AE0) # addiu $a1, $a1, -0x7520
/* AB55DC 8003E43C 24848AC4 */  addiu $a0, %lo(D_80138AC4) # addiu $a0, $a0, -0x753c
/* AB55E0 8003E440 0C0007FC */  jal   __assert
/* AB55E4 8003E444 2406175D */   li    $a2, 5981
.L8003E448:
/* AB55E8 8003E448 8FBF0014 */  lw    $ra, 0x14($sp)
/* AB55EC 8003E44C 27BD0018 */  addiu $sp, $sp, 0x18
/* AB55F0 8003E450 03E00008 */  jr    $ra
/* AB55F4 8003E454 00000000 */   nop

/* AB55F8 8003E458 27BDFFE0 */  addiu $sp, $sp, -0x20
/* AB55FC 8003E45C AFBF0014 */  sw    $ra, 0x14($sp)
/* AB5600 8003E460 94820002 */  lhu   $v0, 2($a0)
/* AB5604 8003E464 94850000 */  lhu   $a1, ($a0)
/* AB5608 8003E468 8C8E0004 */  lw    $t6, 4($a0)
/* AB560C 8003E46C 24580001 */  addiu $t8, $v0, 1
/* AB5610 8003E470 3303FFFF */  andi  $v1, $t8, 0xffff
/* AB5614 8003E474 00027880 */  sll   $t7, $v0, 2
/* AB5618 8003E478 0065082A */  slt   $at, $v1, $a1
/* AB561C 8003E47C 00803825 */  move  $a3, $a0
/* AB5620 8003E480 A4980002 */  sh    $t8, 2($a0)
/* AB5624 8003E484 1420000D */  bnez  $at, .L8003E4BC
/* AB5628 8003E488 01CF4021 */   addu  $t0, $t6, $t7
/* AB562C 8003E48C 3C048014 */  lui   $a0, %hi(D_80138AF0) # $a0, 0x8014
/* AB5630 8003E490 3C058014 */  lui   $a1, %hi(D_80138B30) # $a1, 0x8014
/* AB5634 8003E494 24A58B30 */  addiu $a1, %lo(D_80138B30) # addiu $a1, $a1, -0x74d0
/* AB5638 8003E498 24848AF0 */  addiu $a0, %lo(D_80138AF0) # addiu $a0, $a0, -0x7510
/* AB563C 8003E49C 2406176E */  li    $a2, 5998
/* AB5640 8003E4A0 AFA70020 */  sw    $a3, 0x20($sp)
/* AB5644 8003E4A4 0C0007FC */  jal   __assert
/* AB5648 8003E4A8 AFA8001C */   sw    $t0, 0x1c($sp)
/* AB564C 8003E4AC 8FA70020 */  lw    $a3, 0x20($sp)
/* AB5650 8003E4B0 8FA8001C */  lw    $t0, 0x1c($sp)
/* AB5654 8003E4B4 94E30002 */  lhu   $v1, 2($a3)
/* AB5658 8003E4B8 94E50000 */  lhu   $a1, ($a3)
.L8003E4BC:
/* AB565C 8003E4BC 0065082A */  slt   $at, $v1, $a1
/* AB5660 8003E4C0 14200003 */  bnez  $at, .L8003E4D0
/* AB5664 8003E4C4 8FBF0014 */   lw    $ra, 0x14($sp)
/* AB5668 8003E4C8 10000002 */  b     .L8003E4D4
/* AB566C 8003E4CC 00001025 */   move  $v0, $zero
.L8003E4D0:
/* AB5670 8003E4D0 01001025 */  move  $v0, $t0
.L8003E4D4:
/* AB5674 8003E4D4 03E00008 */  jr    $ra
/* AB5678 8003E4D8 27BD0020 */   addiu $sp, $sp, 0x20

