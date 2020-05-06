.rdata
glabel D_80138AF0
    .asciz "this->short_slist_node_last_index < this->short_slist_node_size"
    .balign 4

glabel D_80138B30
    .asciz "../z_bgcheck.c"
    .balign 4
    
.text
glabel func_8003E458
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

