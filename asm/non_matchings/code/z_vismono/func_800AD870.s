.rdata
glabel D_801418B4
    .asciz "../z_vismono.c"
    .balign 4

glabel D_801418C4
    .asciz "../z_vismono.c"
    .balign 4

glabel D_801418D4
    .asciz "glistp_end <= this->mono_dl + DLSIZE"
    .balign 4

glabel D_801418FC
    .asciz "../z_vismono.c"
    .balign 4

.text
glabel func_800AD870
/* B24A10 800AD870 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B24A14 800AD874 AFBF001C */  sw    $ra, 0x1c($sp)
/* B24A18 800AD878 AFB00018 */  sw    $s0, 0x18($sp)
/* B24A1C 800AD87C 8C8E0010 */  lw    $t6, 0x10($a0)
/* B24A20 800AD880 00808025 */  move  $s0, $a0
/* B24A24 800AD884 24040200 */  li    $a0, 512
/* B24A28 800AD888 15C00008 */  bnez  $t6, .L800AD8AC
/* B24A2C 800AD88C 3C058014 */   lui   $a1, %hi(D_801418B4) # $a1, 0x8014
/* B24A30 800AD890 24A518B4 */  addiu $a1, %lo(D_801418B4) # addiu $a1, $a1, 0x18b4
/* B24A34 800AD894 0C03F570 */  jal   SystemArena_MallocDebug
/* B24A38 800AD898 2406011B */   li    $a2, 283
/* B24A3C 800AD89C AE020010 */  sw    $v0, 0x10($s0)
/* B24A40 800AD8A0 02002025 */  move  $a0, $s0
/* B24A44 800AD8A4 0C02B420 */  jal   func_800AD080
/* B24A48 800AD8A8 00402825 */   move  $a1, $v0
.L800AD8AC:
/* B24A4C 800AD8AC 8E0F0014 */  lw    $t7, 0x14($s0)
/* B24A50 800AD8B0 3C058014 */  lui   $a1, %hi(D_801418C4) # $a1, 0x8014
/* B24A54 800AD8B4 24A518C4 */  addiu $a1, %lo(D_801418C4) # addiu $a1, $a1, 0x18c4
/* B24A58 800AD8B8 15E00011 */  bnez  $t7, .L800AD900
/* B24A5C 800AD8BC 24042338 */   li    $a0, 9016
/* B24A60 800AD8C0 0C03F570 */  jal   SystemArena_MallocDebug
/* B24A64 800AD8C4 24060121 */   li    $a2, 289
/* B24A68 800AD8C8 AE020014 */  sw    $v0, 0x14($s0)
/* B24A6C 800AD8CC 02002025 */  move  $a0, $s0
/* B24A70 800AD8D0 0C02B4E5 */  jal   func_800AD394
/* B24A74 800AD8D4 00402825 */   move  $a1, $v0
/* B24A78 800AD8D8 8E180014 */  lw    $t8, 0x14($s0)
/* B24A7C 800AD8DC 3C048014 */  lui   $a0, %hi(D_801418D4) # $a0, 0x8014
/* B24A80 800AD8E0 248418D4 */  addiu $a0, %lo(D_801418D4) # addiu $a0, $a0, 0x18d4
/* B24A84 800AD8E4 27192338 */  addiu $t9, $t8, 0x2338
/* B24A88 800AD8E8 0322082B */  sltu  $at, $t9, $v0
/* B24A8C 800AD8EC 10200004 */  beqz  $at, .L800AD900
/* B24A90 800AD8F0 3C058014 */   lui   $a1, %hi(D_801418FC) # $a1, 0x8014
/* B24A94 800AD8F4 24A518FC */  addiu $a1, %lo(D_801418FC) # addiu $a1, $a1, 0x18fc
/* B24A98 800AD8F8 0C0007FC */  jal   __assert
/* B24A9C 800AD8FC 24060124 */   li    $a2, 292
.L800AD900:
/* B24AA0 800AD900 8FBF001C */  lw    $ra, 0x1c($sp)
/* B24AA4 800AD904 8FB00018 */  lw    $s0, 0x18($sp)
/* B24AA8 800AD908 27BD0020 */  addiu $sp, $sp, 0x20
/* B24AAC 800AD90C 03E00008 */  jr    $ra
/* B24AB0 800AD910 00000000 */   nop   
