.rdata

glabel D_801495C0
    .float 0.707

glabel D_801495C4
    .float 4095.999

.text
glabel Audio_NoteSetVelPanReverb
/* B5DAE0 800E6940 27BDFFB8 */  addiu $sp, $sp, -0x48
/* B5DAE4 800E6944 AFBF0014 */  sw    $ra, 0x14($sp)
/* B5DAE8 800E6948 AFA40048 */  sw    $a0, 0x48($sp)
/* B5DAEC 800E694C 90CF0002 */  lbu   $t7, 2($a2)
/* B5DAF0 800E6950 90820035 */  lbu   $v0, 0x35($a0)
/* B5DAF4 800E6954 C4C20008 */  lwc1  $f2, 8($a2)
/* B5DAF8 800E6958 A3AF0027 */  sb    $t7, 0x27($sp)
/* B5DAFC 800E695C 90D80000 */  lbu   $t8, ($a2)
/* B5DB00 800E6960 27B90024 */  addiu $t9, $sp, 0x24
/* B5DB04 800E6964 00A03825 */  move  $a3, $a1
/* B5DB08 800E6968 A3B80026 */  sb    $t8, 0x26($sp)
/* B5DB0C 800E696C 90C90003 */  lbu   $t1, 3($a2)
/* B5DB10 800E6970 00A02025 */  move  $a0, $a1
/* B5DB14 800E6974 A3290000 */  sb    $t1, ($t9)

# Saving stuff on sub
/* B5DB18 800E6978 8FAA0048 */  lw    $t2, 0x48($sp)
/* B5DB1C 800E697C 914C00C0 */  lbu   $t4, 0xc0($t2)
/* B5DB20 800E6980 A0AC0000 */  sb    $t4, ($a1)
/* B5DB24 800E6984 8FAD0048 */  lw    $t5, 0x48($sp)
/* B5DB28 800E6988 91AF00C1 */  lbu   $t7, 0xc1($t5)
/* B5DB2C 800E698C A0AF0001 */  sb    $t7, 1($a1)
/* B5DB30 800E6990 8FB80048 */  lw    $t8, 0x48($sp)
/* B5DB34 800E6994 8F1900D0 */  lw    $t9, 0xd0($t8)
/* B5DB38 800E6998 ACB90010 */  sw    $t9, 0x10($a1)
/* B5DB3C 800E699C 8FA80048 */  lw    $t0, 0x48($sp)
/* B5DB40 800E69A0 910900C6 */  lbu   $t1, 0xc6($t0)
/* B5DB44 800E69A4 A0A90006 */  sb    $t1, 6($a1)

# Audio_NoteSetResamplingRate setup
/* B5DB48 800E69A8 8CC50004 */  lw    $a1, 4($a2)
/* B5DB4C 800E69AC AFA7004C */  sw    $a3, 0x4c($sp)
/* B5DB50 800E69B0 AFA60050 */  sw    $a2, 0x50($sp)
/* B5DB54 800E69B4 AFA20020 */  sw    $v0, 0x20($sp)
/* B5DB58 800E69B8 0C039B6E */  jal   Audio_NoteSetResamplingRate
/* B5DB5C 800E69BC E7A20028 */   swc1  $f2, 0x28($sp)

/* B5DB60 800E69C0 93AA0027 */  lbu   $t2, 0x27($sp)
/* B5DB64 800E69C4 8FA7004C */  lw    $a3, 0x4c($sp)
/* B5DB68 800E69C8 8FA20020 */  lw    $v0, 0x20($sp)
/* B5DB6C 800E69CC 314B007F */  andi  $t3, $t2, 0x7f
/* B5DB70 800E69D0 A3AB0027 */  sb    $t3, 0x27($sp)
/* B5DB74 800E69D4 90EC0000 */  lbu   $t4, ($a3)
/* B5DB78 800E69D8 8FA60050 */  lw    $a2, 0x50($sp)
/* B5DB7C 800E69DC C7A20028 */  lwc1  $f2, 0x28($sp)
/* B5DB80 800E69E0 318EFFF7 */  andi  $t6, $t4, 0xfff7
/* B5DB84 800E69E4 31CB00FB */  andi  $t3, $t6, 0xfb
/* B5DB88 800E69E8 A0EE0000 */  sb    $t6, ($a3)
/* B5DB8C 800E69EC A0EB0000 */  sb    $t3, ($a3)
/* B5DB90 800E69F0 8FB80024 */  lw    $t8, 0x24($sp)
/* B5DB94 800E69F4 316C00FD */  andi  $t4, $t3, 0xfd
/* B5DB98 800E69F8 44800000 */  mtc1  $zero, $f0
/* B5DB9C 800E69FC 0018C980 */  sll   $t9, $t8, 6
/* B5DBA0 800E6A00 001947C2 */  srl   $t0, $t9, 0x1f
/* B5DBA4 800E6A04 00084840 */  sll   $t1, $t0, 1
/* B5DBA8 800E6A08 312A0002 */  andi  $t2, $t1, 2
/* B5DBAC 800E6A0C 014CC825 */  or    $t9, $t2, $t4
/* B5DBB0 800E6A10 A0F90000 */  sb    $t9, ($a3)
/* B5DBB4 800E6A14 93AF0024 */  lbu   $t7, 0x24($sp)
/* B5DBB8 800E6A18 332800FE */  andi  $t0, $t9, 0xfe
/* B5DBBC 800E6A1C 3C0B8017 */  lui   $t3, %hi(gSoundMode) # $t3, 0x8017
/* B5DBC0 800E6A20 31F80001 */  andi  $t8, $t7, 1
/* B5DBC4 800E6A24 03084825 */  or    $t1, $t8, $t0
/* B5DBC8 800E6A28 10400021 */  beqz  $v0, .ELSE_IF
/* B5DBCC 800E6A2C A0E90000 */   sb    $t1, ($a3)
/* B5DBD0 800E6A30 816B1A1A */  lb    $t3, %lo(gSoundMode)($t3)
/* B5DBD4 800E6A34 93A30027 */  lbu   $v1, 0x27($sp)
/* B5DBD8 800E6A38 24010001 */  li    $at, 1
/* B5DBDC 800E6A3C 1561001C */  bne   $t3, $at, .ELSE_IF
/* B5DBE0 800E6A40 00031843 */   sra   $v1, $v1, 1

# Inside first if

        # s32 smallPanIndex = reverb->pan >> 3;
        # if (smallPanIndex > 0xf) {
        #     smallPanIndex = 0xf;
        # }
/* B5DBE4 800E6A44 28610040 */  slti  $at, $v1, 0x40
/* B5DBE8 800E6A48 14200002 */  bnez  $at, .SMALL_PAN_IF
/* B5DBEC 800E6A4C 3C0A8013 */   lui   $t2, %hi(gHeadsetPanQuantization)
/* B5DBF0 800E6A50 2403003F */  li    $v1, 63

.SMALL_PAN_IF:
/* B5DBF4 800E6A54 00031040 */  sll   $v0, $v1, 1
/* B5DBF8 800E6A58 01425021 */  addu  $t2, $t2, $v0
/* B5DBFC 800E6A5C 954AFB24 */  lhu   $t2, %lo(gHeadsetPanQuantization)($t2)
/* B5DC00 800E6A60 00026023 */  negu  $t4, $v0
/* B5DC04 800E6A64 3C0D8013 */  lui   $t5, %hi(gHeadsetPanQuantization + 0x7E)
/* B5DC08 800E6A68 90EF0001 */  lbu   $t7, 1($a3)
/* B5DC0C 800E6A6C 01AC6821 */  addu  $t5, $t5, $t4
/* B5DC10 800E6A70 A0EA0004 */  sb    $t2, 4($a3)
/* B5DC14 800E6A74 95ADFBA2 */  lhu   $t5, %lo(gHeadsetPanQuantization + 0x7E)($t5)
/* B5DC18 800E6A78 35F90001 */  ori   $t9, $t7, 1
/* B5DC1C 800E6A7C A0F90001 */  sb    $t9, 1($a3)
/* B5DC20 800E6A80 A0ED0003 */  sb    $t5, 3($a3)
/* B5DC24 800E6A84 93B80027 */  lbu   $t8, 0x27($sp)
/* B5DC28 800E6A88 3C018013 */  lui   $at, %hi(gHeadsetPanVolume)
/* B5DC2C 800E6A8C 00184080 */  sll   $t0, $t8, 2
/* B5DC30 800E6A90 00280821 */  addu  $at, $at, $t0
/* B5DC34 800E6A94 C42CFC28 */  lwc1  $f12, %lo(gHeadsetPanVolume)($at)
/* B5DC38 800E6A98 00184880 */  sll   $t1, $t8, 2
/* B5DC3C 800E6A9C 00095823 */  negu  $t3, $t1
/* B5DC40 800E6AA0 3C018013 */  lui   $at, %hi(gHeadsetPanVolume + 0x1fc)
/* B5DC44 800E6AA4 002B0821 */  addu  $at, $at, $t3
/* B5DC48 800E6AA8 1000009A */  b     .MAIN_COND_END
/* B5DC4C 800E6AAC C42EFE24 */   lwc1  $f14, %lo(gHeadsetPanVolume + 0x1fc)($at)

.ELSE_IF:
/* B5DC50 800E6AB0 3C038017 */  lui   $v1, %hi(gSoundMode) # $v1, 0x8017
/* B5DC54 800E6AB4 10400071 */  beqz  $v0, .L800E6C7C
/* B5DC58 800E6AB8 80631A1A */   lb    $v1, %lo(gSoundMode)($v1)
/* B5DC5C 800E6ABC 54600070 */  bnezl $v1, .L800E6C80
/* B5DC60 800E6AC0 24010003 */   li    $at, 3
/* B5DC64 800E6AC4 90EA0001 */  lbu   $t2, 1($a3)
/* B5DC68 800E6AC8 A0E00003 */  sb    $zero, 3($a3)
/* B5DC6C 800E6ACC A0E00004 */  sb    $zero, 4($a3)
/* B5DC70 800E6AD0 314CFFFE */  andi  $t4, $t2, 0xfffe
/* B5DC74 800E6AD4 A0EC0001 */  sb    $t4, 1($a3)
/* B5DC78 800E6AD8 93AD0027 */  lbu   $t5, 0x27($sp)
/* B5DC7C 800E6ADC 3C018013 */  lui   $at, %hi(gStereoPanVolume)
/* B5DC80 800E6AE0 00001825 */  move  $v1, $zero
/* B5DC84 800E6AE4 000D7080 */  sll   $t6, $t5, 2
/* B5DC88 800E6AE8 002E0821 */  addu  $at, $at, $t6
/* B5DC8C 800E6AEC C42CFE28 */  lwc1  $f12, %lo(gStereoPanVolume)($at)
/* B5DC90 800E6AF0 000D7880 */  sll   $t7, $t5, 2
/* B5DC94 800E6AF4 000FC823 */  negu  $t9, $t7
/* B5DC98 800E6AF8 3C018013 */  lui   $at, %hi(gStereoPanVolume + 0x1FC)
/* B5DC9C 800E6AFC 00390821 */  addu  $at, $at, $t9
/* B5DCA0 800E6B00 C42E0024 */  lwc1  $f14, %lo(gStereoPanVolume + 0x1FC)($at)
/* B5DCA4 800E6B04 29A10020 */  slti  $at, $t5, 0x20
/* B5DCA8 800E6B08 10200003 */  beqz  $at, .L800E6B18
/* B5DCAC 800E6B0C 00002025 */   move  $a0, $zero
/* B5DCB0 800E6B10 10000006 */  b     .L800E6B2C
/* B5DCB4 800E6B14 24040001 */   li    $a0, 1
.L800E6B18:
/* B5DCB8 800E6B18 93A80027 */  lbu   $t0, 0x27($sp)
/* B5DCBC 800E6B1C 29010061 */  slti  $at, $t0, 0x61
/* B5DCC0 800E6B20 54200003 */  bnezl $at, .L800E6B30
/* B5DCC4 800E6B24 90EA0000 */   lbu   $t2, ($a3)
/* B5DCC8 800E6B28 24030001 */  li    $v1, 1
.L800E6B2C:
/* B5DCCC 800E6B2C 90EA0000 */  lbu   $t2, ($a3)
.L800E6B30:
/* B5DCD0 800E6B30 000348C0 */  sll   $t1, $v1, 3
/* B5DCD4 800E6B34 312B0008 */  andi  $t3, $t1, 8
/* B5DCD8 800E6B38 314CFFF7 */  andi  $t4, $t2, 0xfff7
/* B5DCDC 800E6B3C 016C4025 */  or    $t0, $t3, $t4
/* B5DCE0 800E6B40 0004C880 */  sll   $t9, $a0, 2
/* B5DCE4 800E6B44 332D0004 */  andi  $t5, $t9, 4
/* B5DCE8 800E6B48 311800FB */  andi  $t8, $t0, 0xfb
/* B5DCEC 800E6B4C A0E80000 */  sb    $t0, ($a3)
/* B5DCF0 800E6B50 01B84825 */  or    $t1, $t5, $t8
/* B5DCF4 800E6B54 A0E90000 */  sb    $t1, ($a3)

# Oh boy we in a switch now.
/* B5DCF8 800E6B58 8FA20024 */  lw    $v0, 0x24($sp)
/* B5DCFC 800E6B5C 24010001 */  li    $at, 1
/* B5DD00 800E6B60 00021080 */  sll   $v0, $v0, 2
/* B5DD04 800E6B64 00021782 */  srl   $v0, $v0, 0x1e
/* B5DD08 800E6B68 5040006B */  beql  $v0, $zero, .DEFAULT
/* B5DD0C 800E6B6C 4600103C */   c.lt.s $f2, $f0
/* B5DD10 800E6B70 10410009 */  beq   $v0, $at, .CASE1
/* B5DD14 800E6B74 8FAA0024 */   lw    $t2, 0x24($sp)
/* B5DD18 800E6B78 24010002 */  li    $at, 2
/* B5DD1C 800E6B7C 10410017 */  beq   $v0, $at, .CASE2
/* B5DD20 800E6B80 8FA80024 */   lw    $t0, 0x24($sp)
/* B5DD24 800E6B84 24010003 */  li    $at, 3
/* B5DD28 800E6B88 10410028 */  beq   $v0, $at, .CASE3
/* B5DD2C 800E6B8C 8FA80024 */   lw    $t0, 0x24($sp)
/* B5DD30 800E6B90 10000061 */  b     .DEFAULT
/* B5DD34 800E6B94 4600103C */   c.lt.s $f2, $f0

.CASE1:
/* B5DD38 800E6B98 90F90000 */  lbu   $t9, ($a3)
/* B5DD3C 800E6B9C 000A5900 */  sll   $t3, $t2, 4
/* B5DD40 800E6BA0 000B67C2 */  srl   $t4, $t3, 0x1f
/* B5DD44 800E6BA4 000C70C0 */  sll   $t6, $t4, 3
/* B5DD48 800E6BA8 31CF0008 */  andi  $t7, $t6, 8
/* B5DD4C 800E6BAC 3328FFF7 */  andi  $t0, $t9, 0xfff7
/* B5DD50 800E6BB0 01E87025 */  or    $t6, $t7, $t0
/* B5DD54 800E6BB4 A0EE0000 */  sb    $t6, ($a3)
/* B5DD58 800E6BB8 8FB80024 */  lw    $t8, 0x24($sp)
/* B5DD5C 800E6BBC 31D900FB */  andi  $t9, $t6, 0xfb
/* B5DD60 800E6BC0 00184940 */  sll   $t1, $t8, 5
/* B5DD64 800E6BC4 000957C2 */  srl   $t2, $t1, 0x1f
/* B5DD68 800E6BC8 000A5880 */  sll   $t3, $t2, 2
/* B5DD6C 800E6BCC 316C0004 */  andi  $t4, $t3, 4
/* B5DD70 800E6BD0 01997825 */  or    $t7, $t4, $t9
/* B5DD74 800E6BD4 1000004F */  b     .MAIN_COND_END
/* B5DD78 800E6BD8 A0EF0000 */   sb    $t7, ($a3)
.CASE2:
/* B5DD7C 800E6BDC 00086900 */  sll   $t5, $t0, 4
/* B5DD80 800E6BE0 90EC0000 */  lbu   $t4, ($a3)
/* B5DD84 800E6BE4 000DC7C2 */  srl   $t8, $t5, 0x1f
/* B5DD88 800E6BE8 03035025 */  or    $t2, $t8, $v1
/* B5DD8C 800E6BEC 000A58C0 */  sll   $t3, $t2, 3
/* B5DD90 800E6BF0 316E0008 */  andi  $t6, $t3, 8
/* B5DD94 800E6BF4 3199FFF7 */  andi  $t9, $t4, 0xfff7
/* B5DD98 800E6BF8 01D97825 */  or    $t7, $t6, $t9
/* B5DD9C 800E6BFC A0EF0000 */  sb    $t7, ($a3)
/* B5DDA0 800E6C00 8FA80024 */  lw    $t0, 0x24($sp)
/* B5DDA4 800E6C04 01E07025 */  move  $t6, $t7
/* B5DDA8 800E6C08 31D900FB */  andi  $t9, $t6, 0xfb
/* B5DDAC 800E6C0C 00086940 */  sll   $t5, $t0, 5
/* B5DDB0 800E6C10 000DC7C2 */  srl   $t8, $t5, 0x1f
/* B5DDB4 800E6C14 03045025 */  or    $t2, $t8, $a0
/* B5DDB8 800E6C18 000A5880 */  sll   $t3, $t2, 2
/* B5DDBC 800E6C1C 316C0004 */  andi  $t4, $t3, 4
/* B5DDC0 800E6C20 01997825 */  or    $t7, $t4, $t9
/* B5DDC4 800E6C24 1000003B */  b     .MAIN_COND_END
/* B5DDC8 800E6C28 A0EF0000 */   sb    $t7, ($a3)
.CASE3:
/* B5DDCC 800E6C2C 00086900 */  sll   $t5, $t0, 4
/* B5DDD0 800E6C30 90EC0000 */  lbu   $t4, ($a3)
/* B5DDD4 800E6C34 000DC7C2 */  srl   $t8, $t5, 0x1f
/* B5DDD8 800E6C38 03035026 */  xor   $t2, $t8, $v1
/* B5DDDC 800E6C3C 000A58C0 */  sll   $t3, $t2, 3
/* B5DDE0 800E6C40 316E0008 */  andi  $t6, $t3, 8
/* B5DDE4 800E6C44 3199FFF7 */  andi  $t9, $t4, 0xfff7
/* B5DDE8 800E6C48 01D97825 */  or    $t7, $t6, $t9
/* B5DDEC 800E6C4C A0EF0000 */  sb    $t7, ($a3)
/* B5DDF0 800E6C50 8FA80024 */  lw    $t0, 0x24($sp)
/* B5DDF4 800E6C54 01E07025 */  move  $t6, $t7
/* B5DDF8 800E6C58 31D900FB */  andi  $t9, $t6, 0xfb
/* B5DDFC 800E6C5C 00086940 */  sll   $t5, $t0, 5
/* B5DE00 800E6C60 000DC7C2 */  srl   $t8, $t5, 0x1f
/* B5DE04 800E6C64 03045026 */  xor   $t2, $t8, $a0
/* B5DE08 800E6C68 000A5880 */  sll   $t3, $t2, 2
/* B5DE0C 800E6C6C 316C0004 */  andi  $t4, $t3, 4
/* B5DE10 800E6C70 01997825 */  or    $t7, $t4, $t9
/* B5DE14 800E6C74 10000027 */  b     .MAIN_COND_END
/* B5DE18 800E6C78 A0EF0000 */   sb    $t7, ($a3)

# gSoundMode == 3
.L800E6C7C:
/* B5DE1C 800E6C7C 24010003 */  li    $at, 3
.L800E6C80:
/* B5DE20 800E6C80 1461000A */  bne   $v1, $at, .L800E6CAC
/* B5DE24 800E6C84 8FAA0024 */   lw    $t2, 0x24($sp)
/* B5DE28 800E6C88 90E80000 */  lbu   $t0, ($a3)
/* B5DE2C 800E6C8C 3C018015 */  lui   $at, %hi(D_801495C0)
/* B5DE30 800E6C90 C42E95C0 */  lwc1  $f14, %lo(D_801495C0)($at)
/* B5DE34 800E6C94 3118FFFD */  andi  $t8, $t0, 0xfffd
/* B5DE38 800E6C98 A0F80000 */  sb    $t8, ($a3)
/* B5DE3C 800E6C9C 330900FE */  andi  $t1, $t8, 0xfe
/* B5DE40 800E6CA0 A0E90000 */  sb    $t1, ($a3)
/* B5DE44 800E6CA4 1000001B */  b     .MAIN_COND_END
/* B5DE48 800E6CA8 46007306 */   mov.s $f12, $f14

# Last Else
.L800E6CAC:
/* B5DE4C 800E6CAC 90EF0000 */  lbu   $t7, ($a3)
/* B5DE50 800E6CB0 000A5900 */  sll   $t3, $t2, 4
/* B5DE54 800E6CB4 000B77C2 */  srl   $t6, $t3, 0x1f
/* B5DE58 800E6CB8 000E60C0 */  sll   $t4, $t6, 3
/* B5DE5C 800E6CBC 31990008 */  andi  $t9, $t4, 8
/* B5DE60 800E6CC0 31E8FFF7 */  andi  $t0, $t7, 0xfff7
/* B5DE64 800E6CC4 03286025 */  or    $t4, $t9, $t0
/* B5DE68 800E6CC8 A0EC0000 */  sb    $t4, ($a3)
/* B5DE6C 800E6CCC 8FB80024 */  lw    $t8, 0x24($sp)
/* B5DE70 800E6CD0 318F00FB */  andi  $t7, $t4, 0xfb
/* B5DE74 800E6CD4 3C018013 */  lui   $at, %hi(gDefaultPanVolume)
/* B5DE78 800E6CD8 00184940 */  sll   $t1, $t8, 5
/* B5DE7C 800E6CDC 000957C2 */  srl   $t2, $t1, 0x1f
/* B5DE80 800E6CE0 000A5880 */  sll   $t3, $t2, 2
/* B5DE84 800E6CE4 316E0004 */  andi  $t6, $t3, 4
/* B5DE88 800E6CE8 01CFC825 */  or    $t9, $t6, $t7
/* B5DE8C 800E6CEC A0F90000 */  sb    $t9, ($a3)
/* B5DE90 800E6CF0 93A80027 */  lbu   $t0, 0x27($sp)
/* B5DE94 800E6CF4 00086880 */  sll   $t5, $t0, 2
/* B5DE98 800E6CF8 002D0821 */  addu  $at, $at, $t5
/* B5DE9C 800E6CFC C42C0028 */  lwc1  $f12, %lo(gDefaultPanVolume)($at)
/* B5DEA0 800E6D00 0008C080 */  sll   $t8, $t0, 2
/* B5DEA4 800E6D04 00184823 */  negu  $t1, $t8
/* B5DEA8 800E6D08 3C018013 */  lui   $at, %hi(gDefaultPanVolume + 0x1FC)
/* B5DEAC 800E6D0C 00290821 */  addu  $at, $at, $t1
/* B5DEB0 800E6D10 C42E0224 */  lwc1  $f14, %lo(gDefaultPanVolume + 0x1FC)($at)

.MAIN_COND_END:
/* B5DEB4 800E6D14 4600103C */  c.lt.s $f2, $f0
.DEFAULT:
/* B5DEB8 800E6D18 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* B5DEBC 800E6D1C 45020003 */  bc1fl .L800E6D2C
/* B5DEC0 800E6D20 44810000 */   mtc1  $at, $f0
/* B5DEC4 800E6D24 46000086 */  mov.s $f2, $f0
/* B5DEC8 800E6D28 44810000 */  mtc1  $at, $f0
.L800E6D2C:
/* B5DECC 800E6D2C 00000000 */  nop   
/* B5DED0 800E6D30 4602003C */  c.lt.s $f0, $f2
/* B5DED4 800E6D34 00000000 */  nop   
/* B5DED8 800E6D38 45000002 */  bc1f  .L800E6D44
/* B5DEDC 800E6D3C 00000000 */   nop   
/* B5DEE0 800E6D40 46000086 */  mov.s $f2, $f0
.L800E6D44:
/* B5DEE4 800E6D44 460C1102 */  mul.s $f4, $f2, $f12
/* B5DEE8 800E6D48 3C018015 */  lui   $at, %hi(D_801495C4)
/* B5DEEC 800E6D4C C42095C4 */  lwc1  $f0, %lo(D_801495C4)($at)
/* B5DEF0 800E6D50 46002182 */  mul.s $f6, $f4, $f0
/* B5DEF4 800E6D54 00000000 */  nop   
/* B5DEF8 800E6D58 460E1282 */  mul.s $f10, $f2, $f14
/* B5DEFC 800E6D5C 4600320D */  trunc.w.s $f8, $f6
/* B5DF00 800E6D60 46005402 */  mul.s $f16, $f10, $f0
/* B5DF04 800E6D64 440B4000 */  mfc1  $t3, $f8
/* B5DF08 800E6D68 00000000 */  nop   
/* B5DF0C 800E6D6C A4EB0008 */  sh    $t3, 8($a3)
/* B5DF10 800E6D70 4600848D */  trunc.w.s $f18, $f16
/* B5DF14 800E6D74 440E9000 */  mfc1  $t6, $f18
/* B5DF18 800E6D78 00000000 */  nop   
/* B5DF1C 800E6D7C A4EE000A */  sh    $t6, 0xa($a3)
/* B5DF20 800E6D80 90CF0001 */  lbu   $t7, 1($a2)
/* B5DF24 800E6D84 A0EF0002 */  sb    $t7, 2($a3)
/* B5DF28 800E6D88 8CD90010 */  lw    $t9, 0x10($a2)
/* B5DF2C 800E6D8C ACF90014 */  sw    $t9, 0x14($a3)
/* B5DF30 800E6D90 90CD0014 */  lbu   $t5, 0x14($a2)
/* B5DF34 800E6D94 A0ED0007 */  sb    $t5, 7($a3)
/* B5DF38 800E6D98 94C80016 */  lhu   $t0, 0x16($a2)
/* B5DF3C 800E6D9C A4E8000E */  sh    $t0, 0xe($a3)
/* B5DF40 800E6DA0 93B80026 */  lbu   $t8, 0x26($sp)
/* B5DF44 800E6DA4 A0F80005 */  sb    $t8, 5($a3)
/* B5DF48 800E6DA8 8FBF0014 */  lw    $ra, 0x14($sp)
/* B5DF4C 800E6DAC 27BD0048 */  addiu $sp, $sp, 0x48
/* B5DF50 800E6DB0 03E00008 */  jr    $ra
/* B5DF54 800E6DB4 00000000 */   nop   
