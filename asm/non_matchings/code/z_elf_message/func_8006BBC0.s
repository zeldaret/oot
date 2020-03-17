.rdata
glabel D_8013B830
    .asciz "../z_elf_message.c"
    .balign 4

glabel D_8013B844
    .asciz "\"企画外 条件\" = %s\n"
    # EUC-JP: 企画外 条件 | Unplanned conditions
    .balign 4

glabel D_8013B858
    .asciz "企画外 条件"
    # EUC-JP: 企画外 条件 | Unplanned conditions
    .balign 4

glabel D_8013B864
    .asciz "0"
    .balign 4

glabel D_8013B868
    .asciz "../z_elf_message.c"
    .balign 4

.late_rodata
.late_rodata_alignment 8
glabel jtbl_8013B8C8
    .word L8006BCFC
    .word L8006BE38
    .word L8006BE38
    .word L8006BE38
    .word L8006BE38
    .word L8006BE38
    .word L8006BE38
    .word L8006BE38
    .word L8006BE38
    .word L8006BE38
    .word L8006BE38
    .word L8006BE38
    .word L8006BE38
    .word L8006BE38
    .word L8006BE38
    .word L8006BE38
    .word L8006BD44
    .word L8006BE38
    .word L8006BE38
    .word L8006BE38
    .word L8006BE38
    .word L8006BE38
    .word L8006BE38
    .word L8006BE38
    .word L8006BE38
    .word L8006BE38
    .word L8006BE38
    .word L8006BE38
    .word L8006BE38
    .word L8006BE38
    .word L8006BE38
    .word L8006BE38
    .word L8006BD90
    .word L8006BE38
    .word L8006BE38
    .word L8006BE38
    .word L8006BE38
    .word L8006BE38
    .word L8006BE38
    .word L8006BE38
    .word L8006BE38
    .word L8006BE38
    .word L8006BE38
    .word L8006BE38
    .word L8006BE38
    .word L8006BE38
    .word L8006BE38
    .word L8006BE38
    .word L8006BDD0
    .word L8006BE38
    .word L8006BE38
    .word L8006BE38
    .word L8006BE38
    .word L8006BE38
    .word L8006BE38
    .word L8006BE38
    .word L8006BE38
    .word L8006BE38
    .word L8006BE38
    .word L8006BE38
    .word L8006BE38
    .word L8006BE38
    .word L8006BE38
    .word L8006BE38
    .word L8006BE10

.text
glabel func_8006BBC0
/* AE2D60 8006BBC0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AE2D64 8006BBC4 AFBF0014 */  sw    $ra, 0x14($sp)
/* AE2D68 8006BBC8 90850000 */  lbu   $a1, ($a0)
/* AE2D6C 8006BBCC 3C078016 */  lui   $a3, %hi(gSaveContext) # $a3, 0x8016
/* AE2D70 8006BBD0 24E7E660 */  addiu $a3, %lo(gSaveContext) # addiu $a3, $a3, -0x19a0
/* AE2D74 8006BBD4 30A2001E */  andi  $v0, $a1, 0x1e
/* AE2D78 8006BBD8 1040000C */  beqz  $v0, .L8006BC0C
/* AE2D7C 8006BBDC 240F0001 */   li    $t7, 1
/* AE2D80 8006BBE0 24010002 */  li    $at, 2
/* AE2D84 8006BBE4 1041001A */  beq   $v0, $at, .L8006BC50
/* AE2D88 8006BBE8 3C078016 */   lui   $a3, %hi(gSaveContext)
/* AE2D8C 8006BBEC 24010004 */  li    $at, 4
/* AE2D90 8006BBF0 10410028 */  beq   $v0, $at, .L8006BC94
/* AE2D94 8006BBF4 3C078016 */   lui   $a3, %hi(gSaveContext) # $a3, 0x8016
/* AE2D98 8006BBF8 24010006 */  li    $at, 6
/* AE2D9C 8006BBFC 50410036 */  beql  $v0, $at, .L8006BCD8
/* AE2DA0 8006BC00 90830001 */   lbu   $v1, 1($a0)
/* AE2DA4 8006BC04 1000008C */  b     .L8006BE38
/* AE2DA8 8006BC08 00000000 */   nop   
.L8006BC0C:
/* AE2DAC 8006BC0C 90830001 */  lbu   $v1, 1($a0)
/* AE2DB0 8006BC10 30B80001 */  andi  $t8, $a1, 1
/* AE2DB4 8006BC14 3B190001 */  xori  $t9, $t8, 1
/* AE2DB8 8006BC18 306800F0 */  andi  $t0, $v1, 0xf0
/* AE2DBC 8006BC1C 00084903 */  sra   $t1, $t0, 4
/* AE2DC0 8006BC20 00095040 */  sll   $t2, $t1, 1
/* AE2DC4 8006BC24 00EA5821 */  addu  $t3, $a3, $t2
/* AE2DC8 8006BC28 956C0ED4 */  lhu   $t4, 0xed4($t3)
/* AE2DCC 8006BC2C 306E000F */  andi  $t6, $v1, 0xf
/* AE2DD0 8006BC30 01CF3004 */  sllv  $a2, $t7, $t6
/* AE2DD4 8006BC34 30C6FFFF */  andi  $a2, $a2, 0xffff
/* AE2DD8 8006BC38 01866824 */  and   $t5, $t4, $a2
/* AE2DDC 8006BC3C 000D782B */  sltu  $t7, $zero, $t5
/* AE2DE0 8006BC40 2F390001 */  sltiu $t9, $t9, 1
/* AE2DE4 8006BC44 032F1026 */  xor   $v0, $t9, $t7
/* AE2DE8 8006BC48 1000008B */  b     .L8006BE78
/* AE2DEC 8006BC4C 2C420001 */   sltiu $v0, $v0, 1
.L8006BC50:
/* AE2DF0 8006BC50 908E0001 */  lbu   $t6, 1($a0)
/* AE2DF4 8006BC54 24E7E660 */  addiu $a3, %lo(gSaveContext) # addiu $a3, $a3, -0x19a0
/* AE2DF8 8006BC58 94E91402 */  lhu   $t1, 0x1402($a3)
/* AE2DFC 8006BC5C 3C088012 */  lui   $t0, %hi(D_80126F50)
/* AE2E00 8006BC60 000EC080 */  sll   $t8, $t6, 2
/* AE2E04 8006BC64 01184021 */  addu  $t0, $t0, $t8
/* AE2E08 8006BC68 00E95021 */  addu  $t2, $a3, $t1
/* AE2E0C 8006BC6C 914B00A8 */  lbu   $t3, 0xa8($t2)
/* AE2E10 8006BC70 8D086F50 */  lw    $t0, %lo(D_80126F50)($t0)
/* AE2E14 8006BC74 30B90001 */  andi  $t9, $a1, 1
/* AE2E18 8006BC78 3B2F0001 */  xori  $t7, $t9, 1
/* AE2E1C 8006BC7C 010B6024 */  and   $t4, $t0, $t3
/* AE2E20 8006BC80 000C682B */  sltu  $t5, $zero, $t4
/* AE2E24 8006BC84 2DEF0001 */  sltiu $t7, $t7, 1
/* AE2E28 8006BC88 01ED1026 */  xor   $v0, $t7, $t5
/* AE2E2C 8006BC8C 1000007A */  b     .L8006BE78
/* AE2E30 8006BC90 2C420001 */   sltiu $v0, $v0, 1
.L8006BC94:
/* AE2E34 8006BC94 90980001 */  lbu   $t8, 1($a0)
/* AE2E38 8006BC98 3C098012 */  lui   $t1, %hi(gItemSlots)
/* AE2E3C 8006BC9C 24E7E660 */  addiu $a3, %lo(gSaveContext)
/* AE2E40 8006BCA0 01384821 */  addu  $t1, $t1, $t8
/* AE2E44 8006BCA4 91297464 */  lbu   $t1, %lo(gItemSlots)($t1)
/* AE2E48 8006BCA8 908E0003 */  lbu   $t6, 3($a0)
/* AE2E4C 8006BCAC 30AC0001 */  andi  $t4, $a1, 1
/* AE2E50 8006BCB0 00E95021 */  addu  $t2, $a3, $t1
/* AE2E54 8006BCB4 91480074 */  lbu   $t0, 0x74($t2)
/* AE2E58 8006BCB8 39990001 */  xori  $t9, $t4, 1
/* AE2E5C 8006BCBC 2F390001 */  sltiu $t9, $t9, 1
/* AE2E60 8006BCC0 01C85826 */  xor   $t3, $t6, $t0
/* AE2E64 8006BCC4 2D6B0001 */  sltiu $t3, $t3, 1
/* AE2E68 8006BCC8 032B1026 */  xor   $v0, $t9, $t3
/* AE2E6C 8006BCCC 1000006A */  b     .L8006BE78
/* AE2E70 8006BCD0 2C420001 */   sltiu $v0, $v0, 1
/* AE2E74 8006BCD4 90830001 */  lbu   $v1, 1($a0)
.L8006BCD8:
/* AE2E78 8006BCD8 306F00F0 */  andi  $t7, $v1, 0xf0
/* AE2E7C 8006BCDC 2DE10041 */  sltiu $at, $t7, 0x41
/* AE2E80 8006BCE0 10200055 */  beqz  $at, .L8006BE38
/* AE2E84 8006BCE4 000F7880 */   sll   $t7, $t7, 2
/* AE2E88 8006BCE8 3C018014 */  lui   $at, %hi(jtbl_8013B8C8)
/* AE2E8C 8006BCEC 002F0821 */  addu  $at, $at, $t7
/* AE2E90 8006BCF0 8C2FB8C8 */  lw    $t7, %lo(jtbl_8013B8C8)($at)
/* AE2E94 8006BCF4 01E00008 */  jr    $t7
/* AE2E98 8006BCF8 00000000 */   nop   
glabel L8006BCFC
/* AE2E9C 8006BCFC 3C078016 */  lui   $a3, %hi(gSaveContext) # $a3, 0x8016
/* AE2EA0 8006BD00 24E7E660 */  addiu $a3, %lo(gSaveContext) # addiu $a3, $a3, -0x19a0
/* AE2EA4 8006BD04 3C188012 */  lui   $t8, %hi(gUpgradeMasks+8) # $t8, 0x8012
/* AE2EA8 8006BD08 8F1871B8 */  lw    $t8, %lo(gUpgradeMasks+8)($t8)
/* AE2EAC 8006BD0C 8CED00A0 */  lw    $t5, 0xa0($a3)
/* AE2EB0 8006BD10 3C0A8012 */  lui   $t2, %hi(gUpgradeShifts+2) # $t2, 0x8012
/* AE2EB4 8006BD14 914A71F6 */  lbu   $t2, %lo(gUpgradeShifts+2)($t2)
/* AE2EB8 8006BD18 01B84824 */  and   $t1, $t5, $t8
/* AE2EBC 8006BD1C 3068000F */  andi  $t0, $v1, 0xf
/* AE2EC0 8006BD20 30B90001 */  andi  $t9, $a1, 1
/* AE2EC4 8006BD24 01497007 */  srav  $t6, $t1, $t2
/* AE2EC8 8006BD28 010E6026 */  xor   $t4, $t0, $t6
/* AE2ECC 8006BD2C 3B2B0001 */  xori  $t3, $t9, 1
/* AE2ED0 8006BD30 2D6B0001 */  sltiu $t3, $t3, 1
/* AE2ED4 8006BD34 2D8C0001 */  sltiu $t4, $t4, 1
/* AE2ED8 8006BD38 016C1026 */  xor   $v0, $t3, $t4
/* AE2EDC 8006BD3C 1000004E */  b     .L8006BE78
/* AE2EE0 8006BD40 2C420001 */   sltiu $v0, $v0, 1
glabel L8006BD44
/* AE2EE4 8006BD44 908F0003 */  lbu   $t7, 3($a0)
/* AE2EE8 8006BD48 3C188012 */  lui   $t8, %hi(D_80127010)
/* AE2EEC 8006BD4C 3C078016 */  lui   $a3, %hi(gSaveContext) # $a3, 0x8016
/* AE2EF0 8006BD50 000F6880 */  sll   $t5, $t7, 2
/* AE2EF4 8006BD54 030DC021 */  addu  $t8, $t8, $t5
/* AE2EF8 8006BD58 3C098012 */  lui   $t1, %hi(gEquipShifts+3) # $t1, 0x8012
/* AE2EFC 8006BD5C 912971F3 */  lbu   $t1, %lo(gEquipShifts+3)($t1)
/* AE2F00 8006BD60 8F187010 */  lw    $t8, %lo(D_80127010)($t8)
/* AE2F04 8006BD64 24E7E660 */  addiu $a3, %lo(gSaveContext) # addiu $a3, $a3, -0x19a0
/* AE2F08 8006BD68 94E8009C */  lhu   $t0, 0x9c($a3)
/* AE2F0C 8006BD6C 30AB0001 */  andi  $t3, $a1, 1
/* AE2F10 8006BD70 01385004 */  sllv  $t2, $t8, $t1
/* AE2F14 8006BD74 396C0001 */  xori  $t4, $t3, 1
/* AE2F18 8006BD78 01487024 */  and   $t6, $t2, $t0
/* AE2F1C 8006BD7C 000EC82B */  sltu  $t9, $zero, $t6
/* AE2F20 8006BD80 2D8C0001 */  sltiu $t4, $t4, 1
/* AE2F24 8006BD84 01991026 */  xor   $v0, $t4, $t9
/* AE2F28 8006BD88 1000003B */  b     .L8006BE78
/* AE2F2C 8006BD8C 2C420001 */   sltiu $v0, $v0, 1
glabel L8006BD90
/* AE2F30 8006BD90 908F0003 */  lbu   $t7, 3($a0)
/* AE2F34 8006BD94 3C078016 */  lui   $a3, %hi(gSaveContext) # $a3, 0x8016
/* AE2F38 8006BD98 3C188012 */  lui   $t8, %hi(D_80126FD0)
/* AE2F3C 8006BD9C 000F6880 */  sll   $t5, $t7, 2
/* AE2F40 8006BDA0 24E7E660 */  addiu $a3, %lo(gSaveContext) # addiu $a3, $a3, -0x19a0
/* AE2F44 8006BDA4 030DC021 */  addu  $t8, $t8, $t5
/* AE2F48 8006BDA8 8F186FD0 */  lw    $t8, %lo(D_80126FD0)($t8)
/* AE2F4C 8006BDAC 8CE900A4 */  lw    $t1, 0xa4($a3)
/* AE2F50 8006BDB0 30AE0001 */  andi  $t6, $a1, 1
/* AE2F54 8006BDB4 39CB0001 */  xori  $t3, $t6, 1
/* AE2F58 8006BDB8 03095024 */  and   $t2, $t8, $t1
/* AE2F5C 8006BDBC 000A402B */  sltu  $t0, $zero, $t2
/* AE2F60 8006BDC0 2D6B0001 */  sltiu $t3, $t3, 1
/* AE2F64 8006BDC4 01681026 */  xor   $v0, $t3, $t0
/* AE2F68 8006BDC8 1000002B */  b     .L8006BE78
/* AE2F6C 8006BDCC 2C420001 */   sltiu $v0, $v0, 1
glabel L8006BDD0
/* AE2F70 8006BDD0 908C0003 */  lbu   $t4, 3($a0)
/* AE2F74 8006BDD4 3C078016 */  lui   $a3, %hi(gSaveContext) # $a3, 0x8016
/* AE2F78 8006BDD8 3C0F8012 */  lui   $t7, %hi(D_80126F88)
/* AE2F7C 8006BDDC 000CC880 */  sll   $t9, $t4, 2
/* AE2F80 8006BDE0 24E7E660 */  addiu $a3, %lo(gSaveContext) # addiu $a3, $a3, -0x19a0
/* AE2F84 8006BDE4 01F97821 */  addu  $t7, $t7, $t9
/* AE2F88 8006BDE8 8DEF6F88 */  lw    $t7, %lo(D_80126F88)($t7)
/* AE2F8C 8006BDEC 8CED00A4 */  lw    $t5, 0xa4($a3)
/* AE2F90 8006BDF0 30AA0001 */  andi  $t2, $a1, 1
/* AE2F94 8006BDF4 394E0001 */  xori  $t6, $t2, 1
/* AE2F98 8006BDF8 01EDC024 */  and   $t8, $t7, $t5
/* AE2F9C 8006BDFC 0018482B */  sltu  $t1, $zero, $t8
/* AE2FA0 8006BE00 2DCE0001 */  sltiu $t6, $t6, 1
/* AE2FA4 8006BE04 01C91026 */  xor   $v0, $t6, $t1
/* AE2FA8 8006BE08 1000001B */  b     .L8006BE78
/* AE2FAC 8006BE0C 2C420001 */   sltiu $v0, $v0, 1
glabel L8006BE10
/* AE2FB0 8006BE10 3C078016 */  lui   $a3, %hi(gSaveContext) # $a3, 0x8016
/* AE2FB4 8006BE14 24E7E660 */  addiu $a3, %lo(gSaveContext) # addiu $a3, $a3, -0x19a0
/* AE2FB8 8006BE18 90EC003A */  lbu   $t4, 0x3a($a3)
/* AE2FBC 8006BE1C 30AB0001 */  andi  $t3, $a1, 1
/* AE2FC0 8006BE20 39680001 */  xori  $t0, $t3, 1
/* AE2FC4 8006BE24 2D080001 */  sltiu $t0, $t0, 1
/* AE2FC8 8006BE28 000CC82B */  sltu  $t9, $zero, $t4
/* AE2FCC 8006BE2C 01191026 */  xor   $v0, $t0, $t9
/* AE2FD0 8006BE30 10000011 */  b     .L8006BE78
/* AE2FD4 8006BE34 2C420001 */   sltiu $v0, $v0, 1
glabel L8006BE38
.L8006BE38:
/* AE2FD8 8006BE38 3C048014 */  lui   $a0, %hi(D_8013B830) # $a0, 0x8014
/* AE2FDC 8006BE3C 2484B830 */  addiu $a0, %lo(D_8013B830) # addiu $a0, $a0, -0x47d0
/* AE2FE0 8006BE40 0C000B84 */  jal   LogUtils_LogThreadId
/* AE2FE4 8006BE44 2405009C */   li    $a1, 156
/* AE2FE8 8006BE48 3C048014 */  lui   $a0, %hi(D_8013B844) # $a0, 0x8014
/* AE2FEC 8006BE4C 3C058014 */  lui   $a1, %hi(D_8013B858) # $a1, 0x8014
/* AE2FF0 8006BE50 24A5B858 */  addiu $a1, %lo(D_8013B858) # addiu $a1, $a1, -0x47a8
/* AE2FF4 8006BE54 0C00084C */  jal   osSyncPrintf
/* AE2FF8 8006BE58 2484B844 */   addiu $a0, %lo(D_8013B844) # addiu $a0, $a0, -0x47bc
/* AE2FFC 8006BE5C 3C048014 */  lui   $a0, %hi(D_8013B864) # $a0, 0x8014
/* AE3000 8006BE60 3C058014 */  lui   $a1, %hi(D_8013B868) # $a1, 0x8014
/* AE3004 8006BE64 24A5B868 */  addiu $a1, %lo(D_8013B868) # addiu $a1, $a1, -0x4798
/* AE3008 8006BE68 2484B864 */  addiu $a0, %lo(D_8013B864) # addiu $a0, $a0, -0x479c
/* AE300C 8006BE6C 0C0007FC */  jal   __assert
/* AE3010 8006BE70 2406009D */   li    $a2, 157
/* AE3014 8006BE74 00001025 */  move  $v0, $zero
.L8006BE78:
/* AE3018 8006BE78 8FBF0014 */  lw    $ra, 0x14($sp)
/* AE301C 8006BE7C 27BD0018 */  addiu $sp, $sp, 0x18
/* AE3020 8006BE80 03E00008 */  jr    $ra
/* AE3024 8006BE84 00000000 */   nop   

