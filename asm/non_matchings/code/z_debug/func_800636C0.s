.rdata
glabel D_8013AD40
    .asciz "../z_debug.c"
    .balign 4

.text
glabel func_800636C0
/* ADA860 800636C0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* ADA864 800636C4 AFBF0014 */  sw    $ra, 0x14($sp)
/* ADA868 800636C8 3C058014 */  lui   $a1, %hi(D_8013AD40) # $a1, 0x8014
/* ADA86C 800636CC 24A5AD40 */  addiu $a1, %lo(D_8013AD40) # addiu $a1, $a1, -0x52c0
/* ADA870 800636D0 240415D4 */  li    $a0, 5588
/* ADA874 800636D4 0C03F570 */  jal   SystemArena_MallocDebug
/* ADA878 800636D8 24060104 */   li    $a2, 260
/* ADA87C 800636DC 3C048016 */  lui   $a0, %hi(gGameInfo) # $a0, 0x8016
/* ADA880 800636E0 2484FA90 */  addiu $a0, %lo(gGameInfo) # addiu $a0, $a0, -0x570
/* ADA884 800636E4 AC820000 */  sw    $v0, ($a0)
/* ADA888 800636E8 AC400000 */  sw    $zero, ($v0)
/* ADA88C 800636EC 8C8F0000 */  lw    $t7, ($a0)
/* ADA890 800636F0 240215C0 */  li    $v0, 5568
/* ADA894 800636F4 00001825 */  move  $v1, $zero
/* ADA898 800636F8 ADE00004 */  sw    $zero, 4($t7)
/* ADA89C 800636FC 8C980000 */  lw    $t8, ($a0)
/* ADA8A0 80063700 AF000008 */  sw    $zero, 8($t8)
/* ADA8A4 80063704 8C990000 */  lw    $t9, ($a0)
/* ADA8A8 80063708 AF20000C */  sw    $zero, 0xc($t9)
/* ADA8AC 8006370C 8C880000 */  lw    $t0, ($a0)
/* ADA8B0 80063710 AD000010 */  sw    $zero, 0x10($t0)
.L80063714:
/* ADA8B4 80063714 8C890000 */  lw    $t1, ($a0)
/* ADA8B8 80063718 01235021 */  addu  $t2, $t1, $v1
/* ADA8BC 8006371C A5400014 */  sh    $zero, 0x14($t2)
/* ADA8C0 80063720 8C8B0000 */  lw    $t3, ($a0)
/* ADA8C4 80063724 01636021 */  addu  $t4, $t3, $v1
/* ADA8C8 80063728 A5800016 */  sh    $zero, 0x16($t4)
/* ADA8CC 8006372C 8C8D0000 */  lw    $t5, ($a0)
/* ADA8D0 80063730 01A37021 */  addu  $t6, $t5, $v1
/* ADA8D4 80063734 A5C00018 */  sh    $zero, 0x18($t6)
/* ADA8D8 80063738 8C8F0000 */  lw    $t7, ($a0)
/* ADA8DC 8006373C 01E3C021 */  addu  $t8, $t7, $v1
/* ADA8E0 80063740 24630008 */  addiu $v1, $v1, 8
/* ADA8E4 80063744 1462FFF3 */  bne   $v1, $v0, .L80063714
/* ADA8E8 80063748 A700001A */   sh    $zero, 0x1a($t8)
/* ADA8EC 8006374C 8FBF0014 */  lw    $ra, 0x14($sp)
/* ADA8F0 80063750 27BD0018 */  addiu $sp, $sp, 0x18
/* ADA8F4 80063754 03E00008 */  jr    $ra
/* ADA8F8 80063758 00000000 */   nop   

