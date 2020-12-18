.rdata
glabel D_80A307A0
    .asciz "../z_en_gb.c"
    .balign 4

glabel D_80A307B0
    .asciz "../z_en_gb.c"
    .balign 4

.text
glabel EnGb_Draw
/* 00D2C 80A2FEAC 27BDFFA8 */  addiu   $sp, $sp, 0xFFA8           ## $sp = FFFFFFA8
/* 00D30 80A2FEB0 AFB10028 */  sw      $s1, 0x0028($sp)
/* 00D34 80A2FEB4 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 00D38 80A2FEB8 AFBF002C */  sw      $ra, 0x002C($sp)
/* 00D3C 80A2FEBC AFB00024 */  sw      $s0, 0x0024($sp)
/* 00D40 80A2FEC0 8CA50000 */  lw      $a1, 0x0000($a1)           ## 00000000
/* 00D44 80A2FEC4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00D48 80A2FEC8 3C0680A3 */  lui     $a2, %hi(D_80A307A0)       ## $a2 = 80A30000
/* 00D4C 80A2FECC 24C607A0 */  addiu   $a2, $a2, %lo(D_80A307A0)  ## $a2 = 80A307A0
/* 00D50 80A2FED0 27A4003C */  addiu   $a0, $sp, 0x003C           ## $a0 = FFFFFFE4
/* 00D54 80A2FED4 240702FB */  addiu   $a3, $zero, 0x02FB         ## $a3 = 000002FB
/* 00D58 80A2FED8 0C031AB1 */  jal     Graph_OpenDisps
/* 00D5C 80A2FEDC AFA5004C */  sw      $a1, 0x004C($sp)
/* 00D60 80A2FEE0 0C024F46 */  jal     func_80093D18
/* 00D64 80A2FEE4 8E240000 */  lw      $a0, 0x0000($s1)           ## 00000000
/* 00D68 80A2FEE8 8FA8004C */  lw      $t0, 0x004C($sp)
/* 00D6C 80A2FEEC 3C0FE700 */  lui     $t7, 0xE700                ## $t7 = E7000000
/* 00D70 80A2FEF0 3C19FB00 */  lui     $t9, 0xFB00                ## $t9 = FB000000
/* 00D74 80A2FEF4 8D0302C0 */  lw      $v1, 0x02C0($t0)           ## 000002C0
/* 00D78 80A2FEF8 26040370 */  addiu   $a0, $s0, 0x0370           ## $a0 = 00000370
/* 00D7C 80A2FEFC 246E0008 */  addiu   $t6, $v1, 0x0008           ## $t6 = 00000008
/* 00D80 80A2FF00 AD0E02C0 */  sw      $t6, 0x02C0($t0)           ## 000002C0
/* 00D84 80A2FF04 AC600004 */  sw      $zero, 0x0004($v1)         ## 00000004
/* 00D88 80A2FF08 AC6F0000 */  sw      $t7, 0x0000($v1)           ## 00000000
/* 00D8C 80A2FF0C 8D0302C0 */  lw      $v1, 0x02C0($t0)           ## 000002C0
/* 00D90 80A2FF10 24780008 */  addiu   $t8, $v1, 0x0008           ## $t8 = 00000008
/* 00D94 80A2FF14 AD1802C0 */  sw      $t8, 0x02C0($t0)           ## 000002C0
/* 00D98 80A2FF18 AC790000 */  sw      $t9, 0x0000($v1)           ## 00000000
/* 00D9C 80A2FF1C 920D0385 */  lbu     $t5, 0x0385($s0)           ## 00000385
/* 00DA0 80A2FF20 920A0384 */  lbu     $t2, 0x0384($s0)           ## 00000384
/* 00DA4 80A2FF24 92190386 */  lbu     $t9, 0x0386($s0)           ## 00000386
/* 00DA8 80A2FF28 000D7400 */  sll     $t6, $t5, 16
/* 00DAC 80A2FF2C 000A5E00 */  sll     $t3, $t2, 24
/* 00DB0 80A2FF30 016E7825 */  or      $t7, $t3, $t6              ## $t7 = 00000008
/* 00DB4 80A2FF34 00194A00 */  sll     $t1, $t9,  8
/* 00DB8 80A2FF38 01E95025 */  or      $t2, $t7, $t1              ## $t2 = 00000008
/* 00DBC 80A2FF3C 354C00FF */  ori     $t4, $t2, 0x00FF           ## $t4 = 000000FF
/* 00DC0 80A2FF40 AC6C0004 */  sw      $t4, 0x0004($v1)           ## 00000004
/* 00DC4 80A2FF44 92180384 */  lbu     $t8, 0x0384($s0)           ## 00000384
/* 00DC8 80A2FF48 C610002C */  lwc1    $f16, 0x002C($s0)          ## 0000002C
/* 00DCC 80A2FF4C C6080028 */  lwc1    $f8, 0x0028($s0)           ## 00000028
/* 00DD0 80A2FF50 C6040024 */  lwc1    $f4, 0x0024($s0)           ## 00000024
/* 00DD4 80A2FF54 AFB80010 */  sw      $t8, 0x0010($sp)
/* 00DD8 80A2FF58 92190385 */  lbu     $t9, 0x0385($s0)           ## 00000385
/* 00DDC 80A2FF5C 4600848D */  trunc.w.s $f18, $f16
/* 00DE0 80A2FF60 AFB90014 */  sw      $t9, 0x0014($sp)
/* 00DE4 80A2FF64 4600428D */  trunc.w.s $f10, $f8
/* 00DE8 80A2FF68 920F0386 */  lbu     $t7, 0x0386($s0)           ## 00000386
/* 00DEC 80A2FF6C 44079000 */  mfc1    $a3, $f18
/* 00DF0 80A2FF70 4600218D */  trunc.w.s $f6, $f4
/* 00DF4 80A2FF74 44065000 */  mfc1    $a2, $f10
/* 00DF8 80A2FF78 AFAF0018 */  sw      $t7, 0x0018($sp)
/* 00DFC 80A2FF7C 92090387 */  lbu     $t1, 0x0387($s0)           ## 00000387
/* 00E00 80A2FF80 44053000 */  mfc1    $a1, $f6
/* 00E04 80A2FF84 00073C00 */  sll     $a3, $a3, 16
/* 00E08 80A2FF88 00063400 */  sll     $a2, $a2, 16
/* 00E0C 80A2FF8C 00052C00 */  sll     $a1, $a1, 16
/* 00E10 80A2FF90 00052C03 */  sra     $a1, $a1, 16
/* 00E14 80A2FF94 00063403 */  sra     $a2, $a2, 16
/* 00E18 80A2FF98 00073C03 */  sra     $a3, $a3, 16
/* 00E1C 80A2FF9C 0C01E763 */  jal     Lights_PointNoGlowSetInfo

/* 00E20 80A2FFA0 AFA9001C */  sw      $t1, 0x001C($sp)
/* 00E24 80A2FFA4 8E050168 */  lw      $a1, 0x0168($s0)           ## 00000168
/* 00E28 80A2FFA8 8E060184 */  lw      $a2, 0x0184($s0)           ## 00000184
/* 00E2C 80A2FFAC 92070166 */  lbu     $a3, 0x0166($s0)           ## 00000166
/* 00E30 80A2FFB0 AFB00018 */  sw      $s0, 0x0018($sp)
/* 00E34 80A2FFB4 AFA00014 */  sw      $zero, 0x0014($sp)
/* 00E38 80A2FFB8 AFA00010 */  sw      $zero, 0x0010($sp)
/* 00E3C 80A2FFBC 0C0286B2 */  jal     SkelAnime_DrawFlexOpa
/* 00E40 80A2FFC0 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00E44 80A2FFC4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00E48 80A2FFC8 0C28C0D4 */  jal     func_80A30350
/* 00E4C 80A2FFCC 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 00E50 80A2FFD0 3C0680A3 */  lui     $a2, %hi(D_80A307B0)       ## $a2 = 80A30000
/* 00E54 80A2FFD4 24C607B0 */  addiu   $a2, $a2, %lo(D_80A307B0)  ## $a2 = 80A307B0
/* 00E58 80A2FFD8 27A4003C */  addiu   $a0, $sp, 0x003C           ## $a0 = FFFFFFE4
/* 00E5C 80A2FFDC 8E250000 */  lw      $a1, 0x0000($s1)           ## 00000000
/* 00E60 80A2FFE0 0C031AD5 */  jal     Graph_CloseDisps
/* 00E64 80A2FFE4 2407031C */  addiu   $a3, $zero, 0x031C         ## $a3 = 0000031C
/* 00E68 80A2FFE8 8FBF002C */  lw      $ra, 0x002C($sp)
/* 00E6C 80A2FFEC 8FB00024 */  lw      $s0, 0x0024($sp)
/* 00E70 80A2FFF0 8FB10028 */  lw      $s1, 0x0028($sp)
/* 00E74 80A2FFF4 03E00008 */  jr      $ra
/* 00E78 80A2FFF8 27BD0058 */  addiu   $sp, $sp, 0x0058           ## $sp = 00000000
