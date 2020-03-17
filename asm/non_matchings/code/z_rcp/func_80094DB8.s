glabel func_80094DB8
/* B0BF58 80094DB8 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B0BF5C 80094DBC AFBF0014 */  sw    $ra, 0x14($sp)
/* B0BF60 80094DC0 AFA5001C */  sw    $a1, 0x1c($sp)
/* B0BF64 80094DC4 AFA60020 */  sw    $a2, 0x20($sp)
/* B0BF68 80094DC8 AFA70024 */  sw    $a3, 0x24($sp)
/* B0BF6C 80094DCC 0C031B0F */  jal   func_800C6C3C
/* B0BF70 80094DD0 24050018 */   li    $a1, 24
/* B0BF74 80094DD4 8FA4001C */  lw    $a0, 0x1c($sp)
/* B0BF78 80094DD8 8FA50020 */  lw    $a1, 0x20($sp)
/* B0BF7C 80094DDC 3C01F200 */  lui   $at, 0xf200
/* B0BF80 80094DE0 308F0FFF */  andi  $t7, $a0, 0xfff
/* B0BF84 80094DE4 000FC300 */  sll   $t8, $t7, 0xc
/* B0BF88 80094DE8 0301C825 */  or    $t9, $t8, $at
/* B0BF8C 80094DEC 30A80FFF */  andi  $t0, $a1, 0xfff
/* B0BF90 80094DF0 3C0EE800 */  lui   $t6, 0xe800
/* B0BF94 80094DF4 03284825 */  or    $t1, $t9, $t0
/* B0BF98 80094DF8 AC4E0000 */  sw    $t6, ($v0)
/* B0BF9C 80094DFC AC400004 */  sw    $zero, 4($v0)
/* B0BFA0 80094E00 AC490008 */  sw    $t1, 8($v0)
/* B0BFA4 80094E04 8FAA0024 */  lw    $t2, 0x24($sp)
/* B0BFA8 80094E08 8FB80028 */  lw    $t8, 0x28($sp)
/* B0BFAC 80094E0C AC400014 */  sw    $zero, 0x14($v0)
/* B0BFB0 80094E10 254BFFFF */  addiu $t3, $t2, -1
/* B0BFB4 80094E14 000B6080 */  sll   $t4, $t3, 2
/* B0BFB8 80094E18 2719FFFF */  addiu $t9, $t8, -1
/* B0BFBC 80094E1C 00194080 */  sll   $t0, $t9, 2
/* B0BFC0 80094E20 01846821 */  addu  $t5, $t4, $a0
/* B0BFC4 80094E24 31AE0FFF */  andi  $t6, $t5, 0xfff
/* B0BFC8 80094E28 00A84821 */  addu  $t1, $a1, $t0
/* B0BFCC 80094E2C 312A0FFF */  andi  $t2, $t1, 0xfff
/* B0BFD0 80094E30 000E7B00 */  sll   $t7, $t6, 0xc
/* B0BFD4 80094E34 01EA5825 */  or    $t3, $t7, $t2
/* B0BFD8 80094E38 3C0CDF00 */  lui   $t4, 0xdf00
/* B0BFDC 80094E3C AC4B000C */  sw    $t3, 0xc($v0)
/* B0BFE0 80094E40 AC4C0010 */  sw    $t4, 0x10($v0)
/* B0BFE4 80094E44 8FBF0014 */  lw    $ra, 0x14($sp)
/* B0BFE8 80094E48 27BD0018 */  addiu $sp, $sp, 0x18
/* B0BFEC 80094E4C 03E00008 */  jr    $ra
/* B0BFF0 80094E50 00000000 */   nop   

