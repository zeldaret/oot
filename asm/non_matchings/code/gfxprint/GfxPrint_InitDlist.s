glabel GfxPrint_InitDlist
/* B72100 800FAF60 27BDFFF0 */  addiu $sp, $sp, -0x10
/* B72104 800FAF64 AFB1000C */  sw    $s1, 0xc($sp)
/* B72108 800FAF68 AFB00008 */  sw    $s0, 8($sp)
/* B7210C 800FAF6C 8C820004 */  lw    $v0, 4($a0)
/* B72110 800FAF70 3C06E700 */  lui   $a2, 0xe700
/* B72114 800FAF74 3C18EF00 */  lui   $t8, (0xEF00ECF0 >> 16) # lui $t8, 0xef00
/* B72118 800FAF78 244E0008 */  addiu $t6, $v0, 8
/* B7211C 800FAF7C AC8E0004 */  sw    $t6, 4($a0)
/* B72120 800FAF80 AC400004 */  sw    $zero, 4($v0)
/* B72124 800FAF84 AC460000 */  sw    $a2, ($v0)
/* B72128 800FAF88 8C820004 */  lw    $v0, 4($a0)
/* B7212C 800FAF8C 3C190050 */  lui   $t9, (0x00504244 >> 16) # lui $t9, 0x50
/* B72130 800FAF90 37394244 */  ori   $t9, (0x00504244 & 0xFFFF) # ori $t9, $t9, 0x4244
/* B72134 800FAF94 244F0008 */  addiu $t7, $v0, 8
/* B72138 800FAF98 AC8F0004 */  sw    $t7, 4($a0)
/* B7213C 800FAF9C 3718ECF0 */  ori   $t8, (0xEF00ECF0 & 0xFFFF) # ori $t8, $t8, 0xecf0
/* B72140 800FAFA0 AC580000 */  sw    $t8, ($v0)
/* B72144 800FAFA4 AC590004 */  sw    $t9, 4($v0)
/* B72148 800FAFA8 8C820004 */  lw    $v0, 4($a0)
/* B7214C 800FAFAC 3C18FFFC */  lui   $t8, (0xFFFCF279 >> 16) # lui $t8, 0xfffc
/* B72150 800FAFB0 3C0FFCFF */  lui   $t7, (0xFCFFFFFF >> 16) # lui $t7, 0xfcff
/* B72154 800FAFB4 244E0008 */  addiu $t6, $v0, 8
/* B72158 800FAFB8 AC8E0004 */  sw    $t6, 4($a0)
/* B7215C 800FAFBC 35EFFFFF */  ori   $t7, (0xFCFFFFFF & 0xFFFF) # ori $t7, $t7, 0xffff
/* B72160 800FAFC0 3718F279 */  ori   $t8, (0xFFFCF279 & 0xFFFF) # ori $t8, $t8, 0xf279
/* B72164 800FAFC4 AC580004 */  sw    $t8, 4($v0)
/* B72168 800FAFC8 AC4F0000 */  sw    $t7, ($v0)
/* B7216C 800FAFCC 8C820004 */  lw    $v0, 4($a0)
/* B72170 800FAFD0 3C0F8013 */  lui   $t7, %hi(sGfxPrintFontData) # $t7, 0x8013
/* B72174 800FAFD4 25EF3C78 */  addiu $t7, %lo(sGfxPrintFontData) # addiu $t7, $t7, 0x3c78
/* B72178 800FAFD8 24590008 */  addiu $t9, $v0, 8
/* B7217C 800FAFDC AC990004 */  sw    $t9, 4($a0)
/* B72180 800FAFE0 3C0EFD50 */  lui   $t6, 0xfd50
/* B72184 800FAFE4 AC4E0000 */  sw    $t6, ($v0)
/* B72188 800FAFE8 AC4F0004 */  sw    $t7, 4($v0)
/* B7218C 800FAFEC 8C820004 */  lw    $v0, 4($a0)
/* B72190 800FAFF0 3C19F550 */  lui   $t9, 0xf550
/* B72194 800FAFF4 24050001 */  li    $a1, 1
/* B72198 800FAFF8 24580008 */  addiu $t8, $v0, 8
/* B7219C 800FAFFC AC980004 */  sw    $t8, 4($a0)
/* B721A0 800FB000 AC590000 */  sw    $t9, ($v0)
/* B721A4 800FB004 24B907FF */  addiu $t9, $a1, 0x7ff
/* B721A8 800FB008 24090001 */  li    $t1, 1
/* B721AC 800FB00C 0329001A */  div   $zero, $t9, $t1
/* B721B0 800FB010 3C070700 */  lui   $a3, 0x700
/* B721B4 800FB014 AC470004 */  sw    $a3, 4($v0)
/* B721B8 800FB018 8C820004 */  lw    $v0, 4($a0)
/* B721BC 800FB01C 3C08E600 */  lui   $t0, 0xe600
/* B721C0 800FB020 3C18F300 */  lui   $t8, 0xf300
/* B721C4 800FB024 244E0008 */  addiu $t6, $v0, 8
/* B721C8 800FB028 AC8E0004 */  sw    $t6, 4($a0)
/* B721CC 800FB02C AC400004 */  sw    $zero, 4($v0)
/* B721D0 800FB030 AC480000 */  sw    $t0, ($v0)
/* B721D4 800FB034 8C820004 */  lw    $v0, 4($a0)
/* B721D8 800FB038 00007012 */  mflo  $t6
/* B721DC 800FB03C 3C05F540 */  lui   $a1, (0xF5400200 >> 16) # lui $a1, 0xf540
/* B721E0 800FB040 244F0008 */  addiu $t7, $v0, 8
/* B721E4 800FB044 AC8F0004 */  sw    $t7, 4($a0)
/* B721E8 800FB048 AC580000 */  sw    $t8, ($v0)
/* B721EC 800FB04C 00401825 */  move  $v1, $v0
/* B721F0 800FB050 240203FF */  li    $v0, 1023
/* B721F4 800FB054 15200002 */  bnez  $t1, .L800FB060
/* B721F8 800FB058 00000000 */   nop   
/* B721FC 800FB05C 0007000D */  break 7
.L800FB060:
/* B72200 800FB060 2401FFFF */  li    $at, -1
/* B72204 800FB064 15210004 */  bne   $t1, $at, .L800FB078
/* B72208 800FB068 3C018000 */   lui   $at, 0x8000
/* B7220C 800FB06C 17210002 */  bne   $t9, $at, .L800FB078
/* B72210 800FB070 00000000 */   nop   
/* B72214 800FB074 0006000D */  break 6
.L800FB078:
/* B72218 800FB078 31CF0FFF */  andi  $t7, $t6, 0xfff
/* B7221C 800FB07C 30590FFF */  andi  $t9, $v0, 0xfff
/* B72220 800FB080 00197300 */  sll   $t6, $t9, 0xc
/* B72224 800FB084 01E7C025 */  or    $t8, $t7, $a3
/* B72228 800FB088 030E7825 */  or    $t7, $t8, $t6
/* B7222C 800FB08C AC6F0004 */  sw    $t7, 4($v1)
/* B72230 800FB090 8C820004 */  lw    $v0, 4($a0)
/* B72234 800FB094 34A50200 */  ori   $a1, (0xF5400200 & 0xFFFF) # ori $a1, $a1, 0x200
/* B72238 800FB098 3C0F0003 */  lui   $t7, (0x0003C3FC >> 16) # lui $t7, 3
/* B7223C 800FB09C 24590008 */  addiu $t9, $v0, 8
/* B72240 800FB0A0 AC990004 */  sw    $t9, 4($a0)
/* B72244 800FB0A4 AC400004 */  sw    $zero, 4($v0)
/* B72248 800FB0A8 AC460000 */  sw    $a2, ($v0)
/* B7224C 800FB0AC 8C820004 */  lw    $v0, 4($a0)
/* B72250 800FB0B0 35EFC3FC */  ori   $t7, (0x0003C3FC & 0xFFFF) # ori $t7, $t7, 0xc3fc
/* B72254 800FB0B4 3C03F200 */  lui   $v1, 0xf200
/* B72258 800FB0B8 24580008 */  addiu $t8, $v0, 8
/* B7225C 800FB0BC AC980004 */  sw    $t8, 4($a0)
/* B72260 800FB0C0 AC400004 */  sw    $zero, 4($v0)
/* B72264 800FB0C4 AC450000 */  sw    $a1, ($v0)
/* B72268 800FB0C8 8C820004 */  lw    $v0, 4($a0)
/* B7226C 800FB0CC 3C188013 */  lui   $t8, %hi(sGfxPrintFontTLUT) # $t8, 0x8013
/* B72270 800FB0D0 27183BD0 */  addiu $t8, %lo(sGfxPrintFontTLUT) # addiu $t8, $t8, 0x3bd0
/* B72274 800FB0D4 244E0008 */  addiu $t6, $v0, 8
/* B72278 800FB0D8 AC8E0004 */  sw    $t6, 4($a0)
/* B7227C 800FB0DC AC4F0004 */  sw    $t7, 4($v0)
/* B72280 800FB0E0 AC430000 */  sw    $v1, ($v0)
/* B72284 800FB0E4 8C820004 */  lw    $v0, 4($a0)
/* B72288 800FB0E8 3C09FD10 */  lui   $t1, 0xfd10
/* B7228C 800FB0EC 3C0AE800 */  lui   $t2, 0xe800
/* B72290 800FB0F0 24590008 */  addiu $t9, $v0, 8
/* B72294 800FB0F4 AC990004 */  sw    $t9, 4($a0)
/* B72298 800FB0F8 AC580004 */  sw    $t8, 4($v0)
/* B7229C 800FB0FC AC490000 */  sw    $t1, ($v0)
/* B722A0 800FB100 8C820004 */  lw    $v0, 4($a0)
/* B722A4 800FB104 3C19F500 */  lui   $t9, (0xF5000100 >> 16) # lui $t9, 0xf500
/* B722A8 800FB108 37390100 */  ori   $t9, (0xF5000100 & 0xFFFF) # ori $t9, $t9, 0x100
/* B722AC 800FB10C 244E0008 */  addiu $t6, $v0, 8
/* B722B0 800FB110 AC8E0004 */  sw    $t6, 4($a0)
/* B722B4 800FB114 AC400004 */  sw    $zero, 4($v0)
/* B722B8 800FB118 AC4A0000 */  sw    $t2, ($v0)
/* B722BC 800FB11C 8C820004 */  lw    $v0, 4($a0)
/* B722C0 800FB120 3C0BF000 */  lui   $t3, 0xf000
/* B722C4 800FB124 24100002 */  li    $s0, 2
/* B722C8 800FB128 244F0008 */  addiu $t7, $v0, 8
/* B722CC 800FB12C AC8F0004 */  sw    $t7, 4($a0)
/* B722D0 800FB130 AC470004 */  sw    $a3, 4($v0)
/* B722D4 800FB134 AC590000 */  sw    $t9, ($v0)
/* B722D8 800FB138 8C820004 */  lw    $v0, 4($a0)
/* B722DC 800FB13C 3C0F070F */  lui   $t7, (0x070FC000 >> 16) # lui $t7, 0x70f
/* B722E0 800FB140 35EFC000 */  ori   $t7, (0x070FC000 & 0xFFFF) # ori $t7, $t7, 0xc000
/* B722E4 800FB144 24580008 */  addiu $t8, $v0, 8
/* B722E8 800FB148 AC980004 */  sw    $t8, 4($a0)
/* B722EC 800FB14C AC400004 */  sw    $zero, 4($v0)
/* B722F0 800FB150 AC480000 */  sw    $t0, ($v0)
/* B722F4 800FB154 8C820004 */  lw    $v0, 4($a0)
/* B722F8 800FB158 240C0001 */  li    $t4, 1
/* B722FC 800FB15C 244E0008 */  addiu $t6, $v0, 8
/* B72300 800FB160 AC8E0004 */  sw    $t6, 4($a0)
/* B72304 800FB164 AC4F0004 */  sw    $t7, 4($v0)
/* B72308 800FB168 AC4B0000 */  sw    $t3, ($v0)
/* B7230C 800FB16C 8C820004 */  lw    $v0, 4($a0)
/* B72310 800FB170 24590008 */  addiu $t9, $v0, 8
/* B72314 800FB174 AC990004 */  sw    $t9, 4($a0)
/* B72318 800FB178 AC400004 */  sw    $zero, 4($v0)
/* B7231C 800FB17C AC460000 */  sw    $a2, ($v0)
.L800FB180:
/* B72320 800FB180 8C820004 */  lw    $v0, 4($a0)
/* B72324 800FB184 32110007 */  andi  $s1, $s0, 7
/* B72328 800FB188 318E000F */  andi  $t6, $t4, 0xf
/* B7232C 800FB18C 24580008 */  addiu $t8, $v0, 8
/* B72330 800FB190 AC980004 */  sw    $t8, 4($a0)
/* B72334 800FB194 000E7D00 */  sll   $t7, $t6, 0x14
/* B72338 800FB198 00118E00 */  sll   $s1, $s1, 0x18
/* B7233C 800FB19C 022FC825 */  or    $t9, $s1, $t7
/* B72340 800FB1A0 AC590004 */  sw    $t9, 4($v0)
/* B72344 800FB1A4 AC450000 */  sw    $a1, ($v0)
/* B72348 800FB1A8 8C820004 */  lw    $v0, 4($a0)
/* B7234C 800FB1AC 3C010003 */  lui   $at, (0x0003C000 >> 16) # lui $at, 3
/* B72350 800FB1B0 3421C000 */  ori   $at, (0x0003C000 & 0xFFFF) # ori $at, $at, 0xc000
/* B72354 800FB1B4 02217025 */  or    $t6, $s1, $at
/* B72358 800FB1B8 258C0001 */  addiu $t4, $t4, 1
/* B7235C 800FB1BC 24580008 */  addiu $t8, $v0, 8
/* B72360 800FB1C0 29810004 */  slti  $at, $t4, 4
/* B72364 800FB1C4 AC980004 */  sw    $t8, 4($a0)
/* B72368 800FB1C8 35CF03FC */  ori   $t7, $t6, 0x3fc
/* B7236C 800FB1CC 26100002 */  addiu $s0, $s0, 2
/* B72370 800FB1D0 AC4F0004 */  sw    $t7, 4($v0)
/* B72374 800FB1D4 1420FFEA */  bnez  $at, .L800FB180
/* B72378 800FB1D8 AC430000 */   sw    $v1, ($v0)
/* B7237C 800FB1DC 8C820004 */  lw    $v0, 4($a0)
/* B72380 800FB1E0 3C18FA00 */  lui   $t8, 0xfa00
/* B72384 800FB1E4 24590008 */  addiu $t9, $v0, 8
/* B72388 800FB1E8 AC990004 */  sw    $t9, 4($a0)
/* B7238C 800FB1EC AC580000 */  sw    $t8, ($v0)
/* B72390 800FB1F0 8C8E0010 */  lw    $t6, 0x10($a0)
/* B72394 800FB1F4 3C188013 */  lui   $t8, %hi(sGfxPrintUnkData) # $t8, 0x8013
/* B72398 800FB1F8 27183C70 */  addiu $t8, %lo(sGfxPrintUnkData) # addiu $t8, $t8, 0x3c70
/* B7239C 800FB1FC AC4E0004 */  sw    $t6, 4($v0)
/* B723A0 800FB200 8C820004 */  lw    $v0, 4($a0)
/* B723A4 800FB204 3C19FD48 */  lui   $t9, 0xfd48
/* B723A8 800FB208 244F0008 */  addiu $t7, $v0, 8
/* B723AC 800FB20C AC8F0004 */  sw    $t7, 4($a0)
/* B723B0 800FB210 AC580004 */  sw    $t8, 4($v0)
/* B723B4 800FB214 AC590000 */  sw    $t9, ($v0)
/* B723B8 800FB218 8C820004 */  lw    $v0, 4($a0)
/* B723BC 800FB21C 3C190700 */  lui   $t9, (0x0700C010 >> 16) # lui $t9, 0x700
/* B723C0 800FB220 3C0FF548 */  lui   $t7, (0xF5480200 >> 16) # lui $t7, 0xf548
/* B723C4 800FB224 244E0008 */  addiu $t6, $v0, 8
/* B723C8 800FB228 AC8E0004 */  sw    $t6, 4($a0)
/* B723CC 800FB22C 35EF0200 */  ori   $t7, (0xF5480200 & 0xFFFF) # ori $t7, $t7, 0x200
/* B723D0 800FB230 3739C010 */  ori   $t9, (0x0700C010 & 0xFFFF) # ori $t9, $t9, 0xc010
/* B723D4 800FB234 AC590004 */  sw    $t9, 4($v0)
/* B723D8 800FB238 AC4F0000 */  sw    $t7, ($v0)
/* B723DC 800FB23C 8C820004 */  lw    $v0, 4($a0)
/* B723E0 800FB240 3C190700 */  lui   $t9, (0x0700201C >> 16) # lui $t9, 0x700
/* B723E4 800FB244 3739201C */  ori   $t9, (0x0700201C & 0xFFFF) # ori $t9, $t9, 0x201c
/* B723E8 800FB248 24580008 */  addiu $t8, $v0, 8
/* B723EC 800FB24C AC980004 */  sw    $t8, 4($a0)
/* B723F0 800FB250 AC400004 */  sw    $zero, 4($v0)
/* B723F4 800FB254 AC480000 */  sw    $t0, ($v0)
/* B723F8 800FB258 8C820004 */  lw    $v0, 4($a0)
/* B723FC 800FB25C 3C0FF400 */  lui   $t7, 0xf400
/* B72400 800FB260 244E0008 */  addiu $t6, $v0, 8
/* B72404 800FB264 AC8E0004 */  sw    $t6, 4($a0)
/* B72408 800FB268 AC590004 */  sw    $t9, 4($v0)
/* B7240C 800FB26C AC4F0000 */  sw    $t7, ($v0)
/* B72410 800FB270 8C820004 */  lw    $v0, 4($a0)
/* B72414 800FB274 3C0F0140 */  lui   $t7, (0x0140C010 >> 16) # lui $t7, 0x140
/* B72418 800FB278 35EFC010 */  ori   $t7, (0x0140C010 & 0xFFFF) # ori $t7, $t7, 0xc010
/* B7241C 800FB27C 24580008 */  addiu $t8, $v0, 8
/* B72420 800FB280 AC980004 */  sw    $t8, 4($a0)
/* B72424 800FB284 AC400004 */  sw    $zero, 4($v0)
/* B72428 800FB288 AC460000 */  sw    $a2, ($v0)
/* B7242C 800FB28C 8C820004 */  lw    $v0, 4($a0)
/* B72430 800FB290 3C180100 */  lui   $t8, (0x0100401C >> 16) # lui $t8, 0x100
/* B72434 800FB294 3718401C */  ori   $t8, (0x0100401C & 0xFFFF) # ori $t8, $t8, 0x401c
/* B72438 800FB298 244E0008 */  addiu $t6, $v0, 8
/* B7243C 800FB29C AC8E0004 */  sw    $t6, 4($a0)
/* B72440 800FB2A0 AC4F0004 */  sw    $t7, 4($v0)
/* B72444 800FB2A4 AC450000 */  sw    $a1, ($v0)
/* B72448 800FB2A8 8C820004 */  lw    $v0, 4($a0)
/* B7244C 800FB2AC 3C0F8013 */  lui   $t7, %hi(sGfxPrintUnkTLUT) # $t7, 0x8013
/* B72450 800FB2B0 25EF3C50 */  addiu $t7, %lo(sGfxPrintUnkTLUT) # addiu $t7, $t7, 0x3c50
/* B72454 800FB2B4 24590008 */  addiu $t9, $v0, 8
/* B72458 800FB2B8 AC990004 */  sw    $t9, 4($a0)
/* B7245C 800FB2BC AC580004 */  sw    $t8, 4($v0)
/* B72460 800FB2C0 AC430000 */  sw    $v1, ($v0)
/* B72464 800FB2C4 8C820004 */  lw    $v0, 4($a0)
/* B72468 800FB2C8 244E0008 */  addiu $t6, $v0, 8
/* B7246C 800FB2CC AC8E0004 */  sw    $t6, 4($a0)
/* B72470 800FB2D0 AC4F0004 */  sw    $t7, 4($v0)
/* B72474 800FB2D4 AC490000 */  sw    $t1, ($v0)
/* B72478 800FB2D8 8C820004 */  lw    $v0, 4($a0)
/* B7247C 800FB2DC 3C0EF500 */  lui   $t6, (0xF5000140 >> 16) # lui $t6, 0xf500
/* B72480 800FB2E0 35CE0140 */  ori   $t6, (0xF5000140 & 0xFFFF) # ori $t6, $t6, 0x140
/* B72484 800FB2E4 24590008 */  addiu $t9, $v0, 8
/* B72488 800FB2E8 AC990004 */  sw    $t9, 4($a0)
/* B7248C 800FB2EC AC400004 */  sw    $zero, 4($v0)
/* B72490 800FB2F0 AC4A0000 */  sw    $t2, ($v0)
/* B72494 800FB2F4 8C820004 */  lw    $v0, 4($a0)
/* B72498 800FB2F8 240A0009 */  li    $t2, 9
/* B7249C 800FB2FC 3C090040 */  lui   $t1, 0x40
/* B724A0 800FB300 24580008 */  addiu $t8, $v0, 8
/* B724A4 800FB304 AC980004 */  sw    $t8, 4($a0)
/* B724A8 800FB308 AC470004 */  sw    $a3, 4($v0)
/* B724AC 800FB30C AC4E0000 */  sw    $t6, ($v0)
/* B724B0 800FB310 8C820004 */  lw    $v0, 4($a0)
/* B724B4 800FB314 3C180703 */  lui   $t8, (0x0703C000 >> 16) # lui $t8, 0x703
/* B724B8 800FB318 3718C000 */  ori   $t8, (0x0703C000 & 0xFFFF) # ori $t8, $t8, 0xc000
/* B724BC 800FB31C 244F0008 */  addiu $t7, $v0, 8
/* B724C0 800FB320 AC8F0004 */  sw    $t7, 4($a0)
/* B724C4 800FB324 AC400004 */  sw    $zero, 4($v0)
/* B724C8 800FB328 AC480000 */  sw    $t0, ($v0)
/* B724CC 800FB32C 8C820004 */  lw    $v0, 4($a0)
/* B724D0 800FB330 24070003 */  li    $a3, 3
/* B724D4 800FB334 24590008 */  addiu $t9, $v0, 8
/* B724D8 800FB338 AC990004 */  sw    $t9, 4($a0)
/* B724DC 800FB33C AC580004 */  sw    $t8, 4($v0)
/* B724E0 800FB340 AC4B0000 */  sw    $t3, ($v0)
/* B724E4 800FB344 8C820004 */  lw    $v0, 4($a0)
/* B724E8 800FB348 244E0008 */  addiu $t6, $v0, 8
/* B724EC 800FB34C AC8E0004 */  sw    $t6, 4($a0)
/* B724F0 800FB350 AC400004 */  sw    $zero, 4($v0)
/* B724F4 800FB354 AC460000 */  sw    $a2, ($v0)
.L800FB358:
/* B724F8 800FB358 8C820004 */  lw    $v0, 4($a0)
/* B724FC 800FB35C 30E80007 */  andi  $t0, $a3, 7
/* B72500 800FB360 00084600 */  sll   $t0, $t0, 0x18
/* B72504 800FB364 244F0008 */  addiu $t7, $v0, 8
/* B72508 800FB368 AC8F0004 */  sw    $t7, 4($a0)
/* B7250C 800FB36C 0109C825 */  or    $t9, $t0, $t1
/* B72510 800FB370 372EC010 */  ori   $t6, $t9, 0xc010
/* B72514 800FB374 AC4E0004 */  sw    $t6, 4($v0)
/* B72518 800FB378 AC450000 */  sw    $a1, ($v0)
/* B7251C 800FB37C 8C820004 */  lw    $v0, 4($a0)
/* B72520 800FB380 24E70002 */  addiu $a3, $a3, 2
/* B72524 800FB384 3518401C */  ori   $t8, $t0, 0x401c
/* B72528 800FB388 244F0008 */  addiu $t7, $v0, 8
/* B7252C 800FB38C AC8F0004 */  sw    $t7, 4($a0)
/* B72530 800FB390 AC580004 */  sw    $t8, 4($v0)
/* B72534 800FB394 14EAFFF0 */  bne   $a3, $t2, .L800FB358
/* B72538 800FB398 AC430000 */   sw    $v1, ($v0)
/* B7253C 800FB39C 8FB00008 */  lw    $s0, 8($sp)
/* B72540 800FB3A0 8FB1000C */  lw    $s1, 0xc($sp)
/* B72544 800FB3A4 03E00008 */  jr    $ra
/* B72548 800FB3A8 27BD0010 */   addiu $sp, $sp, 0x10