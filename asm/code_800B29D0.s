.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

.align 4

glabel func_800B29D0
/* B29B70 800B29D0 27BDFFC8 */  addiu $sp, $sp, -0x38
/* B29B74 800B29D4 AFBF0034 */  sw    $ra, 0x34($sp)
/* B29B78 800B29D8 AFB00030 */  sw    $s0, 0x30($sp)
/* B29B7C 800B29DC 908E0008 */  lbu   $t6, 8($a0)
/* B29B80 800B29E0 00808025 */  move  $s0, $a0
/* B29B84 800B29E4 A080000A */  sb    $zero, 0xa($a0)
/* B29B88 800B29E8 11C00004 */  beqz  $t6, .L800B29FC
/* B29B8C 800B29EC 26050010 */   addiu $a1, $s0, 0x10
/* B29B90 800B29F0 240F014D */  li    $t7, 333
/* B29B94 800B29F4 10000003 */  b     .L800B2A04
/* B29B98 800B29F8 A48F000E */   sh    $t7, 0xe($a0)
.L800B29FC:
/* B29B9C 800B29FC 24180264 */  li    $t8, 612
/* B29BA0 800B2A00 A618000E */  sh    $t8, 0xe($s0)
.L800B2A04:
/* B29BA4 800B2A04 3C014120 */  li    $at, 0x41200000 # 0.000000
/* B29BA8 800B2A08 44812000 */  mtc1  $at, $f4
/* B29BAC 800B2A0C 3C014648 */  li    $at, 0x46480000 # 0.000000
/* B29BB0 800B2A10 44813000 */  mtc1  $at, $f6
/* B29BB4 800B2A14 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* B29BB8 800B2A18 44814000 */  mtc1  $at, $f8
/* B29BBC 800B2A1C 3C073FAA */  lui   $a3, (0x3FAAAAAB >> 16) # lui $a3, 0x3faa
/* B29BC0 800B2A20 34E7AAAB */  ori   $a3, (0x3FAAAAAB & 0xFFFF) # ori $a3, $a3, 0xaaab
/* B29BC4 800B2A24 26040018 */  addiu $a0, $s0, 0x18
/* B29BC8 800B2A28 3C064270 */  li    $a2, 0x42700000 # 0.000000
/* B29BCC 800B2A2C E7A40010 */  swc1  $f4, 0x10($sp)
/* B29BD0 800B2A30 E7A60014 */  swc1  $f6, 0x14($sp)
/* B29BD4 800B2A34 0C0404C0 */  jal   guPerspective
/* B29BD8 800B2A38 E7A80018 */   swc1  $f8, 0x18($sp)
/* B29BDC 800B2A3C 44800000 */  mtc1  $zero, $f0
/* B29BE0 800B2A40 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* B29BE4 800B2A44 44815000 */  mtc1  $at, $f10
/* B29BE8 800B2A48 44050000 */  mfc1  $a1, $f0
/* B29BEC 800B2A4C 44060000 */  mfc1  $a2, $f0
/* B29BF0 800B2A50 26040058 */  addiu $a0, $s0, 0x58
/* B29BF4 800B2A54 3C0743C8 */  lui   $a3, 0x43c8
/* B29BF8 800B2A58 E7A00010 */  swc1  $f0, 0x10($sp)
/* B29BFC 800B2A5C E7A00014 */  swc1  $f0, 0x14($sp)
/* B29C00 800B2A60 E7A00018 */  swc1  $f0, 0x18($sp)
/* B29C04 800B2A64 E7A0001C */  swc1  $f0, 0x1c($sp)
/* B29C08 800B2A68 E7A00024 */  swc1  $f0, 0x24($sp)
/* B29C0C 800B2A6C 0C04078D */  jal   func_80101E34
/* B29C10 800B2A70 E7AA0020 */   swc1  $f10, 0x20($sp)
/* B29C14 800B2A74 8FBF0034 */  lw    $ra, 0x34($sp)
/* B29C18 800B2A78 8FB00030 */  lw    $s0, 0x30($sp)
/* B29C1C 800B2A7C 27BD0038 */  addiu $sp, $sp, 0x38
/* B29C20 800B2A80 03E00008 */  jr    $ra
/* B29C24 800B2A84 00000000 */   nop   

glabel func_800B2A88
/* B29C28 800B2A88 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B29C2C 800B2A8C AFBF0014 */  sw    $ra, 0x14($sp)
/* B29C30 800B2A90 AFA40018 */  sw    $a0, 0x18($sp)
/* B29C34 800B2A94 0C001114 */  jal   bzero
/* B29C38 800B2A98 24050218 */   li    $a1, 536
/* B29C3C 800B2A9C 8FBF0014 */  lw    $ra, 0x14($sp)
/* B29C40 800B2AA0 8FA20018 */  lw    $v0, 0x18($sp)
/* B29C44 800B2AA4 27BD0018 */  addiu $sp, $sp, 0x18
/* B29C48 800B2AA8 03E00008 */  jr    $ra
/* B29C4C 800B2AAC 00000000 */   nop   

glabel func_800B2AB0
/* B29C50 800B2AB0 03E00008 */  jr    $ra
/* B29C54 800B2AB4 AFA40000 */   sw    $a0, ($sp)

glabel func_800B2AB8
/* B29C58 800B2AB8 908E0008 */  lbu   $t6, 8($a0)
/* B29C5C 800B2ABC 3C028016 */  lui   $v0, %hi(gSaveContext+0x1419)
/* B29C60 800B2AC0 11C0001B */  beqz  $t6, .L800B2B30
/* B29C64 800B2AC4 00000000 */   nop   
/* B29C68 800B2AC8 3C028016 */  lui   $v0, %hi(gSaveContext+0x1419) # $v0, 0x8016
/* B29C6C 800B2ACC 9042FA79 */  lbu   $v0, %lo(gSaveContext+0x1419)($v0)
/* B29C70 800B2AD0 948F000E */  lhu   $t7, 0xe($a0)
/* B29C74 800B2AD4 240A0264 */  li    $t2, 612
/* B29C78 800B2AD8 0002C080 */  sll   $t8, $v0, 2
/* B29C7C 800B2ADC 0302C023 */  subu  $t8, $t8, $v0
/* B29C80 800B2AE0 0305001A */  div   $zero, $t8, $a1
/* B29C84 800B2AE4 14A00002 */  bnez  $a1, .L800B2AF0
/* B29C88 800B2AE8 00000000 */   nop   
/* B29C8C 800B2AEC 0007000D */  break 7
.L800B2AF0:
/* B29C90 800B2AF0 2401FFFF */  li    $at, -1
/* B29C94 800B2AF4 14A10004 */  bne   $a1, $at, .L800B2B08
/* B29C98 800B2AF8 3C018000 */   lui   $at, 0x8000
/* B29C9C 800B2AFC 17010002 */  bne   $t8, $at, .L800B2B08
/* B29CA0 800B2B00 00000000 */   nop   
/* B29CA4 800B2B04 0006000D */  break 6
.L800B2B08:
/* B29CA8 800B2B08 0000C812 */  mflo  $t9
/* B29CAC 800B2B0C 01F94021 */  addu  $t0, $t7, $t9
/* B29CB0 800B2B10 3109FFFF */  andi  $t1, $t0, 0xffff
/* B29CB4 800B2B14 29210264 */  slti  $at, $t1, 0x264
/* B29CB8 800B2B18 1420001D */  bnez  $at, .L800B2B90
/* B29CBC 800B2B1C A488000E */   sh    $t0, 0xe($a0)
/* B29CC0 800B2B20 240B0001 */  li    $t3, 1
/* B29CC4 800B2B24 A48A000E */  sh    $t2, 0xe($a0)
/* B29CC8 800B2B28 03E00008 */  jr    $ra
/* B29CCC 800B2B2C A08B000A */   sb    $t3, 0xa($a0)
.L800B2B30:
/* B29CD0 800B2B30 9042FA79 */  lbu   $v0, %lo(gSaveContext+0x1419)($v0)
/* B29CD4 800B2B34 948C000E */  lhu   $t4, 0xe($a0)
/* B29CD8 800B2B38 2419014D */  li    $t9, 333
/* B29CDC 800B2B3C 00026880 */  sll   $t5, $v0, 2
/* B29CE0 800B2B40 01A26823 */  subu  $t5, $t5, $v0
/* B29CE4 800B2B44 01A5001A */  div   $zero, $t5, $a1
/* B29CE8 800B2B48 14A00002 */  bnez  $a1, .L800B2B54
/* B29CEC 800B2B4C 00000000 */   nop   
/* B29CF0 800B2B50 0007000D */  break 7
.L800B2B54:
/* B29CF4 800B2B54 2401FFFF */  li    $at, -1
/* B29CF8 800B2B58 14A10004 */  bne   $a1, $at, .L800B2B6C
/* B29CFC 800B2B5C 3C018000 */   lui   $at, 0x8000
/* B29D00 800B2B60 15A10002 */  bne   $t5, $at, .L800B2B6C
/* B29D04 800B2B64 00000000 */   nop   
/* B29D08 800B2B68 0006000D */  break 6
.L800B2B6C:
/* B29D0C 800B2B6C 00007012 */  mflo  $t6
/* B29D10 800B2B70 018EC023 */  subu  $t8, $t4, $t6
/* B29D14 800B2B74 330FFFFF */  andi  $t7, $t8, 0xffff
/* B29D18 800B2B78 29E1014E */  slti  $at, $t7, 0x14e
/* B29D1C 800B2B7C 10200004 */  beqz  $at, .L800B2B90
/* B29D20 800B2B80 A498000E */   sh    $t8, 0xe($a0)
/* B29D24 800B2B84 24080001 */  li    $t0, 1
/* B29D28 800B2B88 A499000E */  sh    $t9, 0xe($a0)
/* B29D2C 800B2B8C A088000A */  sb    $t0, 0xa($a0)
.L800B2B90:
/* B29D30 800B2B90 03E00008 */  jr    $ra
/* B29D34 800B2B94 00000000 */   nop   

glabel func_800B2B98
/* B29D38 800B2B98 27BDFF80 */  addiu $sp, $sp, -0x80
/* B29D3C 800B2B9C AFBF0024 */  sw    $ra, 0x24($sp)
/* B29D40 800B2BA0 AFB00020 */  sw    $s0, 0x20($sp)
/* B29D44 800B2BA4 AFA50084 */  sw    $a1, 0x84($sp)
/* B29D48 800B2BA8 8CAF0000 */  lw    $t7, ($a1)
/* B29D4C 800B2BAC 3C018014 */  lui   $at, %hi(D_801430A0)
/* B29D50 800B2BB0 C42030A0 */  lwc1  $f0, %lo(D_801430A0)($at)
/* B29D54 800B2BB4 AFAF007C */  sw    $t7, 0x7c($sp)
/* B29D58 800B2BB8 90820009 */  lbu   $v0, 9($a0)
/* B29D5C 800B2BBC 00808025 */  move  $s0, $a0
/* B29D60 800B2BC0 44050000 */  mfc1  $a1, $f0
/* B29D64 800B2BC4 0002C080 */  sll   $t8, $v0, 2
/* B29D68 800B2BC8 0302C023 */  subu  $t8, $t8, $v0
/* B29D6C 800B2BCC 0018C180 */  sll   $t8, $t8, 6
/* B29D70 800B2BD0 00982021 */  addu  $a0, $a0, $t8
/* B29D74 800B2BD4 38590001 */  xori  $t9, $v0, 1
/* B29D78 800B2BD8 24840098 */  addiu $a0, $a0, 0x98
/* B29D7C 800B2BDC A2190009 */  sb    $t9, 9($s0)
/* B29D80 800B2BE0 44060000 */  mfc1  $a2, $f0
/* B29D84 800B2BE4 AFA40078 */  sw    $a0, 0x78($sp)
/* B29D88 800B2BE8 0C040078 */  jal   func_801001E0
/* B29D8C 800B2BEC 3C073F80 */   li    $a3, 0x3F800000 # 0.000000
/* B29D90 800B2BF0 44800000 */  mtc1  $zero, $f0
/* B29D94 800B2BF4 8FA40078 */  lw    $a0, 0x78($sp)
/* B29D98 800B2BF8 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* B29D9C 800B2BFC 44812000 */  mtc1  $at, $f4
/* B29DA0 800B2C00 24840040 */  addiu $a0, $a0, 0x40
/* B29DA4 800B2C04 44050000 */  mfc1  $a1, $f0
/* B29DA8 800B2C08 44060000 */  mfc1  $a2, $f0
/* B29DAC 800B2C0C 44070000 */  mfc1  $a3, $f0
/* B29DB0 800B2C10 AFA40030 */  sw    $a0, 0x30($sp)
/* B29DB4 800B2C14 0C040FE9 */  jal   func_80103FA4
/* B29DB8 800B2C18 E7A40010 */   swc1  $f4, 0x10($sp)
/* B29DBC 800B2C1C 44800000 */  mtc1  $zero, $f0
/* B29DC0 800B2C20 8FA40078 */  lw    $a0, 0x78($sp)
/* B29DC4 800B2C24 44050000 */  mfc1  $a1, $f0
/* B29DC8 800B2C28 24840080 */  addiu $a0, $a0, 0x80
/* B29DCC 800B2C2C 44060000 */  mfc1  $a2, $f0
/* B29DD0 800B2C30 44070000 */  mfc1  $a3, $f0
/* B29DD4 800B2C34 0C041708 */  jal   func_80105C20
/* B29DD8 800B2C38 AFA4002C */   sw    $a0, 0x2c($sp)
/* B29DDC 800B2C3C 8FA8007C */  lw    $t0, 0x7c($sp)
/* B29DE0 800B2C40 3C0AE700 */  lui   $t2, 0xe700
/* B29DE4 800B2C44 27A4007C */  addiu $a0, $sp, 0x7c
/* B29DE8 800B2C48 25090008 */  addiu $t1, $t0, 8
/* B29DEC 800B2C4C AFA9007C */  sw    $t1, 0x7c($sp)
/* B29DF0 800B2C50 AD000004 */  sw    $zero, 4($t0)
/* B29DF4 800B2C54 AD0A0000 */  sw    $t2, ($t0)
/* B29DF8 800B2C58 9606000E */  lhu   $a2, 0xe($s0)
/* B29DFC 800B2C5C 9605000C */  lhu   $a1, 0xc($s0)
/* B29E00 800B2C60 AFA00010 */  sw    $zero, 0x10($sp)
/* B29E04 800B2C64 0C02536E */  jal   func_80094DB8
/* B29E08 800B2C68 00003825 */   move  $a3, $zero
/* B29E0C 800B2C6C 8FAB007C */  lw    $t3, 0x7c($sp)
/* B29E10 800B2C70 3C0DDB06 */  lui   $t5, (0xDB060020 >> 16) # lui $t5, 0xdb06
/* B29E14 800B2C74 35AD0020 */  ori   $t5, (0xDB060020 & 0xFFFF) # ori $t5, $t5, 0x20
/* B29E18 800B2C78 256C0008 */  addiu $t4, $t3, 8
/* B29E1C 800B2C7C AFAC007C */  sw    $t4, 0x7c($sp)
/* B29E20 800B2C80 AD620004 */  sw    $v0, 4($t3)
/* B29E24 800B2C84 AD6D0000 */  sw    $t5, ($t3)
/* B29E28 800B2C88 8FA2007C */  lw    $v0, 0x7c($sp)
/* B29E2C 800B2C8C 3C18FA00 */  lui   $t8, (0xFA000080 >> 16) # lui $t8, 0xfa00
/* B29E30 800B2C90 37180080 */  ori   $t8, (0xFA000080 & 0xFFFF) # ori $t8, $t8, 0x80
/* B29E34 800B2C94 244F0008 */  addiu $t7, $v0, 8
/* B29E38 800B2C98 AFAF007C */  sw    $t7, 0x7c($sp)
/* B29E3C 800B2C9C AC580000 */  sw    $t8, ($v0)
/* B29E40 800B2CA0 920B0001 */  lbu   $t3, 1($s0)
/* B29E44 800B2CA4 92080000 */  lbu   $t0, ($s0)
/* B29E48 800B2CA8 920F0002 */  lbu   $t7, 2($s0)
/* B29E4C 800B2CAC 000B6400 */  sll   $t4, $t3, 0x10
/* B29E50 800B2CB0 00084E00 */  sll   $t1, $t0, 0x18
/* B29E54 800B2CB4 012C6825 */  or    $t5, $t1, $t4
/* B29E58 800B2CB8 000FC200 */  sll   $t8, $t7, 8
/* B29E5C 800B2CBC 01B8C825 */  or    $t9, $t5, $t8
/* B29E60 800B2CC0 372800FF */  ori   $t0, $t9, 0xff
/* B29E64 800B2CC4 AC480004 */  sw    $t0, 4($v0)
/* B29E68 800B2CC8 8FAA007C */  lw    $t2, 0x7c($sp)
/* B29E6C 800B2CCC 3C09DA38 */  lui   $t1, (0xDA380007 >> 16) # lui $t1, 0xda38
/* B29E70 800B2CD0 35290007 */  ori   $t1, (0xDA380007 & 0xFFFF) # ori $t1, $t1, 7
/* B29E74 800B2CD4 254B0008 */  addiu $t3, $t2, 8
/* B29E78 800B2CD8 AFAB007C */  sw    $t3, 0x7c($sp)
/* B29E7C 800B2CDC 260C0018 */  addiu $t4, $s0, 0x18
/* B29E80 800B2CE0 AD4C0004 */  sw    $t4, 4($t2)
/* B29E84 800B2CE4 AD490000 */  sw    $t1, ($t2)
/* B29E88 800B2CE8 8FAE007C */  lw    $t6, 0x7c($sp)
/* B29E8C 800B2CEC 3C0DDB0E */  lui   $t5, 0xdb0e
/* B29E90 800B2CF0 3C0ADA38 */  lui   $t2, (0xDA380005 >> 16) # lui $t2, 0xda38
/* B29E94 800B2CF4 25CF0008 */  addiu $t7, $t6, 8
/* B29E98 800B2CF8 AFAF007C */  sw    $t7, 0x7c($sp)
/* B29E9C 800B2CFC ADCD0000 */  sw    $t5, ($t6)
/* B29EA0 800B2D00 96180010 */  lhu   $t8, 0x10($s0)
/* B29EA4 800B2D04 354A0005 */  ori   $t2, (0xDA380005 & 0xFFFF) # ori $t2, $t2, 5
/* B29EA8 800B2D08 260B0058 */  addiu $t3, $s0, 0x58
/* B29EAC 800B2D0C ADD80004 */  sw    $t8, 4($t6)
/* B29EB0 800B2D10 8FB9007C */  lw    $t9, 0x7c($sp)
/* B29EB4 800B2D14 3C0EDA38 */  lui   $t6, (0xDA380003 >> 16) # lui $t6, 0xda38
/* B29EB8 800B2D18 35CE0003 */  ori   $t6, (0xDA380003 & 0xFFFF) # ori $t6, $t6, 3
/* B29EBC 800B2D1C 27280008 */  addiu $t0, $t9, 8
/* B29EC0 800B2D20 AFA8007C */  sw    $t0, 0x7c($sp)
/* B29EC4 800B2D24 AF2B0004 */  sw    $t3, 4($t9)
/* B29EC8 800B2D28 AF2A0000 */  sw    $t2, ($t9)
/* B29ECC 800B2D2C 8FA9007C */  lw    $t1, 0x7c($sp)
/* B29ED0 800B2D30 3C03DA38 */  lui   $v1, (0xDA380001 >> 16) # lui $v1, 0xda38
/* B29ED4 800B2D34 34630001 */  ori   $v1, (0xDA380001 & 0xFFFF) # ori $v1, $v1, 1
/* B29ED8 800B2D38 252C0008 */  addiu $t4, $t1, 8
/* B29EDC 800B2D3C AFAC007C */  sw    $t4, 0x7c($sp)
/* B29EE0 800B2D40 AD2E0000 */  sw    $t6, ($t1)
/* B29EE4 800B2D44 8FAF0078 */  lw    $t7, 0x78($sp)
/* B29EE8 800B2D48 3C0EDE00 */  lui   $t6, 0xde00
/* B29EEC 800B2D4C AD2F0004 */  sw    $t7, 4($t1)
/* B29EF0 800B2D50 8FAD007C */  lw    $t5, 0x7c($sp)
/* B29EF4 800B2D54 3C0F8013 */  lui   $t7, %hi(D_8012BA90) # $t7, 0x8013
/* B29EF8 800B2D58 25EFBA90 */  addiu $t7, %lo(D_8012BA90) # addiu $t7, $t7, -0x4570
/* B29EFC 800B2D5C 25B80008 */  addiu $t8, $t5, 8
/* B29F00 800B2D60 AFB8007C */  sw    $t8, 0x7c($sp)
/* B29F04 800B2D64 ADA30000 */  sw    $v1, ($t5)
/* B29F08 800B2D68 8FB90030 */  lw    $t9, 0x30($sp)
/* B29F0C 800B2D6C ADB90004 */  sw    $t9, 4($t5)
/* B29F10 800B2D70 8FA8007C */  lw    $t0, 0x7c($sp)
/* B29F14 800B2D74 3C19E700 */  lui   $t9, 0xe700
/* B29F18 800B2D78 250A0008 */  addiu $t2, $t0, 8
/* B29F1C 800B2D7C AFAA007C */  sw    $t2, 0x7c($sp)
/* B29F20 800B2D80 AD030000 */  sw    $v1, ($t0)
/* B29F24 800B2D84 8FAB002C */  lw    $t3, 0x2c($sp)
/* B29F28 800B2D88 AD0B0004 */  sw    $t3, 4($t0)
/* B29F2C 800B2D8C 8FA9007C */  lw    $t1, 0x7c($sp)
/* B29F30 800B2D90 252C0008 */  addiu $t4, $t1, 8
/* B29F34 800B2D94 AFAC007C */  sw    $t4, 0x7c($sp)
/* B29F38 800B2D98 AD2F0004 */  sw    $t7, 4($t1)
/* B29F3C 800B2D9C AD2E0000 */  sw    $t6, ($t1)
/* B29F40 800B2DA0 8FAD007C */  lw    $t5, 0x7c($sp)
/* B29F44 800B2DA4 25B80008 */  addiu $t8, $t5, 8
/* B29F48 800B2DA8 AFB8007C */  sw    $t8, 0x7c($sp)
/* B29F4C 800B2DAC ADA00004 */  sw    $zero, 4($t5)
/* B29F50 800B2DB0 ADB90000 */  sw    $t9, ($t5)
/* B29F54 800B2DB4 8FAA0084 */  lw    $t2, 0x84($sp)
/* B29F58 800B2DB8 8FA8007C */  lw    $t0, 0x7c($sp)
/* B29F5C 800B2DBC AD480000 */  sw    $t0, ($t2)
/* B29F60 800B2DC0 8FBF0024 */  lw    $ra, 0x24($sp)
/* B29F64 800B2DC4 8FB00020 */  lw    $s0, 0x20($sp)
/* B29F68 800B2DC8 27BD0080 */  addiu $sp, $sp, 0x80
/* B29F6C 800B2DCC 03E00008 */  jr    $ra
/* B29F70 800B2DD0 00000000 */   nop   

glabel func_800B2DD4
/* B29F74 800B2DD4 03E00008 */  jr    $ra
/* B29F78 800B2DD8 9082000A */   lbu   $v0, 0xa($a0)

glabel func_800B2DDC
/* B29F7C 800B2DDC 24010001 */  li    $at, 1
/* B29F80 800B2DE0 14A10003 */  bne   $a1, $at, .L800B2DF0
/* B29F84 800B2DE4 240E0001 */   li    $t6, 1
/* B29F88 800B2DE8 10000002 */  b     .L800B2DF4
/* B29F8C 800B2DEC A08E0008 */   sb    $t6, 8($a0)
.L800B2DF0:
/* B29F90 800B2DF0 A0800008 */  sb    $zero, 8($a0)
.L800B2DF4:
/* B29F94 800B2DF4 908F0008 */  lbu   $t7, 8($a0)
/* B29F98 800B2DF8 2418014D */  li    $t8, 333
/* B29F9C 800B2DFC 24190264 */  li    $t9, 612
/* B29FA0 800B2E00 51E00004 */  beql  $t7, $zero, .L800B2E14
/* B29FA4 800B2E04 A499000E */   sh    $t9, 0xe($a0)
/* B29FA8 800B2E08 03E00008 */  jr    $ra
/* B29FAC 800B2E0C A498000E */   sh    $t8, 0xe($a0)
/* B29FB0 800B2E10 A499000E */  sh    $t9, 0xe($a0)
.L800B2E14:
/* B29FB4 800B2E14 03E00008 */  jr    $ra
/* B29FB8 800B2E18 00000000 */   nop   

glabel func_800B2E1C
/* B29FBC 800B2E1C 03E00008 */  jr    $ra
/* B29FC0 800B2E20 AC850000 */   sw    $a1, ($a0)

glabel func_800B2E24
/* B29FC4 800B2E24 03E00008 */  jr    $ra
/* B29FC8 800B2E28 AC850004 */   sw    $a1, 4($a0)
