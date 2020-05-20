.rdata
glabel D_809BF500
    .asciz "../z_en_bigokuta.c"
    .balign 4

glabel D_809BF514
    .asciz "../z_en_bigokuta.c"
    .balign 4

.late_rodata
glabel D_809BF580
    .float 6.28318548203

glabel D_809BF584
    .float 6.28318548203

glabel D_809BF588
 .word 0x3F4A3D70
glabel D_809BF58C
    .float 1.3

glabel D_809BF590
 .word 0x45F17A2F, 0x00000000, 0x00000000, 0x00000000

.text
glabel EnBigokuta_Draw
/* 0244C 809BF0AC 27BDFF90 */  addiu   $sp, $sp, 0xFF90           ## $sp = FFFFFF90
/* 02450 809BF0B0 AFBF002C */  sw      $ra, 0x002C($sp)
/* 02454 809BF0B4 AFB00028 */  sw      $s0, 0x0028($sp)
/* 02458 809BF0B8 AFA50074 */  sw      $a1, 0x0074($sp)
/* 0245C 809BF0BC 8CA50000 */  lw      $a1, 0x0000($a1)           ## 00000000
/* 02460 809BF0C0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 02464 809BF0C4 3C06809C */  lui     $a2, %hi(D_809BF500)       ## $a2 = 809C0000
/* 02468 809BF0C8 24C6F500 */  addiu   $a2, $a2, %lo(D_809BF500)  ## $a2 = 809BF500
/* 0246C 809BF0CC 27A40058 */  addiu   $a0, $sp, 0x0058           ## $a0 = FFFFFFE8
/* 02470 809BF0D0 240707E1 */  addiu   $a3, $zero, 0x07E1         ## $a3 = 000007E1
/* 02474 809BF0D4 0C031AB1 */  jal     Graph_OpenDisps
/* 02478 809BF0D8 AFA50068 */  sw      $a1, 0x0068($sp)
/* 0247C 809BF0DC 8E0F0190 */  lw      $t7, 0x0190($s0)           ## 00000190
/* 02480 809BF0E0 3C05809C */  lui     $a1, %hi(func_809BE26C)    ## $a1 = 809C0000
/* 02484 809BF0E4 24A5E26C */  addiu   $a1, $a1, %lo(func_809BE26C) ## $a1 = 809BE26C
/* 02488 809BF0E8 14AF0008 */  bne     $a1, $t7, .L809BF10C
/* 0248C 809BF0EC 8FA80068 */  lw      $t0, 0x0068($sp)
/* 02490 809BF0F0 86180196 */  lh      $t8, 0x0196($s0)           ## 00000196
/* 02494 809BF0F4 57000006 */  bnel    $t8, $zero, .L809BF110
/* 02498 809BF0F8 8FA90074 */  lw      $t1, 0x0074($sp)
/* 0249C 809BF0FC 86190198 */  lh      $t9, 0x0198($s0)           ## 00000198
/* 024A0 809BF100 8FAA0074 */  lw      $t2, 0x0074($sp)
/* 024A4 809BF104 53200053 */  beql    $t9, $zero, .L809BF254
/* 024A8 809BF108 8D440000 */  lw      $a0, 0x0000($t2)           ## 00000000
.L809BF10C:
/* 024AC 809BF10C 8FA90074 */  lw      $t1, 0x0074($sp)
.L809BF110:
/* 024B0 809BF110 8D240000 */  lw      $a0, 0x0000($t1)           ## 00000000
/* 024B4 809BF114 AFA80068 */  sw      $t0, 0x0068($sp)
/* 024B8 809BF118 0C024F46 */  jal     func_80093D18
/* 024BC 809BF11C AFA5003C */  sw      $a1, 0x003C($sp)
/* 024C0 809BF120 8FA80068 */  lw      $t0, 0x0068($sp)
/* 024C4 809BF124 8FA5003C */  lw      $a1, 0x003C($sp)
/* 024C8 809BF128 3C0BDB06 */  lui     $t3, 0xDB06                ## $t3 = DB060000
/* 024CC 809BF12C 8D0302C0 */  lw      $v1, 0x02C0($t0)           ## 000002C0
/* 024D0 809BF130 3C0C8011 */  lui     $t4, %hi(D_80116280+0x10)
/* 024D4 809BF134 258C6290 */  addiu   $t4, %lo(D_80116280+0x10)
/* 024D8 809BF138 246A0008 */  addiu   $t2, $v1, 0x0008           ## $t2 = 00000008
/* 024DC 809BF13C AD0A02C0 */  sw      $t2, 0x02C0($t0)           ## 000002C0
/* 024E0 809BF140 356B0030 */  ori     $t3, $t3, 0x0030           ## $t3 = DB060030
/* 024E4 809BF144 AC6B0000 */  sw      $t3, 0x0000($v1)           ## 00000000
/* 024E8 809BF148 AC6C0004 */  sw      $t4, 0x0004($v1)           ## 00000004
/* 024EC 809BF14C 8D0302C0 */  lw      $v1, 0x02C0($t0)           ## 000002C0
/* 024F0 809BF150 3C0EFB00 */  lui     $t6, 0xFB00                ## $t6 = FB000000
/* 024F4 809BF154 240FFFFF */  addiu   $t7, $zero, 0xFFFF         ## $t7 = FFFFFFFF
/* 024F8 809BF158 246D0008 */  addiu   $t5, $v1, 0x0008           ## $t5 = 00000008
/* 024FC 809BF15C AD0D02C0 */  sw      $t5, 0x02C0($t0)           ## 000002C0
/* 02500 809BF160 AC6F0004 */  sw      $t7, 0x0004($v1)           ## 00000004
/* 02504 809BF164 AC6E0000 */  sw      $t6, 0x0000($v1)           ## 00000000
/* 02508 809BF168 86030196 */  lh      $v1, 0x0196($s0)           ## 00000196
/* 0250C 809BF16C 30780001 */  andi    $t8, $v1, 0x0001           ## $t8 = 00000000
/* 02510 809BF170 5300002C */  beql    $t8, $zero, .L809BF224
/* 02514 809BF174 8E050150 */  lw      $a1, 0x0150($s0)           ## 00000150
/* 02518 809BF178 8E020190 */  lw      $v0, 0x0190($s0)           ## 00000190
/* 0251C 809BF17C 3C19809C */  lui     $t9, %hi(func_809BE180)    ## $t9 = 809C0000
/* 02520 809BF180 2739E180 */  addiu   $t9, $t9, %lo(func_809BE180) ## $t9 = 809BE180
/* 02524 809BF184 17220003 */  bne     $t9, $v0, .L809BF194
/* 02528 809BF188 28610008 */  slti    $at, $v1, 0x0008
/* 0252C 809BF18C 10200005 */  beq     $at, $zero, .L809BF1A4
/* 02530 809BF190 00000000 */  nop
.L809BF194:
/* 02534 809BF194 14A20022 */  bne     $a1, $v0, .L809BF220
/* 02538 809BF198 2861000A */  slti    $at, $v1, 0x000A
/* 0253C 809BF19C 54200021 */  bnel    $at, $zero, .L809BF224
/* 02540 809BF1A0 8E050150 */  lw      $a1, 0x0150($s0)           ## 00000150
.L809BF1A4:
/* 02544 809BF1A4 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 02548 809BF1A8 00000000 */  nop
/* 0254C 809BF1AC 3C01809C */  lui     $at, %hi(D_809BF580)       ## $at = 809C0000
/* 02550 809BF1B0 C424F580 */  lwc1    $f4, %lo(D_809BF580)($at)
/* 02554 809BF1B4 46040182 */  mul.s   $f6, $f0, $f4
/* 02558 809BF1B8 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 0255C 809BF1BC E7A6004C */  swc1    $f6, 0x004C($sp)
/* 02560 809BF1C0 3C01809C */  lui     $at, %hi(D_809BF584)       ## $at = 809C0000
/* 02564 809BF1C4 C428F584 */  lwc1    $f8, %lo(D_809BF584)($at)
/* 02568 809BF1C8 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 0256C 809BF1CC 46080302 */  mul.s   $f12, $f0, $f8
/* 02570 809BF1D0 0C034348 */  jal     Matrix_RotateY
/* 02574 809BF1D4 E7AC0048 */  swc1    $f12, 0x0048($sp)
/* 02578 809BF1D8 C7AC004C */  lwc1    $f12, 0x004C($sp)
/* 0257C 809BF1DC 0C0342DC */  jal     Matrix_RotateX
/* 02580 809BF1E0 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 02584 809BF1E4 3C01809C */  lui     $at, %hi(D_809BF588)       ## $at = 809C0000
/* 02588 809BF1E8 C42CF588 */  lwc1    $f12, %lo(D_809BF588)($at)
/* 0258C 809BF1EC 3C01809C */  lui     $at, %hi(D_809BF58C)       ## $at = 809C0000
/* 02590 809BF1F0 C42EF58C */  lwc1    $f14, %lo(D_809BF58C)($at)
/* 02594 809BF1F4 44066000 */  mfc1    $a2, $f12
/* 02598 809BF1F8 0C0342A3 */  jal     Matrix_Scale
/* 0259C 809BF1FC 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 025A0 809BF200 C7AC004C */  lwc1    $f12, 0x004C($sp)
/* 025A4 809BF204 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 025A8 809BF208 0C0342DC */  jal     Matrix_RotateX
/* 025AC 809BF20C 46006307 */  neg.s   $f12, $f12
/* 025B0 809BF210 C7AC0048 */  lwc1    $f12, 0x0048($sp)
/* 025B4 809BF214 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 025B8 809BF218 0C034348 */  jal     Matrix_RotateY
/* 025BC 809BF21C 46006307 */  neg.s   $f12, $f12
.L809BF220:
/* 025C0 809BF220 8E050150 */  lw      $a1, 0x0150($s0)           ## 00000150
.L809BF224:
/* 025C4 809BF224 8E06016C */  lw      $a2, 0x016C($s0)           ## 0000016C
/* 025C8 809BF228 9207014E */  lbu     $a3, 0x014E($s0)           ## 0000014E
/* 025CC 809BF22C 3C09809C */  lui     $t1, %hi(func_809BEBBC)    ## $t1 = 809C0000
/* 025D0 809BF230 2529EBBC */  addiu   $t1, $t1, %lo(func_809BEBBC) ## $t1 = 809BEBBC
/* 025D4 809BF234 AFA90010 */  sw      $t1, 0x0010($sp)
/* 025D8 809BF238 AFB00018 */  sw      $s0, 0x0018($sp)
/* 025DC 809BF23C AFA00014 */  sw      $zero, 0x0014($sp)
/* 025E0 809BF240 0C0286B2 */  jal     SkelAnime_DrawSV
/* 025E4 809BF244 8FA40074 */  lw      $a0, 0x0074($sp)
/* 025E8 809BF248 10000048 */  beq     $zero, $zero, .L809BF36C
/* 025EC 809BF24C 8FAB0074 */  lw      $t3, 0x0074($sp)
/* 025F0 809BF250 8D440000 */  lw      $a0, 0x0000($t2)           ## 00000000
.L809BF254:
/* 025F4 809BF254 0C024F61 */  jal     func_80093D84
/* 025F8 809BF258 AFA80068 */  sw      $t0, 0x0068($sp)
/* 025FC 809BF25C 8FA80068 */  lw      $t0, 0x0068($sp)
/* 02600 809BF260 3C0CDB06 */  lui     $t4, 0xDB06                ## $t4 = DB060000
/* 02604 809BF264 3C0D8011 */  lui     $t5, %hi(D_80116280)
/* 02608 809BF268 8D0302D0 */  lw      $v1, 0x02D0($t0)           ## 000002D0
/* 0260C 809BF26C 25AD6280 */  addiu   $t5, %lo(D_80116280)
/* 02610 809BF270 358C0030 */  ori     $t4, $t4, 0x0030           ## $t4 = DB060030
/* 02614 809BF274 246B0008 */  addiu   $t3, $v1, 0x0008           ## $t3 = 00000008
/* 02618 809BF278 AD0B02D0 */  sw      $t3, 0x02D0($t0)           ## 000002D0
/* 0261C 809BF27C AC6D0004 */  sw      $t5, 0x0004($v1)           ## 00000004
/* 02620 809BF280 AC6C0000 */  sw      $t4, 0x0000($v1)           ## 00000000
/* 02624 809BF284 8D0202D0 */  lw      $v0, 0x02D0($t0)           ## 000002D0
/* 02628 809BF288 3C0FFB00 */  lui     $t7, 0xFB00                ## $t7 = FB000000
/* 0262C 809BF28C 3C01809C */  lui     $at, %hi(D_809BF590)       ## $at = 809C0000
/* 02630 809BF290 244E0008 */  addiu   $t6, $v0, 0x0008           ## $t6 = 00000008
/* 02634 809BF294 AD0E02D0 */  sw      $t6, 0x02D0($t0)           ## 000002D0
/* 02638 809BF298 AC4F0000 */  sw      $t7, 0x0000($v0)           ## 00000000
/* 0263C 809BF29C C430F590 */  lwc1    $f16, %lo(D_809BF590)($at)
/* 02640 809BF2A0 C60A0054 */  lwc1    $f10, 0x0054($s0)          ## 00000054
/* 02644 809BF2A4 24190001 */  addiu   $t9, $zero, 0x0001         ## $t9 = 00000001
/* 02648 809BF2A8 3C014F00 */  lui     $at, 0x4F00                ## $at = 4F000000
/* 0264C 809BF2AC 46105482 */  mul.s   $f18, $f10, $f16
/* 02650 809BF2B0 4458F800 */  cfc1    $t8, $31
/* 02654 809BF2B4 44D9F800 */  ctc1    $t9, $31
/* 02658 809BF2B8 00000000 */  nop
/* 0265C 809BF2BC 46009124 */  cvt.w.s $f4, $f18
/* 02660 809BF2C0 4459F800 */  cfc1    $t9, $31
/* 02664 809BF2C4 00000000 */  nop
/* 02668 809BF2C8 33390078 */  andi    $t9, $t9, 0x0078           ## $t9 = 00000000
/* 0266C 809BF2CC 53200013 */  beql    $t9, $zero, .L809BF31C
/* 02670 809BF2D0 44192000 */  mfc1    $t9, $f4
/* 02674 809BF2D4 44812000 */  mtc1    $at, $f4                   ## $f4 = 2147483648.00
/* 02678 809BF2D8 24190001 */  addiu   $t9, $zero, 0x0001         ## $t9 = 00000001
/* 0267C 809BF2DC 46049101 */  sub.s   $f4, $f18, $f4
/* 02680 809BF2E0 44D9F800 */  ctc1    $t9, $31
/* 02684 809BF2E4 00000000 */  nop
/* 02688 809BF2E8 46002124 */  cvt.w.s $f4, $f4
/* 0268C 809BF2EC 4459F800 */  cfc1    $t9, $31
/* 02690 809BF2F0 00000000 */  nop
/* 02694 809BF2F4 33390078 */  andi    $t9, $t9, 0x0078           ## $t9 = 00000000
/* 02698 809BF2F8 17200005 */  bne     $t9, $zero, .L809BF310
/* 0269C 809BF2FC 00000000 */  nop
/* 026A0 809BF300 44192000 */  mfc1    $t9, $f4
/* 026A4 809BF304 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 026A8 809BF308 10000007 */  beq     $zero, $zero, .L809BF328
/* 026AC 809BF30C 0321C825 */  or      $t9, $t9, $at              ## $t9 = 80000000
.L809BF310:
/* 026B0 809BF310 10000005 */  beq     $zero, $zero, .L809BF328
/* 026B4 809BF314 2419FFFF */  addiu   $t9, $zero, 0xFFFF         ## $t9 = FFFFFFFF
/* 026B8 809BF318 44192000 */  mfc1    $t9, $f4
.L809BF31C:
/* 026BC 809BF31C 00000000 */  nop
/* 026C0 809BF320 0720FFFB */  bltz    $t9, .L809BF310
/* 026C4 809BF324 00000000 */  nop
.L809BF328:
/* 026C8 809BF328 332900FF */  andi    $t1, $t9, 0x00FF           ## $t1 = 000000FF
/* 026CC 809BF32C AC490004 */  sw      $t1, 0x0004($v0)           ## 00000004
/* 026D0 809BF330 9207014E */  lbu     $a3, 0x014E($s0)           ## 0000014E
/* 026D4 809BF334 8E06016C */  lw      $a2, 0x016C($s0)           ## 0000016C
/* 026D8 809BF338 8E050150 */  lw      $a1, 0x0150($s0)           ## 00000150
/* 026DC 809BF33C AFA00018 */  sw      $zero, 0x0018($sp)
/* 026E0 809BF340 AFA00014 */  sw      $zero, 0x0014($sp)
/* 026E4 809BF344 AFA00010 */  sw      $zero, 0x0010($sp)
/* 026E8 809BF348 8D0A02D0 */  lw      $t2, 0x02D0($t0)           ## 000002D0
/* 026EC 809BF34C 44D8F800 */  ctc1    $t8, $31
/* 026F0 809BF350 AFA80068 */  sw      $t0, 0x0068($sp)
/* 026F4 809BF354 8FA40074 */  lw      $a0, 0x0074($sp)
/* 026F8 809BF358 0C0289CF */  jal     SkelAnime_DrawSV2
/* 026FC 809BF35C AFAA001C */  sw      $t2, 0x001C($sp)
/* 02700 809BF360 8FA80068 */  lw      $t0, 0x0068($sp)
/* 02704 809BF364 AD0202D0 */  sw      $v0, 0x02D0($t0)           ## 000002D0
/* 02708 809BF368 8FAB0074 */  lw      $t3, 0x0074($sp)
.L809BF36C:
/* 0270C 809BF36C 3C06809C */  lui     $a2, %hi(D_809BF514)       ## $a2 = 809C0000
/* 02710 809BF370 24C6F514 */  addiu   $a2, $a2, %lo(D_809BF514)  ## $a2 = 809BF514
/* 02714 809BF374 27A40058 */  addiu   $a0, $sp, 0x0058           ## $a0 = FFFFFFE8
/* 02718 809BF378 2407081C */  addiu   $a3, $zero, 0x081C         ## $a3 = 0000081C
/* 0271C 809BF37C 0C031AD5 */  jal     Graph_CloseDisps
/* 02720 809BF380 8D650000 */  lw      $a1, 0x0000($t3)           ## 00000000
/* 02724 809BF384 8FBF002C */  lw      $ra, 0x002C($sp)
/* 02728 809BF388 8FB00028 */  lw      $s0, 0x0028($sp)
/* 0272C 809BF38C 27BD0070 */  addiu   $sp, $sp, 0x0070           ## $sp = 00000000
/* 02730 809BF390 03E00008 */  jr      $ra
/* 02734 809BF394 00000000 */  nop
/* 02738 809BF398 00000000 */  nop
/* 0273C 809BF39C 00000000 */  nop
