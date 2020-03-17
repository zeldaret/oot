.rdata
glabel D_80140698
    .asciz "../z_skin.c"
    .balign 4

glabel D_801406A4
    .asciz "../z_skin.c"
    .balign 4

.text
glabel func_800A5E28
/* B1CFC8 800A5E28 27BDFFB8 */  addiu $sp, $sp, -0x48
/* B1CFCC 800A5E2C AFB00018 */  sw    $s0, 0x18($sp)
/* B1CFD0 800A5E30 AFA60050 */  sw    $a2, 0x50($sp)
/* B1CFD4 800A5E34 00808025 */  move  $s0, $a0
/* B1CFD8 800A5E38 AFBF001C */  sw    $ra, 0x1c($sp)
/* B1CFDC 800A5E3C AFA5004C */  sw    $a1, 0x4c($sp)
/* B1CFE0 800A5E40 AFA70054 */  sw    $a3, 0x54($sp)
/* B1CFE4 800A5E44 3C068014 */  lui   $a2, %hi(D_80140698) # $a2, 0x8014
/* B1CFE8 800A5E48 24C60698 */  addiu $a2, %lo(D_80140698) # addiu $a2, $a2, 0x698
/* B1CFEC 800A5E4C 2407016C */  li    $a3, 364
/* B1CFF0 800A5E50 02002825 */  move  $a1, $s0
/* B1CFF4 800A5E54 0C031AB1 */  jal   func_800C6AC4
/* B1CFF8 800A5E58 27A4002C */   addiu $a0, $sp, 0x2c
/* B1CFFC 800A5E5C 8FAE004C */  lw    $t6, 0x4c($sp)
/* B1D000 800A5E60 3C068016 */  lui   $a2, %hi(gSegments) # $a2, 0x8016
/* B1D004 800A5E64 24C66FA8 */  addiu $a2, %lo(gSegments) # addiu $a2, $a2, 0x6fa8
/* B1D008 800A5E68 8DCF0000 */  lw    $t7, ($t6)
/* B1D00C 800A5E6C 3C0700FF */  lui   $a3, (0x00FFFFFF >> 16) # lui $a3, 0xff
/* B1D010 800A5E70 34E7FFFF */  ori   $a3, (0x00FFFFFF & 0xFFFF) # ori $a3, $a3, 0xffff
/* B1D014 800A5E74 8DE20000 */  lw    $v0, ($t7)
/* B1D018 800A5E78 3C088000 */  lui   $t0, 0x8000
/* B1D01C 800A5E7C 0002C100 */  sll   $t8, $v0, 4
/* B1D020 800A5E80 0018CF02 */  srl   $t9, $t8, 0x1c
/* B1D024 800A5E84 00195080 */  sll   $t2, $t9, 2
/* B1D028 800A5E88 00CA5821 */  addu  $t3, $a2, $t2
/* B1D02C 800A5E8C 8D6C0000 */  lw    $t4, ($t3)
/* B1D030 800A5E90 8FB80050 */  lw    $t8, 0x50($sp)
/* B1D034 800A5E94 00476824 */  and   $t5, $v0, $a3
/* B1D038 800A5E98 018D7821 */  addu  $t7, $t4, $t5
/* B1D03C 800A5E9C 01E82821 */  addu  $a1, $t7, $t0
/* B1D040 800A5EA0 0018C880 */  sll   $t9, $t8, 2
/* B1D044 800A5EA4 00B95021 */  addu  $t2, $a1, $t9
/* B1D048 800A5EA8 8D430000 */  lw    $v1, ($t2)
/* B1D04C 800A5EAC 01C02825 */  move  $a1, $t6
/* B1D050 800A5EB0 00036100 */  sll   $t4, $v1, 4
/* B1D054 800A5EB4 000C6F02 */  srl   $t5, $t4, 0x1c
/* B1D058 800A5EB8 000D7880 */  sll   $t7, $t5, 2
/* B1D05C 800A5EBC 00CFC821 */  addu  $t9, $a2, $t7
/* B1D060 800A5EC0 8F2A0000 */  lw    $t2, ($t9)
/* B1D064 800A5EC4 00675824 */  and   $t3, $v1, $a3
/* B1D068 800A5EC8 016A6021 */  addu  $t4, $t3, $t2
/* B1D06C 800A5ECC 01886821 */  addu  $t5, $t4, $t0
/* B1D070 800A5ED0 8DA4000C */  lw    $a0, 0xc($t5)
/* B1D074 800A5ED4 0004C900 */  sll   $t9, $a0, 4
/* B1D078 800A5ED8 00195F02 */  srl   $t3, $t9, 0x1c
/* B1D07C 800A5EDC 000B5080 */  sll   $t2, $t3, 2
/* B1D080 800A5EE0 00CA6021 */  addu  $t4, $a2, $t2
/* B1D084 800A5EE4 8D8D0000 */  lw    $t5, ($t4)
/* B1D088 800A5EE8 8FAB0058 */  lw    $t3, 0x58($sp)
/* B1D08C 800A5EEC 00877824 */  and   $t7, $a0, $a3
/* B1D090 800A5EF0 01EDC821 */  addu  $t9, $t7, $t5
/* B1D094 800A5EF4 316A0001 */  andi  $t2, $t3, 1
/* B1D098 800A5EF8 15400007 */  bnez  $t2, .L800A5F18
/* B1D09C 800A5EFC 03284821 */   addu  $t1, $t9, $t0
/* B1D0A0 800A5F00 02002025 */  move  $a0, $s0
/* B1D0A4 800A5F04 03003025 */  move  $a2, $t8
/* B1D0A8 800A5F08 8FA70054 */  lw    $a3, 0x54($sp)
/* B1D0AC 800A5F0C 0C029663 */  jal   func_800A598C
/* B1D0B0 800A5F10 AFA90040 */   sw    $t1, 0x40($sp)
/* B1D0B4 800A5F14 8FA90040 */  lw    $t1, 0x40($sp)
.L800A5F18:
/* B1D0B8 800A5F18 8E0302C0 */  lw    $v1, 0x2c0($s0)
/* B1D0BC 800A5F1C 3C0FDE00 */  lui   $t7, 0xde00
/* B1D0C0 800A5F20 3C068014 */  lui   $a2, %hi(D_801406A4) # $a2, 0x8014
/* B1D0C4 800A5F24 246C0008 */  addiu $t4, $v1, 8
/* B1D0C8 800A5F28 AE0C02C0 */  sw    $t4, 0x2c0($s0)
/* B1D0CC 800A5F2C AC6F0000 */  sw    $t7, ($v1)
/* B1D0D0 800A5F30 8D2D0008 */  lw    $t5, 8($t1)
/* B1D0D4 800A5F34 24C606A4 */  addiu $a2, %lo(D_801406A4) # addiu $a2, $a2, 0x6a4
/* B1D0D8 800A5F38 27A4002C */  addiu $a0, $sp, 0x2c
/* B1D0DC 800A5F3C 02002825 */  move  $a1, $s0
/* B1D0E0 800A5F40 24070179 */  li    $a3, 377
/* B1D0E4 800A5F44 0C031AD5 */  jal   func_800C6B54
/* B1D0E8 800A5F48 AC6D0004 */   sw    $t5, 4($v1)
/* B1D0EC 800A5F4C 8FBF001C */  lw    $ra, 0x1c($sp)
/* B1D0F0 800A5F50 8FB00018 */  lw    $s0, 0x18($sp)
/* B1D0F4 800A5F54 27BD0048 */  addiu $sp, $sp, 0x48
/* B1D0F8 800A5F58 03E00008 */  jr    $ra
/* B1D0FC 800A5F5C 00000000 */   nop   

