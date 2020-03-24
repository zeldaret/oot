.rdata
glabel D_801356C0
    .asciz "EffectAdd():確保できません。注意してください。Type%d\n"
    # EUC-JP: 確保できません。注意してください。 | I cannot secure it. be careful.
    .balign 4

glabel D_801356F8
    .asciz "エフェクト追加せずに終了します。\n"
    # EUC-JP: エフェクト追加せずに終了します。 | Exit without adding effects.
    .balign 4

.text
glabel Effect_Add
/* A9DE74 80026CD4 27BDFFD8 */  addiu $sp, $sp, -0x28
/* A9DE78 80026CD8 AFBF0014 */  sw    $ra, 0x14($sp)
/* A9DE7C 80026CDC AFA5002C */  sw    $a1, 0x2c($sp)
/* A9DE80 80026CE0 AFA70034 */  sw    $a3, 0x34($sp)
/* A9DE84 80026CE4 AFA0001C */  sw    $zero, 0x1c($sp)
/* A9DE88 80026CE8 240E001F */  li    $t6, 31
/* A9DE8C 80026CEC ACAE0000 */  sw    $t6, ($a1)
/* A9DE90 80026CF0 AFA00018 */  sw    $zero, 0x18($sp)
/* A9DE94 80026CF4 0C03034A */  jal   func_800C0D28
/* A9DE98 80026CF8 AFA60030 */   sw    $a2, 0x30($sp)
/* A9DE9C 80026CFC 24030001 */  li    $v1, 1
/* A9DEA0 80026D00 8FA60030 */  lw    $a2, 0x30($sp)
/* A9DEA4 80026D04 8FA7001C */  lw    $a3, 0x1c($sp)
/* A9DEA8 80026D08 8FA80018 */  lw    $t0, 0x18($sp)
/* A9DEAC 80026D0C 10430055 */  beq   $v0, $v1, .L80026E64
/* A9DEB0 80026D10 8FA9002C */   lw    $t1, 0x2c($sp)
/* A9DEB4 80026D14 10C00009 */  beqz  $a2, .L80026D3C
/* A9DEB8 80026D18 00002825 */   move  $a1, $zero
/* A9DEBC 80026D1C 10C30018 */  beq   $a2, $v1, .L80026D80
/* A9DEC0 80026D20 24010002 */   li    $at, 2
/* A9DEC4 80026D24 10C10016 */  beq   $a2, $at, .L80026D80
/* A9DEC8 80026D28 24040003 */   li    $a0, 3
/* A9DECC 80026D2C 10C40025 */  beq   $a2, $a0, .L80026DC4
/* A9DED0 80026D30 00001025 */   move  $v0, $zero
/* A9DED4 80026D34 10000030 */  b     .L80026DF8
/* A9DED8 80026D38 00000000 */   nop   
.L80026D3C:
/* A9DEDC 80026D3C 3C038015 */  lui   $v1, %hi(D_80157DA0) # $v1, 0x8015
/* A9DEE0 80026D40 24637DA0 */  addiu $v1, %lo(D_80157DA0) # addiu $v1, $v1, 0x7da0
/* A9DEE4 80026D44 00001025 */  move  $v0, $zero
/* A9DEE8 80026D48 24040003 */  li    $a0, 3
.L80026D4C:
/* A9DEEC 80026D4C 90780004 */  lbu   $t8, 4($v1)
/* A9DEF0 80026D50 57000007 */  bnezl $t8, .L80026D70
/* A9DEF4 80026D54 24420001 */   addiu $v0, $v0, 1
/* A9DEF8 80026D58 24050001 */  li    $a1, 1
/* A9DEFC 80026D5C AD220000 */  sw    $v0, ($t1)
/* A9DF00 80026D60 24670008 */  addiu $a3, $v1, 8
/* A9DF04 80026D64 10000024 */  b     .L80026DF8
/* A9DF08 80026D68 24680004 */   addiu $t0, $v1, 4
/* A9DF0C 80026D6C 24420001 */  addiu $v0, $v0, 1
.L80026D70:
/* A9DF10 80026D70 1444FFF6 */  bne   $v0, $a0, .L80026D4C
/* A9DF14 80026D74 246304C8 */   addiu $v1, $v1, 0x4c8
/* A9DF18 80026D78 1000001F */  b     .L80026DF8
/* A9DF1C 80026D7C 00000000 */   nop   
.L80026D80:
/* A9DF20 80026D80 3C038015 */  lui   $v1, %hi(D_80157DA0) # $v1, 0x8015
/* A9DF24 80026D84 24637DA0 */  addiu $v1, %lo(D_80157DA0) # addiu $v1, $v1, 0x7da0
/* A9DF28 80026D88 00001025 */  move  $v0, $zero
/* A9DF2C 80026D8C 24040019 */  li    $a0, 25
.L80026D90:
/* A9DF30 80026D90 90790E5C */  lbu   $t9, 0xe5c($v1)
/* A9DF34 80026D94 17200006 */  bnez  $t9, .L80026DB0
/* A9DF38 80026D98 244A0003 */   addiu $t2, $v0, 3
/* A9DF3C 80026D9C 24050001 */  li    $a1, 1
/* A9DF40 80026DA0 AD2A0000 */  sw    $t2, ($t1)
/* A9DF44 80026DA4 24670E60 */  addiu $a3, $v1, 0xe60
/* A9DF48 80026DA8 10000013 */  b     .L80026DF8
/* A9DF4C 80026DAC 24680E5C */   addiu $t0, $v1, 0xe5c
.L80026DB0:
/* A9DF50 80026DB0 24420001 */  addiu $v0, $v0, 1
/* A9DF54 80026DB4 1444FFF6 */  bne   $v0, $a0, .L80026D90
/* A9DF58 80026DB8 246301B0 */   addiu $v1, $v1, 0x1b0
/* A9DF5C 80026DBC 1000000E */  b     .L80026DF8
/* A9DF60 80026DC0 00000000 */   nop   
.L80026DC4:
/* A9DF64 80026DC4 3C038015 */  lui   $v1, %hi(D_80157DA0) # $v1, 0x8015
/* A9DF68 80026DC8 24637DA0 */  addiu $v1, %lo(D_80157DA0) # addiu $v1, $v1, 0x7da0
.L80026DCC:
/* A9DF6C 80026DCC 906B388C */  lbu   $t3, 0x388c($v1)
/* A9DF70 80026DD0 15600006 */  bnez  $t3, .L80026DEC
/* A9DF74 80026DD4 244C001C */   addiu $t4, $v0, 0x1c
/* A9DF78 80026DD8 24050001 */  li    $a1, 1
/* A9DF7C 80026DDC AD2C0000 */  sw    $t4, ($t1)
/* A9DF80 80026DE0 24673890 */  addiu $a3, $v1, 0x3890
/* A9DF84 80026DE4 10000004 */  b     .L80026DF8
/* A9DF88 80026DE8 2468388C */   addiu $t0, $v1, 0x388c
.L80026DEC:
/* A9DF8C 80026DEC 24420001 */  addiu $v0, $v0, 1
/* A9DF90 80026DF0 1444FFF6 */  bne   $v0, $a0, .L80026DCC
/* A9DF94 80026DF4 246301CC */   addiu $v1, $v1, 0x1cc
.L80026DF8:
/* A9DF98 80026DF8 14A0000A */  bnez  $a1, .L80026E24
/* A9DF9C 80026DFC 00066880 */   sll   $t5, $a2, 2
/* A9DFA0 80026E00 3C048013 */  lui   $a0, %hi(D_801356C0) # $a0, 0x8013
/* A9DFA4 80026E04 248456C0 */  addiu $a0, %lo(D_801356C0) # addiu $a0, $a0, 0x56c0
/* A9DFA8 80026E08 0C00084C */  jal   osSyncPrintf
/* A9DFAC 80026E0C 00C02825 */   move  $a1, $a2
/* A9DFB0 80026E10 3C048013 */  lui   $a0, %hi(D_801356F8) # $a0, 0x8013
/* A9DFB4 80026E14 0C00084C */  jal   osSyncPrintf
/* A9DFB8 80026E18 248456F8 */   addiu $a0, %lo(D_801356F8) # addiu $a0, $a0, 0x56f8
/* A9DFBC 80026E1C 10000012 */  b     .L80026E68
/* A9DFC0 80026E20 8FBF0014 */   lw    $ra, 0x14($sp)
.L80026E24:
/* A9DFC4 80026E24 01A66821 */  addu  $t5, $t5, $a2
/* A9DFC8 80026E28 000D6880 */  sll   $t5, $t5, 2
/* A9DFCC 80026E2C 3C198011 */  lui   $t9, %hi(D_80115864)
/* A9DFD0 80026E30 032DC821 */  addu  $t9, $t9, $t5
/* A9DFD4 80026E34 8F395864 */  lw    $t9, %lo(D_80115864)($t9)
/* A9DFD8 80026E38 00E02025 */  move  $a0, $a3
/* A9DFDC 80026E3C 8FA5003C */  lw    $a1, 0x3c($sp)
/* A9DFE0 80026E40 0320F809 */  jalr  $t9
/* A9DFE4 80026E44 AFA80018 */  sw    $t0, 0x18($sp)
/* A9DFE8 80026E48 8FA80018 */  lw    $t0, 0x18($sp)
/* A9DFEC 80026E4C 93AE0037 */  lbu   $t6, 0x37($sp)
/* A9DFF0 80026E50 24180001 */  li    $t8, 1
/* A9DFF4 80026E54 A10E0002 */  sb    $t6, 2($t0)
/* A9DFF8 80026E58 93AF003B */  lbu   $t7, 0x3b($sp)
/* A9DFFC 80026E5C A1180000 */  sb    $t8, ($t0)
/* A9E000 80026E60 A10F0001 */  sb    $t7, 1($t0)
.L80026E64:
/* A9E004 80026E64 8FBF0014 */  lw    $ra, 0x14($sp)
.L80026E68:
/* A9E008 80026E68 27BD0028 */  addiu $sp, $sp, 0x28
/* A9E00C 80026E6C 03E00008 */  jr    $ra
/* A9E010 80026E70 00000000 */   nop   

