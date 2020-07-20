glabel func_800E390C
/* B5AAAC 800E390C 3C088017 */  lui   $t0, %hi(gAudioContext) # $t0, 0x8017
/* B5AAB0 800E3910 2508F180 */  addiu $t0, %lo(gAudioContext) # addiu $t0, $t0, -0xe80
/* B5AAB4 800E3914 950E2840 */  lhu   $t6, 0x2840($t0)
/* B5AAB8 800E3918 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B5AABC 800E391C AFBF0014 */  sw    $ra, 0x14($sp)
/* B5AAC0 800E3920 008E082A */  slt   $at, $a0, $t6
/* B5AAC4 800E3924 AFA5001C */  sw    $a1, 0x1c($sp)
/* B5AAC8 800E3928 AFA60020 */  sw    $a2, 0x20($sp)
/* B5AACC 800E392C 14200004 */  bnez  $at, .L800E3940
/* B5AAD0 800E3930 00803825 */   move  $a3, $a0
/* B5AAD4 800E3934 A0C00000 */  sb    $zero, ($a2)
/* B5AAD8 800E3938 10000032 */  b     .L800E3A04
/* B5AADC 800E393C 2402FFFF */   li    $v0, -1
.L800E3940:
/* B5AAE0 800E3940 00002025 */  move  $a0, $zero
/* B5AAE4 800E3944 0C0389DA */  jal   func_800E2768
/* B5AAE8 800E3948 00E02825 */   move  $a1, $a3
/* B5AAEC 800E394C 00002025 */  move  $a0, $zero
/* B5AAF0 800E3950 0C0389FE */  jal   func_800E27F8
/* B5AAF4 800E3954 AFA20018 */   sw    $v0, 0x18($sp)
/* B5AAF8 800E3958 3C088017 */  lui   $t0, %hi(gAudioContext) # $t0, 0x8017
/* B5AAFC 800E395C 2508F180 */  addiu $t0, %lo(gAudioContext) # addiu $t0, $t0, -0xe80
/* B5AB00 800E3960 8D181D4C */  lw    $t8, 0x1d4c($t0)
/* B5AB04 800E3964 8FA70018 */  lw    $a3, 0x18($sp)
/* B5AB08 800E3968 24010003 */  li    $at, 3
/* B5AB0C 800E396C 0018C880 */  sll   $t9, $t8, 2
/* B5AB10 800E3970 0338C823 */  subu  $t9, $t9, $t8
/* B5AB14 800E3974 0019C8C0 */  sll   $t9, $t9, 3
/* B5AB18 800E3978 0338C821 */  addu  $t9, $t9, $t8
/* B5AB1C 800E397C 0019C880 */  sll   $t9, $t9, 2
/* B5AB20 800E3980 01191821 */  addu  $v1, $t0, $t9
/* B5AB24 800E3984 8C6A1D64 */  lw    $t2, 0x1d64($v1)
/* B5AB28 800E3988 24631D50 */  addiu $v1, $v1, 0x1d50
/* B5AB2C 800E398C 24060001 */  li    $a2, 1
/* B5AB30 800E3990 15410002 */  bne   $t2, $at, .L800E399C
/* B5AB34 800E3994 00076100 */   sll   $t4, $a3, 4
/* B5AB38 800E3998 AC600014 */  sw    $zero, 0x14($v1)
.L800E399C:
/* B5AB3C 800E399C 8FA9001C */  lw    $t1, 0x1c($sp)
/* B5AB40 800E39A0 AC600024 */  sw    $zero, 0x24($v1)
/* B5AB44 800E39A4 8FAB0020 */  lw    $t3, 0x20($sp)
/* B5AB48 800E39A8 004C2821 */  addu  $a1, $v0, $t4
/* B5AB4C 800E39AC 2401FFF0 */  li    $at, -16
/* B5AB50 800E39B0 AC6B001C */  sw    $t3, 0x1c($v1)
/* B5AB54 800E39B4 8CA40014 */  lw    $a0, 0x14($a1)
/* B5AB58 800E39B8 AC660014 */  sw    $a2, 0x14($v1)
/* B5AB5C 800E39BC AC69000C */  sw    $t1, 0xc($v1)
/* B5AB60 800E39C0 2484000F */  addiu $a0, $a0, 0xf
/* B5AB64 800E39C4 00812024 */  and   $a0, $a0, $at
/* B5AB68 800E39C8 AC640018 */  sw    $a0, 0x18($v1)
/* B5AB6C 800E39CC AC690010 */  sw    $t1, 0x10($v1)
/* B5AB70 800E39D0 8CAD0010 */  lw    $t5, 0x10($a1)
/* B5AB74 800E39D4 AC6D0008 */  sw    $t5, 8($v1)
/* B5AB78 800E39D8 80AE0018 */  lb    $t6, 0x18($a1)
/* B5AB7C 800E39DC A0670001 */  sb    $a3, 1($v1)
/* B5AB80 800E39E0 31CF00FF */  andi  $t7, $t6, 0xff
/* B5AB84 800E39E4 14CF0003 */  bne   $a2, $t7, .L800E39F4
/* B5AB88 800E39E8 A06E0000 */   sb    $t6, ($v1)
/* B5AB8C 800E39EC 84580002 */  lh    $t8, 2($v0)
/* B5AB90 800E39F0 AC780004 */  sw    $t8, 4($v1)
.L800E39F4:
/* B5AB94 800E39F4 8D191D4C */  lw    $t9, 0x1d4c($t0)
/* B5AB98 800E39F8 00001025 */  move  $v0, $zero
/* B5AB9C 800E39FC 3B2A0001 */  xori  $t2, $t9, 1
/* B5ABA0 800E3A00 AD0A1D4C */  sw    $t2, 0x1d4c($t0)
.L800E3A04:
/* B5ABA4 800E3A04 8FBF0014 */  lw    $ra, 0x14($sp)
/* B5ABA8 800E3A08 27BD0018 */  addiu $sp, $sp, 0x18
/* B5ABAC 800E3A0C 03E00008 */  jr    $ra
/* B5ABB0 800E3A10 00000000 */   nop

