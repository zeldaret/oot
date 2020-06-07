.rdata
glabel D_8013E7C0
    .asciz "../z_player_lib.c"
    .balign 4

glabel D_8013E7D4
    .asciz "../z_player_lib.c"
    .balign 4

glabel D_8013E7E8
    .asciz "../z_player_lib.c"
    .balign 4

.late_rodata
glabel D_8013E938
    .float 0.08

glabel D_8013E93C
    .float 0.08

.text
glabel func_80090AFC
/* B07C9C 80090AFC 27BDFF60 */  addiu $sp, $sp, -0xa0
/* B07CA0 80090B00 AFB00030 */  sw    $s0, 0x30($sp)
/* B07CA4 80090B04 44802000 */  mtc1  $zero, $f4
/* B07CA8 80090B08 3C108012 */  lui   $s0, %hi(D_801260C8) # $s0, 0x8012
/* B07CAC 80090B0C 261060C8 */  addiu $s0, %lo(D_801260C8) # addiu $s0, $s0, 0x60c8
/* B07CB0 80090B10 AFBF0034 */  sw    $ra, 0x34($sp)
/* B07CB4 80090B14 AFA400A0 */  sw    $a0, 0xa0($sp)
/* B07CB8 80090B18 AFA500A4 */  sw    $a1, 0xa4($sp)
/* B07CBC 80090B1C 3C018012 */  lui   $at, %hi(D_801260D0)
/* B07CC0 80090B20 AFA600A8 */  sw    $a2, 0xa8($sp)
/* B07CC4 80090B24 27A5008C */  addiu $a1, $sp, 0x8c
/* B07CC8 80090B28 02002025 */  move  $a0, $s0
/* B07CCC 80090B2C 0C0346BD */  jal   Matrix_MultVec3f
/* B07CD0 80090B30 E42460D0 */   swc1  $f4, %lo(D_801260D0)($at)
/* B07CD4 80090B34 C7A600A8 */  lwc1  $f6, 0xa8($sp)
/* B07CD8 80090B38 3C018012 */  lui   $at, %hi(D_801260D0)
/* B07CDC 80090B3C 02002025 */  move  $a0, $s0
/* B07CE0 80090B40 27A50080 */  addiu $a1, $sp, 0x80
/* B07CE4 80090B44 0C0346BD */  jal   Matrix_MultVec3f
/* B07CE8 80090B48 E42660D0 */   swc1  $f6, %lo(D_801260D0)($at)
/* B07CEC 80090B4C 8FA400A0 */  lw    $a0, 0xa0($sp)
/* B07CF0 80090B50 27AE009C */  addiu $t6, $sp, 0x9c
/* B07CF4 80090B54 240F0001 */  li    $t7, 1
/* B07CF8 80090B58 24180001 */  li    $t8, 1
/* B07CFC 80090B5C 24190001 */  li    $t9, 1
/* B07D00 80090B60 24080001 */  li    $t0, 1
/* B07D04 80090B64 27A90098 */  addiu $t1, $sp, 0x98
/* B07D08 80090B68 AFA90024 */  sw    $t1, 0x24($sp)
/* B07D0C 80090B6C AFA80020 */  sw    $t0, 0x20($sp)
/* B07D10 80090B70 AFB9001C */  sw    $t9, 0x1c($sp)
/* B07D14 80090B74 AFB80018 */  sw    $t8, 0x18($sp)
/* B07D18 80090B78 AFAF0014 */  sw    $t7, 0x14($sp)
/* B07D1C 80090B7C AFAE0010 */  sw    $t6, 0x10($sp)
/* B07D20 80090B80 27A5008C */  addiu $a1, $sp, 0x8c
/* B07D24 80090B84 27A60080 */  addiu $a2, $sp, 0x80
/* B07D28 80090B88 27A70074 */  addiu $a3, $sp, 0x74
/* B07D2C 80090B8C 0C00F862 */  jal   func_8003E188
/* B07D30 80090B90 248407C0 */   addiu $a0, $a0, 0x7c0
/* B07D34 80090B94 1040005D */  beqz  $v0, .L80090D0C
/* B07D38 80090B98 8FAA00A0 */   lw    $t2, 0xa0($sp)
/* B07D3C 80090B9C 8D450000 */  lw    $a1, ($t2)
/* B07D40 80090BA0 3C068014 */  lui   $a2, %hi(D_8013E7C0) # $a2, 0x8014
/* B07D44 80090BA4 24C6E7C0 */  addiu $a2, %lo(D_8013E7C0) # addiu $a2, $a2, -0x1840
/* B07D48 80090BA8 27A4004C */  addiu $a0, $sp, 0x4c
/* B07D4C 80090BAC 24070A0C */  li    $a3, 2572
/* B07D50 80090BB0 0C031AB1 */  jal   Graph_OpenDisps
/* B07D54 80090BB4 00A08025 */   move  $s0, $a1
/* B07D58 80090BB8 8E0402B0 */  lw    $a0, 0x2b0($s0)
/* B07D5C 80090BBC 0C024DDD */  jal   Gfx_CallSetupDL
/* B07D60 80090BC0 24050007 */   li    $a1, 7
/* B07D64 80090BC4 AE0202B0 */  sw    $v0, 0x2b0($s0)
/* B07D68 80090BC8 8FA400A0 */  lw    $a0, 0xa0($sp)
/* B07D6C 80090BCC 3C010001 */  lui   $at, (0x00011D60 >> 16) # lui $at, 1
/* B07D70 80090BD0 34211D60 */  ori   $at, (0x00011D60 & 0xFFFF) # ori $at, $at, 0x1d60
/* B07D74 80090BD4 27A50074 */  addiu $a1, $sp, 0x74
/* B07D78 80090BD8 27A60068 */  addiu $a2, $sp, 0x68
/* B07D7C 80090BDC 27A70064 */  addiu $a3, $sp, 0x64
/* B07D80 80090BE0 0C029B84 */  jal   func_800A6E10
/* B07D84 80090BE4 00812021 */   addu  $a0, $a0, $at
/* B07D88 80090BE8 3C014348 */  li    $at, 0x43480000 # 0.000000
/* B07D8C 80090BEC 44811000 */  mtc1  $at, $f2
/* B07D90 80090BF0 C7A00064 */  lwc1  $f0, 0x64($sp)
/* B07D94 80090BF4 3C018014 */  lui   $at, %hi(D_8013E938)
/* B07D98 80090BF8 00003825 */  move  $a3, $zero
/* B07D9C 80090BFC 4602003C */  c.lt.s $f0, $f2
/* B07DA0 80090C00 00000000 */  nop   
/* B07DA4 80090C04 45020005 */  bc1fl .L80090C1C
/* B07DA8 80090C08 46020283 */   div.s $f10, $f0, $f2
/* B07DAC 80090C0C C428E938 */  lwc1  $f8, %lo(D_8013E938)($at)
/* B07DB0 80090C10 10000006 */  b     .L80090C2C
/* B07DB4 80090C14 E7A80060 */   swc1  $f8, 0x60($sp)
/* B07DB8 80090C18 46020283 */  div.s $f10, $f0, $f2
.L80090C1C:
/* B07DBC 80090C1C 3C018014 */  lui   $at, %hi(D_8013E93C)
/* B07DC0 80090C20 C430E93C */  lwc1  $f16, %lo(D_8013E93C)($at)
/* B07DC4 80090C24 46105302 */  mul.s $f12, $f10, $f16
/* B07DC8 80090C28 E7AC0060 */  swc1  $f12, 0x60($sp)
.L80090C2C:
/* B07DCC 80090C2C C7AC0074 */  lwc1  $f12, 0x74($sp)
/* B07DD0 80090C30 C7AE0078 */  lwc1  $f14, 0x78($sp)
/* B07DD4 80090C34 0C034261 */  jal   Matrix_Translate
/* B07DD8 80090C38 8FA6007C */   lw    $a2, 0x7c($sp)
/* B07DDC 80090C3C C7AC0060 */  lwc1  $f12, 0x60($sp)
/* B07DE0 80090C40 24070001 */  li    $a3, 1
/* B07DE4 80090C44 44066000 */  mfc1  $a2, $f12
/* B07DE8 80090C48 0C0342A3 */  jal   Matrix_Scale
/* B07DEC 80090C4C 46006386 */   mov.s $f14, $f12
/* B07DF0 80090C50 8E0202B0 */  lw    $v0, 0x2b0($s0)
/* B07DF4 80090C54 3C0CDA38 */  lui   $t4, (0xDA380003 >> 16) # lui $t4, 0xda38
/* B07DF8 80090C58 358C0003 */  ori   $t4, (0xDA380003 & 0xFFFF) # ori $t4, $t4, 3
/* B07DFC 80090C5C 244B0008 */  addiu $t3, $v0, 8
/* B07E00 80090C60 AE0B02B0 */  sw    $t3, 0x2b0($s0)
/* B07E04 80090C64 AC4C0000 */  sw    $t4, ($v0)
/* B07E08 80090C68 8FAD00A0 */  lw    $t5, 0xa0($sp)
/* B07E0C 80090C6C 3C058014 */  lui   $a1, %hi(D_8013E7D4) # $a1, 0x8014
/* B07E10 80090C70 24A5E7D4 */  addiu $a1, %lo(D_8013E7D4) # addiu $a1, $a1, -0x182c
/* B07E14 80090C74 8DA40000 */  lw    $a0, ($t5)
/* B07E18 80090C78 24060A1B */  li    $a2, 2587
/* B07E1C 80090C7C 0C0346A2 */  jal   Matrix_NewMtx
/* B07E20 80090C80 AFA20048 */   sw    $v0, 0x48($sp)
/* B07E24 80090C84 8FA30048 */  lw    $v1, 0x48($sp)
/* B07E28 80090C88 3C0FDB06 */  lui   $t7, (0xDB060018 >> 16) # lui $t7, 0xdb06
/* B07E2C 80090C8C 35EF0018 */  ori   $t7, (0xDB060018 & 0xFFFF) # ori $t7, $t7, 0x18
/* B07E30 80090C90 AC620004 */  sw    $v0, 4($v1)
/* B07E34 80090C94 8E0202B0 */  lw    $v0, 0x2b0($s0)
/* B07E38 80090C98 3C0B0001 */  lui   $t3, 1
/* B07E3C 80090C9C 3C0DDE00 */  lui   $t5, 0xde00
/* B07E40 80090CA0 244E0008 */  addiu $t6, $v0, 8
/* B07E44 80090CA4 AE0E02B0 */  sw    $t6, 0x2b0($s0)
/* B07E48 80090CA8 AC4F0000 */  sw    $t7, ($v0)
/* B07E4C 80090CAC 8FB900A4 */  lw    $t9, 0xa4($sp)
/* B07E50 80090CB0 8FB800A0 */  lw    $t8, 0xa0($sp)
/* B07E54 80090CB4 3C0E0603 */  lui   $t6, %hi(D_0602CB48) # $t6, 0x603
/* B07E58 80090CB8 8328001E */  lb    $t0, 0x1e($t9)
/* B07E5C 80090CBC 25CECB48 */  addiu $t6, %lo(D_0602CB48) # addiu $t6, $t6, -0x34b8
/* B07E60 80090CC0 3C068014 */  lui   $a2, %hi(D_8013E7E8) # $a2, 0x8014
/* B07E64 80090CC4 00084900 */  sll   $t1, $t0, 4
/* B07E68 80090CC8 01284821 */  addu  $t1, $t1, $t0
/* B07E6C 80090CCC 00094880 */  sll   $t1, $t1, 2
/* B07E70 80090CD0 03095021 */  addu  $t2, $t8, $t1
/* B07E74 80090CD4 016A5821 */  addu  $t3, $t3, $t2
/* B07E78 80090CD8 8D6B17B4 */  lw    $t3, 0x17b4($t3)
/* B07E7C 80090CDC 24C6E7E8 */  addiu $a2, %lo(D_8013E7E8) # addiu $a2, $a2, -0x1818
/* B07E80 80090CE0 27A4004C */  addiu $a0, $sp, 0x4c
/* B07E84 80090CE4 AC4B0004 */  sw    $t3, 4($v0)
/* B07E88 80090CE8 8E0202B0 */  lw    $v0, 0x2b0($s0)
/* B07E8C 80090CEC 24070A20 */  li    $a3, 2592
/* B07E90 80090CF0 244C0008 */  addiu $t4, $v0, 8
/* B07E94 80090CF4 AE0C02B0 */  sw    $t4, 0x2b0($s0)
/* B07E98 80090CF8 AC4E0004 */  sw    $t6, 4($v0)
/* B07E9C 80090CFC AC4D0000 */  sw    $t5, ($v0)
/* B07EA0 80090D00 8FAF00A0 */  lw    $t7, 0xa0($sp)
/* B07EA4 80090D04 0C031AD5 */  jal   Graph_CloseDisps
/* B07EA8 80090D08 8DE50000 */   lw    $a1, ($t7)
.L80090D0C:
/* B07EAC 80090D0C 8FBF0034 */  lw    $ra, 0x34($sp)
/* B07EB0 80090D10 8FB00030 */  lw    $s0, 0x30($sp)
/* B07EB4 80090D14 27BD00A0 */  addiu $sp, $sp, 0xa0
/* B07EB8 80090D18 03E00008 */  jr    $ra
/* B07EBC 80090D1C 00000000 */   nop   

