.rdata
glabel D_801403CC
    .asciz "../z_skelanime.c"
    .balign 4

glabel D_801403E0
    .asciz "../z_skelanime.c"
    .balign 4

glabel D_801403F4
    .asciz "joint_buff_num == joint_num"
    .balign 4

glabel D_80140410
    .asciz "../z_skelanime.c"
    .balign 4

glabel D_80140424
    .asciz "\x1b[31m"
    .balign 4

glabel D_8014042C
    .asciz "Skeleton_Info_Rom_SV_ct メモリアロケーションエラー\n"
    # EUC-JP: メモリアロケーションエラー | Memory allocation error
    .balign 4

glabel D_80140460
    .asciz "\x1b[m"
    .balign 4

.text
glabel func_800A39AC
/* B1AB4C 800A39AC 00067100 */  sll   $t6, $a2, 4
/* B1AB50 800A39B0 3C098016 */  lui   $t1, %hi(gSegments) # $t1, 0x8016
/* B1AB54 800A39B4 000E7F02 */  srl   $t7, $t6, 0x1c
/* B1AB58 800A39B8 25296FA8 */  addiu $t1, %lo(gSegments) # addiu $t1, $t1, 0x6fa8
/* B1AB5C 800A39BC 000FC080 */  sll   $t8, $t7, 2
/* B1AB60 800A39C0 27BDFFC0 */  addiu $sp, $sp, -0x40
/* B1AB64 800A39C4 0138C821 */  addu  $t9, $t1, $t8
/* B1AB68 800A39C8 8F2C0000 */  lw    $t4, ($t9)
/* B1AB6C 800A39CC 3C0A00FF */  lui   $t2, (0x00FFFFFF >> 16) # lui $t2, 0xff
/* B1AB70 800A39D0 354AFFFF */  ori   $t2, (0x00FFFFFF & 0xFFFF) # ori $t2, $t2, 0xffff
/* B1AB74 800A39D4 00CA6824 */  and   $t5, $a2, $t2
/* B1AB78 800A39D8 8FAF0050 */  lw    $t7, 0x50($sp)
/* B1AB7C 800A39DC 3C0B8000 */  lui   $t3, 0x8000
/* B1AB80 800A39E0 018D7021 */  addu  $t6, $t4, $t5
/* B1AB84 800A39E4 AFBF002C */  sw    $ra, 0x2c($sp)
/* B1AB88 800A39E8 AFB00028 */  sw    $s0, 0x28($sp)
/* B1AB8C 800A39EC AFA40040 */  sw    $a0, 0x40($sp)
/* B1AB90 800A39F0 AFA7004C */  sw    $a3, 0x4c($sp)
/* B1AB94 800A39F4 01CB4021 */  addu  $t0, $t6, $t3
/* B1AB98 800A39F8 91020004 */  lbu   $v0, 4($t0)
/* B1AB9C 800A39FC A0AF0034 */  sb    $t7, 0x34($a1)
/* B1ABA0 800A3A00 8FB80050 */  lw    $t8, 0x50($sp)
/* B1ABA4 800A3A04 8FAC0050 */  lw    $t4, 0x50($sp)
/* B1ABA8 800A3A08 00A08025 */  move  $s0, $a1
/* B1ABAC 800A3A0C 33190002 */  andi  $t9, $t8, 2
/* B1ABB0 800A3A10 13200003 */  beqz  $t9, .L800A3A20
/* B1ABB4 800A3A14 318D0001 */   andi  $t5, $t4, 1
/* B1ABB8 800A3A18 10000002 */  b     .L800A3A24
/* B1ABBC 800A3A1C 00401825 */   move  $v1, $v0
.L800A3A20:
/* B1ABC0 800A3A20 24030001 */  li    $v1, 1
.L800A3A24:
/* B1ABC4 800A3A24 11A00002 */  beqz  $t5, .L800A3A30
/* B1ABC8 800A3A28 8FAE0050 */   lw    $t6, 0x50($sp)
/* B1ABCC 800A3A2C 00621821 */  addu  $v1, $v1, $v0
.L800A3A30:
/* B1ABD0 800A3A30 31CF0004 */  andi  $t7, $t6, 4
/* B1ABD4 800A3A34 11E00002 */  beqz  $t7, .L800A3A40
/* B1ABD8 800A3A38 2406093C */   li    $a2, 2364
/* B1ABDC 800A3A3C 00621821 */  addu  $v1, $v1, $v0
.L800A3A40:
/* B1ABE0 800A3A40 A2030000 */  sb    $v1, ($s0)
/* B1ABE4 800A3A44 91180008 */  lbu   $t8, 8($t0)
/* B1ABE8 800A3A48 00032880 */  sll   $a1, $v1, 2
/* B1ABEC 800A3A4C 00A32823 */  subu  $a1, $a1, $v1
/* B1ABF0 800A3A50 A2180002 */  sb    $t8, 2($s0)
/* B1ABF4 800A3A54 8D020000 */  lw    $v0, ($t0)
/* B1ABF8 800A3A58 00052840 */  sll   $a1, $a1, 1
/* B1ABFC 800A3A5C 00A02025 */  move  $a0, $a1
/* B1AC00 800A3A60 0002C900 */  sll   $t9, $v0, 4
/* B1AC04 800A3A64 00196702 */  srl   $t4, $t9, 0x1c
/* B1AC08 800A3A68 000C6880 */  sll   $t5, $t4, 2
/* B1AC0C 800A3A6C 012D7021 */  addu  $t6, $t1, $t5
/* B1AC10 800A3A70 8DCF0000 */  lw    $t7, ($t6)
/* B1AC14 800A3A74 004AC024 */  and   $t8, $v0, $t2
/* B1AC18 800A3A78 01F8C821 */  addu  $t9, $t7, $t8
/* B1AC1C 800A3A7C 032B6021 */  addu  $t4, $t9, $t3
/* B1AC20 800A3A80 AE0C0004 */  sw    $t4, 4($s0)
/* B1AC24 800A3A84 8FAD0050 */  lw    $t5, 0x50($sp)
/* B1AC28 800A3A88 8FAF0054 */  lw    $t7, 0x54($sp)
/* B1AC2C 800A3A8C 8FB8005C */  lw    $t8, 0x5c($sp)
/* B1AC30 800A3A90 31AE0008 */  andi  $t6, $t5, 8
/* B1AC34 800A3A94 11C00002 */  beqz  $t6, .L800A3AA0
/* B1AC38 800A3A98 00000000 */   nop   
/* B1AC3C 800A3A9C 24A40002 */  addiu $a0, $a1, 2
.L800A3AA0:
/* B1AC40 800A3AA0 15E0000C */  bnez  $t7, .L800A3AD4
/* B1AC44 800A3AA4 3C058014 */   lui   $a1, %hi(D_801403CC) # $a1, 0x8014
/* B1AC48 800A3AA8 24A503CC */  addiu $a1, %lo(D_801403CC) # addiu $a1, $a1, 0x3cc
/* B1AC4C 800A3AAC 0C01EBB8 */  jal   ZeldaArena_MallocDebug
/* B1AC50 800A3AB0 AFA40030 */   sw    $a0, 0x30($sp)
/* B1AC54 800A3AB4 8FA40030 */  lw    $a0, 0x30($sp)
/* B1AC58 800A3AB8 3C058014 */  lui   $a1, %hi(D_801403E0) # $a1, 0x8014
/* B1AC5C 800A3ABC AE020020 */  sw    $v0, 0x20($s0)
/* B1AC60 800A3AC0 24A503E0 */  addiu $a1, %lo(D_801403E0) # addiu $a1, $a1, 0x3e0
/* B1AC64 800A3AC4 0C01EBB8 */  jal   ZeldaArena_MallocDebug
/* B1AC68 800A3AC8 2406093D */   li    $a2, 2365
/* B1AC6C 800A3ACC 10000011 */  b     .L800A3B14
/* B1AC70 800A3AD0 AE020024 */   sw    $v0, 0x24($s0)
.L800A3AD4:
/* B1AC74 800A3AD4 13030006 */  beq   $t8, $v1, .L800A3AF0
/* B1AC78 800A3AD8 3C048014 */   lui   $a0, %hi(D_801403F4) # $a0, 0x8014
/* B1AC7C 800A3ADC 3C058014 */  lui   $a1, %hi(D_80140410) # $a1, 0x8014
/* B1AC80 800A3AE0 24A50410 */  addiu $a1, %lo(D_80140410) # addiu $a1, $a1, 0x410
/* B1AC84 800A3AE4 248403F4 */  addiu $a0, %lo(D_801403F4) # addiu $a0, $a0, 0x3f4
/* B1AC88 800A3AE8 0C0007FC */  jal   __assert
/* B1AC8C 800A3AEC 24060941 */   li    $a2, 2369
.L800A3AF0:
/* B1AC90 800A3AF0 8FB90054 */  lw    $t9, 0x54($sp)
/* B1AC94 800A3AF4 2402FFF0 */  li    $v0, -16
/* B1AC98 800A3AF8 272C000F */  addiu $t4, $t9, 0xf
/* B1AC9C 800A3AFC 01826824 */  and   $t5, $t4, $v0
/* B1ACA0 800A3B00 AE0D0020 */  sw    $t5, 0x20($s0)
/* B1ACA4 800A3B04 8FAE0058 */  lw    $t6, 0x58($sp)
/* B1ACA8 800A3B08 25CF000F */  addiu $t7, $t6, 0xf
/* B1ACAC 800A3B0C 01E2C024 */  and   $t8, $t7, $v0
/* B1ACB0 800A3B10 AE180024 */  sw    $t8, 0x24($s0)
.L800A3B14:
/* B1ACB4 800A3B14 8E190020 */  lw    $t9, 0x20($s0)
/* B1ACB8 800A3B18 3C048014 */  lui   $a0, %hi(D_80140424)
/* B1ACBC 800A3B1C 13200004 */  beqz  $t9, .L800A3B30
/* B1ACC0 800A3B20 00000000 */   nop   
/* B1ACC4 800A3B24 8E0C0024 */  lw    $t4, 0x24($s0)
/* B1ACC8 800A3B28 5580000A */  bnezl $t4, .L800A3B54
/* B1ACCC 800A3B2C 44800000 */   mtc1  $zero, $f0
.L800A3B30:
/* B1ACD0 800A3B30 0C00084C */  jal   osSyncPrintf
/* B1ACD4 800A3B34 24840424 */   addiu $a0, %lo(D_80140424)
/* B1ACD8 800A3B38 3C048014 */  lui   $a0, %hi(D_8014042C) # $a0, 0x8014
/* B1ACDC 800A3B3C 0C00084C */  jal   osSyncPrintf
/* B1ACE0 800A3B40 2484042C */   addiu $a0, %lo(D_8014042C) # addiu $a0, $a0, 0x42c
/* B1ACE4 800A3B44 3C048014 */  lui   $a0, %hi(D_80140460)
/* B1ACE8 800A3B48 0C00084C */  jal   osSyncPrintf
/* B1ACEC 800A3B4C 24840460 */   addiu $a0, %lo(D_80140460) # addiu $a0, $a0, 0x460
/* B1ACF0 800A3B50 44800000 */  mtc1  $zero, $f0
.L800A3B54:
/* B1ACF4 800A3B54 8FA40040 */  lw    $a0, 0x40($sp)
/* B1ACF8 800A3B58 02002825 */  move  $a1, $s0
/* B1ACFC 800A3B5C 8FA6004C */  lw    $a2, 0x4c($sp)
/* B1AD00 800A3B60 3C073F80 */  lui   $a3, 0x3f80
/* B1AD04 800A3B64 AFA00018 */  sw    $zero, 0x18($sp)
/* B1AD08 800A3B68 E7A00010 */  swc1  $f0, 0x10($sp)
/* B1AD0C 800A3B6C E7A00014 */  swc1  $f0, 0x14($sp)
/* B1AD10 800A3B70 0C028FC2 */  jal   func_800A3F08
/* B1AD14 800A3B74 E7A0001C */   swc1  $f0, 0x1c($sp)
/* B1AD18 800A3B78 8FBF002C */  lw    $ra, 0x2c($sp)
/* B1AD1C 800A3B7C 8FB00028 */  lw    $s0, 0x28($sp)
/* B1AD20 800A3B80 27BD0040 */  addiu $sp, $sp, 0x40
/* B1AD24 800A3B84 03E00008 */  jr    $ra
/* B1AD28 800A3B88 00000000 */   nop   

