.rdata
glabel D_80138D60
    .asciz "\x1B[31m"
    .balign 4

glabel D_80138D68
    .asciz "DynaPolyInfo_expandSRT():polygon over %dが%dを越えるとダメ\n"
    .balign 4
# Polygon over %d can't be over %d

glabel D_80138DA4
    .asciz "\x1B[31m"
    .balign 4

glabel D_80138DAC
    .asciz "DynaPolyInfo_expandSRT():vertex over %dが%dを越えるとダメ\n"
    .balign 4
# Vertex over %d can't be over %d

glabel D_80138DE8
    .asciz "pdyna_poly_info->poly_num >= *pstart_poly_index + pbgdata->poly_num"
    .balign 4

glabel D_80138E2C
    .asciz "../z_bgcheck.c"
    .balign 4

glabel D_80138E3C
    .asciz "pdyna_poly_info->vert_num >= *pstart_vert_index + pbgdata->vtx_num"
    .balign 4

glabel D_80138E80
    .asciz "../z_bgcheck.c"
    .balign 4

.late_rodata
glabel D_80138F9C
    .float 1.1

glabel D_80138FA0
    .float 32767

glabel D_80138FA4
    .float 0.008

glabel D_80138FA8
    .float -0.8  
  
.text
glabel DynaPoly_ExpandSRT
/* AB6020 8003EE80 27BDFE98 */  addiu $sp, $sp, -0x168
/* AB6024 8003EE84 8FAF0178 */  lw    $t7, 0x178($sp)
/* AB6028 8003EE88 00067080 */  sll   $t6, $a2, 2
/* AB602C 8003EE8C 01C67023 */  subu  $t6, $t6, $a2
/* AB6030 8003EE90 AFBF005C */  sw    $ra, 0x5c($sp)
/* AB6034 8003EE94 AFBE0058 */  sw    $fp, 0x58($sp)
/* AB6038 8003EE98 AFB70054 */  sw    $s7, 0x54($sp)
/* AB603C 8003EE9C AFB60050 */  sw    $s6, 0x50($sp)
/* AB6040 8003EEA0 AFB5004C */  sw    $s5, 0x4c($sp)
/* AB6044 8003EEA4 AFB40048 */  sw    $s4, 0x48($sp)
/* AB6048 8003EEA8 AFB30044 */  sw    $s3, 0x44($sp)
/* AB604C 8003EEAC AFB20040 */  sw    $s2, 0x40($sp)
/* AB6050 8003EEB0 AFB1003C */  sw    $s1, 0x3c($sp)
/* AB6054 8003EEB4 AFB00038 */  sw    $s0, 0x38($sp)
/* AB6058 8003EEB8 F7B40030 */  sdc1  $f20, 0x30($sp)
/* AB605C 8003EEBC AFA40168 */  sw    $a0, 0x168($sp)
/* AB6060 8003EEC0 AFA70174 */  sw    $a3, 0x174($sp)
/* AB6064 8003EEC4 000E70C0 */  sll   $t6, $t6, 3
/* AB6068 8003EEC8 8DF80000 */  lw    $t8, ($t7)
/* AB606C 8003EECC 01C67021 */  addu  $t6, $t6, $a2
/* AB6070 8003EED0 000E7080 */  sll   $t6, $t6, 2
/* AB6074 8003EED4 00AEA021 */  addu  $s4, $a1, $t6
/* AB6078 8003EED8 A698000C */  sh    $t8, 0xc($s4)
/* AB607C 8003EEDC 8FB90174 */  lw    $t9, 0x174($sp)
/* AB6080 8003EEE0 8E820004 */  lw    $v0, 4($s4)
/* AB6084 8003EEE4 27A70108 */  addiu $a3, $sp, 0x108
/* AB6088 8003EEE8 8F290000 */  lw    $t1, ($t9)
/* AB608C 8003EEEC 8E9E0008 */  lw    $fp, 8($s4)
/* AB6090 8003EEF0 00C08025 */  move  $s0, $a2
/* AB6094 8003EEF4 A6890014 */  sh    $t1, 0x14($s4)
/* AB6098 8003EEF8 8C4B0024 */  lw    $t3, 0x24($v0)
/* AB609C 8003EEFC 00A0B825 */  move  $s7, $a1
/* AB60A0 8003EF00 26840038 */  addiu $a0, $s4, 0x38
/* AB60A4 8003EF04 ACEB0000 */  sw    $t3, ($a3)
/* AB60A8 8003EF08 8C4A0028 */  lw    $t2, 0x28($v0)
/* AB60AC 8003EF0C 24450050 */  addiu $a1, $v0, 0x50
/* AB60B0 8003EF10 244600B4 */  addiu $a2, $v0, 0xb4
/* AB60B4 8003EF14 ACEA0004 */  sw    $t2, 4($a3)
/* AB60B8 8003EF18 8C4B002C */  lw    $t3, 0x2c($v0)
/* AB60BC 8003EF1C ACEB0008 */  sw    $t3, 8($a3)
/* AB60C0 8003EF20 C4460054 */  lwc1  $f6, 0x54($v0)
/* AB60C4 8003EF24 C44400BC */  lwc1  $f4, 0xbc($v0)
/* AB60C8 8003EF28 C7AA010C */  lwc1  $f10, 0x10c($sp)
/* AB60CC 8003EF2C 46062202 */  mul.s $f8, $f4, $f6
/* AB60D0 8003EF30 46085400 */  add.s $f16, $f10, $f8
/* AB60D4 8003EF34 0C00F95A */  jal   ScaleRotPos_SetValue
/* AB60D8 8003EF38 E7B0010C */   swc1  $f16, 0x10c($sp)
/* AB60DC 8003EF3C 00106040 */  sll   $t4, $s0, 1
/* AB60E0 8003EF40 02ECB021 */  addu  $s6, $s7, $t4
/* AB60E4 8003EF44 96CD138C */  lhu   $t5, 0x138c($s6)
/* AB60E8 8003EF48 8FB80178 */  lw    $t8, 0x178($sp)
/* AB60EC 8003EF4C 31AE0004 */  andi  $t6, $t5, 4
/* AB60F0 8003EF50 55C0025A */  bnezl $t6, .L8003F8BC
/* AB60F4 8003EF54 8FBF005C */   lw    $ra, 0x5c($sp)
/* AB60F8 8003EF58 8F190000 */  lw    $t9, ($t8)
/* AB60FC 8003EF5C 97C90014 */  lhu   $t1, 0x14($fp)
/* AB6100 8003EF60 8EEF1408 */  lw    $t7, 0x1408($s7)
/* AB6104 8003EF64 3C048014 */  lui   $a0, %hi(D_80138D60) # $a0, 0x8014
/* AB6108 8003EF68 03295021 */  addu  $t2, $t9, $t1
/* AB610C 8003EF6C 01EA082A */  slt   $at, $t7, $t2
/* AB6110 8003EF70 5020000C */  beql  $at, $zero, .L8003EFA4
/* AB6114 8003EF74 8FB80174 */   lw    $t8, 0x174($sp)
/* AB6118 8003EF78 0C00084C */  jal   osSyncPrintf
/* AB611C 8003EF7C 24848D60 */   addiu $a0, %lo(D_80138D60) # addiu $a0, $a0, -0x72a0
/* AB6120 8003EF80 8FAB0178 */  lw    $t3, 0x178($sp)
/* AB6124 8003EF84 97CD0014 */  lhu   $t5, 0x14($fp)
/* AB6128 8003EF88 3C048014 */  lui   $a0, %hi(D_80138D68) # $a0, 0x8014
/* AB612C 8003EF8C 8D6C0000 */  lw    $t4, ($t3)
/* AB6130 8003EF90 24848D68 */  addiu $a0, %lo(D_80138D68) # addiu $a0, $a0, -0x7298
/* AB6134 8003EF94 8EE61408 */  lw    $a2, 0x1408($s7)
/* AB6138 8003EF98 0C00084C */  jal   osSyncPrintf
/* AB613C 8003EF9C 018D2821 */   addu  $a1, $t4, $t5
/* AB6140 8003EFA0 8FB80174 */  lw    $t8, 0x174($sp)
.L8003EFA4:
/* AB6144 8003EFA4 97C9000C */  lhu   $t1, 0xc($fp)
/* AB6148 8003EFA8 8EEE140C */  lw    $t6, 0x140c($s7)
/* AB614C 8003EFAC 8F190000 */  lw    $t9, ($t8)
/* AB6150 8003EFB0 3C048014 */  lui   $a0, %hi(D_80138DA4) # $a0, 0x8014
/* AB6154 8003EFB4 03297821 */  addu  $t7, $t9, $t1
/* AB6158 8003EFB8 01CF082A */  slt   $at, $t6, $t7
/* AB615C 8003EFBC 5020000C */  beql  $at, $zero, .L8003EFF0
/* AB6160 8003EFC0 8FB80178 */   lw    $t8, 0x178($sp)
/* AB6164 8003EFC4 0C00084C */  jal   osSyncPrintf
/* AB6168 8003EFC8 24848DA4 */   addiu $a0, %lo(D_80138DA4) # addiu $a0, $a0, -0x725c
/* AB616C 8003EFCC 8FAA0174 */  lw    $t2, 0x174($sp)
/* AB6170 8003EFD0 97CC000C */  lhu   $t4, 0xc($fp)
/* AB6174 8003EFD4 3C048014 */  lui   $a0, %hi(D_80138DAC) # $a0, 0x8014
/* AB6178 8003EFD8 8D4B0000 */  lw    $t3, ($t2)
/* AB617C 8003EFDC 24848DAC */  addiu $a0, %lo(D_80138DAC) # addiu $a0, $a0, -0x7254
/* AB6180 8003EFE0 8EE6140C */  lw    $a2, 0x140c($s7)
/* AB6184 8003EFE4 0C00084C */  jal   osSyncPrintf
/* AB6188 8003EFE8 016C2821 */   addu  $a1, $t3, $t4
/* AB618C 8003EFEC 8FB80178 */  lw    $t8, 0x178($sp)
.L8003EFF0:
/* AB6190 8003EFF0 97C90014 */  lhu   $t1, 0x14($fp)
/* AB6194 8003EFF4 8EED1408 */  lw    $t5, 0x1408($s7)
/* AB6198 8003EFF8 8F190000 */  lw    $t9, ($t8)
/* AB619C 8003EFFC 3C048014 */  lui   $a0, %hi(D_80138DE8) # $a0, 0x8014
/* AB61A0 8003F000 24848DE8 */  addiu $a0, %lo(D_80138DE8) # addiu $a0, $a0, -0x7218
/* AB61A4 8003F004 03297021 */  addu  $t6, $t9, $t1
/* AB61A8 8003F008 01AE082A */  slt   $at, $t5, $t6
/* AB61AC 8003F00C 14200007 */  bnez  $at, .L8003F02C
/* AB61B0 8003F010 3C058014 */   lui   $a1, %hi(D_80138E2C) # $a1, 0x8014
/* AB61B4 8003F014 8FAF0174 */  lw    $t7, 0x174($sp)
/* AB61B8 8003F018 97CB000C */  lhu   $t3, 0xc($fp)
/* AB61BC 8003F01C 8EE2140C */  lw    $v0, 0x140c($s7)
/* AB61C0 8003F020 8DEA0000 */  lw    $t2, ($t7)
/* AB61C4 8003F024 10000009 */  b     .L8003F04C
/* AB61C8 8003F028 014B1821 */   addu  $v1, $t2, $t3
.L8003F02C:
/* AB61CC 8003F02C 24A58E2C */  addiu $a1, %lo(D_80138E2C) # addiu $a1, $a1, -0x71d4
/* AB61D0 8003F030 0C0007FC */  jal   __assert
/* AB61D4 8003F034 24061A1F */   li    $a2, 6687
/* AB61D8 8003F038 8FAC0174 */  lw    $t4, 0x174($sp)
/* AB61DC 8003F03C 97D9000C */  lhu   $t9, 0xc($fp)
/* AB61E0 8003F040 8EE2140C */  lw    $v0, 0x140c($s7)
/* AB61E4 8003F044 8D980000 */  lw    $t8, ($t4)
/* AB61E8 8003F048 03191821 */  addu  $v1, $t8, $t9
.L8003F04C:
/* AB61EC 8003F04C 0043082A */  slt   $at, $v0, $v1
/* AB61F0 8003F050 10200006 */  beqz  $at, .L8003F06C
/* AB61F4 8003F054 3C048014 */   lui   $a0, %hi(D_80138E3C) # $a0, 0x8014
/* AB61F8 8003F058 3C058014 */  lui   $a1, %hi(D_80138E80)
/* AB61FC 8003F05C 24A58E80 */  addiu $a1, %lo(D_80138E80) # addiu $a1, $a1, -0x7180
/* AB6200 8003F060 24848E3C */  addiu $a0, %lo(D_80138E3C) # addiu $a0, $a0, -0x71c4
/* AB6204 8003F064 0C0007FC */  jal   __assert
/* AB6208 8003F068 24061A20 */   li    $a2, 6688
.L8003F06C:
/* AB620C 8003F06C 92E90000 */  lbu   $t1, ($s7)
/* AB6210 8003F070 312D0001 */  andi  $t5, $t1, 1
/* AB6214 8003F074 55A00046 */  bnezl $t5, .L8003F190
/* AB6218 8003F078 868E0044 */   lh    $t6, 0x44($s4)
/* AB621C 8003F07C 0C00FA01 */  jal   BgActor_HasTransformChanged
/* AB6220 8003F080 26840004 */   addiu $a0, $s4, 4
/* AB6224 8003F084 24010001 */  li    $at, 1
/* AB6228 8003F088 14410040 */  bne   $v0, $at, .L8003F18C
/* AB622C 8003F08C 8FAE0178 */   lw    $t6, 0x178($sp) #arg4
/* AB6230 8003F090 8DC20000 */  lw    $v0, ($t6)
/* AB6234 8003F094 97CF0014 */  lhu   $t7, 0x14($fp)
/* AB6238 8003F098 27B5009C */  addiu $s5, $sp, 0x9c
/* AB623C 8003F09C 00408025 */  move  $s0, $v0
/* AB6240 8003F0A0 004F2021 */  addu  $a0, $v0, $t7
/* AB6244 8003F0A4 0044082A */  slt   $at, $v0, $a0
/* AB6248 8003F0A8 10200030 */  beqz  $at, .L8003F16C
/* AB624C 8003F0AC 00028900 */   sll   $s1, $v0, 4
/* AB6250 8003F0B0 27B3009E */  addiu $s3, $sp, 0x9e
/* AB6254 8003F0B4 27B200A0 */  addiu $s2, $sp, 0xa0
.L8003F0B8:
/* AB6258 8003F0B8 8EEA13F0 */  lw    $t2, 0x13f0($s7)
/* AB625C 8003F0BC 26850012 */  addiu $a1, $s4, 0x12
/* AB6260 8003F0C0 02403025 */  move  $a2, $s2
/* AB6264 8003F0C4 01511021 */  addu  $v0, $t2, $s1
/* AB6268 8003F0C8 8443000A */  lh    $v1, 0xa($v0)
/* AB626C 8003F0CC 28614000 */  slti  $at, $v1, 0x4000
/* AB6270 8003F0D0 5420000A */  bnezl $at, .L8003F0FC
/* AB6274 8003F0D4 2861999B */   slti  $at, $v1, -0x6665
/* AB6278 8003F0D8 A7B000A0 */  sh    $s0, 0xa0($sp)
/* AB627C 8003F0DC 0C00E1E0 */  jal   DynaSSNodeList_SetSSListHead
/* AB6280 8003F0E0 26E413F8 */   addiu $a0, $s7, 0x13f8
/* AB6284 8003F0E4 8FAB0178 */  lw    $t3, 0x178($sp)
/* AB6288 8003F0E8 97D80014 */  lhu   $t8, 0x14($fp)
/* AB628C 8003F0EC 8D6C0000 */  lw    $t4, ($t3)
/* AB6290 8003F0F0 1000001A */  b     .L8003F15C
/* AB6294 8003F0F4 01982021 */   addu  $a0, $t4, $t8
/* AB6298 8003F0F8 2861999B */  slti  $at, $v1, -0x6665
.L8003F0FC:
/* AB629C 8003F0FC 1020000F */  beqz  $at, .L8003F13C
/* AB62A0 8003F100 26850010 */   addiu $a1, $s4, 0x10
/* AB62A4 8003F104 96D9138C */  lhu   $t9, 0x138c($s6)
/* AB62A8 8003F108 2685000E */  addiu $a1, $s4, 0xe
/* AB62AC 8003F10C 02603025 */  move  $a2, $s3
/* AB62B0 8003F110 33290008 */  andi  $t1, $t9, 8
/* AB62B4 8003F114 55200012 */  bnezl $t1, .L8003F160
/* AB62B8 8003F118 26100001 */   addiu $s0, $s0, 1
/* AB62BC 8003F11C A7B0009E */  sh    $s0, 0x9e($sp)
/* AB62C0 8003F120 0C00E1E0 */  jal   DynaSSNodeList_SetSSListHead
/* AB62C4 8003F124 26E413F8 */   addiu $a0, $s7, 0x13f8
/* AB62C8 8003F128 8FAD0178 */  lw    $t5, 0x178($sp)
/* AB62CC 8003F12C 97CF0014 */  lhu   $t7, 0x14($fp)
/* AB62D0 8003F130 8DAE0000 */  lw    $t6, ($t5)
/* AB62D4 8003F134 10000009 */  b     .L8003F15C
/* AB62D8 8003F138 01CF2021 */   addu  $a0, $t6, $t7
.L8003F13C:
/* AB62DC 8003F13C A7B0009C */  sh    $s0, 0x9c($sp)
/* AB62E0 8003F140 26E413F8 */  addiu $a0, $s7, 0x13f8
/* AB62E4 8003F144 0C00E1E0 */  jal   DynaSSNodeList_SetSSListHead
/* AB62E8 8003F148 02A03025 */   move  $a2, $s5
/* AB62EC 8003F14C 8FAA0178 */  lw    $t2, 0x178($sp)
/* AB62F0 8003F150 97CC0014 */  lhu   $t4, 0x14($fp)
/* AB62F4 8003F154 8D4B0000 */  lw    $t3, ($t2)
/* AB62F8 8003F158 016C2021 */  addu  $a0, $t3, $t4
.L8003F15C:
/* AB62FC 8003F15C 26100001 */  addiu $s0, $s0, 1
.L8003F160:
/* AB6300 8003F160 0204082A */  slt   $at, $s0, $a0
/* AB6304 8003F164 1420FFD4 */  bnez  $at, .L8003F0B8
/* AB6308 8003F168 26310010 */   addiu $s1, $s1, 0x10
.L8003F16C:
/* AB630C 8003F16C 8FB80178 */  lw    $t8, 0x178($sp)
/* AB6310 8003F170 8FA20174 */  lw    $v0, 0x174($sp)
/* AB6314 8003F174 AF040000 */  sw    $a0, ($t8)
/* AB6318 8003F178 97C9000C */  lhu   $t1, 0xc($fp)
/* AB631C 8003F17C 8C590000 */  lw    $t9, ($v0)
/* AB6320 8003F180 03296821 */  addu  $t5, $t9, $t1
/* AB6324 8003F184 100001CC */  b     .L8003F8B8
/* AB6328 8003F188 AC4D0000 */   sw    $t5, ($v0)
.L8003F18C:
/* AB632C 8003F18C 868E0044 */  lh    $t6, 0x44($s4)
.L8003F190:
/* AB6330 8003F190 8E850038 */  lw    $a1, 0x38($s4)
/* AB6334 8003F194 8E86003C */  lw    $a2, 0x3c($s4)
/* AB6338 8003F198 8E870040 */  lw    $a3, 0x40($s4)
/* AB633C 8003F19C AFAE0010 */  sw    $t6, 0x10($sp)
/* AB6340 8003F1A0 868F0046 */  lh    $t7, 0x46($s4)
/* AB6344 8003F1A4 27B50128 */  addiu $s5, $sp, 0x128
/* AB6348 8003F1A8 02A02025 */  move  $a0, $s5
/* AB634C 8003F1AC AFAF0014 */  sw    $t7, 0x14($sp)
/* AB6350 8003F1B0 868A0048 */  lh    $t2, 0x48($s4)
/* AB6354 8003F1B4 AFAA0018 */  sw    $t2, 0x18($sp)
/* AB6358 8003F1B8 C692004C */  lwc1  $f18, 0x4c($s4)
/* AB635C 8003F1BC E7B2001C */  swc1  $f18, 0x1c($sp)
/* AB6360 8003F1C0 C6840050 */  lwc1  $f4, 0x50($s4)
/* AB6364 8003F1C4 E7A40020 */  swc1  $f4, 0x20($sp)
/* AB6368 8003F1C8 C6860054 */  lwc1  $f6, 0x54($s4)
/* AB636C 8003F1CC 0C029EC1 */  jal   SkinMatrix_SetScaleRotateYRPTranslate

/* AB6370 8003F1D0 E7A60024 */   swc1  $f6, 0x24($sp)
/* AB6374 8003F1D4 97CB000C */  lhu   $t3, 0xc($fp)
/* AB6378 8003F1D8 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* AB637C 8003F1DC 44800000 */  mtc1  $zero, $f0
/* AB6380 8003F1E0 448B4000 */  mtc1  $t3, $f8
/* AB6384 8003F1E4 44815000 */  mtc1  $at, $f10
/* AB6388 8003F1E8 05610005 */  bgez  $t3, .L8003F200
/* AB638C 8003F1EC 46804420 */   cvt.s.w $f16, $f8
/* AB6390 8003F1F0 3C014F80 */  li    $at, 0x4F800000 # 0.000000
/* AB6394 8003F1F4 44819000 */  mtc1  $at, $f18
/* AB6398 8003F1F8 00000000 */  nop
/* AB639C 8003F1FC 46128400 */  add.s $f16, $f16, $f18
.L8003F200:
/* AB63A0 8003F200 E7A000F8 */  swc1  $f0, 0xf8($sp)
/* AB63A4 8003F204 E7A000F4 */  swc1  $f0, 0xf4($sp)
/* AB63A8 8003F208 E7A000F0 */  swc1  $f0, 0xf0($sp)
/* AB63AC 8003F20C 97CC000C */  lhu   $t4, 0xc($fp)
/* AB63B0 8003F210 46105503 */  div.s $f20, $f10, $f16
/* AB63B4 8003F214 00009825 */  move  $s3, $zero
/* AB63B8 8003F218 1980003E */  blez  $t4, .L8003F314
/* AB63BC 8003F21C 00008025 */   move  $s0, $zero
/* AB63C0 8003F220 24160006 */  li    $s6, 6
/* AB63C4 8003F224 27B20084 */  addiu $s2, $sp, 0x84
/* AB63C8 8003F228 27B10090 */  addiu $s1, $sp, 0x90
/* AB63CC 8003F22C 8FD80010 */  lw    $t8, 0x10($fp)
.L8003F230:
/* AB63D0 8003F230 02202025 */  move  $a0, $s1
/* AB63D4 8003F234 0C01DF97 */  jal   Math_Vec3s_ToVec3f
/* AB63D8 8003F238 03102821 */   addu  $a1, $t8, $s0
/* AB63DC 8003F23C 02A02025 */  move  $a0, $s5
/* AB63E0 8003F240 02202825 */  move  $a1, $s1
/* AB63E4 8003F244 0C029BBD */  jal   SkinMatrix_Vec3fMtxFMultXYZ
/* AB63E8 8003F248 02403025 */   move  $a2, $s2
/* AB63EC 8003F24C 8FB90174 */  lw    $t9, 0x174($sp)
/* AB63F0 8003F250 8EEF13F4 */  lw    $t7, 0x13f4($s7)
/* AB63F4 8003F254 02402825 */  move  $a1, $s2
/* AB63F8 8003F258 8F290000 */  lw    $t1, ($t9)
/* AB63FC 8003F25C 01336821 */  addu  $t5, $t1, $s3
/* AB6400 8003F260 01B60019 */  multu $t5, $s6
/* AB6404 8003F264 00007012 */  mflo  $t6
/* AB6408 8003F268 01CF2021 */  addu  $a0, $t6, $t7
/* AB640C 8003F26C 0C00E23A */  jal   BgCheck_Vec3fToVec3s
/* AB6410 8003F270 00000000 */   nop
/* AB6414 8003F274 16600006 */  bnez  $s3, .L8003F290
/* AB6418 8003F278 C7A80088 */   lwc1  $f8, 0x88($sp)
/* AB641C 8003F27C C7A40088 */  lwc1  $f4, 0x88($sp)
/* AB6420 8003F280 E6840064 */  swc1  $f4, 0x64($s4)
/* AB6424 8003F284 C6860064 */  lwc1  $f6, 0x64($s4)
/* AB6428 8003F288 1000000F */  b     .L8003F2C8
/* AB642C 8003F28C E6860060 */   swc1  $f6, 0x60($s4)
.L8003F290:
/* AB6430 8003F290 C6920060 */  lwc1  $f18, 0x60($s4)
/* AB6434 8003F294 C7B00088 */  lwc1  $f16, 0x88($sp)
/* AB6438 8003F298 4612403C */  c.lt.s $f8, $f18
/* AB643C 8003F29C 00000000 */  nop
/* AB6440 8003F2A0 45020004 */  bc1fl .L8003F2B4
/* AB6444 8003F2A4 C68A0064 */   lwc1  $f10, 0x64($s4)
/* AB6448 8003F2A8 10000007 */  b     .L8003F2C8
/* AB644C 8003F2AC E6880060 */   swc1  $f8, 0x60($s4)
/* AB6450 8003F2B0 C68A0064 */  lwc1  $f10, 0x64($s4)
.L8003F2B4:
/* AB6454 8003F2B4 4610503C */  c.lt.s $f10, $f16
/* AB6458 8003F2B8 00000000 */  nop
/* AB645C 8003F2BC 45020003 */  bc1fl .L8003F2CC
/* AB6460 8003F2C0 C7A400F0 */   lwc1  $f4, 0xf0($sp)
/* AB6464 8003F2C4 E6900064 */  swc1  $f16, 0x64($s4)
.L8003F2C8:
/* AB6468 8003F2C8 C7A400F0 */  lwc1  $f4, 0xf0($sp)
.L8003F2CC:
/* AB646C 8003F2CC C7A60084 */  lwc1  $f6, 0x84($sp)
/* AB6470 8003F2D0 C7A800F4 */  lwc1  $f8, 0xf4($sp)
/* AB6474 8003F2D4 C7AA0088 */  lwc1  $f10, 0x88($sp)
/* AB6478 8003F2D8 46062480 */  add.s $f18, $f4, $f6
/* AB647C 8003F2DC C7A6008C */  lwc1  $f6, 0x8c($sp)
/* AB6480 8003F2E0 C7A400F8 */  lwc1  $f4, 0xf8($sp)
/* AB6484 8003F2E4 460A4400 */  add.s $f16, $f8, $f10
/* AB6488 8003F2E8 E7B200F0 */  swc1  $f18, 0xf0($sp)
/* AB648C 8003F2EC 26730001 */  addiu $s3, $s3, 1
/* AB6490 8003F2F0 46062480 */  add.s $f18, $f4, $f6
/* AB6494 8003F2F4 E7B000F4 */  swc1  $f16, 0xf4($sp)
/* AB6498 8003F2F8 26100006 */  addiu $s0, $s0, 6
/* AB649C 8003F2FC E7B200F8 */  swc1  $f18, 0xf8($sp)
/* AB64A0 8003F300 97CA000C */  lhu   $t2, 0xc($fp)
/* AB64A4 8003F304 026A082A */  slt   $at, $s3, $t2
/* AB64A8 8003F308 5420FFC9 */  bnezl $at, .L8003F230
/* AB64AC 8003F30C 8FD80010 */   lw    $t8, 0x10($fp)
/* AB64B0 8003F310 00009825 */  move  $s3, $zero
.L8003F314:
/* AB64B4 8003F314 C7A800F0 */  lwc1  $f8, 0xf0($sp)
/* AB64B8 8003F318 C7B000F4 */  lwc1  $f16, 0xf4($sp)
/* AB64BC 8003F31C C7A600F8 */  lwc1  $f6, 0xf8($sp)
/* AB64C0 8003F320 46144282 */  mul.s $f10, $f8, $f20
/* AB64C4 8003F324 26950058 */  addiu $s5, $s4, 0x58
/* AB64C8 8003F328 3C01C2C8 */  li    $at, 0xC2C80000 # 0.000000
/* AB64CC 8003F32C 46148102 */  mul.s $f4, $f16, $f20
/* AB64D0 8003F330 44811000 */  mtc1  $at, $f2
/* AB64D4 8003F334 00008025 */  move  $s0, $zero
/* AB64D8 8003F338 46143482 */  mul.s $f18, $f6, $f20
/* AB64DC 8003F33C E7AA00F0 */  swc1  $f10, 0xf0($sp)
/* AB64E0 8003F340 27B200F0 */  addiu $s2, $sp, 0xf0
/* AB64E4 8003F344 27B100DC */  addiu $s1, $sp, 0xdc
/* AB64E8 8003F348 E7A400F4 */  swc1  $f4, 0xf4($sp)
/* AB64EC 8003F34C 4600520D */  trunc.w.s $f8, $f10
/* AB64F0 8003F350 E7B200F8 */  swc1  $f18, 0xf8($sp)
/* AB64F4 8003F354 440C4000 */  mfc1  $t4, $f8
/* AB64F8 8003F358 00000000 */  nop
/* AB64FC 8003F35C A6AC0000 */  sh    $t4, ($s5)
/* AB6500 8003F360 C7B000F4 */  lwc1  $f16, 0xf4($sp)
/* AB6504 8003F364 4600810D */  trunc.w.s $f4, $f16
/* AB6508 8003F368 44192000 */  mfc1  $t9, $f4
/* AB650C 8003F36C 00000000 */  nop
/* AB6510 8003F370 A6B90002 */  sh    $t9, 2($s5)
/* AB6514 8003F374 C7A600F8 */  lwc1  $f6, 0xf8($sp)
/* AB6518 8003F378 4600348D */  trunc.w.s $f18, $f6
/* AB651C 8003F37C 440D9000 */  mfc1  $t5, $f18
/* AB6520 8003F380 00000000 */  nop
/* AB6524 8003F384 A6AD0004 */  sh    $t5, 4($s5)
/* AB6528 8003F388 97CE000C */  lhu   $t6, 0xc($fp)
/* AB652C 8003F38C 59C00038 */  blezl $t6, .L8003F470
/* AB6530 8003F390 46001004 */   sqrt.s $f0, $f2
/* AB6534 8003F394 8FA20174 */  lw    $v0, 0x174($sp)
.L8003F398:
/* AB6538 8003F398 8EEF13F4 */  lw    $t7, 0x13f4($s7)
/* AB653C 8003F39C 02202025 */  move  $a0, $s1
/* AB6540 8003F3A0 8C4A0000 */  lw    $t2, ($v0)
/* AB6544 8003F3A4 02402825 */  move  $a1, $s2
/* AB6548 8003F3A8 000A5880 */  sll   $t3, $t2, 2
/* AB654C 8003F3AC 016A5823 */  subu  $t3, $t3, $t2
/* AB6550 8003F3B0 000B5840 */  sll   $t3, $t3, 1
/* AB6554 8003F3B4 01EB6021 */  addu  $t4, $t7, $t3
/* AB6558 8003F3B8 0190C021 */  addu  $t8, $t4, $s0
/* AB655C 8003F3BC 87190000 */  lh    $t9, ($t8)
/* AB6560 8003F3C0 44995000 */  mtc1  $t9, $f10
/* AB6564 8003F3C4 00000000 */  nop
/* AB6568 8003F3C8 46805220 */  cvt.s.w $f8, $f10
/* AB656C 8003F3CC E7A800DC */  swc1  $f8, 0xdc($sp)
/* AB6570 8003F3D0 8C4D0000 */  lw    $t5, ($v0)
/* AB6574 8003F3D4 8EE913F4 */  lw    $t1, 0x13f4($s7)
/* AB6578 8003F3D8 000D7080 */  sll   $t6, $t5, 2
/* AB657C 8003F3DC 01CD7023 */  subu  $t6, $t6, $t5
/* AB6580 8003F3E0 000E7040 */  sll   $t6, $t6, 1
/* AB6584 8003F3E4 012E5021 */  addu  $t2, $t1, $t6
/* AB6588 8003F3E8 01507821 */  addu  $t7, $t2, $s0
/* AB658C 8003F3EC 85EB0002 */  lh    $t3, 2($t7)
/* AB6590 8003F3F0 448B8000 */  mtc1  $t3, $f16
/* AB6594 8003F3F4 00000000 */  nop
/* AB6598 8003F3F8 46808120 */  cvt.s.w $f4, $f16
/* AB659C 8003F3FC E7A400E0 */  swc1  $f4, 0xe0($sp)
/* AB65A0 8003F400 8C580000 */  lw    $t8, ($v0)
/* AB65A4 8003F404 8EEC13F4 */  lw    $t4, 0x13f4($s7)
/* AB65A8 8003F408 0018C880 */  sll   $t9, $t8, 2
/* AB65AC 8003F40C 0338C823 */  subu  $t9, $t9, $t8
/* AB65B0 8003F410 0019C840 */  sll   $t9, $t9, 1
/* AB65B4 8003F414 01996821 */  addu  $t5, $t4, $t9
/* AB65B8 8003F418 01B04821 */  addu  $t1, $t5, $s0
/* AB65BC 8003F41C 852E0004 */  lh    $t6, 4($t1)
/* AB65C0 8003F420 E7A200EC */  swc1  $f2, 0xec($sp)
/* AB65C4 8003F424 448E3000 */  mtc1  $t6, $f6
/* AB65C8 8003F428 00000000 */  nop
/* AB65CC 8003F42C 468034A0 */  cvt.s.w $f18, $f6
/* AB65D0 8003F430 0C032D94 */  jal   Math3D_Vec3fDistSq
/* AB65D4 8003F434 E7B200E4 */   swc1  $f18, 0xe4($sp)
/* AB65D8 8003F438 C7A200EC */  lwc1  $f2, 0xec($sp)
/* AB65DC 8003F43C 4600103C */  c.lt.s $f2, $f0
/* AB65E0 8003F440 00000000 */  nop
/* AB65E4 8003F444 45020003 */  bc1fl .L8003F454
/* AB65E8 8003F448 97CA000C */   lhu   $t2, 0xc($fp)
/* AB65EC 8003F44C 46000086 */  mov.s $f2, $f0
/* AB65F0 8003F450 97CA000C */  lhu   $t2, 0xc($fp)
.L8003F454:
/* AB65F4 8003F454 26730001 */  addiu $s3, $s3, 1
/* AB65F8 8003F458 26100006 */  addiu $s0, $s0, 6
/* AB65FC 8003F45C 026A082A */  slt   $at, $s3, $t2
/* AB6600 8003F460 5420FFCD */  bnezl $at, .L8003F398
/* AB6604 8003F464 8FA20174 */   lw    $v0, 0x174($sp)
/* AB6608 8003F468 00009825 */  move  $s3, $zero #block_37
/* AB660C 8003F46C 46001004 */  sqrt.s $f0, $f2
.L8003F470:
/* AB6610 8003F470 3C018014 */  lui   $at, %hi(D_80138F9C)
/* AB6614 8003F474 C42A8F9C */  lwc1  $f10, %lo(D_80138F9C)($at)
/* AB6618 8003F478 3C018014 */  lui   $at, %hi(D_80138FA0)
/* AB661C 8003F47C 0000B025 */  move  $s6, $zero #poly iterator
/* AB6620 8003F480 24120006 */  li    $s2, 6 #vertex size
/* AB6624 8003F484 460A0202 */  mul.s $f8, $f0, $f10
/* AB6628 8003F488 4600440D */  trunc.w.s $f16, $f8
/* AB662C 8003F48C 440B8000 */  mfc1  $t3, $f16
/* AB6630 8003F490 00000000 */  nop
/* AB6634 8003F494 A6AB0006 */  sh    $t3, 6($s5) # sqrt(phi_f2) * 1.1
/* AB6638 8003F498 97C20014 */  lhu   $v0, 0x14($fp) #fp = colHeader
/* AB663C 8003F49C 26F513F8 */  addiu $s5, $s7, 0x13f8 #s5 = dyn_list
/* AB6640 8003F4A0 584000FD */  blezl $v0, .L8003F898
/* AB6644 8003F4A4 8FAA0178 */   lw    $t2, 0x178($sp) 
/* AB6648 8003F4A8 C4348FA0 */  lwc1  $f20, %lo(D_80138FA0)($at) #f20 = 32767
/* AB664C 8003F4AC 8FB80178 */  lw    $t8, 0x178($sp) #t8 = arg4
.L8003F4B0:
/* AB6650 8003F4B0 8FCE0018 */  lw    $t6, 0x18($fp) #t6 = colHeader->polygonArray
/* AB6654 8003F4B4 8EE913F0 */  lw    $t1, 0x13f0($s7) #t1 = dyn_poly
/* AB6658 8003F4B8 8F0C0000 */  lw    $t4, ($t8) #t4 = *arg4
/* AB665C 8003F4BC 01D65021 */  addu  $t2, $t6, $s6 #t2 = colHeader->polygonArray[s6, or s3_3]
/* AB6660 8003F4C0 894B0000 */  lwl   $t3, ($t2)
/* AB6664 8003F4C4 994B0003 */  lwr   $t3, 3($t2)
/* AB6668 8003F4C8 0193C821 */  addu  $t9, $t4, $s3 #t9 = *arg4 + s3_3
/* AB666C 8003F4CC 00196900 */  sll   $t5, $t9, 4   #t5 = [*arg4 + s3_3]
/* AB6670 8003F4D0 8FA80174 */  lw    $t0, 0x174($sp) #t0 = arg3
/* AB6674 8003F4D4 01A98021 */  addu  $s0, $t5, $t1 #s0 = 
/* AB6678 8003F4D8 AA0B0000 */  swl   $t3, ($s0)
/* AB667C 8003F4DC BA0B0003 */  swr   $t3, 3($s0)
/* AB6680 8003F4E0 894F0004 */  lwl   $t7, 4($t2)
/* AB6684 8003F4E4 994F0007 */  lwr   $t7, 7($t2)
/* AB6688 8003F4E8 96020002 */  lhu   $v0, 2($s0)
/* AB668C 8003F4EC 27A400D0 */  addiu $a0, $sp, 0xd0
/* AB6690 8003F4F0 AA0F0004 */  swl   $t7, 4($s0)
/* AB6694 8003F4F4 BA0F0007 */  swr   $t7, 7($s0)
/* AB6698 8003F4F8 894B0008 */  lwl   $t3, 8($t2)
/* AB669C 8003F4FC 994B000B */  lwr   $t3, 0xb($t2)
/* AB66A0 8003F500 30581FFF */  andi  $t8, $v0, 0x1fff
/* AB66A4 8003F504 304DE000 */  andi  $t5, $v0, 0xe000
/* AB66A8 8003F508 AA0B0008 */  swl   $t3, 8($s0)
/* AB66AC 8003F50C BA0B000B */  swr   $t3, 0xb($s0)
/* AB66B0 8003F510 894F000C */  lwl   $t7, 0xc($t2)
/* AB66B4 8003F514 994F000F */  lwr   $t7, 0xf($t2)
/* AB66B8 8003F518 96030004 */  lhu   $v1, 4($s0)
/* AB66BC 8003F51C 27A500C4 */  addiu $a1, $sp, 0xc4
/* AB66C0 8003F520 AA0F000C */  swl   $t7, 0xc($s0)
/* AB66C4 8003F524 BA0F000F */  swr   $t7, 0xf($s0)
/* AB66C8 8003F528 8D0C0000 */  lw    $t4, ($t0) # t4 = *arg3
/* AB66CC 8003F52C 306E1FFF */  andi  $t6, $v1, 0x1fff
/* AB66D0 8003F530 306BE000 */  andi  $t3, $v1, 0xe000
/* AB66D4 8003F534 030CC821 */  addu  $t9, $t8, $t4
/* AB66D8 8003F538 01B94825 */  or    $t1, $t5, $t9
/* AB66DC 8003F53C A6090002 */  sh    $t1, 2($s0)
/* AB66E0 8003F540 8D0A0000 */  lw    $t2, ($t0)
/* AB66E4 8003F544 960D0006 */  lhu   $t5, 6($s0)
/* AB66E8 8003F548 27A600B8 */  addiu $a2, $sp, 0xb8
/* AB66EC 8003F54C 01CA7821 */  addu  $t7, $t6, $t2
/* AB66F0 8003F550 312E1FFF */  andi  $t6, $t1, 0x1fff
/* AB66F4 8003F554 01D20019 */  multu $t6, $s2
/* AB66F8 8003F558 016FC025 */  or    $t8, $t3, $t7
/* AB66FC 8003F55C A6180004 */  sh    $t8, 4($s0)
/* AB6700 8003F560 8D0C0000 */  lw    $t4, ($t0)
/* AB6704 8003F564 27A700AC */  addiu $a3, $sp, 0xac
/* AB6708 8003F568 018DC821 */  addu  $t9, $t4, $t5
/* AB670C 8003F56C A6190006 */  sh    $t9, 6($s0)
/* AB6710 8003F570 8EF113F4 */  lw    $s1, 0x13f4($s7)
/* AB6714 8003F574 00005012 */  mflo  $t2
/* AB6718 8003F578 022A5821 */  addu  $t3, $s1, $t2
/* AB671C 8003F57C 856F0000 */  lh    $t7, ($t3)
/* AB6720 8003F580 448F2000 */  mtc1  $t7, $f4
/* AB6724 8003F584 00000000 */  nop
/* AB6728 8003F588 468021A0 */  cvt.s.w $f6, $f4
/* AB672C 8003F58C E7A600D0 */  swc1  $f6, 0xd0($sp)
/* AB6730 8003F590 96180002 */  lhu   $t8, 2($s0)
/* AB6734 8003F594 330C1FFF */  andi  $t4, $t8, 0x1fff
/* AB6738 8003F598 01920019 */  multu $t4, $s2
/* AB673C 8003F59C 00006812 */  mflo  $t5
/* AB6740 8003F5A0 022DC821 */  addu  $t9, $s1, $t5
/* AB6744 8003F5A4 87290002 */  lh    $t1, 2($t9)
/* AB6748 8003F5A8 44899000 */  mtc1  $t1, $f18
/* AB674C 8003F5AC 00000000 */  nop
/* AB6750 8003F5B0 468092A0 */  cvt.s.w $f10, $f18
/* AB6754 8003F5B4 E7AA00D4 */  swc1  $f10, 0xd4($sp)
/* AB6758 8003F5B8 960E0002 */  lhu   $t6, 2($s0)
/* AB675C 8003F5BC 31CA1FFF */  andi  $t2, $t6, 0x1fff
/* AB6760 8003F5C0 01520019 */  multu $t2, $s2
/* AB6764 8003F5C4 00005812 */  mflo  $t3
/* AB6768 8003F5C8 022B7821 */  addu  $t7, $s1, $t3
/* AB676C 8003F5CC 85F80004 */  lh    $t8, 4($t7)
/* AB6770 8003F5D0 44984000 */  mtc1  $t8, $f8
/* AB6774 8003F5D4 00000000 */  nop
/* AB6778 8003F5D8 46804420 */  cvt.s.w $f16, $f8
/* AB677C 8003F5DC E7B000D8 */  swc1  $f16, 0xd8($sp)
/* AB6780 8003F5E0 960C0004 */  lhu   $t4, 4($s0)
/* AB6784 8003F5E4 318D1FFF */  andi  $t5, $t4, 0x1fff
/* AB6788 8003F5E8 01B20019 */  multu $t5, $s2
/* AB678C 8003F5EC 0000C812 */  mflo  $t9
/* AB6790 8003F5F0 02394821 */  addu  $t1, $s1, $t9
/* AB6794 8003F5F4 852E0000 */  lh    $t6, ($t1)
/* AB6798 8003F5F8 448E2000 */  mtc1  $t6, $f4
/* AB679C 8003F5FC 00000000 */  nop
/* AB67A0 8003F600 468021A0 */  cvt.s.w $f6, $f4
/* AB67A4 8003F604 E7A600C4 */  swc1  $f6, 0xc4($sp)
/* AB67A8 8003F608 960A0004 */  lhu   $t2, 4($s0)
/* AB67AC 8003F60C 314B1FFF */  andi  $t3, $t2, 0x1fff
/* AB67B0 8003F610 01720019 */  multu $t3, $s2
/* AB67B4 8003F614 00007812 */  mflo  $t7
/* AB67B8 8003F618 022FC021 */  addu  $t8, $s1, $t7
/* AB67BC 8003F61C 870C0002 */  lh    $t4, 2($t8)
/* AB67C0 8003F620 448C9000 */  mtc1  $t4, $f18
/* AB67C4 8003F624 00000000 */  nop
/* AB67C8 8003F628 468092A0 */  cvt.s.w $f10, $f18
/* AB67CC 8003F62C E7AA00C8 */  swc1  $f10, 0xc8($sp)
/* AB67D0 8003F630 960D0004 */  lhu   $t5, 4($s0)
/* AB67D4 8003F634 31B91FFF */  andi  $t9, $t5, 0x1fff
/* AB67D8 8003F638 03320019 */  multu $t9, $s2
/* AB67DC 8003F63C 00004812 */  mflo  $t1
/* AB67E0 8003F640 02297021 */  addu  $t6, $s1, $t1
/* AB67E4 8003F644 85CA0004 */  lh    $t2, 4($t6)
/* AB67E8 8003F648 448A4000 */  mtc1  $t2, $f8
/* AB67EC 8003F64C 00000000 */  nop
/* AB67F0 8003F650 46804420 */  cvt.s.w $f16, $f8
/* AB67F4 8003F654 E7B000CC */  swc1  $f16, 0xcc($sp)
/* AB67F8 8003F658 960B0006 */  lhu   $t3, 6($s0)
/* AB67FC 8003F65C 01720019 */  multu $t3, $s2
/* AB6800 8003F660 00007812 */  mflo  $t7
/* AB6804 8003F664 022FC021 */  addu  $t8, $s1, $t7
/* AB6808 8003F668 870C0000 */  lh    $t4, ($t8)
/* AB680C 8003F66C 448C2000 */  mtc1  $t4, $f4
/* AB6810 8003F670 00000000 */  nop
/* AB6814 8003F674 468021A0 */  cvt.s.w $f6, $f4
/* AB6818 8003F678 E7A600B8 */  swc1  $f6, 0xb8($sp)
/* AB681C 8003F67C 960D0006 */  lhu   $t5, 6($s0)
/* AB6820 8003F680 01B20019 */  multu $t5, $s2
/* AB6824 8003F684 0000C812 */  mflo  $t9
/* AB6828 8003F688 02394821 */  addu  $t1, $s1, $t9
/* AB682C 8003F68C 852E0002 */  lh    $t6, 2($t1)
/* AB6830 8003F690 448E9000 */  mtc1  $t6, $f18
/* AB6834 8003F694 00000000 */  nop
/* AB6838 8003F698 468092A0 */  cvt.s.w $f10, $f18
/* AB683C 8003F69C E7AA00BC */  swc1  $f10, 0xbc($sp)
/* AB6840 8003F6A0 960A0006 */  lhu   $t2, 6($s0)
/* AB6844 8003F6A4 01520019 */  multu $t2, $s2
/* AB6848 8003F6A8 00005812 */  mflo  $t3
/* AB684C 8003F6AC 022B7821 */  addu  $t7, $s1, $t3
/* AB6850 8003F6B0 85F80004 */  lh    $t8, 4($t7)
/* AB6854 8003F6B4 44984000 */  mtc1  $t8, $f8
/* AB6858 8003F6B8 00000000 */  nop
/* AB685C 8003F6BC 46804420 */  cvt.s.w $f16, $f8
/* AB6860 8003F6C0 0C032E09 */  jal   Math3D_SurfaceNorm
/* AB6864 8003F6C4 E7B000C0 */   swc1  $f16, 0xc0($sp)
/* AB6868 8003F6C8 0C032D8A */  jal   Math3D_Vec3fMagnitude
/* AB686C 8003F6CC 27A400AC */   addiu $a0, $sp, 0xac
/* AB6870 8003F6D0 3C018014 */  lui   $at, %hi(D_80138FA4)
/* AB6874 8003F6D4 C4248FA4 */  lwc1  $f4, %lo(D_80138FA4)($at)
/* AB6878 8003F6D8 46000086 */  mov.s $f2, $f0
/* AB687C 8003F6DC 46000005 */  abs.s $f0, $f0
/* AB6880 8003F6E0 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* AB6884 8003F6E4 4604003C */  c.lt.s $f0, $f4
/* AB6888 8003F6E8 00000000 */  nop
/* AB688C 8003F6EC 45030020 */  bc1tl .L8003F770
/* AB6890 8003F6F0 960B0002 */   lhu   $t3, 2($s0)
/* AB6894 8003F6F4 44813000 */  mtc1  $at, $f6
/* AB6898 8003F6F8 C7B200AC */  lwc1  $f18, 0xac($sp)
/* AB689C 8003F6FC C7A800B0 */  lwc1  $f8, 0xb0($sp)
/* AB68A0 8003F700 46023003 */  div.s $f0, $f6, $f2
/* AB68A4 8003F704 C7A400B4 */  lwc1  $f4, 0xb4($sp)
/* AB68A8 8003F708 46009282 */  mul.s $f10, $f18, $f0
/* AB68AC 8003F70C 00000000 */  nop
/* AB68B0 8003F710 46004402 */  mul.s $f16, $f8, $f0
/* AB68B4 8003F714 00000000 */  nop
/* AB68B8 8003F718 46002182 */  mul.s $f6, $f4, $f0
/* AB68BC 8003F71C E7AA00AC */  swc1  $f10, 0xac($sp)
/* AB68C0 8003F720 46145482 */  mul.s $f18, $f10, $f20
/* AB68C4 8003F724 E7B000B0 */  swc1  $f16, 0xb0($sp)
/* AB68C8 8003F728 E7A600B4 */  swc1  $f6, 0xb4($sp)
/* AB68CC 8003F72C 4600920D */  trunc.w.s $f8, $f18
/* AB68D0 8003F730 440D4000 */  mfc1  $t5, $f8
/* AB68D4 8003F734 00000000 */  nop
/* AB68D8 8003F738 A60D0008 */  sh    $t5, 8($s0)
/* AB68DC 8003F73C C7B000B0 */  lwc1  $f16, 0xb0($sp)
/* AB68E0 8003F740 46148102 */  mul.s $f4, $f16, $f20
/* AB68E4 8003F744 4600218D */  trunc.w.s $f6, $f4
/* AB68E8 8003F748 44093000 */  mfc1  $t1, $f6
/* AB68EC 8003F74C 00000000 */  nop
/* AB68F0 8003F750 A609000A */  sh    $t1, 0xa($s0)
/* AB68F4 8003F754 C7AA00B4 */  lwc1  $f10, 0xb4($sp)
/* AB68F8 8003F758 46145482 */  mul.s $f18, $f10, $f20
/* AB68FC 8003F75C 4600920D */  trunc.w.s $f8, $f18
/* AB6900 8003F760 440A4000 */  mfc1  $t2, $f8
/* AB6904 8003F764 00000000 */  nop
/* AB6908 8003F768 A60A000C */  sh    $t2, 0xc($s0)
/* AB690C 8003F76C 960B0002 */  lhu   $t3, 2($s0)
.L8003F770:
/* AB6910 8003F770 C7B000AC */  lwc1  $f16, 0xac($sp)
/* AB6914 8003F774 C7B200B0 */  lwc1  $f18, 0xb0($sp)
/* AB6918 8003F778 316F1FFF */  andi  $t7, $t3, 0x1fff
/* AB691C 8003F77C 01F20019 */  multu $t7, $s2
/* AB6920 8003F780 3C013F00 */  li    $at, 0x3F000000 # 0.000000
/* AB6924 8003F784 02A02025 */  move  $a0, $s5
/* AB6928 8003F788 0000C012 */  mflo  $t8
/* AB692C 8003F78C 02381021 */  addu  $v0, $s1, $t8
/* AB6930 8003F790 844C0000 */  lh    $t4, ($v0)
/* AB6934 8003F794 844D0002 */  lh    $t5, 2($v0)
/* AB6938 8003F798 84590004 */  lh    $t9, 4($v0)
/* AB693C 8003F79C 448C2000 */  mtc1  $t4, $f4
/* AB6940 8003F7A0 448D4000 */  mtc1  $t5, $f8
/* AB6944 8003F7A4 468021A0 */  cvt.s.w $f6, $f4
/* AB6948 8003F7A8 46804120 */  cvt.s.w $f4, $f8
/* AB694C 8003F7AC 46068282 */  mul.s $f10, $f16, $f6
/* AB6950 8003F7B0 44994000 */  mtc1  $t9, $f8
/* AB6954 8003F7B4 46049402 */  mul.s $f16, $f18, $f4
/* AB6958 8003F7B8 C7A400B4 */  lwc1  $f4, 0xb4($sp)
/* AB695C 8003F7BC 468044A0 */  cvt.s.w $f18, $f8
/* AB6960 8003F7C0 46105180 */  add.s $f6, $f10, $f16
/* AB6964 8003F7C4 46049282 */  mul.s $f10, $f18, $f4
/* AB6968 8003F7C8 44812000 */  mtc1  $at, $f4
/* AB696C 8003F7CC 3C018014 */  lui   $at, %hi(D_80138FA8)
/* AB6970 8003F7D0 46065400 */  add.s $f16, $f10, $f6
/* AB6974 8003F7D4 46008207 */  neg.s $f8, $f16
/* AB6978 8003F7D8 4600448D */  trunc.w.s $f18, $f8
/* AB697C 8003F7DC 440E9000 */  mfc1  $t6, $f18
/* AB6980 8003F7E0 00000000 */  nop
/* AB6984 8003F7E4 A60E000E */  sh    $t6, 0xe($s0)
/* AB6988 8003F7E8 C7AA00B0 */  lwc1  $f10, 0xb0($sp)
/* AB698C 8003F7EC 8FAA0178 */  lw    $t2, 0x178($sp)
/* AB6990 8003F7F0 C7A600B0 */  lwc1  $f6, 0xb0($sp)
/* AB6994 8003F7F4 460A203C */  c.lt.s $f4, $f10
/* AB6998 8003F7F8 00000000 */  nop
/* AB699C 8003F7FC 45000009 */  bc1f  .L8003F824
/* AB69A0 8003F800 00000000 */   nop
/* AB69A4 8003F804 8D4B0000 */  lw    $t3, ($t2)
/* AB69A8 8003F808 26850012 */  addiu $a1, $s4, 0x12
/* AB69AC 8003F80C 27A60076 */  addiu $a2, $sp, 0x76
/* AB69B0 8003F810 01737821 */  addu  $t7, $t3, $s3
/* AB69B4 8003F814 0C00E1E0 */  jal   DynaSSNodeList_SetSSListHead
/* AB69B8 8003F818 A7AF0076 */   sh    $t7, 0x76($sp)
/* AB69BC 8003F81C 10000018 */  b     .L8003F880
/* AB69C0 8003F820 97C20014 */   lhu   $v0, 0x14($fp)
.L8003F824:
/* AB69C4 8003F824 C4308FA8 */  lwc1  $f16, %lo(D_80138FA8)($at)
/* AB69C8 8003F828 8FB80178 */  lw    $t8, 0x178($sp)
/* AB69CC 8003F82C 2685000E */  addiu $a1, $s4, 0xe
/* AB69D0 8003F830 4610303C */  c.lt.s $f6, $f16
/* AB69D4 8003F834 8FB90178 */  lw    $t9, 0x178($sp)
/* AB69D8 8003F838 02A02025 */  move  $a0, $s5
/* AB69DC 8003F83C 4502000A */  bc1fl .L8003F868
/* AB69E0 8003F840 8F290000 */   lw    $t1, ($t9)
/* AB69E4 8003F844 8F0C0000 */  lw    $t4, ($t8)
/* AB69E8 8003F848 02A02025 */  move  $a0, $s5
/* AB69EC 8003F84C 27A60074 */  addiu $a2, $sp, 0x74
/* AB69F0 8003F850 01936821 */  addu  $t5, $t4, $s3
/* AB69F4 8003F854 0C00E1E0 */  jal   DynaSSNodeList_SetSSListHead
/* AB69F8 8003F858 A7AD0074 */   sh    $t5, 0x74($sp)
/* AB69FC 8003F85C 10000008 */  b     .L8003F880
/* AB6A00 8003F860 97C20014 */   lhu   $v0, 0x14($fp)
/* AB6A04 8003F864 8F290000 */  lw    $t1, ($t9)
.L8003F868:
/* AB6A08 8003F868 26850010 */  addiu $a1, $s4, 0x10
/* AB6A0C 8003F86C 27A60072 */  addiu $a2, $sp, 0x72
/* AB6A10 8003F870 01337021 */  addu  $t6, $t1, $s3
/* AB6A14 8003F874 0C00E1E0 */  jal   DynaSSNodeList_SetSSListHead
/* AB6A18 8003F878 A7AE0072 */   sh    $t6, 0x72($sp)
/* AB6A1C 8003F87C 97C20014 */  lhu   $v0, 0x14($fp)
.L8003F880:
/* AB6A20 8003F880 26730001 */  addiu $s3, $s3, 1
/* AB6A24 8003F884 26D60010 */  addiu $s6, $s6, 0x10
/* AB6A28 8003F888 0262082A */  slt   $at, $s3, $v0
/* AB6A2C 8003F88C 5420FF08 */  bnezl $at, .L8003F4B0
/* AB6A30 8003F890 8FB80178 */   lw    $t8, 0x178($sp)
/* AB6A34 8003F894 8FAA0178 */  lw    $t2, 0x178($sp)
.L8003F898:
/* AB6A38 8003F898 8D4B0000 */  lw    $t3, ($t2)
/* AB6A3C 8003F89C 01627821 */  addu  $t7, $t3, $v0
/* AB6A40 8003F8A0 AD4F0000 */  sw    $t7, ($t2)
/* AB6A44 8003F8A4 8FB80174 */  lw    $t8, 0x174($sp)
/* AB6A48 8003F8A8 97CD000C */  lhu   $t5, 0xc($fp)
/* AB6A4C 8003F8AC 8F0C0000 */  lw    $t4, ($t8)
/* AB6A50 8003F8B0 018DC821 */  addu  $t9, $t4, $t5
/* AB6A54 8003F8B4 AF190000 */  sw    $t9, ($t8)
.L8003F8B8:
/* AB6A58 8003F8B8 8FBF005C */  lw    $ra, 0x5c($sp)
.L8003F8BC:
/* AB6A5C 8003F8BC D7B40030 */  ldc1  $f20, 0x30($sp)
/* AB6A60 8003F8C0 8FB00038 */  lw    $s0, 0x38($sp)
/* AB6A64 8003F8C4 8FB1003C */  lw    $s1, 0x3c($sp)
/* AB6A68 8003F8C8 8FB20040 */  lw    $s2, 0x40($sp)
/* AB6A6C 8003F8CC 8FB30044 */  lw    $s3, 0x44($sp)
/* AB6A70 8003F8D0 8FB40048 */  lw    $s4, 0x48($sp)
/* AB6A74 8003F8D4 8FB5004C */  lw    $s5, 0x4c($sp)
/* AB6A78 8003F8D8 8FB60050 */  lw    $s6, 0x50($sp)
/* AB6A7C 8003F8DC 8FB70054 */  lw    $s7, 0x54($sp)
/* AB6A80 8003F8E0 8FBE0058 */  lw    $fp, 0x58($sp)
/* AB6A84 8003F8E4 03E00008 */  jr    $ra
/* AB6A88 8003F8E8 27BD0168 */   addiu $sp, $sp, 0x168

