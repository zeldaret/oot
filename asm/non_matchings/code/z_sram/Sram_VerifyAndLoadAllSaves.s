.rdata
glabel D_80140A00
    .asciz "ＳＲＡＭ ＳＴＡＲＴ─ＬＯＡＤ\n"
    # EUC-JP: ＳＲＡＭ ＳＴＡＲＴ─ＬＯＡＤ
    .balign 4

glabel D_80140A20
    .asciz "ぽいんと＝%x(%d)    SAVE_MAX=%d\n"
    # EUC-JP: ぽいんと＝ | Point=
    .balign 4

glabel D_80140A44
    .asciz "\n＝＝＝＝＝＝＝＝＝＝＝＝＝  Ｓ（%d） ＝＝＝＝＝＝＝＝＝＝＝＝＝\n"
    # EUC-JP: ＝＝＝＝＝＝＝＝＝＝＝＝＝ Ｓ（%d） ＝＝＝＝＝＝＝＝＝＝＝＝＝ 
    .balign 4

glabel D_80140A88
    .asciz "\nＳＡＶＥチェックサム計算  j=%x  mmm=%x  "
    # EUC-JP: ＳＡＶＥチェックサム計算 | SAVE checksum calculation
    .balign 4

glabel D_80140AB4
    .asciz "ＥＲＲＯＲ！！！ ＝ %x(%d)\n"
    # EUC-JP: ＥＲＲＯＲ！！！ ＝ 
    .balign 4

glabel D_80140AD0
    .asciz "================= ＢＡＣＫ─ＵＰ ========================\n"
    # EUC-JP: ＢＡＣＫ─ＵＰ
    .balign 4

glabel D_80140B0C
    .asciz "\n（Ｂ）ＳＡＶＥチェックサム計算  j=%x  mmm=%x  "
    # EUC-JP: （Ｂ）ＳＡＶＥチェックサム計算 | (B) SAVE checksum calculation
    .balign 4

glabel D_80140B3C
    .asciz "ＥＲＲＯＲ！！！ ＝ %x(%d+3)\n"
    #EUR-JP: ＥＲＲＯＲ！！！ ＝ 
    .balign 4

glabel D_80140B5C
    .asciz "newf=%x,%x,%x,%x,%x,%x\n"
    .balign 4

glabel D_80140B74
    .asciz "\n--------------------------------------------------------------\n"
    .balign 4

glabel D_80140BB8
    .asciz "%x "
    .balign 4

glabel D_80140BBC
    .asciz "\n"
    .balign 4

glabel D_80140BC0
    .asciz "\nCheck_Sum=%x(%x)\n"
    .balign 4

glabel D_80140BD4
    .asciz "????#%x,%x,%x,%x,%x,%x\n"
    .balign 4

glabel D_80140BEC
    .asciz "\nぽいんと＝%x(%d+3)  check_sum=%x(%x)\n"
    # EUC-JP: ぽいんと＝ | Point = 
    .balign 4

glabel D_80140C14
    .asciz "ぽいんと＝%x(%d)  check_sum=%x(%x)\n"
    .balign 4

glabel D_80140C38
    .asciz "\nＳＡＶＥデータ ＯＫ！！！！\n"
    # EUC-JP: ＳＡＶＥデータ ＯＫ！！！！ | SAVE data OK! ! ! !
    .balign 4

glabel D_80140C58
    .asciz "SAVECT=%x, NAME=%x, LIFE=%x, ITEM=%x,  64DD=%x,  HEART=%x\n"
    .balign 4

glabel D_80140C94
    .asciz "f_64dd=%d, %d, %d\n"
    .balign 4

glabel D_80140CA8
    .asciz "heart_status=%d, %d, %d\n"
    .balign 4

glabel D_80140CC4
    .asciz "now_life=%d, %d, %d\n"
    .balign 4

.text
glabel Sram_VerifyAndLoadAllSaves
/* B1FBC0 800A8A20 27BDFF88 */  addiu $sp, $sp, -0x78
/* B1FBC4 800A8A24 AFA40078 */  sw    $a0, 0x78($sp)
/* B1FBC8 800A8A28 AFBF004C */  sw    $ra, 0x4c($sp)
/* B1FBCC 800A8A2C 3C048014 */  lui   $a0, %hi(D_80140A00) # $a0, 0x8014
/* B1FBD0 800A8A30 AFBE0048 */  sw    $fp, 0x48($sp)
/* B1FBD4 800A8A34 AFB70044 */  sw    $s7, 0x44($sp)
/* B1FBD8 800A8A38 AFB60040 */  sw    $s6, 0x40($sp)
/* B1FBDC 800A8A3C AFB5003C */  sw    $s5, 0x3c($sp)
/* B1FBE0 800A8A40 AFB40038 */  sw    $s4, 0x38($sp)
/* B1FBE4 800A8A44 AFB30034 */  sw    $s3, 0x34($sp)
/* B1FBE8 800A8A48 AFB20030 */  sw    $s2, 0x30($sp)
/* B1FBEC 800A8A4C AFB1002C */  sw    $s1, 0x2c($sp)
/* B1FBF0 800A8A50 AFB00028 */  sw    $s0, 0x28($sp)
/* B1FBF4 800A8A54 AFA5007C */  sw    $a1, 0x7c($sp)
/* B1FBF8 800A8A58 0C00084C */  jal   osSyncPrintf
/* B1FBFC 800A8A5C 24840A00 */   addiu $a0, %lo(D_80140A00) # addiu $a0, $a0, 0xa00
/* B1FC00 800A8A60 8FAE007C */  lw    $t6, 0x7c($sp)
/* B1FC04 800A8A64 34058000 */  li    $a1, 32768
/* B1FC08 800A8A68 0C001114 */  jal   bzero
/* B1FC0C 800A8A6C 8DC40000 */   lw    $a0, ($t6)
/* B1FC10 800A8A70 8FAF007C */  lw    $t7, 0x7c($sp)
/* B1FC14 800A8A74 3C040800 */  lui   $a0, 0x800
/* B1FC18 800A8A78 34068000 */  li    $a2, 32768
/* B1FC1C 800A8A7C 00003825 */  move  $a3, $zero
/* B1FC20 800A8A80 0C02A7A8 */  jal   SsSram_ReadWrite
/* B1FC24 800A8A84 8DE50000 */   lw    $a1, ($t7)
/* B1FC28 800A8A88 3C148016 */  lui   $s4, %hi(gSaveContext) # $s4, 0x8016
/* B1FC2C 800A8A8C 2694E660 */  addiu $s4, %lo(gSaveContext) # addiu $s4, $s4, -0x19a0
/* B1FC30 800A8A90 9698000C */  lhu   $t8, 0xc($s4)
/* B1FC34 800A8A94 3C1E8014 */  lui   $fp, %hi(D_80140BBC) # $fp, 0x8014
/* B1FC38 800A8A98 3C168014 */  lui   $s6, %hi(D_80140BB8) # $s6, 0x8014
/* B1FC3C 800A8A9C 26D60BB8 */  addiu $s6, %lo(D_80140BB8) # addiu $s6, $s6, 0xbb8
/* B1FC40 800A8AA0 27DE0BBC */  addiu $fp, %lo(D_80140BBC) # addiu $fp, $fp, 0xbbc
/* B1FC44 800A8AA4 A7A00072 */  sh    $zero, 0x72($sp)
/* B1FC48 800A8AA8 AFA0005C */  sw    $zero, 0x5c($sp)
/* B1FC4C 800A8AAC 24170020 */  li    $s7, 32
/* B1FC50 800A8AB0 A7B80066 */  sh    $t8, 0x66($sp)
.L800A8AB4:
/* B1FC54 800A8AB4 97B90072 */  lhu   $t9, 0x72($sp)
/* B1FC58 800A8AB8 3C098013 */  lui   $t1, %hi(gSramSlotOffsets) # $t1, 0x8013
/* B1FC5C 800A8ABC 2529A4E0 */  addiu $t1, %lo(gSramSlotOffsets) # addiu $t1, $t1, -0x5b20
/* B1FC60 800A8AC0 00194040 */  sll   $t0, $t9, 1
/* B1FC64 800A8AC4 01091021 */  addu  $v0, $t0, $t1
/* B1FC68 800A8AC8 94520000 */  lhu   $s2, ($v0)
/* B1FC6C 800A8ACC 3C048014 */  lui   $a0, %hi(D_80140A20) # $a0, 0x8014
/* B1FC70 800A8AD0 24840A20 */  addiu $a0, %lo(D_80140A20) # addiu $a0, $a0, 0xa20
/* B1FC74 800A8AD4 AFA20060 */  sw    $v0, 0x60($sp)
/* B1FC78 800A8AD8 8E861354 */  lw    $a2, 0x1354($s4)
/* B1FC7C 800A8ADC 24071354 */  li    $a3, 4948
/* B1FC80 800A8AE0 0C00084C */  jal   osSyncPrintf
/* B1FC84 800A8AE4 02402825 */   move  $a1, $s2
/* B1FC88 800A8AE8 8FAA007C */  lw    $t2, 0x7c($sp)
/* B1FC8C 800A8AEC 02802025 */  move  $a0, $s4
/* B1FC90 800A8AF0 24061354 */  li    $a2, 4948
/* B1FC94 800A8AF4 8D4B0000 */  lw    $t3, ($t2)
/* B1FC98 800A8AF8 0C01A508 */  jal   MemCopy
/* B1FC9C 800A8AFC 01722821 */   addu  $a1, $t3, $s2
/* B1FCA0 800A8B00 96951352 */  lhu   $s5, 0x1352($s4)
/* B1FCA4 800A8B04 3C048014 */  lui   $a0, %hi(D_80140A44) # $a0, 0x8014
/* B1FCA8 800A8B08 A6801352 */  sh    $zero, 0x1352($s4)
/* B1FCAC 800A8B0C 02808025 */  move  $s0, $s4
/* B1FCB0 800A8B10 24840A44 */  addiu $a0, %lo(D_80140A44) # addiu $a0, $a0, 0xa44
/* B1FCB4 800A8B14 0C00084C */  jal   osSyncPrintf
/* B1FCB8 800A8B18 8FA5005C */   lw    $a1, 0x5c($sp)
/* B1FCBC 800A8B1C 00009825 */  move  $s3, $zero
/* B1FCC0 800A8B20 00008825 */  move  $s1, $zero
.L800A8B24:
/* B1FCC4 800A8B24 960C0000 */  lhu   $t4, ($s0)
/* B1FCC8 800A8B28 26310001 */  addiu $s1, $s1, 1
/* B1FCCC 800A8B2C 3231FFFF */  andi  $s1, $s1, 0xffff
/* B1FCD0 800A8B30 2E2109AA */  sltiu $at, $s1, 0x9aa
/* B1FCD4 800A8B34 26520002 */  addiu $s2, $s2, 2
/* B1FCD8 800A8B38 026C9821 */  addu  $s3, $s3, $t4
/* B1FCDC 800A8B3C 3252FFFF */  andi  $s2, $s2, 0xffff
/* B1FCE0 800A8B40 3273FFFF */  andi  $s3, $s3, 0xffff
/* B1FCE4 800A8B44 1420FFF7 */  bnez  $at, .L800A8B24
/* B1FCE8 800A8B48 26100002 */   addiu $s0, $s0, 2
/* B1FCEC 800A8B4C 3C048014 */  lui   $a0, %hi(D_80140A88) # $a0, 0x8014
/* B1FCF0 800A8B50 24840A88 */  addiu $a0, %lo(D_80140A88) # addiu $a0, $a0, 0xa88
/* B1FCF4 800A8B54 02609025 */  move  $s2, $s3
/* B1FCF8 800A8B58 02602825 */  move  $a1, $s3
/* B1FCFC 800A8B5C 02A08025 */  move  $s0, $s5
/* B1FD00 800A8B60 0C00084C */  jal   osSyncPrintf
/* B1FD04 800A8B64 02A03025 */   move  $a2, $s5
/* B1FD08 800A8B68 121200BB */  beq   $s0, $s2, .L800A8E58
/* B1FD0C 800A8B6C 3C048014 */   lui   $a0, %hi(D_80140C38)
/* B1FD10 800A8B70 8FAD0060 */  lw    $t5, 0x60($sp)
/* B1FD14 800A8B74 3C048014 */  lui   $a0, %hi(D_80140AB4) # $a0, 0x8014
/* B1FD18 800A8B78 24840AB4 */  addiu $a0, %lo(D_80140AB4) # addiu $a0, $a0, 0xab4
/* B1FD1C 800A8B7C 8FA6005C */  lw    $a2, 0x5c($sp)
/* B1FD20 800A8B80 0C00084C */  jal   osSyncPrintf
/* B1FD24 800A8B84 95A50000 */   lhu   $a1, ($t5)
/* B1FD28 800A8B88 8FAE005C */  lw    $t6, 0x5c($sp)
/* B1FD2C 800A8B8C 8FB9007C */  lw    $t9, 0x7c($sp)
/* B1FD30 800A8B90 3C188013 */  lui   $t8, %hi(gSramSlotOffsets) # $t8, 0x8013
/* B1FD34 800A8B94 2718A4E0 */  addiu $t8, %lo(gSramSlotOffsets) # addiu $t8, $t8, -0x5b20
/* B1FD38 800A8B98 000E7840 */  sll   $t7, $t6, 1
/* B1FD3C 800A8B9C 01F81021 */  addu  $v0, $t7, $t8
/* B1FD40 800A8BA0 94520006 */  lhu   $s2, 6($v0)
/* B1FD44 800A8BA4 8F280000 */  lw    $t0, ($t9)
/* B1FD48 800A8BA8 AFA20050 */  sw    $v0, 0x50($sp)
/* B1FD4C 800A8BAC 02802025 */  move  $a0, $s4
/* B1FD50 800A8BB0 24061354 */  li    $a2, 4948
/* B1FD54 800A8BB4 0C01A508 */  jal   MemCopy
/* B1FD58 800A8BB8 01122821 */   addu  $a1, $t0, $s2
/* B1FD5C 800A8BBC 96951352 */  lhu   $s5, 0x1352($s4)
/* B1FD60 800A8BC0 3C048014 */  lui   $a0, %hi(D_80140AD0) # $a0, 0x8014
/* B1FD64 800A8BC4 A6801352 */  sh    $zero, 0x1352($s4)
/* B1FD68 800A8BC8 02808025 */  move  $s0, $s4
/* B1FD6C 800A8BCC 0C00084C */  jal   osSyncPrintf
/* B1FD70 800A8BD0 24840AD0 */   addiu $a0, %lo(D_80140AD0) # addiu $a0, $a0, 0xad0
/* B1FD74 800A8BD4 00009825 */  move  $s3, $zero
/* B1FD78 800A8BD8 00008825 */  move  $s1, $zero
.L800A8BDC:
/* B1FD7C 800A8BDC 96090000 */  lhu   $t1, ($s0)
/* B1FD80 800A8BE0 26310001 */  addiu $s1, $s1, 1
/* B1FD84 800A8BE4 3231FFFF */  andi  $s1, $s1, 0xffff
/* B1FD88 800A8BE8 2E2109AA */  sltiu $at, $s1, 0x9aa
/* B1FD8C 800A8BEC 26520002 */  addiu $s2, $s2, 2
/* B1FD90 800A8BF0 02699821 */  addu  $s3, $s3, $t1
/* B1FD94 800A8BF4 3252FFFF */  andi  $s2, $s2, 0xffff
/* B1FD98 800A8BF8 3273FFFF */  andi  $s3, $s3, 0xffff
/* B1FD9C 800A8BFC 1420FFF7 */  bnez  $at, .L800A8BDC
/* B1FDA0 800A8C00 26100002 */   addiu $s0, $s0, 2
/* B1FDA4 800A8C04 3C048014 */  lui   $a0, %hi(D_80140B0C) # $a0, 0x8014
/* B1FDA8 800A8C08 24840B0C */  addiu $a0, %lo(D_80140B0C) # addiu $a0, $a0, 0xb0c
/* B1FDAC 800A8C0C 02609025 */  move  $s2, $s3
/* B1FDB0 800A8C10 02602825 */  move  $a1, $s3
/* B1FDB4 800A8C14 02A08025 */  move  $s0, $s5
/* B1FDB8 800A8C18 0C00084C */  jal   osSyncPrintf
/* B1FDBC 800A8C1C 02A03025 */   move  $a2, $s5
/* B1FDC0 800A8C20 1212007C */  beq   $s0, $s2, .L800A8E14
/* B1FDC4 800A8C24 3C048014 */   lui   $a0, %hi(D_80140B3C) # $a0, 0x8014
/* B1FDC8 800A8C28 8FAA0050 */  lw    $t2, 0x50($sp)
/* B1FDCC 800A8C2C 24840B3C */  addiu $a0, %lo(D_80140B3C) # addiu $a0, $a0, 0xb3c
/* B1FDD0 800A8C30 8FA6005C */  lw    $a2, 0x5c($sp)
/* B1FDD4 800A8C34 00009025 */  move  $s2, $zero
/* B1FDD8 800A8C38 0C00084C */  jal   osSyncPrintf
/* B1FDDC 800A8C3C 95450006 */   lhu   $a1, 6($t2)
/* B1FDE0 800A8C40 02802025 */  move  $a0, $s4
/* B1FDE4 800A8C44 0C001114 */  jal   bzero
/* B1FDE8 800A8C48 24050004 */   li    $a1, 4
/* B1FDEC 800A8C4C 3C048016 */  lui   $a0, %hi(gSaveContext+4) # $a0, 0x8016
/* B1FDF0 800A8C50 2484E664 */  addiu $a0, %lo(gSaveContext+4) # addiu $a0, $a0, -0x199c
/* B1FDF4 800A8C54 0C001114 */  jal   bzero
/* B1FDF8 800A8C58 24050004 */   li    $a1, 4
/* B1FDFC 800A8C5C 3C048016 */  lui   $a0, %hi(gSaveContext+8) # $a0, 0x8016
/* B1FE00 800A8C60 2484E668 */  addiu $a0, %lo(gSaveContext+8) # addiu $a0, $a0, -0x1998
/* B1FE04 800A8C64 0C001114 */  jal   bzero
/* B1FE08 800A8C68 24050004 */   li    $a1, 4
/* B1FE0C 800A8C6C 3C048016 */  lui   $a0, %hi(gSaveContext+0xc) # $a0, 0x8016
/* B1FE10 800A8C70 2484E66C */  addiu $a0, %lo(gSaveContext+0xc) # addiu $a0, $a0, -0x1994
/* B1FE14 800A8C74 0C001114 */  jal   bzero
/* B1FE18 800A8C78 24050004 */   li    $a1, 4
/* B1FE1C 800A8C7C 3C048016 */  lui   $a0, %hi(gSaveContext+0x10) # $a0, 0x8016
/* B1FE20 800A8C80 2484E670 */  addiu $a0, %lo(gSaveContext+0x10) # addiu $a0, $a0, -0x1990
/* B1FE24 800A8C84 0C001114 */  jal   bzero
/* B1FE28 800A8C88 24050004 */   li    $a1, 4
/* B1FE2C 800A8C8C 3C048016 */  lui   $a0, %hi(gSaveContext+0x14) # $a0, 0x8016
/* B1FE30 800A8C90 2484E674 */  addiu $a0, %lo(gSaveContext+0x14) # addiu $a0, $a0, -0x198c
/* B1FE34 800A8C94 0C001114 */  jal   bzero
/* B1FE38 800A8C98 24050004 */   li    $a1, 4
/* B1FE3C 800A8C9C 3C048016 */  lui   $a0, %hi(gSaveContext+0x18) # $a0, 0x8016
/* B1FE40 800A8CA0 2484E678 */  addiu $a0, %lo(gSaveContext+0x18) # addiu $a0, $a0, -0x1988
/* B1FE44 800A8CA4 0C001114 */  jal   bzero
/* B1FE48 800A8CA8 24050004 */   li    $a1, 4
/* B1FE4C 800A8CAC 97AB0072 */  lhu   $t3, 0x72($sp)
/* B1FE50 800A8CB0 1560001C */  bnez  $t3, .L800A8D24
/* B1FE54 800A8CB4 00000000 */   nop   
/* B1FE58 800A8CB8 0C02A0B2 */  jal   Sram_InitDebugSave
/* B1FE5C 800A8CBC 00000000 */   nop   
/* B1FE60 800A8CC0 2402005A */  li    $v0, 90
/* B1FE64 800A8CC4 240E0044 */  li    $t6, 68
/* B1FE68 800A8CC8 240F0041 */  li    $t7, 65
/* B1FE6C 800A8CCC 240C0045 */  li    $t4, 69
/* B1FE70 800A8CD0 240D004C */  li    $t5, 76
/* B1FE74 800A8CD4 31F900FF */  andi  $t9, $t7, 0xff
/* B1FE78 800A8CD8 31D800FF */  andi  $t8, $t6, 0xff
/* B1FE7C 800A8CDC 304800FF */  andi  $t0, $v0, 0xff
/* B1FE80 800A8CE0 3C048014 */  lui   $a0, %hi(D_80140B5C) # $a0, 0x8014
/* B1FE84 800A8CE4 A282001C */  sb    $v0, 0x1c($s4)
/* B1FE88 800A8CE8 A28C001D */  sb    $t4, 0x1d($s4)
/* B1FE8C 800A8CEC A28D001E */  sb    $t5, 0x1e($s4)
/* B1FE90 800A8CF0 A28E001F */  sb    $t6, 0x1f($s4)
/* B1FE94 800A8CF4 A28F0020 */  sb    $t7, 0x20($s4)
/* B1FE98 800A8CF8 A2820021 */  sb    $v0, 0x21($s4)
/* B1FE9C 800A8CFC 24840B5C */  addiu $a0, %lo(D_80140B5C) # addiu $a0, $a0, 0xb5c
/* B1FEA0 800A8D00 AFA80018 */  sw    $t0, 0x18($sp)
/* B1FEA4 800A8D04 AFB80010 */  sw    $t8, 0x10($sp)
/* B1FEA8 800A8D08 AFB90014 */  sw    $t9, 0x14($sp)
/* B1FEAC 800A8D0C 31A700FF */  andi  $a3, $t5, 0xff
/* B1FEB0 800A8D10 318600FF */  andi  $a2, $t4, 0xff
/* B1FEB4 800A8D14 0C00084C */  jal   osSyncPrintf
/* B1FEB8 800A8D18 304500FF */   andi  $a1, $v0, 0xff
/* B1FEBC 800A8D1C 10000003 */  b     .L800A8D2C
/* B1FEC0 800A8D20 00000000 */   nop   
.L800A8D24:
/* B1FEC4 800A8D24 0C02A068 */  jal   Sram_InitNewSave
/* B1FEC8 800A8D28 00000000 */   nop   
.L800A8D2C:
/* B1FECC 800A8D2C 3C048014 */  lui   $a0, %hi(D_80140B74) # $a0, 0x8014
/* B1FED0 800A8D30 02808025 */  move  $s0, $s4
/* B1FED4 800A8D34 0C00084C */  jal   osSyncPrintf
/* B1FED8 800A8D38 24840B74 */   addiu $a0, %lo(D_80140B74) # addiu $a0, $a0, 0xb74
/* B1FEDC 800A8D3C 00009825 */  move  $s3, $zero
/* B1FEE0 800A8D40 00008825 */  move  $s1, $zero
.L800A8D44:
/* B1FEE4 800A8D44 02C02025 */  move  $a0, $s6
/* B1FEE8 800A8D48 0C00084C */  jal   osSyncPrintf
/* B1FEEC 800A8D4C 96050000 */   lhu   $a1, ($s0)
/* B1FEF0 800A8D50 26520001 */  addiu $s2, $s2, 1
/* B1FEF4 800A8D54 3252FFFF */  andi  $s2, $s2, 0xffff
/* B1FEF8 800A8D58 56F20005 */  bnel  $s7, $s2, .L800A8D70
/* B1FEFC 800A8D5C 96090000 */   lhu   $t1, ($s0)
/* B1FF00 800A8D60 0C00084C */  jal   osSyncPrintf
/* B1FF04 800A8D64 03C02025 */   move  $a0, $fp
/* B1FF08 800A8D68 00009025 */  move  $s2, $zero
/* B1FF0C 800A8D6C 96090000 */  lhu   $t1, ($s0)
.L800A8D70:
/* B1FF10 800A8D70 26310001 */  addiu $s1, $s1, 1
/* B1FF14 800A8D74 3231FFFF */  andi  $s1, $s1, 0xffff
/* B1FF18 800A8D78 2E2109AA */  sltiu $at, $s1, 0x9aa
/* B1FF1C 800A8D7C 02699821 */  addu  $s3, $s3, $t1
/* B1FF20 800A8D80 3273FFFF */  andi  $s3, $s3, 0xffff
/* B1FF24 800A8D84 1420FFEF */  bnez  $at, .L800A8D44
/* B1FF28 800A8D88 26100002 */   addiu $s0, $s0, 2
/* B1FF2C 800A8D8C 3C048014 */  lui   $a0, %hi(D_80140BC0) # $a0, 0x8014
/* B1FF30 800A8D90 A6931352 */  sh    $s3, 0x1352($s4)
/* B1FF34 800A8D94 24840BC0 */  addiu $a0, %lo(D_80140BC0) # addiu $a0, $a0, 0xbc0
/* B1FF38 800A8D98 3265FFFF */  andi  $a1, $s3, 0xffff
/* B1FF3C 800A8D9C 02609025 */  move  $s2, $s3
/* B1FF40 800A8DA0 0C00084C */  jal   osSyncPrintf
/* B1FF44 800A8DA4 02603025 */   move  $a2, $s3
/* B1FF48 800A8DA8 8FAA0050 */  lw    $t2, 0x50($sp)
/* B1FF4C 800A8DAC 3C010800 */  lui   $at, 0x800
/* B1FF50 800A8DB0 02802825 */  move  $a1, $s4
/* B1FF54 800A8DB4 95500006 */  lhu   $s0, 6($t2)
/* B1FF58 800A8DB8 24061450 */  li    $a2, 5200
/* B1FF5C 800A8DBC 24070001 */  li    $a3, 1
/* B1FF60 800A8DC0 0C02A7A8 */  jal   SsSram_ReadWrite
/* B1FF64 800A8DC4 02012021 */   addu  $a0, $s0, $at
/* B1FF68 800A8DC8 928B001F */  lbu   $t3, 0x1f($s4)
/* B1FF6C 800A8DCC 928C0020 */  lbu   $t4, 0x20($s4)
/* B1FF70 800A8DD0 928D0021 */  lbu   $t5, 0x21($s4)
/* B1FF74 800A8DD4 3C048014 */  lui   $a0, %hi(D_80140BD4) # $a0, 0x8014
/* B1FF78 800A8DD8 24840BD4 */  addiu $a0, %lo(D_80140BD4) # addiu $a0, $a0, 0xbd4
/* B1FF7C 800A8DDC 9285001C */  lbu   $a1, 0x1c($s4)
/* B1FF80 800A8DE0 9286001D */  lbu   $a2, 0x1d($s4)
/* B1FF84 800A8DE4 9287001E */  lbu   $a3, 0x1e($s4)
/* B1FF88 800A8DE8 AFAB0010 */  sw    $t3, 0x10($sp)
/* B1FF8C 800A8DEC AFAC0014 */  sw    $t4, 0x14($sp)
/* B1FF90 800A8DF0 0C00084C */  jal   osSyncPrintf
/* B1FF94 800A8DF4 AFAD0018 */   sw    $t5, 0x18($sp)
/* B1FF98 800A8DF8 3C048014 */  lui   $a0, %hi(D_80140BEC) # $a0, 0x8014
/* B1FF9C 800A8DFC 24840BEC */  addiu $a0, %lo(D_80140BEC) # addiu $a0, $a0, 0xbec
/* B1FFA0 800A8E00 02002825 */  move  $a1, $s0
/* B1FFA4 800A8E04 8FA6005C */  lw    $a2, 0x5c($sp)
/* B1FFA8 800A8E08 96871352 */  lhu   $a3, 0x1352($s4)
/* B1FFAC 800A8E0C 0C00084C */  jal   osSyncPrintf
/* B1FFB0 800A8E10 AFB20010 */   sw    $s2, 0x10($sp)
.L800A8E14:
/* B1FFB4 800A8E14 8FAE0060 */  lw    $t6, 0x60($sp)
/* B1FFB8 800A8E18 3C010800 */  lui   $at, 0x800
/* B1FFBC 800A8E1C 02802825 */  move  $a1, $s4
/* B1FFC0 800A8E20 95D00000 */  lhu   $s0, ($t6)
/* B1FFC4 800A8E24 24061450 */  li    $a2, 5200
/* B1FFC8 800A8E28 24070001 */  li    $a3, 1
/* B1FFCC 800A8E2C 0C02A7A8 */  jal   SsSram_ReadWrite
/* B1FFD0 800A8E30 02012021 */   addu  $a0, $s0, $at
/* B1FFD4 800A8E34 3C048014 */  lui   $a0, %hi(D_80140C14) # $a0, 0x8014
/* B1FFD8 800A8E38 24840C14 */  addiu $a0, %lo(D_80140C14) # addiu $a0, $a0, 0xc14
/* B1FFDC 800A8E3C 02002825 */  move  $a1, $s0
/* B1FFE0 800A8E40 8FA6005C */  lw    $a2, 0x5c($sp)
/* B1FFE4 800A8E44 96871352 */  lhu   $a3, 0x1352($s4)
/* B1FFE8 800A8E48 0C00084C */  jal   osSyncPrintf
/* B1FFEC 800A8E4C AFB20010 */   sw    $s2, 0x10($sp)
/* B1FFF0 800A8E50 10000004 */  b     .L800A8E64
/* B1FFF4 800A8E54 97AF0072 */   lhu   $t7, 0x72($sp)
.L800A8E58:
/* B1FFF8 800A8E58 0C00084C */  jal   osSyncPrintf
/* B1FFFC 800A8E5C 24840C38 */   addiu $a0, $a0, %lo(D_80140C38)
/* B20000 800A8E60 97AF0072 */  lhu   $t7, 0x72($sp)
.L800A8E64:
/* B20004 800A8E64 25F80001 */  addiu $t8, $t7, 1
/* B20008 800A8E68 3302FFFF */  andi  $v0, $t8, 0xffff
/* B2000C 800A8E6C 28410003 */  slti  $at, $v0, 3
/* B20010 800A8E70 AFA2005C */  sw    $v0, 0x5c($sp)
/* B20014 800A8E74 1420FF0F */  bnez  $at, .L800A8AB4
/* B20018 800A8E78 A7B80072 */   sh    $t8, 0x72($sp)
/* B2001C 800A8E7C 8FB9007C */  lw    $t9, 0x7c($sp)
/* B20020 800A8E80 34058000 */  li    $a1, 32768
/* B20024 800A8E84 0C001114 */  jal   bzero
/* B20028 800A8E88 8F240000 */   lw    $a0, ($t9)
/* B2002C 800A8E8C 8FA8007C */  lw    $t0, 0x7c($sp)
/* B20030 800A8E90 3C040800 */  lui   $a0, 0x800
/* B20034 800A8E94 34068000 */  li    $a2, 32768
/* B20038 800A8E98 00003825 */  move  $a3, $zero
/* B2003C 800A8E9C 0C02A7A8 */  jal   SsSram_ReadWrite
/* B20040 800A8EA0 8D050000 */   lw    $a1, ($t0)
/* B20044 800A8EA4 97A90066 */  lhu   $t1, 0x66($sp)
/* B20048 800A8EA8 3C048014 */  lui   $a0, %hi(D_80140C58) # $a0, 0x8014
/* B2004C 800A8EAC 240A00A4 */  li    $t2, 164
/* B20050 800A8EB0 240B002C */  li    $t3, 44
/* B20054 800A8EB4 240C00CF */  li    $t4, 207
/* B20058 800A8EB8 AFAC0018 */  sw    $t4, 0x18($sp)
/* B2005C 800A8EBC AFAB0014 */  sw    $t3, 0x14($sp)
/* B20060 800A8EC0 AFAA0010 */  sw    $t2, 0x10($sp)
/* B20064 800A8EC4 24840C58 */  addiu $a0, %lo(D_80140C58) # addiu $a0, $a0, 0xc58
/* B20068 800A8EC8 24050022 */  li    $a1, 34
/* B2006C 800A8ECC 24060024 */  li    $a2, 36
/* B20070 800A8ED0 2407002E */  li    $a3, 46
/* B20074 800A8ED4 0C00084C */  jal   osSyncPrintf
/* B20078 800A8ED8 A689000C */   sh    $t1, 0xc($s4)
/* B2007C 800A8EDC 8FAD007C */  lw    $t5, 0x7c($sp)
/* B20080 800A8EE0 8FA40078 */  lw    $a0, 0x78($sp)
/* B20084 800A8EE4 3C010001 */  lui   $at, (0x0001C9F6 >> 16) # lui $at, 1
/* B20088 800A8EE8 8DA50000 */  lw    $a1, ($t5)
/* B2008C 800A8EEC 3421C9F6 */  ori   $at, (0x0001C9F6 & 0xFFFF) # ori $at, $at, 0xc9f6
/* B20090 800A8EF0 24060002 */  li    $a2, 2
/* B20094 800A8EF4 00812021 */  addu  $a0, $a0, $at
/* B20098 800A8EF8 0C01A508 */  jal   MemCopy
/* B2009C 800A8EFC 24A50042 */   addiu $a1, $a1, 0x42
/* B200A0 800A8F00 8FAE007C */  lw    $t6, 0x7c($sp)
/* B200A4 800A8F04 8FA40078 */  lw    $a0, 0x78($sp)
/* B200A8 800A8F08 3C010001 */  lui   $at, (0x0001C9F8 >> 16) # lui $at, 1
/* B200AC 800A8F0C 8DC50000 */  lw    $a1, ($t6)
/* B200B0 800A8F10 3421C9F8 */  ori   $at, (0x0001C9F8 & 0xFFFF) # ori $at, $at, 0xc9f8
/* B200B4 800A8F14 24060002 */  li    $a2, 2
/* B200B8 800A8F18 00812021 */  addu  $a0, $a0, $at
/* B200BC 800A8F1C 0C01A508 */  jal   MemCopy
/* B200C0 800A8F20 24A51492 */   addiu $a1, $a1, 0x1492
/* B200C4 800A8F24 8FAF007C */  lw    $t7, 0x7c($sp)
/* B200C8 800A8F28 8FA40078 */  lw    $a0, 0x78($sp)
/* B200CC 800A8F2C 3C010001 */  lui   $at, (0x0001C9FA >> 16) # lui $at, 1
/* B200D0 800A8F30 8DE50000 */  lw    $a1, ($t7)
/* B200D4 800A8F34 3421C9FA */  ori   $at, (0x0001C9FA & 0xFFFF) # ori $at, $at, 0xc9fa
/* B200D8 800A8F38 24060002 */  li    $a2, 2
/* B200DC 800A8F3C 00812021 */  addu  $a0, $a0, $at
/* B200E0 800A8F40 0C01A508 */  jal   MemCopy
/* B200E4 800A8F44 24A528E2 */   addiu $a1, $a1, 0x28e2
/* B200E8 800A8F48 8FB8007C */  lw    $t8, 0x7c($sp)
/* B200EC 800A8F4C 8FA40078 */  lw    $a0, 0x78($sp)
/* B200F0 800A8F50 3C010001 */  lui   $at, (0x0001C9FC >> 16) # lui $at, 1
/* B200F4 800A8F54 8F050000 */  lw    $a1, ($t8)
/* B200F8 800A8F58 3421C9FC */  ori   $at, (0x0001C9FC & 0xFFFF) # ori $at, $at, 0xc9fc
/* B200FC 800A8F5C 24060008 */  li    $a2, 8
/* B20100 800A8F60 00812021 */  addu  $a0, $a0, $at
/* B20104 800A8F64 0C01A508 */  jal   MemCopy
/* B20108 800A8F68 24A50044 */   addiu $a1, $a1, 0x44
/* B2010C 800A8F6C 8FB9007C */  lw    $t9, 0x7c($sp)
/* B20110 800A8F70 8FA40078 */  lw    $a0, 0x78($sp)
/* B20114 800A8F74 3C010001 */  lui   $at, (0x0001CA04 >> 16) # lui $at, 1
/* B20118 800A8F78 8F250000 */  lw    $a1, ($t9)
/* B2011C 800A8F7C 3421CA04 */  ori   $at, (0x0001CA04 & 0xFFFF) # ori $at, $at, 0xca04
/* B20120 800A8F80 24060008 */  li    $a2, 8
/* B20124 800A8F84 00812021 */  addu  $a0, $a0, $at
/* B20128 800A8F88 0C01A508 */  jal   MemCopy
/* B2012C 800A8F8C 24A51494 */   addiu $a1, $a1, 0x1494
/* B20130 800A8F90 8FA8007C */  lw    $t0, 0x7c($sp)
/* B20134 800A8F94 8FA40078 */  lw    $a0, 0x78($sp)
/* B20138 800A8F98 3C010001 */  lui   $at, (0x0001CA0C >> 16) # lui $at, 1
/* B2013C 800A8F9C 8D050000 */  lw    $a1, ($t0)
/* B20140 800A8FA0 3421CA0C */  ori   $at, (0x0001CA0C & 0xFFFF) # ori $at, $at, 0xca0c
/* B20144 800A8FA4 24060008 */  li    $a2, 8
/* B20148 800A8FA8 00812021 */  addu  $a0, $a0, $at
/* B2014C 800A8FAC 0C01A508 */  jal   MemCopy
/* B20150 800A8FB0 24A528E4 */   addiu $a1, $a1, 0x28e4
/* B20154 800A8FB4 8FA9007C */  lw    $t1, 0x7c($sp)
/* B20158 800A8FB8 8FA40078 */  lw    $a0, 0x78($sp)
/* B2015C 800A8FBC 3C010001 */  lui   $at, (0x0001CA14 >> 16) # lui $at, 1
/* B20160 800A8FC0 8D250000 */  lw    $a1, ($t1)
/* B20164 800A8FC4 3421CA14 */  ori   $at, (0x0001CA14 & 0xFFFF) # ori $at, $at, 0xca14
/* B20168 800A8FC8 24060002 */  li    $a2, 2
/* B2016C 800A8FCC 00812021 */  addu  $a0, $a0, $at
/* B20170 800A8FD0 0C01A508 */  jal   MemCopy
/* B20174 800A8FD4 24A5004E */   addiu $a1, $a1, 0x4e
/* B20178 800A8FD8 8FAA007C */  lw    $t2, 0x7c($sp)
/* B2017C 800A8FDC 8FA40078 */  lw    $a0, 0x78($sp)
/* B20180 800A8FE0 3C010001 */  lui   $at, (0x0001CA16 >> 16) # lui $at, 1
/* B20184 800A8FE4 8D450000 */  lw    $a1, ($t2)
/* B20188 800A8FE8 3421CA16 */  ori   $at, (0x0001CA16 & 0xFFFF) # ori $at, $at, 0xca16
/* B2018C 800A8FEC 24060002 */  li    $a2, 2
/* B20190 800A8FF0 00812021 */  addu  $a0, $a0, $at
/* B20194 800A8FF4 0C01A508 */  jal   MemCopy
/* B20198 800A8FF8 24A5149E */   addiu $a1, $a1, 0x149e
/* B2019C 800A8FFC 8FAB007C */  lw    $t3, 0x7c($sp)
/* B201A0 800A9000 8FA40078 */  lw    $a0, 0x78($sp)
/* B201A4 800A9004 3C010001 */  lui   $at, (0x0001CA18 >> 16) # lui $at, 1
/* B201A8 800A9008 8D650000 */  lw    $a1, ($t3)
/* B201AC 800A900C 3421CA18 */  ori   $at, (0x0001CA18 & 0xFFFF) # ori $at, $at, 0xca18
/* B201B0 800A9010 24060002 */  li    $a2, 2
/* B201B4 800A9014 00812021 */  addu  $a0, $a0, $at
/* B201B8 800A9018 0C01A508 */  jal   MemCopy
/* B201BC 800A901C 24A528EE */   addiu $a1, $a1, 0x28ee
/* B201C0 800A9020 8FAC007C */  lw    $t4, 0x7c($sp)
/* B201C4 800A9024 8FA40078 */  lw    $a0, 0x78($sp)
/* B201C8 800A9028 3C010001 */  lui   $at, (0x0001CA1C >> 16) # lui $at, 1
/* B201CC 800A902C 8D850000 */  lw    $a1, ($t4)
/* B201D0 800A9030 3421CA1C */  ori   $at, (0x0001CA1C & 0xFFFF) # ori $at, $at, 0xca1c
/* B201D4 800A9034 24060004 */  li    $a2, 4
/* B201D8 800A9038 00812021 */  addu  $a0, $a0, $at
/* B201DC 800A903C 0C01A508 */  jal   MemCopy
/* B201E0 800A9040 24A500C4 */   addiu $a1, $a1, 0xc4
/* B201E4 800A9044 8FAD007C */  lw    $t5, 0x7c($sp)
/* B201E8 800A9048 8FA40078 */  lw    $a0, 0x78($sp)
/* B201EC 800A904C 3C010001 */  lui   $at, (0x0001CA20 >> 16) # lui $at, 1
/* B201F0 800A9050 8DA50000 */  lw    $a1, ($t5)
/* B201F4 800A9054 3421CA20 */  ori   $at, (0x0001CA20 & 0xFFFF) # ori $at, $at, 0xca20
/* B201F8 800A9058 24060004 */  li    $a2, 4
/* B201FC 800A905C 00812021 */  addu  $a0, $a0, $at
/* B20200 800A9060 0C01A508 */  jal   MemCopy
/* B20204 800A9064 24A51514 */   addiu $a1, $a1, 0x1514
/* B20208 800A9068 8FAE007C */  lw    $t6, 0x7c($sp)
/* B2020C 800A906C 8FA40078 */  lw    $a0, 0x78($sp)
/* B20210 800A9070 3C010001 */  lui   $at, (0x0001CA24 >> 16) # lui $at, 1
/* B20214 800A9074 8DC50000 */  lw    $a1, ($t6)
/* B20218 800A9078 3421CA24 */  ori   $at, (0x0001CA24 & 0xFFFF) # ori $at, $at, 0xca24
/* B2021C 800A907C 24060004 */  li    $a2, 4
/* B20220 800A9080 00812021 */  addu  $a0, $a0, $at
/* B20224 800A9084 0C01A508 */  jal   MemCopy
/* B20228 800A9088 24A52964 */   addiu $a1, $a1, 0x2964
/* B2022C 800A908C 8FAF007C */  lw    $t7, 0x7c($sp)
/* B20230 800A9090 8FA40078 */  lw    $a0, 0x78($sp)
/* B20234 800A9094 3C010001 */  lui   $at, (0x0001CA28 >> 16) # lui $at, 1
/* B20238 800A9098 8DE50000 */  lw    $a1, ($t7)
/* B2023C 800A909C 3421CA28 */  ori   $at, (0x0001CA28 & 0xFFFF) # ori $at, $at, 0xca28
/* B20240 800A90A0 24060002 */  li    $a2, 2
/* B20244 800A90A4 00812021 */  addu  $a0, $a0, $at
/* B20248 800A90A8 0C01A508 */  jal   MemCopy
/* B2024C 800A90AC 24A5004C */   addiu $a1, $a1, 0x4c
/* B20250 800A90B0 8FB8007C */  lw    $t8, 0x7c($sp)
/* B20254 800A90B4 8FA40078 */  lw    $a0, 0x78($sp)
/* B20258 800A90B8 3C010001 */  lui   $at, (0x0001CA2A >> 16) # lui $at, 1
/* B2025C 800A90BC 8F050000 */  lw    $a1, ($t8)
/* B20260 800A90C0 3421CA2A */  ori   $at, (0x0001CA2A & 0xFFFF) # ori $at, $at, 0xca2a
/* B20264 800A90C4 24060002 */  li    $a2, 2
/* B20268 800A90C8 00812021 */  addu  $a0, $a0, $at
/* B2026C 800A90CC 0C01A508 */  jal   MemCopy
/* B20270 800A90D0 24A5149C */   addiu $a1, $a1, 0x149c
/* B20274 800A90D4 8FB9007C */  lw    $t9, 0x7c($sp)
/* B20278 800A90D8 8FA40078 */  lw    $a0, 0x78($sp)
/* B2027C 800A90DC 3C010001 */  lui   $at, (0x0001CA2C >> 16) # lui $at, 1
/* B20280 800A90E0 8F250000 */  lw    $a1, ($t9)
/* B20284 800A90E4 3421CA2C */  ori   $at, (0x0001CA2C & 0xFFFF) # ori $at, $at, 0xca2c
/* B20288 800A90E8 24060002 */  li    $a2, 2
/* B2028C 800A90EC 00812021 */  addu  $a0, $a0, $at
/* B20290 800A90F0 0C01A508 */  jal   MemCopy
/* B20294 800A90F4 24A528EC */   addiu $a1, $a1, 0x28ec
/* B20298 800A90F8 8FA8007C */  lw    $t0, 0x7c($sp)
/* B2029C 800A90FC 8FA40078 */  lw    $a0, 0x78($sp)
/* B202A0 800A9100 3C010001 */  lui   $at, (0x0001CA2E >> 16) # lui $at, 1
/* B202A4 800A9104 8D050000 */  lw    $a1, ($t0)
/* B202A8 800A9108 3421CA2E */  ori   $at, (0x0001CA2E & 0xFFFF) # ori $at, $at, 0xca2e
/* B202AC 800A910C 24060001 */  li    $a2, 1
/* B202B0 800A9110 00812021 */  addu  $a0, $a0, $at
/* B202B4 800A9114 0C01A508 */  jal   MemCopy
/* B202B8 800A9118 24A500EF */   addiu $a1, $a1, 0xef
/* B202BC 800A911C 8FA9007C */  lw    $t1, 0x7c($sp)
/* B202C0 800A9120 8FA40078 */  lw    $a0, 0x78($sp)
/* B202C4 800A9124 3C010001 */  lui   $at, (0x0001CA2F >> 16) # lui $at, 1
/* B202C8 800A9128 8D250000 */  lw    $a1, ($t1)
/* B202CC 800A912C 3421CA2F */  ori   $at, (0x0001CA2F & 0xFFFF) # ori $at, $at, 0xca2f
/* B202D0 800A9130 24060001 */  li    $a2, 1
/* B202D4 800A9134 00812021 */  addu  $a0, $a0, $at
/* B202D8 800A9138 0C01A508 */  jal   MemCopy
/* B202DC 800A913C 24A5153F */   addiu $a1, $a1, 0x153f
/* B202E0 800A9140 8FAA007C */  lw    $t2, 0x7c($sp)
/* B202E4 800A9144 8FA40078 */  lw    $a0, 0x78($sp)
/* B202E8 800A9148 3C010001 */  lui   $at, (0x0001CA30 >> 16) # lui $at, 1
/* B202EC 800A914C 8D450000 */  lw    $a1, ($t2)
/* B202F0 800A9150 3421CA30 */  ori   $at, (0x0001CA30 & 0xFFFF) # ori $at, $at, 0xca30
/* B202F4 800A9154 24060001 */  li    $a2, 1
/* B202F8 800A9158 00812021 */  addu  $a0, $a0, $at
/* B202FC 800A915C 0C01A508 */  jal   MemCopy
/* B20300 800A9160 24A5298F */   addiu $a1, $a1, 0x298f
/* B20304 800A9164 8FAB007C */  lw    $t3, 0x7c($sp)
/* B20308 800A9168 8FA40078 */  lw    $a0, 0x78($sp)
/* B2030C 800A916C 3C010001 */  lui   $at, (0x0001CA32 >> 16) # lui $at, 1
/* B20310 800A9170 8D650000 */  lw    $a1, ($t3)
/* B20314 800A9174 3421CA32 */  ori   $at, (0x0001CA32 & 0xFFFF) # ori $at, $at, 0xca32
/* B20318 800A9178 24060002 */  li    $a2, 2
/* B2031C 800A917C 00812021 */  addu  $a0, $a0, $at
/* B20320 800A9180 0C01A508 */  jal   MemCopy
/* B20324 800A9184 24A50050 */   addiu $a1, $a1, 0x50
/* B20328 800A9188 8FAC007C */  lw    $t4, 0x7c($sp)
/* B2032C 800A918C 8FA40078 */  lw    $a0, 0x78($sp)
/* B20330 800A9190 3C010001 */  lui   $at, (0x0001CA34 >> 16) # lui $at, 1
/* B20334 800A9194 8D850000 */  lw    $a1, ($t4)
/* B20338 800A9198 3421CA34 */  ori   $at, (0x0001CA34 & 0xFFFF) # ori $at, $at, 0xca34
/* B2033C 800A919C 24060002 */  li    $a2, 2
/* B20340 800A91A0 00812021 */  addu  $a0, $a0, $at
/* B20344 800A91A4 0C01A508 */  jal   MemCopy
/* B20348 800A91A8 24A514A0 */   addiu $a1, $a1, 0x14a0
/* B2034C 800A91AC 8FAD007C */  lw    $t5, 0x7c($sp)
/* B20350 800A91B0 8FA40078 */  lw    $a0, 0x78($sp)
/* B20354 800A91B4 3C010001 */  lui   $at, (0x0001CA36 >> 16) # lui $at, 1
/* B20358 800A91B8 8DA50000 */  lw    $a1, ($t5)
/* B2035C 800A91BC 3421CA36 */  ori   $at, (0x0001CA36 & 0xFFFF) # ori $at, $at, 0xca36
/* B20360 800A91C0 24060002 */  li    $a2, 2
/* B20364 800A91C4 00812021 */  addu  $a0, $a0, $at
/* B20368 800A91C8 0C01A508 */  jal   MemCopy
/* B2036C 800A91CC 24A528F0 */   addiu $a1, $a1, 0x28f0
/* B20370 800A91D0 8FB00078 */  lw    $s0, 0x78($sp)
/* B20374 800A91D4 3C010001 */  lui   $at, (0x00018000 >> 16) # lui $at, 1
/* B20378 800A91D8 34218000 */  ori   $at, (0x00018000 & 0xFFFF) # ori $at, $at, 0x8000
/* B2037C 800A91DC 02018021 */  addu  $s0, $s0, $at
/* B20380 800A91E0 3C048014 */  lui   $a0, %hi(D_80140C94) # $a0, 0x8014
/* B20384 800A91E4 24840C94 */  addiu $a0, %lo(D_80140C94) # addiu $a0, $a0, 0xc94
/* B20388 800A91E8 86054A28 */  lh    $a1, 0x4a28($s0)
/* B2038C 800A91EC 86064A2A */  lh    $a2, 0x4a2a($s0)
/* B20390 800A91F0 0C00084C */  jal   osSyncPrintf
/* B20394 800A91F4 86074A2C */   lh    $a3, 0x4a2c($s0)
/* B20398 800A91F8 3C048014 */  lui   $a0, %hi(D_80140CA8) # $a0, 0x8014
/* B2039C 800A91FC 24840CA8 */  addiu $a0, %lo(D_80140CA8) # addiu $a0, $a0, 0xca8
/* B203A0 800A9200 82054A2E */  lb    $a1, 0x4a2e($s0)
/* B203A4 800A9204 82064A2F */  lb    $a2, 0x4a2f($s0)
/* B203A8 800A9208 0C00084C */  jal   osSyncPrintf
/* B203AC 800A920C 82074A30 */   lb    $a3, 0x4a30($s0)
/* B203B0 800A9210 3C048014 */  lui   $a0, %hi(D_80140CC4) # $a0, 0x8014
/* B203B4 800A9214 24840CC4 */  addiu $a0, %lo(D_80140CC4) # addiu $a0, $a0, 0xcc4
/* B203B8 800A9218 96054A32 */  lhu   $a1, 0x4a32($s0)
/* B203BC 800A921C 96064A34 */  lhu   $a2, 0x4a34($s0)
/* B203C0 800A9220 0C00084C */  jal   osSyncPrintf
/* B203C4 800A9224 96074A36 */   lhu   $a3, 0x4a36($s0)
/* B203C8 800A9228 8FBF004C */  lw    $ra, 0x4c($sp)
/* B203CC 800A922C 8FB00028 */  lw    $s0, 0x28($sp)
/* B203D0 800A9230 8FB1002C */  lw    $s1, 0x2c($sp)
/* B203D4 800A9234 8FB20030 */  lw    $s2, 0x30($sp)
/* B203D8 800A9238 8FB30034 */  lw    $s3, 0x34($sp)
/* B203DC 800A923C 8FB40038 */  lw    $s4, 0x38($sp)
/* B203E0 800A9240 8FB5003C */  lw    $s5, 0x3c($sp)
/* B203E4 800A9244 8FB60040 */  lw    $s6, 0x40($sp)
/* B203E8 800A9248 8FB70044 */  lw    $s7, 0x44($sp)
/* B203EC 800A924C 8FBE0048 */  lw    $fp, 0x48($sp)
/* B203F0 800A9250 03E00008 */  jr    $ra
/* B203F4 800A9254 27BD0078 */   addiu $sp, $sp, 0x78

