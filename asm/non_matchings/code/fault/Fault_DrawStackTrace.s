.rdata
glabel D_801472D0
    .asciz    "SP       PC       (VPC)"
    .balign 4
glabel D_801472E8
    .asciz    "%08x %08x"
    .balign 4
glabel D_801472F4
    .asciz    " -> %08x"
    .balign 4

.text
glabel Fault_DrawStackTrace
/* B4CD28 800D5B88 3C0FFFFA */  lui   $t7, (0xFFFA5A5A >> 16) # lui $t7, 0xfffa
/* B4CD2C 800D5B8C 03A0C025 */  move  $t8, $sp
/* B4CD30 800D5B90 27BDFF90 */  addiu $sp, $sp, -0x70
/* B4CD34 800D5B94 35EF5A5A */  ori   $t7, (0xFFFA5A5A & 0xFFFF) # ori $t7, $t7, 0x5a5a
.L800D5B98:
/* B4CD38 800D5B98 2718FFF8 */  addiu $t8, $t8, -8
/* B4CD3C 800D5B9C AF0F0000 */  sw    $t7, ($t8)
/* B4CD40 800D5BA0 171DFFFD */  bne   $t8, $sp, .L800D5B98
/* B4CD44 800D5BA4 AF0F0004 */   sw    $t7, 4($t8)
/* B4CD48 800D5BA8 AFB50034 */  sw    $s5, 0x34($sp)
/* B4CD4C 800D5BAC AFB00020 */  sw    $s0, 0x20($sp)
/* B4CD50 800D5BB0 00808025 */  move  $s0, $a0
/* B4CD54 800D5BB4 00C0A825 */  move  $s5, $a2
/* B4CD58 800D5BB8 AFBF0044 */  sw    $ra, 0x44($sp)
/* B4CD5C 800D5BBC AFBE0040 */  sw    $fp, 0x40($sp)
/* B4CD60 800D5BC0 AFB7003C */  sw    $s7, 0x3c($sp)
/* B4CD64 800D5BC4 AFB60038 */  sw    $s6, 0x38($sp)
/* B4CD68 800D5BC8 AFB40030 */  sw    $s4, 0x30($sp)
/* B4CD6C 800D5BCC AFB3002C */  sw    $s3, 0x2c($sp)
/* B4CD70 800D5BD0 AFB20028 */  sw    $s2, 0x28($sp)
/* B4CD74 800D5BD4 AFB10024 */  sw    $s1, 0x24($sp)
/* B4CD78 800D5BD8 AFA50074 */  sw    $a1, 0x74($sp)
/* B4CD7C 800D5BDC AFA7007C */  sw    $a3, 0x7c($sp)
/* B4CD80 800D5BE0 8E0F00F4 */  lw    $t7, 0xf4($s0)
/* B4CD84 800D5BE4 3C068014 */  lui   $a2, %hi(D_801472D0) # $a2, 0x8014
/* B4CD88 800D5BE8 24C672D0 */  addiu $a2, %lo(D_801472D0) # addiu $a2, $a2, 0x72d0
/* B4CD8C 800D5BEC AFAF0068 */  sw    $t7, 0x68($sp)
/* B4CD90 800D5BF0 8E090104 */  lw    $t1, 0x104($s0)
/* B4CD94 800D5BF4 8FA40074 */  lw    $a0, 0x74($sp)
/* B4CD98 800D5BF8 02A02825 */  move  $a1, $s5
/* B4CD9C 800D5BFC AFA90064 */  sw    $t1, 0x64($sp)
/* B4CDA0 800D5C00 8E0A011C */  lw    $t2, 0x11c($s0)
/* B4CDA4 800D5C04 0C035C26 */  jal   FaultDrawer_DrawText
/* B4CDA8 800D5C08 AFAA0060 */   sw    $t2, 0x60($sp)
/* B4CDAC 800D5C0C 8FBE007C */  lw    $fp, 0x7c($sp)
/* B4CDB0 800D5C10 24020001 */  li    $v0, 1
/* B4CDB4 800D5C14 8FAB0064 */  lw    $t3, 0x64($sp)
/* B4CDB8 800D5C18 2BC10002 */  slti  $at, $fp, 2
/* B4CDBC 800D5C1C 5420002F */  bnezl $at, .L800D5CDC
/* B4CDC0 800D5C20 8FBF0044 */   lw    $ra, 0x44($sp)
/* B4CDC4 800D5C24 15600003 */  bnez  $t3, .L800D5C34
/* B4CDC8 800D5C28 8FAC0068 */   lw    $t4, 0x68($sp)
/* B4CDCC 800D5C2C 5180002B */  beql  $t4, $zero, .L800D5CDC
/* B4CDD0 800D5C30 8FBF0044 */   lw    $ra, 0x44($sp)
.L800D5C34:
/* B4CDD4 800D5C34 8FB20060 */  lw    $s2, 0x60($sp)
/* B4CDD8 800D5C38 3C138000 */  lui   $s3, %hi(__osCleanupThread) # $s3, 0x8000
/* B4CDDC 800D5C3C 267342F0 */  addiu $s3, %lo(__osCleanupThread) # addiu $s3, $s3, 0x42f0
/* B4CDE0 800D5C40 12530025 */  beq   $s2, $s3, .L800D5CD8
/* B4CDE4 800D5C44 000280C0 */   sll   $s0, $v0, 3
/* B4CDE8 800D5C48 02158821 */  addu  $s1, $s0, $s5
/* B4CDEC 800D5C4C 3C158014 */  lui   $s5, %hi(D_801472E8) # $s5, 0x8014
/* B4CDF0 800D5C50 3C168014 */  lui   $s6, %hi(D_801472F4) # $s6, 0x8014
/* B4CDF4 800D5C54 26D672F4 */  addiu $s6, %lo(D_801472F4) # addiu $s6, $s6, 0x72f4
/* B4CDF8 800D5C58 26B572E8 */  addiu $s5, %lo(D_801472E8) # addiu $s5, $s5, 0x72e8
/* B4CDFC 800D5C5C 001EA0C0 */  sll   $s4, $fp, 3
/* B4CE00 800D5C60 27B70068 */  addiu $s7, $sp, 0x68
/* B4CE04 800D5C64 8FA40074 */  lw    $a0, 0x74($sp)
.L800D5C68:
/* B4CE08 800D5C68 02202825 */  move  $a1, $s1
/* B4CE0C 800D5C6C 02A03025 */  move  $a2, $s5
/* B4CE10 800D5C70 8FA70068 */  lw    $a3, 0x68($sp)
/* B4CE14 800D5C74 0C035C26 */  jal   FaultDrawer_DrawText
/* B4CE18 800D5C78 AFB20010 */   sw    $s2, 0x10($sp)
/* B4CE1C 800D5C7C 0C035162 */  jal   Fault_ConvertAddress
/* B4CE20 800D5C80 8FA40060 */   lw    $a0, 0x60($sp)
/* B4CE24 800D5C84 10400003 */  beqz  $v0, .L800D5C94
/* B4CE28 800D5C88 00402825 */   move  $a1, $v0
/* B4CE2C 800D5C8C 0C035C12 */  jal   FaultDrawer_Printf
/* B4CE30 800D5C90 02C02025 */   move  $a0, $s6
.L800D5C94:
/* B4CE34 800D5C94 02E02025 */  move  $a0, $s7
/* B4CE38 800D5C98 27A50060 */  addiu $a1, $sp, 0x60
/* B4CE3C 800D5C9C 0C03567E */  jal   func_800D59F8
/* B4CE40 800D5CA0 27A60064 */   addiu $a2, $sp, 0x64
/* B4CE44 800D5CA4 26100008 */  addiu $s0, $s0, 8
/* B4CE48 800D5CA8 0214082A */  slt   $at, $s0, $s4
/* B4CE4C 800D5CAC 1020000A */  beqz  $at, .L800D5CD8
/* B4CE50 800D5CB0 26310008 */   addiu $s1, $s1, 8
/* B4CE54 800D5CB4 8FAD0064 */  lw    $t5, 0x64($sp)
/* B4CE58 800D5CB8 8FAE0068 */  lw    $t6, 0x68($sp)
/* B4CE5C 800D5CBC 8FB20060 */  lw    $s2, 0x60($sp)
/* B4CE60 800D5CC0 15A00003 */  bnez  $t5, .L800D5CD0
/* B4CE64 800D5CC4 00000000 */   nop   
/* B4CE68 800D5CC8 51C00004 */  beql  $t6, $zero, .L800D5CDC
/* B4CE6C 800D5CCC 8FBF0044 */   lw    $ra, 0x44($sp)
.L800D5CD0:
/* B4CE70 800D5CD0 5653FFE5 */  bnel  $s2, $s3, .L800D5C68
/* B4CE74 800D5CD4 8FA40074 */   lw    $a0, 0x74($sp)
.L800D5CD8:
/* B4CE78 800D5CD8 8FBF0044 */  lw    $ra, 0x44($sp)
.L800D5CDC:
/* B4CE7C 800D5CDC 8FB00020 */  lw    $s0, 0x20($sp)
/* B4CE80 800D5CE0 8FB10024 */  lw    $s1, 0x24($sp)
/* B4CE84 800D5CE4 8FB20028 */  lw    $s2, 0x28($sp)
/* B4CE88 800D5CE8 8FB3002C */  lw    $s3, 0x2c($sp)
/* B4CE8C 800D5CEC 8FB40030 */  lw    $s4, 0x30($sp)
/* B4CE90 800D5CF0 8FB50034 */  lw    $s5, 0x34($sp)
/* B4CE94 800D5CF4 8FB60038 */  lw    $s6, 0x38($sp)
/* B4CE98 800D5CF8 8FB7003C */  lw    $s7, 0x3c($sp)
/* B4CE9C 800D5CFC 8FBE0040 */  lw    $fp, 0x40($sp)
/* B4CEA0 800D5D00 03E00008 */  jr    $ra
/* B4CEA4 800D5D04 27BD0070 */   addiu $sp, $sp, 0x70

