glabel func_809A3CC0
/* 000000 809A3CC0 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 000004 809A3CC4 3C010001 */  lui   $at, (0x000117A4 >> 16) # lui $at, 1
/* 000008 809A3CC8 AFA40030 */  sw    $a0, 0x30($sp)
/* 00000C 809A3CCC 342117A4 */  ori   $at, (0x000117A4 & 0xFFFF) # ori $at, $at, 0x17a4
/* 000010 809A3CD0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 000014 809A3CD4 AFA50034 */  sw    $a1, 0x34($sp)
/* 000018 809A3CD8 00812021 */  addu  $a0, $a0, $at
/* 00001C 809A3CDC AFA4001C */  sw    $a0, 0x1c($sp)
/* 000020 809A3CE0 24050117 */  li    $a1, 279
/* 000024 809A3CE4 AFA60038 */  sw    $a2, 0x38($sp)
/* 000028 809A3CE8 0C02604B */  jal   Object_GetIndex
/* 00002C 809A3CEC AFA7003C */   sw    $a3, 0x3c($sp)
/* 000030 809A3CF0 8FA4001C */  lw    $a0, 0x1c($sp)
/* 000034 809A3CF4 8FA60038 */  lw    $a2, 0x38($sp)
/* 000038 809A3CF8 8FA7003C */  lw    $a3, 0x3c($sp)
/* 00003C 809A3CFC 0440003B */  bltz  $v0, .L809A3DEC
/* 000040 809A3D00 00402825 */   move  $a1, $v0
/* 000044 809A3D04 AFA20024 */  sw    $v0, 0x24($sp)
/* 000048 809A3D08 AFA60038 */  sw    $a2, 0x38($sp)
/* 00004C 809A3D0C 0C026062 */  jal   Object_IsLoaded
/* 000050 809A3D10 AFA7003C */   sw    $a3, 0x3c($sp)
/* 000054 809A3D14 8FA50024 */  lw    $a1, 0x24($sp)
/* 000058 809A3D18 8FA60038 */  lw    $a2, 0x38($sp)
/* 00005C 809A3D1C 10400033 */  beqz  $v0, .L809A3DEC
/* 000060 809A3D20 8FA7003C */   lw    $a3, 0x3c($sp)
/* 000064 809A3D24 8FAE0030 */  lw    $t6, 0x30($sp)
/* 000068 809A3D28 00057900 */  sll   $t7, $a1, 4
/* 00006C 809A3D2C 01E57821 */  addu  $t7, $t7, $a1
/* 000070 809A3D30 000F7880 */  sll   $t7, $t7, 2
/* 000074 809A3D34 3C190001 */  lui   $t9, 1
/* 000078 809A3D38 01CFC021 */  addu  $t8, $t6, $t7
/* 00007C 809A3D3C 0338C821 */  addu  $t9, $t9, $t8
/* 000080 809A3D40 8F3917B4 */  lw    $t9, 0x17b4($t9)
/* 000084 809A3D44 3C048016 */  lui   $a0, %hi(gSegments) # $a0, 0x8016
/* 000088 809A3D48 24846FA8 */  addiu $a0, %lo(gSegments) # addiu $a0, $a0, 0x6fa8
/* 00008C 809A3D4C 3C018000 */  lui   $at, 0x8000
/* 000090 809A3D50 8C830018 */  lw    $v1, 0x18($a0)
/* 000094 809A3D54 03214021 */  addu  $t0, $t9, $at
/* 000098 809A3D58 AC880018 */  sw    $t0, 0x18($a0)
/* 00009C 809A3D5C 8CEA0000 */  lw    $t2, ($a3)
/* 0000A0 809A3D60 3C0F809A */  lui   $t7, %hi(func_809A3E00) # $t7, 0x809a
/* 0000A4 809A3D64 3C18809A */  lui   $t8, %hi(func_809A3FF8) # $t8, 0x809a
/* 0000A8 809A3D68 ACCA0000 */  sw    $t2, ($a2)
/* 0000AC 809A3D6C 8CE90004 */  lw    $t1, 4($a3)
/* 0000B0 809A3D70 25EF3E00 */  addiu $t7, %lo(func_809A3E00) # addiu $t7, $t7, 0x3e00
/* 0000B4 809A3D74 27183FF8 */  addiu $t8, %lo(func_809A3FF8) # addiu $t8, $t8, 0x3ff8
/* 0000B8 809A3D78 ACC90004 */  sw    $t1, 4($a2)
/* 0000BC 809A3D7C 8CEA0008 */  lw    $t2, 8($a3)
/* 0000C0 809A3D80 24190032 */  li    $t9, 50
/* 0000C4 809A3D84 24020001 */  li    $v0, 1
/* 0000C8 809A3D88 ACCA0008 */  sw    $t2, 8($a2)
/* 0000CC 809A3D8C 8CEC000C */  lw    $t4, 0xc($a3)
/* 0000D0 809A3D90 240A0005 */  li    $t2, 5
/* 0000D4 809A3D94 ACCC000C */  sw    $t4, 0xc($a2)
/* 0000D8 809A3D98 8CEB0010 */  lw    $t3, 0x10($a3)
/* 0000DC 809A3D9C ACCB0010 */  sw    $t3, 0x10($a2)
/* 0000E0 809A3DA0 8CEC0014 */  lw    $t4, 0x14($a3)
/* 0000E4 809A3DA4 ACCC0014 */  sw    $t4, 0x14($a2)
/* 0000E8 809A3DA8 8CEE0018 */  lw    $t6, 0x18($a3)
/* 0000EC 809A3DAC ACCE0018 */  sw    $t6, 0x18($a2)
/* 0000F0 809A3DB0 8CED001C */  lw    $t5, 0x1c($a3)
/* 0000F4 809A3DB4 ACCD001C */  sw    $t5, 0x1c($a2)
/* 0000F8 809A3DB8 8CEE0020 */  lw    $t6, 0x20($a3)
/* 0000FC 809A3DBC ACCF0028 */  sw    $t7, 0x28($a2)
/* 000100 809A3DC0 ACD80024 */  sw    $t8, 0x24($a2)
/* 000104 809A3DC4 A4D9005C */  sh    $t9, 0x5c($a2)
/* 000108 809A3DC8 ACCE0020 */  sw    $t6, 0x20($a2)
/* 00010C 809A3DCC 84E80026 */  lh    $t0, 0x26($a3)
/* 000110 809A3DD0 A4C80044 */  sh    $t0, 0x44($a2)
/* 000114 809A3DD4 84E90024 */  lh    $t1, 0x24($a3)
/* 000118 809A3DD8 A4CA0042 */  sh    $t2, 0x42($a2)
/* 00011C 809A3DDC A4C50040 */  sh    $a1, 0x40($a2)
/* 000120 809A3DE0 A4C90046 */  sh    $t1, 0x46($a2)
/* 000124 809A3DE4 10000002 */  b     .L809A3DF0
/* 000128 809A3DE8 AC830018 */   sw    $v1, 0x18($a0)
.L809A3DEC:
/* 00012C 809A3DEC 00001025 */  move  $v0, $zero
.L809A3DF0:
/* 000130 809A3DF0 8FBF0014 */  lw    $ra, 0x14($sp)
/* 000134 809A3DF4 27BD0030 */  addiu $sp, $sp, 0x30
/* 000138 809A3DF8 03E00008 */  jr    $ra
/* 00013C 809A3DFC 00000000 */   nop   

