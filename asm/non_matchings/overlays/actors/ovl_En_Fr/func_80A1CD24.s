glabel func_80A1CD24
/* 02384 80A1CD24 27BDFF98 */  addiu   $sp, $sp, 0xFF98           ## $sp = FFFFFF98
/* 02388 80A1CD28 AFBF002C */  sw      $ra, 0x002C($sp)
/* 0238C 80A1CD2C AFB00028 */  sw      $s0, 0x0028($sp)
/* 02390 80A1CD30 AFA5006C */  sw      $a1, 0x006C($sp)
/* 02394 80A1CD34 848E001C */  lh      $t6, 0x001C($a0)           ## 0000001C
/* 02398 80A1CD38 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0239C 80A1CD3C 3C0680A2 */  lui     $a2, %hi(D_80A1D268)       ## $a2 = 80A20000
/* 023A0 80A1CD40 25CFFFFF */  addiu   $t7, $t6, 0xFFFF           ## $t7 = FFFFFFFF
/* 023A4 80A1CD44 A7AF005E */  sh      $t7, 0x005E($sp)
/* 023A8 80A1CD48 8CA50000 */  lw      $a1, 0x0000($a1)           ## 00000000
/* 023AC 80A1CD4C 24C6D268 */  addiu   $a2, $a2, %lo(D_80A1D268)  ## $a2 = 80A1D268
/* 023B0 80A1CD50 27A40048 */  addiu   $a0, $sp, 0x0048           ## $a0 = FFFFFFE0
/* 023B4 80A1CD54 240706DA */  addiu   $a3, $zero, 0x06DA         ## $a3 = 000006DA
/* 023B8 80A1CD58 0C031AB1 */  jal     func_800C6AC4
/* 023BC 80A1CD5C AFA50058 */  sw      $a1, 0x0058($sp)
/* 023C0 80A1CD60 8FB9006C */  lw      $t9, 0x006C($sp)
/* 023C4 80A1CD64 0C024F46 */  jal     func_80093D18
/* 023C8 80A1CD68 8F240000 */  lw      $a0, 0x0000($t9)           ## 00000000
/* 023CC 80A1CD6C 920A03A8 */  lbu     $t2, 0x03A8($s0)           ## 000003A8
/* 023D0 80A1CD70 8FA80058 */  lw      $t0, 0x0058($sp)
/* 023D4 80A1CD74 3C0CE700 */  lui     $t4, 0xE700                ## $t4 = E7000000
/* 023D8 80A1CD78 11400003 */  beq     $t2, $zero, .L80A1CD88
/* 023DC 80A1CD7C 3C0EFB00 */  lui     $t6, 0xFB00                ## $t6 = FB000000
/* 023E0 80A1CD80 10000002 */  beq     $zero, $zero, .L80A1CD8C
/* 023E4 80A1CD84 2409005F */  addiu   $t1, $zero, 0x005F         ## $t1 = 0000005F
.L80A1CD88:
/* 023E8 80A1CD88 2409FFFF */  addiu   $t1, $zero, 0xFFFF         ## $t1 = FFFFFFFF
.L80A1CD8C:
/* 023EC 80A1CD8C 8D0202C0 */  lw      $v0, 0x02C0($t0)           ## 000002C0
/* 023F0 80A1CD90 240FFFFF */  addiu   $t7, $zero, 0xFFFF         ## $t7 = FFFFFFFF
/* 023F4 80A1CD94 2604035C */  addiu   $a0, $s0, 0x035C           ## $a0 = 0000035C
/* 023F8 80A1CD98 244B0008 */  addiu   $t3, $v0, 0x0008           ## $t3 = 00000008
/* 023FC 80A1CD9C AD0B02C0 */  sw      $t3, 0x02C0($t0)           ## 000002C0
/* 02400 80A1CDA0 AC400004 */  sw      $zero, 0x0004($v0)         ## 00000004
/* 02404 80A1CDA4 AC4C0000 */  sw      $t4, 0x0000($v0)           ## 00000000
/* 02408 80A1CDA8 8D0202C0 */  lw      $v0, 0x02C0($t0)           ## 000002C0
/* 0240C 80A1CDAC 240C00FF */  addiu   $t4, $zero, 0x00FF         ## $t4 = 000000FF
/* 02410 80A1CDB0 240B00FF */  addiu   $t3, $zero, 0x00FF         ## $t3 = 000000FF
/* 02414 80A1CDB4 244D0008 */  addiu   $t5, $v0, 0x0008           ## $t5 = 00000008
/* 02418 80A1CDB8 AD0D02C0 */  sw      $t5, 0x02C0($t0)           ## 000002C0
/* 0241C 80A1CDBC AC4F0004 */  sw      $t7, 0x0004($v0)           ## 00000004
/* 02420 80A1CDC0 AC4E0000 */  sw      $t6, 0x0000($v0)           ## 00000000
/* 02424 80A1CDC4 C61003C0 */  lwc1    $f16, 0x03C0($s0)          ## 000003C0
/* 02428 80A1CDC8 C60803BC */  lwc1    $f8, 0x03BC($s0)           ## 000003BC
/* 0242C 80A1CDCC C60403B8 */  lwc1    $f4, 0x03B8($s0)           ## 000003B8
/* 02430 80A1CDD0 4600848D */  trunc.w.s $f18, $f16
/* 02434 80A1CDD4 240D00FF */  addiu   $t5, $zero, 0x00FF         ## $t5 = 000000FF
/* 02438 80A1CDD8 AFAD0018 */  sw      $t5, 0x0018($sp)
/* 0243C 80A1CDDC 4600428D */  trunc.w.s $f10, $f8
/* 02440 80A1CDE0 44079000 */  mfc1    $a3, $f18
/* 02444 80A1CDE4 AFA80058 */  sw      $t0, 0x0058($sp)
/* 02448 80A1CDE8 4600218D */  trunc.w.s $f6, $f4
/* 0244C 80A1CDEC 44065000 */  mfc1    $a2, $f10
/* 02450 80A1CDF0 00073C00 */  sll     $a3, $a3, 16
/* 02454 80A1CDF4 00073C03 */  sra     $a3, $a3, 16
/* 02458 80A1CDF8 44053000 */  mfc1    $a1, $f6
/* 0245C 80A1CDFC 00063400 */  sll     $a2, $a2, 16
/* 02460 80A1CE00 00063403 */  sra     $a2, $a2, 16
/* 02464 80A1CE04 00052C00 */  sll     $a1, $a1, 16
/* 02468 80A1CE08 00052C03 */  sra     $a1, $a1, 16
/* 0246C 80A1CE0C AFA9001C */  sw      $t1, 0x001C($sp)
/* 02470 80A1CE10 AFAC0014 */  sw      $t4, 0x0014($sp)
/* 02474 80A1CE14 0C01E763 */  jal     Lights_InitType0PositionalLight

/* 02478 80A1CE18 AFAB0010 */  sw      $t3, 0x0010($sp)
/* 0247C 80A1CE1C 8FA80058 */  lw      $t0, 0x0058($sp)
/* 02480 80A1CE20 3C0FFB00 */  lui     $t7, 0xFB00                ## $t7 = FB000000
/* 02484 80A1CE24 3C0A80A2 */  lui     $t2, %hi(D_80A1D054)       ## $t2 = 80A20000
/* 02488 80A1CE28 8D0202C0 */  lw      $v0, 0x02C0($t0)           ## 000002C0
/* 0248C 80A1CE2C 254AD054 */  addiu   $t2, $t2, %lo(D_80A1D054)  ## $t2 = 80A1D054
/* 02490 80A1CE30 3C0580A2 */  lui     $a1, %hi(D_80A1D0FC)       ## $a1 = 80A20000
/* 02494 80A1CE34 244E0008 */  addiu   $t6, $v0, 0x0008           ## $t6 = 00000008
/* 02498 80A1CE38 AD0E02C0 */  sw      $t6, 0x02C0($t0)           ## 000002C0
/* 0249C 80A1CE3C AC4F0000 */  sw      $t7, 0x0000($v0)           ## 00000000
/* 024A0 80A1CE40 87B8005E */  lh      $t8, 0x005E($sp)
/* 024A4 80A1CE44 24A5D0FC */  addiu   $a1, $a1, %lo(D_80A1D0FC)  ## $a1 = 80A1D0FC
/* 024A8 80A1CE48 3C078016 */  lui     $a3, 0x8016                ## $a3 = 80160000
/* 024AC 80A1CE4C 0018C880 */  sll     $t9, $t8,  2
/* 024B0 80A1CE50 032A1821 */  addu    $v1, $t9, $t2
/* 024B4 80A1CE54 906C0002 */  lbu     $t4, 0x0002($v1)           ## 00000002
/* 024B8 80A1CE58 906F0000 */  lbu     $t7, 0x0000($v1)           ## 00000000
/* 024BC 80A1CE5C 906B0001 */  lbu     $t3, 0x0001($v1)           ## 00000001
/* 024C0 80A1CE60 000C6A00 */  sll     $t5, $t4,  8
/* 024C4 80A1CE64 000FC600 */  sll     $t8, $t7, 24
/* 024C8 80A1CE68 01B8C825 */  or      $t9, $t5, $t8              ## $t9 = 00000000
/* 024CC 80A1CE6C 000B6400 */  sll     $t4, $t3, 16
/* 024D0 80A1CE70 032C7025 */  or      $t6, $t9, $t4              ## $t6 = 00000000
/* 024D4 80A1CE74 35CF00FF */  ori     $t7, $t6, 0x00FF           ## $t7 = 000000FF
/* 024D8 80A1CE78 AC4F0004 */  sw      $t7, 0x0004($v0)           ## 00000004
/* 024DC 80A1CE7C 8D0202C0 */  lw      $v0, 0x02C0($t0)           ## 000002C0
/* 024E0 80A1CE80 3C18DB06 */  lui     $t8, 0xDB06                ## $t8 = DB060000
/* 024E4 80A1CE84 37180020 */  ori     $t8, $t8, 0x0020           ## $t8 = DB060020
/* 024E8 80A1CE88 244D0008 */  addiu   $t5, $v0, 0x0008           ## $t5 = 00000008
/* 024EC 80A1CE8C AD0D02C0 */  sw      $t5, 0x02C0($t0)           ## 000002C0
/* 024F0 80A1CE90 AC580000 */  sw      $t8, 0x0000($v0)           ## 00000000
/* 024F4 80A1CE94 920A0378 */  lbu     $t2, 0x0378($s0)           ## 00000378
/* 024F8 80A1CE98 24E76FA8 */  addiu   $a3, $a3, 0x6FA8           ## $a3 = 80166FA8
/* 024FC 80A1CE9C 3C0600FF */  lui     $a2, 0x00FF                ## $a2 = 00FF0000
/* 02500 80A1CEA0 000A5880 */  sll     $t3, $t2,  2
/* 02504 80A1CEA4 00ABC821 */  addu    $t9, $a1, $t3
/* 02508 80A1CEA8 8F240000 */  lw      $a0, 0x0000($t9)           ## 00000000
/* 0250C 80A1CEAC 34C6FFFF */  ori     $a2, $a2, 0xFFFF           ## $a2 = 00FFFFFF
/* 02510 80A1CEB0 3C098000 */  lui     $t1, 0x8000                ## $t1 = 80000000
/* 02514 80A1CEB4 00047100 */  sll     $t6, $a0,  4
/* 02518 80A1CEB8 000E7F02 */  srl     $t7, $t6, 28
/* 0251C 80A1CEBC 000F6880 */  sll     $t5, $t7,  2
/* 02520 80A1CEC0 00EDC021 */  addu    $t8, $a3, $t5
/* 02524 80A1CEC4 8F0A0000 */  lw      $t2, 0x0000($t8)           ## DB060020
/* 02528 80A1CEC8 00866024 */  and     $t4, $a0, $a2
/* 0252C 80A1CECC 3C0FDB06 */  lui     $t7, 0xDB06                ## $t7 = DB060000
/* 02530 80A1CED0 018A5821 */  addu    $t3, $t4, $t2
/* 02534 80A1CED4 0169C821 */  addu    $t9, $t3, $t1
/* 02538 80A1CED8 AC590004 */  sw      $t9, 0x0004($v0)           ## 00000004
/* 0253C 80A1CEDC 8D0202C0 */  lw      $v0, 0x02C0($t0)           ## 000002C0
/* 02540 80A1CEE0 35EF0024 */  ori     $t7, $t7, 0x0024           ## $t7 = DB060024
/* 02544 80A1CEE4 244E0008 */  addiu   $t6, $v0, 0x0008           ## $t6 = 00000008
/* 02548 80A1CEE8 AD0E02C0 */  sw      $t6, 0x02C0($t0)           ## 000002C0
/* 0254C 80A1CEEC AC4F0000 */  sw      $t7, 0x0000($v0)           ## 00000000
/* 02550 80A1CEF0 920D0378 */  lbu     $t5, 0x0378($s0)           ## 00000378
/* 02554 80A1CEF4 000DC080 */  sll     $t8, $t5,  2
/* 02558 80A1CEF8 00B86021 */  addu    $t4, $a1, $t8
/* 0255C 80A1CEFC 8D840000 */  lw      $a0, 0x0000($t4)           ## 00000000
/* 02560 80A1CF00 00045900 */  sll     $t3, $a0,  4
/* 02564 80A1CF04 000BCF02 */  srl     $t9, $t3, 28
/* 02568 80A1CF08 00197080 */  sll     $t6, $t9,  2
/* 0256C 80A1CF0C 00EE7821 */  addu    $t7, $a3, $t6
/* 02570 80A1CF10 8DED0000 */  lw      $t5, 0x0000($t7)           ## DB060024
/* 02574 80A1CF14 00865024 */  and     $t2, $a0, $a2
/* 02578 80A1CF18 3C1980A2 */  lui     $t9, %hi(func_80A1CC2C)    ## $t9 = 80A20000
/* 0257C 80A1CF1C 014DC021 */  addu    $t8, $t2, $t5
/* 02580 80A1CF20 03096021 */  addu    $t4, $t8, $t1
/* 02584 80A1CF24 AC4C0004 */  sw      $t4, 0x0004($v0)           ## 00000004
/* 02588 80A1CF28 9207014E */  lbu     $a3, 0x014E($s0)           ## 0000014E
/* 0258C 80A1CF2C 8E06016C */  lw      $a2, 0x016C($s0)           ## 0000016C
/* 02590 80A1CF30 8E050150 */  lw      $a1, 0x0150($s0)           ## 00000150
/* 02594 80A1CF34 3C0B80A2 */  lui     $t3, %hi(func_80A1CC04)    ## $t3 = 80A20000
/* 02598 80A1CF38 256BCC04 */  addiu   $t3, $t3, %lo(func_80A1CC04) ## $t3 = 80A1CC04
/* 0259C 80A1CF3C 2739CC2C */  addiu   $t9, $t9, %lo(func_80A1CC2C) ## $t9 = 80A1CC2C
/* 025A0 80A1CF40 AFB90014 */  sw      $t9, 0x0014($sp)
/* 025A4 80A1CF44 AFAB0010 */  sw      $t3, 0x0010($sp)
/* 025A8 80A1CF48 AFB00018 */  sw      $s0, 0x0018($sp)
/* 025AC 80A1CF4C 0C0286B2 */  jal     SkelAnime_DrawSV
/* 025B0 80A1CF50 8FA4006C */  lw      $a0, 0x006C($sp)
/* 025B4 80A1CF54 920E03A8 */  lbu     $t6, 0x03A8($s0)           ## 000003A8
/* 025B8 80A1CF58 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 025BC 80A1CF5C 51C00018 */  beql    $t6, $zero, .L80A1CFC0
/* 025C0 80A1CF60 8FAF006C */  lw      $t7, 0x006C($sp)
/* 025C4 80A1CF64 C60C03AC */  lwc1    $f12, 0x03AC($s0)          ## 000003AC
/* 025C8 80A1CF68 C60E03B0 */  lwc1    $f14, 0x03B0($s0)          ## 000003B0
/* 025CC 80A1CF6C 0C034261 */  jal     Matrix_Translate
/* 025D0 80A1CF70 8E0603B4 */  lw      $a2, 0x03B4($s0)           ## 000003B4
/* 025D4 80A1CF74 3C0180A2 */  lui     $at, %hi(D_80A1D304)       ## $at = 80A20000
/* 025D8 80A1CF78 C42CD304 */  lwc1    $f12, %lo(D_80A1D304)($at)
/* 025DC 80A1CF7C 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 025E0 80A1CF80 44066000 */  mfc1    $a2, $f12
/* 025E4 80A1CF84 0C0342A3 */  jal     Matrix_Scale
/* 025E8 80A1CF88 46006386 */  mov.s   $f14, $f12
/* 025EC 80A1CF8C 860400B4 */  lh      $a0, 0x00B4($s0)           ## 000000B4
/* 025F0 80A1CF90 860500B6 */  lh      $a1, 0x00B6($s0)           ## 000000B6
/* 025F4 80A1CF94 860600B8 */  lh      $a2, 0x00B8($s0)           ## 000000B8
/* 025F8 80A1CF98 0C034421 */  jal     Matrix_RotateZYX
/* 025FC 80A1CF9C 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 02600 80A1CFA0 8E0502B4 */  lw      $a1, 0x02B4($s0)           ## 000002B4
/* 02604 80A1CFA4 8E0602D0 */  lw      $a2, 0x02D0($s0)           ## 000002D0
/* 02608 80A1CFA8 AFA00014 */  sw      $zero, 0x0014($sp)
/* 0260C 80A1CFAC AFA00010 */  sw      $zero, 0x0010($sp)
/* 02610 80A1CFB0 8FA4006C */  lw      $a0, 0x006C($sp)
/* 02614 80A1CFB4 0C028572 */  jal     SkelAnime_Draw

/* 02618 80A1CFB8 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 0261C 80A1CFBC 8FAF006C */  lw      $t7, 0x006C($sp)
.L80A1CFC0:
/* 02620 80A1CFC0 3C0680A2 */  lui     $a2, %hi(D_80A1D278)       ## $a2 = 80A20000
/* 02624 80A1CFC4 24C6D278 */  addiu   $a2, $a2, %lo(D_80A1D278)  ## $a2 = 80A1D278
/* 02628 80A1CFC8 27A40048 */  addiu   $a0, $sp, 0x0048           ## $a0 = FFFFFFE0
/* 0262C 80A1CFCC 24070718 */  addiu   $a3, $zero, 0x0718         ## $a3 = 00000718
/* 02630 80A1CFD0 0C031AD5 */  jal     func_800C6B54
/* 02634 80A1CFD4 8DE50000 */  lw      $a1, 0x0000($t7)           ## 00000000
/* 02638 80A1CFD8 8FBF002C */  lw      $ra, 0x002C($sp)
/* 0263C 80A1CFDC 8FB00028 */  lw      $s0, 0x0028($sp)
/* 02640 80A1CFE0 27BD0068 */  addiu   $sp, $sp, 0x0068           ## $sp = 00000000
/* 02644 80A1CFE4 03E00008 */  jr      $ra
/* 02648 80A1CFE8 00000000 */  nop
/* 0264C 80A1CFEC 00000000 */  nop

