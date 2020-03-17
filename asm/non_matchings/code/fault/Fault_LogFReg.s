.rdata

glabel D_80146E8C
    .asciz    "F%02d:%14.7e "
    .balign 4
glabel D_80146E9C
    .asciz    "F%02d:  %08x(16) "
    .balign 4

.text
glabel Fault_LogFReg
/* B4BC40 800D4AA0 3C18FFFA */  lui   $t8, (0xFFFA5A5A >> 16) # lui $t8, 0xfffa
/* B4BC44 800D4AA4 03A0C825 */  move  $t9, $sp
/* B4BC48 800D4AA8 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B4BC4C 800D4AAC 37185A5A */  ori   $t8, (0xFFFA5A5A & 0xFFFF) # ori $t8, $t8, 0x5a5a
.L800D4AB0:
/* B4BC50 800D4AB0 2739FFF8 */  addiu $t9, $t9, -8
/* B4BC54 800D4AB4 AF380000 */  sw    $t8, ($t9)
/* B4BC58 800D4AB8 173DFFFD */  bne   $t9, $sp, .L800D4AB0
/* B4BC5C 800D4ABC AF380004 */   sw    $t8, 4($t9)
/* B4BC60 800D4AC0 AFBF0014 */  sw    $ra, 0x14($sp)
/* B4BC64 800D4AC4 AFA40018 */  sw    $a0, 0x18($sp)
/* B4BC68 800D4AC8 AFA5001C */  sw    $a1, 0x1c($sp)
/* B4BC6C 800D4ACC 8FAE001C */  lw    $t6, 0x1c($sp)
/* B4BC70 800D4AD0 3C017F80 */  lui   $at, 0x7f80
/* B4BC74 800D4AD4 8DC60000 */  lw    $a2, ($t6)
/* B4BC78 800D4AD8 00C11824 */  and   $v1, $a2, $at
/* B4BC7C 800D4ADC 00031DC2 */  srl   $v1, $v1, 0x17
/* B4BC80 800D4AE0 2463FF81 */  addiu $v1, $v1, -0x7f
/* B4BC84 800D4AE4 2861FF82 */  slti  $at, $v1, -0x7e
/* B4BC88 800D4AE8 14200004 */  bnez  $at, .L800D4AFC
/* B4BC8C 800D4AEC 00C01025 */   move  $v0, $a2
/* B4BC90 800D4AF0 28610080 */  slti  $at, $v1, 0x80
/* B4BC94 800D4AF4 54200004 */  bnezl $at, .L800D4B08
/* B4BC98 800D4AF8 8FAF001C */   lw    $t7, 0x1c($sp)
.L800D4AFC:
/* B4BC9C 800D4AFC 1440000D */  bnez  $v0, .L800D4B34
/* B4BCA0 800D4B00 3C048014 */   lui   $a0, %hi(D_80146E9C)
/* B4BCA4 800D4B04 8FAF001C */  lw    $t7, 0x1c($sp)
.L800D4B08:
/* B4BCA8 800D4B08 3C048014 */  lui   $a0, %hi(D_80146E8C) # $a0, 0x8014
/* B4BCAC 800D4B0C 24846E8C */  addiu $a0, %lo(D_80146E8C) # addiu $a0, $a0, 0x6e8c
/* B4BCB0 800D4B10 C5E40000 */  lwc1  $f4, ($t7)
/* B4BCB4 800D4B14 8FA50018 */  lw    $a1, 0x18($sp)
/* B4BCB8 800D4B18 460021A1 */  cvt.d.s $f6, $f4
/* B4BCBC 800D4B1C 44073000 */  mfc1  $a3, $f6
/* B4BCC0 800D4B20 44063800 */  mfc1  $a2, $f7
/* B4BCC4 800D4B24 0C00084C */  jal   osSyncPrintf
/* B4BCC8 800D4B28 00000000 */   nop   
/* B4BCCC 800D4B2C 10000005 */  b     .L800D4B44
/* B4BCD0 800D4B30 8FBF0014 */   lw    $ra, 0x14($sp)
.L800D4B34:
/* B4BCD4 800D4B34 24846E9C */  addiu $a0, %lo(D_80146E9C)
/* B4BCD8 800D4B38 0C00084C */  jal   osSyncPrintf
/* B4BCDC 800D4B3C 8FA50018 */   lw    $a1, 0x18($sp)
/* B4BCE0 800D4B40 8FBF0014 */  lw    $ra, 0x14($sp)
.L800D4B44:
/* B4BCE4 800D4B44 27BD0018 */  addiu $sp, $sp, 0x18
/* B4BCE8 800D4B48 03E00008 */  jr    $ra
/* B4BCEC 800D4B4C 00000000 */   nop   

