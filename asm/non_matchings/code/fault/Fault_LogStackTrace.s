.rdata
glabel D_80147300
    .asciz    "STACK TRACE\nSP       PC       (VPC)\n"
    .balign 4
glabel D_80147328
    .asciz    "%08x %08x"
    .balign 4
glabel D_80147334
    .asciz    " -> %08x"
    .balign 4
glabel D_80147340
    .asciz    "\n"
    .balign 4

.text
glabel Fault_LogStackTrace
/* B4CEA8 800D5D08 3C08FFFA */  lui   $t0, (0xFFFA5A5A >> 16) # lui $t0, 0xfffa
/* B4CEAC 800D5D0C 03A04825 */  move  $t1, $sp
/* B4CEB0 800D5D10 27BDFFA0 */  addiu $sp, $sp, -0x60
/* B4CEB4 800D5D14 35085A5A */  ori   $t0, (0xFFFA5A5A & 0xFFFF) # ori $t0, $t0, 0x5a5a
.L800D5D18:
/* B4CEB8 800D5D18 2529FFF8 */  addiu $t1, $t1, -8
/* B4CEBC 800D5D1C AD280000 */  sw    $t0, ($t1)
/* B4CEC0 800D5D20 153DFFFD */  bne   $t1, $sp, .L800D5D18
/* B4CEC4 800D5D24 AD280004 */   sw    $t0, 4($t1)
/* B4CEC8 800D5D28 AFBF003C */  sw    $ra, 0x3c($sp)
/* B4CECC 800D5D2C AFBE0038 */  sw    $fp, 0x38($sp)
/* B4CED0 800D5D30 AFB70034 */  sw    $s7, 0x34($sp)
/* B4CED4 800D5D34 AFB60030 */  sw    $s6, 0x30($sp)
/* B4CED8 800D5D38 AFB5002C */  sw    $s5, 0x2c($sp)
/* B4CEDC 800D5D3C AFB40028 */  sw    $s4, 0x28($sp)
/* B4CEE0 800D5D40 AFB30024 */  sw    $s3, 0x24($sp)
/* B4CEE4 800D5D44 AFB20020 */  sw    $s2, 0x20($sp)
/* B4CEE8 800D5D48 AFB1001C */  sw    $s1, 0x1c($sp)
/* B4CEEC 800D5D4C AFB00018 */  sw    $s0, 0x18($sp)
/* B4CEF0 800D5D50 00803025 */  move  $a2, $a0
/* B4CEF4 800D5D54 AFA50064 */  sw    $a1, 0x64($sp)
/* B4CEF8 800D5D58 8CCF00F4 */  lw    $t7, 0xf4($a2)
/* B4CEFC 800D5D5C 3C048014 */  lui   $a0, %hi(D_80147300) # $a0, 0x8014
/* B4CF00 800D5D60 24847300 */  addiu $a0, %lo(D_80147300) # addiu $a0, $a0, 0x7300
/* B4CF04 800D5D64 AFAF0058 */  sw    $t7, 0x58($sp)
/* B4CF08 800D5D68 8CC90104 */  lw    $t1, 0x104($a2)
/* B4CF0C 800D5D6C AFA90054 */  sw    $t1, 0x54($sp)
/* B4CF10 800D5D70 8CCA011C */  lw    $t2, 0x11c($a2)
/* B4CF14 800D5D74 0C00084C */  jal   osSyncPrintf
/* B4CF18 800D5D78 AFAA0050 */   sw    $t2, 0x50($sp)
/* B4CF1C 800D5D7C 8FAB0064 */  lw    $t3, 0x64($sp)
/* B4CF20 800D5D80 24100001 */  li    $s0, 1
/* B4CF24 800D5D84 8FAC0054 */  lw    $t4, 0x54($sp)
/* B4CF28 800D5D88 29610002 */  slti  $at, $t3, 2
/* B4CF2C 800D5D8C 5420002F */  bnezl $at, .L800D5E4C
/* B4CF30 800D5D90 8FBF003C */   lw    $ra, 0x3c($sp)
/* B4CF34 800D5D94 15800003 */  bnez  $t4, .L800D5DA4
/* B4CF38 800D5D98 8FAD0058 */   lw    $t5, 0x58($sp)
/* B4CF3C 800D5D9C 51A0002B */  beql  $t5, $zero, .L800D5E4C
/* B4CF40 800D5DA0 8FBF003C */   lw    $ra, 0x3c($sp)
.L800D5DA4:
/* B4CF44 800D5DA4 8FB10050 */  lw    $s1, 0x50($sp)
/* B4CF48 800D5DA8 3C1E8000 */  lui   $fp, %hi(__osCleanupThread) # $fp, 0x8000
/* B4CF4C 800D5DAC 27DE42F0 */  addiu $fp, %lo(__osCleanupThread) # addiu $fp, $fp, 0x42f0
/* B4CF50 800D5DB0 123E0025 */  beq   $s1, $fp, .L800D5E48
/* B4CF54 800D5DB4 27B70054 */   addiu $s7, $sp, 0x54
/* B4CF58 800D5DB8 3C148014 */  lui   $s4, %hi(D_80147340) # $s4, 0x8014
/* B4CF5C 800D5DBC 3C138014 */  lui   $s3, %hi(D_80147334) # $s3, 0x8014
/* B4CF60 800D5DC0 3C128014 */  lui   $s2, %hi(D_80147328) # $s2, 0x8014
/* B4CF64 800D5DC4 26527328 */  addiu $s2, %lo(D_80147328) # addiu $s2, $s2, 0x7328
/* B4CF68 800D5DC8 26737334 */  addiu $s3, %lo(D_80147334) # addiu $s3, $s3, 0x7334
/* B4CF6C 800D5DCC 26947340 */  addiu $s4, %lo(D_80147340) # addiu $s4, $s4, 0x7340
/* B4CF70 800D5DD0 27B60050 */  addiu $s6, $sp, 0x50
/* B4CF74 800D5DD4 27B50058 */  addiu $s5, $sp, 0x58
/* B4CF78 800D5DD8 02402025 */  move  $a0, $s2
.L800D5DDC:
/* B4CF7C 800D5DDC 8FA50058 */  lw    $a1, 0x58($sp)
/* B4CF80 800D5DE0 0C00084C */  jal   osSyncPrintf
/* B4CF84 800D5DE4 02203025 */   move  $a2, $s1
/* B4CF88 800D5DE8 0C035162 */  jal   Fault_ConvertAddress
/* B4CF8C 800D5DEC 8FA40050 */   lw    $a0, 0x50($sp)
/* B4CF90 800D5DF0 10400003 */  beqz  $v0, .L800D5E00
/* B4CF94 800D5DF4 00402825 */   move  $a1, $v0
/* B4CF98 800D5DF8 0C00084C */  jal   osSyncPrintf
/* B4CF9C 800D5DFC 02602025 */   move  $a0, $s3
.L800D5E00:
/* B4CFA0 800D5E00 0C00084C */  jal   osSyncPrintf
/* B4CFA4 800D5E04 02802025 */   move  $a0, $s4
/* B4CFA8 800D5E08 02A02025 */  move  $a0, $s5
/* B4CFAC 800D5E0C 02C02825 */  move  $a1, $s6
/* B4CFB0 800D5E10 0C03567E */  jal   func_800D59F8
/* B4CFB4 800D5E14 02E03025 */   move  $a2, $s7
/* B4CFB8 800D5E18 8FAE0064 */  lw    $t6, 0x64($sp)
/* B4CFBC 800D5E1C 26100001 */  addiu $s0, $s0, 1
/* B4CFC0 800D5E20 8FAF0054 */  lw    $t7, 0x54($sp)
/* B4CFC4 800D5E24 020E082A */  slt   $at, $s0, $t6
/* B4CFC8 800D5E28 10200007 */  beqz  $at, .L800D5E48
/* B4CFCC 800D5E2C 8FB80058 */   lw    $t8, 0x58($sp)
/* B4CFD0 800D5E30 15E00003 */  bnez  $t7, .L800D5E40
/* B4CFD4 800D5E34 8FB10050 */   lw    $s1, 0x50($sp)
/* B4CFD8 800D5E38 53000004 */  beql  $t8, $zero, .L800D5E4C
/* B4CFDC 800D5E3C 8FBF003C */   lw    $ra, 0x3c($sp)
.L800D5E40:
/* B4CFE0 800D5E40 563EFFE6 */  bnel  $s1, $fp, .L800D5DDC
/* B4CFE4 800D5E44 02402025 */   move  $a0, $s2
.L800D5E48:
/* B4CFE8 800D5E48 8FBF003C */  lw    $ra, 0x3c($sp)
.L800D5E4C:
/* B4CFEC 800D5E4C 8FB00018 */  lw    $s0, 0x18($sp)
/* B4CFF0 800D5E50 8FB1001C */  lw    $s1, 0x1c($sp)
/* B4CFF4 800D5E54 8FB20020 */  lw    $s2, 0x20($sp)
/* B4CFF8 800D5E58 8FB30024 */  lw    $s3, 0x24($sp)
/* B4CFFC 800D5E5C 8FB40028 */  lw    $s4, 0x28($sp)
/* B4D000 800D5E60 8FB5002C */  lw    $s5, 0x2c($sp)
/* B4D004 800D5E64 8FB60030 */  lw    $s6, 0x30($sp)
/* B4D008 800D5E68 8FB70034 */  lw    $s7, 0x34($sp)
/* B4D00C 800D5E6C 8FBE0038 */  lw    $fp, 0x38($sp)
/* B4D010 800D5E70 03E00008 */  jr    $ra
/* B4D014 800D5E74 27BD0060 */   addiu $sp, $sp, 0x60

