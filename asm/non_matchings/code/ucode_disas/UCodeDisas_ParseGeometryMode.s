.rdata
glabel D_80147C04
    .asciz "|"
    .balign 4

glabel D_80147C08
    .asciz "%s"
    .balign 4



.text
glabel UCodeDisas_ParseGeometryMode
/* B4F1FC 800D805C 27BDFFC8 */  addiu $sp, $sp, -0x38
/* B4F200 800D8060 AFB30024 */  sw    $s3, 0x24($sp)
/* B4F204 800D8064 AFB20020 */  sw    $s2, 0x20($sp)
/* B4F208 800D8068 00809025 */  move  $s2, $a0
/* B4F20C 800D806C 00A09825 */  move  $s3, $a1
/* B4F210 800D8070 AFBF0034 */  sw    $ra, 0x34($sp)
/* B4F214 800D8074 AFB60030 */  sw    $s6, 0x30($sp)
/* B4F218 800D8078 AFB5002C */  sw    $s5, 0x2c($sp)
/* B4F21C 800D807C AFB40028 */  sw    $s4, 0x28($sp)
/* B4F220 800D8080 AFB1001C */  sw    $s1, 0x1c($sp)
/* B4F224 800D8084 AFB00018 */  sw    $s0, 0x18($sp)
/* B4F228 800D8088 3C108013 */  lui   $s0, %hi(sUCodeDisasGeometryModes) # $s0, 0x8013
/* B4F22C 800D808C 3C168014 */  lui   $s6, %hi(D_80147C04) # $s6, 0x8014
/* B4F230 800D8090 3C158014 */  lui   $s5, %hi(D_80147C08) # $s5, 0x8014
/* B4F234 800D8094 3C148013 */  lui   $s4, %hi(sUCodeDisasMtxFlags) # $s4, 0x8013
/* B4F238 800D8098 24110001 */  li    $s1, 1
/* B4F23C 800D809C 2694DCF8 */  addiu $s4, %lo(sUCodeDisasMtxFlags) # addiu $s4, $s4, -0x2308
/* B4F240 800D80A0 26B57C08 */  addiu $s5, %lo(D_80147C08) # addiu $s5, $s5, 0x7c08
/* B4F244 800D80A4 26D67C04 */  addiu $s6, %lo(D_80147C04) # addiu $s6, $s6, 0x7c04
/* B4F248 800D80A8 2610DCA0 */  addiu $s0, %lo(sUCodeDisasGeometryModes) # addiu $s0, $s0, -0x2360
/* B4F24C 800D80AC 8E0E0000 */  lw    $t6, ($s0)
.L800D80B0:
/* B4F250 800D80B0 0011102B */  sltu  $v0, $zero, $s1
/* B4F254 800D80B4 01D37824 */  and   $t7, $t6, $s3
/* B4F258 800D80B8 51E0000E */  beql  $t7, $zero, .L800D80F4
/* B4F25C 800D80BC 26100008 */   addiu $s0, $s0, 8
/* B4F260 800D80C0 8E4300BC */  lw    $v1, 0xbc($s2)
/* B4F264 800D80C4 14400006 */  bnez  $v0, .L800D80E0
/* B4F268 800D80C8 00008825 */   move  $s1, $zero
/* B4F26C 800D80CC 10600004 */  beqz  $v1, .L800D80E0
/* B4F270 800D80D0 00000000 */   nop   
/* B4F274 800D80D4 0C00084C */  jal   osSyncPrintf
/* B4F278 800D80D8 02C02025 */   move  $a0, $s6
/* B4F27C 800D80DC 8E4300BC */  lw    $v1, 0xbc($s2)
.L800D80E0:
/* B4F280 800D80E0 10600003 */  beqz  $v1, .L800D80F0
/* B4F284 800D80E4 02A02025 */   move  $a0, $s5
/* B4F288 800D80E8 0C00084C */  jal   osSyncPrintf
/* B4F28C 800D80EC 8E050004 */   lw    $a1, 4($s0)
.L800D80F0:
/* B4F290 800D80F0 26100008 */  addiu $s0, $s0, 8
.L800D80F4:
/* B4F294 800D80F4 5614FFEE */  bnel  $s0, $s4, .L800D80B0
/* B4F298 800D80F8 8E0E0000 */   lw    $t6, ($s0)
/* B4F29C 800D80FC 8FBF0034 */  lw    $ra, 0x34($sp)
/* B4F2A0 800D8100 8FB00018 */  lw    $s0, 0x18($sp)
/* B4F2A4 800D8104 8FB1001C */  lw    $s1, 0x1c($sp)
/* B4F2A8 800D8108 8FB20020 */  lw    $s2, 0x20($sp)
/* B4F2AC 800D810C 8FB30024 */  lw    $s3, 0x24($sp)
/* B4F2B0 800D8110 8FB40028 */  lw    $s4, 0x28($sp)
/* B4F2B4 800D8114 8FB5002C */  lw    $s5, 0x2c($sp)
/* B4F2B8 800D8118 8FB60030 */  lw    $s6, 0x30($sp)
/* B4F2BC 800D811C 03E00008 */  jr    $ra
/* B4F2C0 800D8120 27BD0038 */   addiu $sp, $sp, 0x38