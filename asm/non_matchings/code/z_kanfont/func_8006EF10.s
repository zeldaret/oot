.rdata
glabel D_8013C1B0
    .asciz "../z_kanfont.c"
    .balign 4

glabel D_8013C1C0
    .asciz "msg_data=%x,  msg_data0=%x   jj=%x\n"
    .balign 4

glabel D_8013C1E4
    .asciz "ＥＲＲＯＲ！！  エラー！！！  error───！！！！\n"
    # EUC-JP: ＥＲＲＯＲ！！ エラー！！！ error───！！！！ | ERROR! ! error! ! ! error───! ! ! !|
    .balign 4

glabel D_8013C218
    .asciz "nes_mes_buf[%d]=%d\n"   
    .balign 4

glabel D_8013C22C
    .asciz "../z_kanfont.c"
    .balign 4

.text
glabel func_8006EF10
/* AE60B0 8006EF10 27BDFFB8 */  addiu $sp, $sp, -0x48
/* AE60B4 8006EF14 3C080704 */  lui   $t0, %hi(D_070380D4) # $t0, 0x704
/* AE60B8 8006EF18 250880D4 */  addiu $t0, %lo(D_070380D4) # addiu $t0, $t0, -0x7f2c
/* AE60BC 8006EF1C AFB50034 */  sw    $s5, 0x34($sp)
/* AE60C0 8006EF20 3C0E0700 */  lui   $t6, 0x700
/* AE60C4 8006EF24 3C0F0704 */  lui   $t7, %hi(D_0703811C) # $t7, 0x704
/* AE60C8 8006EF28 AFBF0044 */  sw    $ra, 0x44($sp)
/* AE60CC 8006EF2C AFBE0040 */  sw    $fp, 0x40($sp)
/* AE60D0 8006EF30 AFB7003C */  sw    $s7, 0x3c($sp)
/* AE60D4 8006EF34 AFB60038 */  sw    $s6, 0x38($sp)
/* AE60D8 8006EF38 AFB40030 */  sw    $s4, 0x30($sp)
/* AE60DC 8006EF3C AFB3002C */  sw    $s3, 0x2c($sp)
/* AE60E0 8006EF40 AFB20028 */  sw    $s2, 0x28($sp)
/* AE60E4 8006EF44 AFB10024 */  sw    $s1, 0x24($sp)
/* AE60E8 8006EF48 AFB00020 */  sw    $s0, 0x20($sp)
/* AE60EC 8006EF4C 25CE0000 */  addiu $t6, $t6, 0
/* AE60F0 8006EF50 25EF811C */  addiu $t7, %lo(D_0703811C) # addiu $t7, $t7, -0x7ee4
/* AE60F4 8006EF54 010E1023 */  subu  $v0, $t0, $t6
/* AE60F8 8006EF58 01E83023 */  subu  $a2, $t7, $t0
/* AE60FC 8006EF5C 3C18008C */  lui   $t8, %hi(_nes_message_data_staticSegmentRomStart) # $t8, 0x8c
/* AE6100 8006EF60 0080A825 */  move  $s5, $a0
/* AE6104 8006EF64 AC820000 */  sw    $v0, ($a0)
/* AE6108 8006EF68 AC860004 */  sw    $a2, 4($a0)
/* AE610C 8006EF6C 27186000 */  addiu $t8, %lo(_nes_message_data_staticSegmentRomStart) # addiu $t8, $t8, 0x6000
/* AE6110 8006EF70 3401DC88 */  li    $at, 56456
/* AE6114 8006EF74 3C078014 */  lui   $a3, %hi(D_8013C1B0) # $a3, 0x8014
/* AE6118 8006EF78 2419007A */  li    $t9, 122
/* AE611C 8006EF7C AFB90010 */  sw    $t9, 0x10($sp)
/* AE6120 8006EF80 24E7C1B0 */  addiu $a3, %lo(D_8013C1B0) # addiu $a3, $a3, -0x3e50
/* AE6124 8006EF84 00812021 */  addu  $a0, $a0, $at
/* AE6128 8006EF88 00582821 */  addu  $a1, $v0, $t8
/* AE612C 8006EF8C 0C0006A8 */  jal   DmaMgr_SendRequest1
/* AE6130 8006EF90 00C08025 */   move  $s0, $a2
/* AE6134 8006EF94 3C048014 */  lui   $a0, %hi(D_8013C1C0) # $a0, 0x8014
/* AE6138 8006EF98 2484C1C0 */  addiu $a0, %lo(D_8013C1C0) # addiu $a0, $a0, -0x3e40
/* AE613C 8006EF9C 8EA50000 */  lw    $a1, ($s5)
/* AE6140 8006EFA0 8EA60004 */  lw    $a2, 4($s5)
/* AE6144 8006EFA4 0200B025 */  move  $s6, $s0
/* AE6148 8006EFA8 0C00084C */  jal   osSyncPrintf
/* AE614C 8006EFAC 02003825 */   move  $a3, $s0
/* AE6150 8006EFB0 341E8000 */  li    $fp, 32768
/* AE6154 8006EFB4 02BE4821 */  addu  $t1, $s5, $fp
/* AE6158 8006EFB8 912A5C88 */  lbu   $t2, 0x5c88($t1)
/* AE615C 8006EFBC 24170002 */  li    $s7, 2
/* AE6160 8006EFC0 00009025 */  move  $s2, $zero
/* AE6164 8006EFC4 12EA0027 */  beq   $s7, $t2, .L8006F064
/* AE6168 8006EFC8 00008825 */   move  $s1, $zero
/* AE616C 8006EFCC 02D1082A */  slt   $at, $s6, $s1
.L8006EFD0:
/* AE6170 8006EFD0 10200006 */  beqz  $at, .L8006EFEC
/* AE6174 8006EFD4 02B15821 */   addu  $t3, $s5, $s1
/* AE6178 8006EFD8 3C048014 */  lui   $a0, %hi(D_8013C1E4) # $a0, 0x8014
/* AE617C 8006EFDC 0C00084C */  jal   osSyncPrintf
/* AE6180 8006EFE0 2484C1E4 */   addiu $a0, %lo(D_8013C1E4) # addiu $a0, $a0, -0x3e1c
/* AE6184 8006EFE4 10000020 */  b     .L8006F068
/* AE6188 8006EFE8 8FBF0044 */   lw    $ra, 0x44($sp)
.L8006EFEC:
/* AE618C 8006EFEC 017E8021 */  addu  $s0, $t3, $fp
/* AE6190 8006EFF0 92065C88 */  lbu   $a2, 0x5c88($s0)
/* AE6194 8006EFF4 24010001 */  li    $at, 1
/* AE6198 8006EFF8 3C048014 */  lui   $a0, %hi(D_8013C218) # $a0, 0x8014
/* AE619C 8006EFFC 10C10014 */  beq   $a2, $at, .L8006F050
/* AE61A0 8006F000 2484C218 */   addiu $a0, %lo(D_8013C218) # addiu $a0, $a0, -0x3de8
/* AE61A4 8006F004 001260C0 */  sll   $t4, $s2, 3
/* AE61A8 8006F008 02AC9821 */  addu  $s3, $s5, $t4
/* AE61AC 8006F00C 3C14008C */  lui   $s4, %hi(_nes_font_staticSegmentRomStart) # $s4, 0x8c
/* AE61B0 8006F010 26941000 */  addiu $s4, %lo(_nes_font_staticSegmentRomStart) # addiu $s4, $s4, 0x1000
/* AE61B4 8006F014 26733C88 */  addiu $s3, $s3, 0x3c88
/* AE61B8 8006F018 0C00084C */  jal   osSyncPrintf
/* AE61BC 8006F01C 02202825 */   move  $a1, $s1
/* AE61C0 8006F020 92025C88 */  lbu   $v0, 0x5c88($s0)
/* AE61C4 8006F024 3C078014 */  lui   $a3, %hi(D_8013C22C) # $a3, 0x8014
/* AE61C8 8006F028 240D0086 */  li    $t5, 134
/* AE61CC 8006F02C 000211C0 */  sll   $v0, $v0, 7
/* AE61D0 8006F030 2442F000 */  addiu $v0, $v0, -0x1000
/* AE61D4 8006F034 02822821 */  addu  $a1, $s4, $v0
/* AE61D8 8006F038 AFAD0010 */  sw    $t5, 0x10($sp)
/* AE61DC 8006F03C 24E7C22C */  addiu $a3, %lo(D_8013C22C) # addiu $a3, $a3, -0x3dd4
/* AE61E0 8006F040 02602025 */  move  $a0, $s3
/* AE61E4 8006F044 0C0006A8 */  jal   DmaMgr_SendRequest1
/* AE61E8 8006F048 24060080 */   li    $a2, 128
/* AE61EC 8006F04C 26520010 */  addiu $s2, $s2, 0x10
.L8006F050:
/* AE61F0 8006F050 920E5C89 */  lbu   $t6, 0x5c89($s0)
/* AE61F4 8006F054 26310001 */  addiu $s1, $s1, 1
/* AE61F8 8006F058 26100001 */  addiu $s0, $s0, 1
/* AE61FC 8006F05C 56EEFFDC */  bnel  $s7, $t6, .L8006EFD0
/* AE6200 8006F060 02D1082A */   slt   $at, $s6, $s1
.L8006F064:
/* AE6204 8006F064 8FBF0044 */  lw    $ra, 0x44($sp)
.L8006F068:
/* AE6208 8006F068 8FB00020 */  lw    $s0, 0x20($sp)
/* AE620C 8006F06C 8FB10024 */  lw    $s1, 0x24($sp)
/* AE6210 8006F070 8FB20028 */  lw    $s2, 0x28($sp)
/* AE6214 8006F074 8FB3002C */  lw    $s3, 0x2c($sp)
/* AE6218 8006F078 8FB40030 */  lw    $s4, 0x30($sp)
/* AE621C 8006F07C 8FB50034 */  lw    $s5, 0x34($sp)
/* AE6220 8006F080 8FB60038 */  lw    $s6, 0x38($sp)
/* AE6224 8006F084 8FB7003C */  lw    $s7, 0x3c($sp)
/* AE6228 8006F088 8FBE0040 */  lw    $fp, 0x40($sp)
/* AE622C 8006F08C 03E00008 */  jr    $ra
/* AE6230 8006F090 27BD0048 */   addiu $sp, $sp, 0x48
