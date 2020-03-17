.rdata
glabel D_8013FF50
    .asciz "../z_skelanime.c"
    .balign 4

glabel D_8013FF64
    .asciz "../z_skelanime.c"
    .balign 4

glabel D_8013FF78
    .asciz "../z_skelanime.c"
    .balign 4

.text
glabel func_800A08A0
/* B17A40 800A08A0 27BDFF98 */  addiu $sp, $sp, -0x68
/* B17A44 800A08A4 AFBF0024 */  sw    $ra, 0x24($sp)
/* B17A48 800A08A8 AFA40068 */  sw    $a0, 0x68($sp)
/* B17A4C 800A08AC AFA5006C */  sw    $a1, 0x6c($sp)
/* B17A50 800A08B0 AFA60070 */  sw    $a2, 0x70($sp)
/* B17A54 800A08B4 AFA70074 */  sw    $a3, 0x74($sp)
/* B17A58 800A08B8 8C850000 */  lw    $a1, ($a0)
/* B17A5C 800A08BC 3C068014 */  lui   $a2, %hi(D_8013FF50) # $a2, 0x8014
/* B17A60 800A08C0 24C6FF50 */  addiu $a2, %lo(D_8013FF50) # addiu $a2, $a2, -0xb0
/* B17A64 800A08C4 27A40038 */  addiu $a0, $sp, 0x38
/* B17A68 800A08C8 24070305 */  li    $a3, 773
/* B17A6C 800A08CC 0C031AB1 */  jal   func_800C6AC4
/* B17A70 800A08D0 AFA50048 */   sw    $a1, 0x48($sp)
/* B17A74 800A08D4 0C034213 */  jal   Matrix_Push
/* B17A78 800A08D8 00000000 */   nop   
/* B17A7C 800A08DC 8FB8006C */  lw    $t8, 0x6c($sp)
/* B17A80 800A08E0 8FAF0070 */  lw    $t7, 0x70($sp)
/* B17A84 800A08E4 3C0E8016 */  lui   $t6, %hi(gSegments)
/* B17A88 800A08E8 0018C880 */  sll   $t9, $t8, 2
/* B17A8C 800A08EC 01F94821 */  addu  $t1, $t7, $t9
/* B17A90 800A08F0 8D220000 */  lw    $v0, ($t1)
/* B17A94 800A08F4 270F0001 */  addiu $t7, $t8, 1
/* B17A98 800A08F8 8FA90074 */  lw    $t1, 0x74($sp)
/* B17A9C 800A08FC 00025900 */  sll   $t3, $v0, 4
/* B17AA0 800A0900 000B6702 */  srl   $t4, $t3, 0x1c
/* B17AA4 800A0904 000C6880 */  sll   $t5, $t4, 2
/* B17AA8 800A0908 01CD7021 */  addu  $t6, $t6, $t5
/* B17AAC 800A090C 8DCE6FA8 */  lw    $t6, %lo(gSegments)($t6)
/* B17AB0 800A0910 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* B17AB4 800A0914 000F5880 */  sll   $t3, $t7, 2
/* B17AB8 800A0918 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* B17ABC 800A091C 016F5823 */  subu  $t3, $t3, $t7
/* B17AC0 800A0920 000B5840 */  sll   $t3, $t3, 1
/* B17AC4 800A0924 00415024 */  and   $t2, $v0, $at
/* B17AC8 800A0928 AFAF006C */  sw    $t7, 0x6c($sp)
/* B17ACC 800A092C 012B6021 */  addu  $t4, $t1, $t3
/* B17AD0 800A0930 014E4021 */  addu  $t0, $t2, $t6
/* B17AD4 800A0934 898A0000 */  lwl   $t2, ($t4)
/* B17AD8 800A0938 998A0003 */  lwr   $t2, 3($t4)
/* B17ADC 800A093C 27B9004C */  addiu $t9, $sp, 0x4c
/* B17AE0 800A0940 3C018000 */  lui   $at, 0x8000
/* B17AE4 800A0944 AF2A0000 */  sw    $t2, ($t9)
/* B17AE8 800A0948 958A0004 */  lhu   $t2, 4($t4)
/* B17AEC 800A094C 01014021 */  addu  $t0, $t0, $at
/* B17AF0 800A0950 27A60060 */  addiu $a2, $sp, 0x60
/* B17AF4 800A0954 A72A0004 */  sh    $t2, 4($t9)
/* B17AF8 800A0958 850E0000 */  lh    $t6, ($t0)
/* B17AFC 800A095C 8FA90084 */  lw    $t1, 0x84($sp)
/* B17B00 800A0960 8FAD0078 */  lw    $t5, 0x78($sp)
/* B17B04 800A0964 448E2000 */  mtc1  $t6, $f4
/* B17B08 800A0968 00095880 */  sll   $t3, $t1, 2
/* B17B0C 800A096C 010BC821 */  addu  $t9, $t0, $t3
/* B17B10 800A0970 468021A0 */  cvt.s.w $f6, $f4
/* B17B14 800A0974 8FA5006C */  lw    $a1, 0x6c($sp)
/* B17B18 800A0978 8FA40068 */  lw    $a0, 0x68($sp)
/* B17B1C 800A097C 27AA004C */  addiu $t2, $sp, 0x4c
/* B17B20 800A0980 27A70054 */  addiu $a3, $sp, 0x54
/* B17B24 800A0984 E7A60054 */  swc1  $f6, 0x54($sp)
/* B17B28 800A0988 85180002 */  lh    $t8, 2($t0)
/* B17B2C 800A098C 44984000 */  mtc1  $t8, $f8
/* B17B30 800A0990 00000000 */  nop   
/* B17B34 800A0994 468042A0 */  cvt.s.w $f10, $f8
/* B17B38 800A0998 E7AA0058 */  swc1  $f10, 0x58($sp)
/* B17B3C 800A099C 850F0004 */  lh    $t7, 4($t0)
/* B17B40 800A09A0 448F8000 */  mtc1  $t7, $f16
/* B17B44 800A09A4 00000000 */  nop   
/* B17B48 800A09A8 468084A0 */  cvt.s.w $f18, $f16
/* B17B4C 800A09AC E7B2005C */  swc1  $f18, 0x5c($sp)
/* B17B50 800A09B0 8F2C0008 */  lw    $t4, 8($t9)
/* B17B54 800A09B4 11A00008 */  beqz  $t5, .L800A09D8
/* B17B58 800A09B8 AFAC0060 */   sw    $t4, 0x60($sp)
/* B17B5C 800A09BC 8FAE0080 */  lw    $t6, 0x80($sp)
/* B17B60 800A09C0 AFAA0010 */  sw    $t2, 0x10($sp)
/* B17B64 800A09C4 AFA80064 */  sw    $t0, 0x64($sp)
/* B17B68 800A09C8 01A0F809 */  jalr  $t5
/* B17B6C 800A09CC AFAE0014 */  sw    $t6, 0x14($sp)
/* B17B70 800A09D0 14400022 */  bnez  $v0, .L800A0A5C
/* B17B74 800A09D4 8FA80064 */   lw    $t0, 0x64($sp)
.L800A09D8:
/* B17B78 800A09D8 27A40054 */  addiu $a0, $sp, 0x54
/* B17B7C 800A09DC 27A5004C */  addiu $a1, $sp, 0x4c
/* B17B80 800A09E0 0C0344D0 */  jal   func_800D1340
/* B17B84 800A09E4 AFA80064 */   sw    $t0, 0x64($sp)
/* B17B88 800A09E8 8FB80060 */  lw    $t8, 0x60($sp)
/* B17B8C 800A09EC 8FA80064 */  lw    $t0, 0x64($sp)
/* B17B90 800A09F0 8FA70048 */  lw    $a3, 0x48($sp)
/* B17B94 800A09F4 13000019 */  beqz  $t8, .L800A0A5C
/* B17B98 800A09F8 3C09DA38 */   lui   $t1, (0xDA380003 >> 16) # lui $t1, 0xda38
/* B17B9C 800A09FC 8CE202C0 */  lw    $v0, 0x2c0($a3)
/* B17BA0 800A0A00 35290003 */  ori   $t1, (0xDA380003 & 0xFFFF) # ori $t1, $t1, 3
/* B17BA4 800A0A04 3C058014 */  lui   $a1, %hi(D_8013FF64) # $a1, 0x8014
/* B17BA8 800A0A08 244F0008 */  addiu $t7, $v0, 8
/* B17BAC 800A0A0C ACEF02C0 */  sw    $t7, 0x2c0($a3)
/* B17BB0 800A0A10 AC490000 */  sw    $t1, ($v0)
/* B17BB4 800A0A14 8FAB0068 */  lw    $t3, 0x68($sp)
/* B17BB8 800A0A18 24A5FF64 */  addiu $a1, %lo(D_8013FF64) # addiu $a1, $a1, -0x9c
/* B17BBC 800A0A1C 24060325 */  li    $a2, 805
/* B17BC0 800A0A20 8D640000 */  lw    $a0, ($t3)
/* B17BC4 800A0A24 AFA80064 */  sw    $t0, 0x64($sp)
/* B17BC8 800A0A28 0C0346A2 */  jal   Matrix_NewMtx
/* B17BCC 800A0A2C AFA20034 */   sw    $v0, 0x34($sp)
/* B17BD0 800A0A30 8FA30034 */  lw    $v1, 0x34($sp)
/* B17BD4 800A0A34 8FA80064 */  lw    $t0, 0x64($sp)
/* B17BD8 800A0A38 3C0ADE00 */  lui   $t2, 0xde00
/* B17BDC 800A0A3C AC620004 */  sw    $v0, 4($v1)
/* B17BE0 800A0A40 8FB90048 */  lw    $t9, 0x48($sp)
/* B17BE4 800A0A44 8F2202C0 */  lw    $v0, 0x2c0($t9)
/* B17BE8 800A0A48 244C0008 */  addiu $t4, $v0, 8
/* B17BEC 800A0A4C AF2C02C0 */  sw    $t4, 0x2c0($t9)
/* B17BF0 800A0A50 AC4A0000 */  sw    $t2, ($v0)
/* B17BF4 800A0A54 8FAE0060 */  lw    $t6, 0x60($sp)
/* B17BF8 800A0A58 AC4E0004 */  sw    $t6, 4($v0)
.L800A0A5C:
/* B17BFC 800A0A5C 8FAD007C */  lw    $t5, 0x7c($sp)
/* B17C00 800A0A60 8FA40068 */  lw    $a0, 0x68($sp)
/* B17C04 800A0A64 8FA5006C */  lw    $a1, 0x6c($sp)
/* B17C08 800A0A68 11A00007 */  beqz  $t5, .L800A0A88
/* B17C0C 800A0A6C 27A60060 */   addiu $a2, $sp, 0x60
/* B17C10 800A0A70 8FB80080 */  lw    $t8, 0x80($sp)
/* B17C14 800A0A74 27A7004C */  addiu $a3, $sp, 0x4c
/* B17C18 800A0A78 AFA80064 */  sw    $t0, 0x64($sp)
/* B17C1C 800A0A7C 01A0F809 */  jalr  $t5
/* B17C20 800A0A80 AFB80010 */  sw    $t8, 0x10($sp)
/* B17C24 800A0A84 8FA80064 */  lw    $t0, 0x64($sp)
.L800A0A88:
/* B17C28 800A0A88 91050006 */  lbu   $a1, 6($t0)
/* B17C2C 800A0A8C 240100FF */  li    $at, 255
/* B17C30 800A0A90 8FA40068 */  lw    $a0, 0x68($sp)
/* B17C34 800A0A94 10A1000D */  beq   $a1, $at, .L800A0ACC
/* B17C38 800A0A98 8FA60070 */   lw    $a2, 0x70($sp)
/* B17C3C 800A0A9C 8FAF0078 */  lw    $t7, 0x78($sp)
/* B17C40 800A0AA0 8FA9007C */  lw    $t1, 0x7c($sp)
/* B17C44 800A0AA4 8FAB0080 */  lw    $t3, 0x80($sp)
/* B17C48 800A0AA8 8FAC0084 */  lw    $t4, 0x84($sp)
/* B17C4C 800A0AAC 8FA70074 */  lw    $a3, 0x74($sp)
/* B17C50 800A0AB0 AFA80064 */  sw    $t0, 0x64($sp)
/* B17C54 800A0AB4 AFAF0010 */  sw    $t7, 0x10($sp)
/* B17C58 800A0AB8 AFA90014 */  sw    $t1, 0x14($sp)
/* B17C5C 800A0ABC AFAB0018 */  sw    $t3, 0x18($sp)
/* B17C60 800A0AC0 0C028228 */  jal   func_800A08A0
/* B17C64 800A0AC4 AFAC001C */   sw    $t4, 0x1c($sp)
/* B17C68 800A0AC8 8FA80064 */  lw    $t0, 0x64($sp)
.L800A0ACC:
/* B17C6C 800A0ACC 0C034221 */  jal   Matrix_Pull
/* B17C70 800A0AD0 AFA80064 */   sw    $t0, 0x64($sp)
/* B17C74 800A0AD4 8FA80064 */  lw    $t0, 0x64($sp)
/* B17C78 800A0AD8 240100FF */  li    $at, 255
/* B17C7C 800A0ADC 8FA40068 */  lw    $a0, 0x68($sp)
/* B17C80 800A0AE0 91050007 */  lbu   $a1, 7($t0)
/* B17C84 800A0AE4 8FA60070 */  lw    $a2, 0x70($sp)
/* B17C88 800A0AE8 8FA70074 */  lw    $a3, 0x74($sp)
/* B17C8C 800A0AEC 10A10009 */  beq   $a1, $at, .L800A0B14
/* B17C90 800A0AF0 8FB90078 */   lw    $t9, 0x78($sp)
/* B17C94 800A0AF4 8FAA007C */  lw    $t2, 0x7c($sp)
/* B17C98 800A0AF8 8FAE0080 */  lw    $t6, 0x80($sp)
/* B17C9C 800A0AFC 8FB80084 */  lw    $t8, 0x84($sp)
/* B17CA0 800A0B00 AFB90010 */  sw    $t9, 0x10($sp)
/* B17CA4 800A0B04 AFAA0014 */  sw    $t2, 0x14($sp)
/* B17CA8 800A0B08 AFAE0018 */  sw    $t6, 0x18($sp)
/* B17CAC 800A0B0C 0C028228 */  jal   func_800A08A0
/* B17CB0 800A0B10 AFB8001C */   sw    $t8, 0x1c($sp)
.L800A0B14:
/* B17CB4 800A0B14 8FAD0068 */  lw    $t5, 0x68($sp)
/* B17CB8 800A0B18 3C068014 */  lui   $a2, %hi(D_8013FF78) # $a2, 0x8014
/* B17CBC 800A0B1C 24C6FF78 */  addiu $a2, %lo(D_8013FF78) # addiu $a2, $a2, -0x88
/* B17CC0 800A0B20 27A40038 */  addiu $a0, $sp, 0x38
/* B17CC4 800A0B24 24070335 */  li    $a3, 821
/* B17CC8 800A0B28 0C031AD5 */  jal   func_800C6B54
/* B17CCC 800A0B2C 8DA50000 */   lw    $a1, ($t5)
/* B17CD0 800A0B30 8FBF0024 */  lw    $ra, 0x24($sp)
/* B17CD4 800A0B34 27BD0068 */  addiu $sp, $sp, 0x68
/* B17CD8 800A0B38 03E00008 */  jr    $ra
/* B17CDC 800A0B3C 00000000 */   nop   

