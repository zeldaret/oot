.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

.align 4

glabel func_800DDE20
/* B54FC0 800DDE20 3C014380 */  li    $at, 0x43800000 # 0.000000
/* B54FC4 800DDE24 44812000 */  mtc1  $at, $f4
/* B54FC8 800DDE28 3C018017 */  lui   $at, %hi(D_801719E8)
/* B54FCC 800DDE2C C42619E8 */  lwc1  $f6, %lo(D_801719E8)($at)
/* B54FD0 800DDE30 46062202 */  mul.s $f8, $f4, $f6
/* B54FD4 800DDE34 03E00008 */  jr    $ra
/* B54FD8 800DDE38 460C4003 */   div.s $f0, $f8, $f12

glabel func_800DDE3C
/* B54FDC 800DDE3C 27BDFFD8 */  addiu $sp, $sp, -0x28
/* B54FE0 800DDE40 3C013E80 */  li    $at, 0x3E800000 # 0.000000
/* B54FE4 800DDE44 AFBF0024 */  sw    $ra, 0x24($sp)
/* B54FE8 800DDE48 44816000 */  mtc1  $at, $f12
/* B54FEC 800DDE4C AFB30020 */  sw    $s3, 0x20($sp)
/* B54FF0 800DDE50 AFB2001C */  sw    $s2, 0x1c($sp)
/* B54FF4 800DDE54 AFB10018 */  sw    $s1, 0x18($sp)
/* B54FF8 800DDE58 0C037788 */  jal   func_800DDE20
/* B54FFC 800DDE5C AFB00014 */   sw    $s0, 0x14($sp)
/* B55000 800DDE60 3C138017 */  lui   $s3, %hi(gAudioContext) # $s3, 0x8017
/* B55004 800DDE64 2673F180 */  addiu $s3, %lo(gAudioContext) # addiu $s3, $s3, -0xe80
/* B55008 800DDE68 8E6E3520 */  lw    $t6, 0x3520($s3)
/* B5500C 800DDE6C 3C018015 */  lui   $at, %hi(D_801493F0)
/* B55010 800DDE70 E5C003FC */  swc1  $f0, 0x3fc($t6)
/* B55014 800DDE74 0C037788 */  jal   func_800DDE20
/* B55018 800DDE78 C42C93F0 */   lwc1  $f12, %lo(D_801493F0)($at)
/* B5501C 800DDE7C 8E6F3520 */  lw    $t7, 0x3520($s3)
/* B55020 800DDE80 3C013F00 */  li    $at, 0x3F000000 # 0.000000
/* B55024 800DDE84 44816000 */  mtc1  $at, $f12
/* B55028 800DDE88 0C037788 */  jal   func_800DDE20
/* B5502C 800DDE8C E5E003F8 */   swc1  $f0, 0x3f8($t7)
/* B55030 800DDE90 8E783520 */  lw    $t8, 0x3520($s3)
/* B55034 800DDE94 3C018015 */  lui   $at, %hi(D_801493F4)
/* B55038 800DDE98 E70003F4 */  swc1  $f0, 0x3f4($t8)
/* B5503C 800DDE9C 0C037788 */  jal   func_800DDE20
/* B55040 800DDEA0 C42C93F4 */   lwc1  $f12, %lo(D_801493F4)($at)
/* B55044 800DDEA4 8E793520 */  lw    $t9, 0x3520($s3)
/* B55048 800DDEA8 3C013F40 */  li    $at, 0x3F400000 # 0.000000
/* B5504C 800DDEAC 44816000 */  mtc1  $at, $f12
/* B55050 800DDEB0 0C037788 */  jal   func_800DDE20
/* B55054 800DDEB4 E72003F0 */   swc1  $f0, 0x3f0($t9)
/* B55058 800DDEB8 8E683520 */  lw    $t0, 0x3520($s3)
/* B5505C 800DDEBC 24110080 */  li    $s1, 128
/* B55060 800DDEC0 24100200 */  li    $s0, 512
/* B55064 800DDEC4 241200FB */  li    $s2, 251
/* B55068 800DDEC8 E50003EC */  swc1  $f0, 0x3ec($t0)
.L800DDECC:
/* B5506C 800DDECC 02514823 */  subu  $t1, $s2, $s1
/* B55070 800DDED0 44892000 */  mtc1  $t1, $f4
/* B55074 800DDED4 0C037788 */  jal   func_800DDE20
/* B55078 800DDED8 46802320 */   cvt.s.w $f12, $f4
/* B5507C 800DDEDC 8E6A3520 */  lw    $t2, 0x3520($s3)
/* B55080 800DDEE0 26310001 */  addiu $s1, $s1, 1
/* B55084 800DDEE4 2A2100FB */  slti  $at, $s1, 0xfb
/* B55088 800DDEE8 01505821 */  addu  $t3, $t2, $s0
/* B5508C 800DDEEC 26100004 */  addiu $s0, $s0, 4
/* B55090 800DDEF0 1420FFF6 */  bnez  $at, .L800DDECC
/* B55094 800DDEF4 E5600000 */   swc1  $f0, ($t3)
/* B55098 800DDEF8 24100040 */  li    $s0, 64
/* B5509C 800DDEFC 241201FC */  li    $s2, 508
.L800DDF00:
/* B550A0 800DDF00 44923000 */  mtc1  $s2, $f6
/* B550A4 800DDF04 0C037788 */  jal   func_800DDE20
/* B550A8 800DDF08 46803320 */   cvt.s.w $f12, $f6
/* B550AC 800DDF0C 8E6C3520 */  lw    $t4, 0x3520($s3)
/* B550B0 800DDF10 2652FFFC */  addiu $s2, $s2, -4
/* B550B4 800DDF14 2A41003D */  slti  $at, $s2, 0x3d
/* B550B8 800DDF18 01906821 */  addu  $t5, $t4, $s0
/* B550BC 800DDF1C 26100004 */  addiu $s0, $s0, 4
/* B550C0 800DDF20 1020FFF7 */  beqz  $at, .L800DDF00
/* B550C4 800DDF24 E5A00000 */   swc1  $f0, ($t5)
/* B550C8 800DDF28 24100004 */  li    $s0, 4
/* B550CC 800DDF2C 24120528 */  li    $s2, 1320
/* B550D0 800DDF30 241101A4 */  li    $s1, 420
.L800DDF34:
/* B550D4 800DDF34 44924000 */  mtc1  $s2, $f8
/* B550D8 800DDF38 0C037788 */  jal   func_800DDE20
/* B550DC 800DDF3C 46804320 */   cvt.s.w $f12, $f8
/* B550E0 800DDF40 8E6E3520 */  lw    $t6, 0x3520($s3)
/* B550E4 800DDF44 2652FFC4 */  addiu $s2, $s2, -0x3c
/* B550E8 800DDF48 01D07821 */  addu  $t7, $t6, $s0
/* B550EC 800DDF4C 26100004 */  addiu $s0, $s0, 4
/* B550F0 800DDF50 1632FFF8 */  bne   $s1, $s2, .L800DDF34
/* B550F4 800DDF54 E5E00000 */   swc1  $f0, ($t7)
/* B550F8 800DDF58 44805000 */  mtc1  $zero, $f10
/* B550FC 800DDF5C 8E783520 */  lw    $t8, 0x3520($s3)
/* B55100 800DDF60 E70A0000 */  swc1  $f10, ($t8)
/* B55104 800DDF64 8FBF0024 */  lw    $ra, 0x24($sp)
/* B55108 800DDF68 8FB30020 */  lw    $s3, 0x20($sp)
/* B5510C 800DDF6C 8FB2001C */  lw    $s2, 0x1c($sp)
/* B55110 800DDF70 8FB10018 */  lw    $s1, 0x18($sp)
/* B55114 800DDF74 8FB00014 */  lw    $s0, 0x14($sp)
/* B55118 800DDF78 03E00008 */  jr    $ra
/* B5511C 800DDF7C 27BD0028 */   addiu $sp, $sp, 0x28

glabel func_800DDF80
/* B55120 800DDF80 3C038017 */  lui   $v1, %hi(gAudioContext) # $v1, 0x8017
/* B55124 800DDF84 3C028017 */  lui   $v0, %hi(D_8016F1B0) # $v0, 0x8017
/* B55128 800DDF88 2442F1B0 */  addiu $v0, %lo(D_8016F1B0) # addiu $v0, $v0, -0xe50
/* B5512C 800DDF8C 2463F180 */  addiu $v1, %lo(gAudioContext) # addiu $v1, $v1, -0xe80
/* B55130 800DDF90 24040005 */  li    $a0, 5
/* B55134 800DDF94 906E3468 */  lbu   $t6, 0x3468($v1)
.L800DDF98:
/* B55138 800DDF98 508E0003 */  beql  $a0, $t6, .L800DDFA8
/* B5513C 800DDF9C 24630001 */   addiu $v1, $v1, 1
/* B55140 800DDFA0 A0603468 */  sb    $zero, 0x3468($v1)
/* B55144 800DDFA4 24630001 */  addiu $v1, $v1, 1
.L800DDFA8:
/* B55148 800DDFA8 0062082B */  sltu  $at, $v1, $v0
/* B5514C 800DDFAC 5420FFFA */  bnezl $at, .L800DDF98
/* B55150 800DDFB0 906E3468 */   lbu   $t6, 0x3468($v1)
/* B55154 800DDFB4 3C038017 */  lui   $v1, %hi(gAudioContext) # $v1, 0x8017
/* B55158 800DDFB8 3C028017 */  lui   $v0, %hi(D_8016F1B0) # $v0, 0x8017
/* B5515C 800DDFBC 2442F1B0 */  addiu $v0, %lo(D_8016F1B0) # addiu $v0, $v0, -0xe50
/* B55160 800DDFC0 2463F180 */  addiu $v1, %lo(gAudioContext) # addiu $v1, $v1, -0xe80
/* B55164 800DDFC4 906F3438 */  lbu   $t7, 0x3438($v1)
.L800DDFC8:
/* B55168 800DDFC8 508F0003 */  beql  $a0, $t7, .L800DDFD8
/* B5516C 800DDFCC 24630001 */   addiu $v1, $v1, 1
/* B55170 800DDFD0 A0603438 */  sb    $zero, 0x3438($v1)
/* B55174 800DDFD4 24630001 */  addiu $v1, $v1, 1
.L800DDFD8:
/* B55178 800DDFD8 0062082B */  sltu  $at, $v1, $v0
/* B5517C 800DDFDC 5420FFFA */  bnezl $at, .L800DDFC8
/* B55180 800DDFE0 906F3438 */   lbu   $t7, 0x3438($v1)
/* B55184 800DDFE4 3C038017 */  lui   $v1, %hi(gAudioContext) # $v1, 0x8017
/* B55188 800DDFE8 3C028017 */  lui   $v0, %hi(D_8016F200) # $v0, 0x8017
/* B5518C 800DDFEC 2442F200 */  addiu $v0, %lo(D_8016F200) # addiu $v0, $v0, -0xe00
/* B55190 800DDFF0 2463F180 */  addiu $v1, %lo(gAudioContext) # addiu $v1, $v1, -0xe80
/* B55194 800DDFF4 90783498 */  lbu   $t8, 0x3498($v1)
.L800DDFF8:
/* B55198 800DDFF8 50980003 */  beql  $a0, $t8, .L800DE008
/* B5519C 800DDFFC 90793499 */   lbu   $t9, 0x3499($v1)
/* B551A0 800DE000 A0603498 */  sb    $zero, 0x3498($v1)
/* B551A4 800DE004 90793499 */  lbu   $t9, 0x3499($v1)
.L800DE008:
/* B551A8 800DE008 50990003 */  beql  $a0, $t9, .L800DE018
/* B551AC 800DE00C 9068349A */   lbu   $t0, 0x349a($v1)
/* B551B0 800DE010 A0603499 */  sb    $zero, 0x3499($v1)
/* B551B4 800DE014 9068349A */  lbu   $t0, 0x349a($v1)
.L800DE018:
/* B551B8 800DE018 50880003 */  beql  $a0, $t0, .L800DE028
/* B551BC 800DE01C 9069349B */   lbu   $t1, 0x349b($v1)
/* B551C0 800DE020 A060349A */  sb    $zero, 0x349a($v1)
/* B551C4 800DE024 9069349B */  lbu   $t1, 0x349b($v1)
.L800DE028:
/* B551C8 800DE028 50890003 */  beql  $a0, $t1, .L800DE038
/* B551CC 800DE02C 24630004 */   addiu $v1, $v1, 4
/* B551D0 800DE030 A060349B */  sb    $zero, 0x349b($v1)
/* B551D4 800DE034 24630004 */  addiu $v1, $v1, 4
.L800DE038:
/* B551D8 800DE038 5462FFEF */  bnel  $v1, $v0, .L800DDFF8
/* B551DC 800DE03C 90783498 */   lbu   $t8, 0x3498($v1)
/* B551E0 800DE040 03E00008 */  jr    $ra
/* B551E4 800DE044 00000000 */   nop   

glabel func_800DE048
/* B551E8 800DE048 27BDFFD0 */  addiu $sp, $sp, -0x30
/* B551EC 800DE04C AFB50028 */  sw    $s5, 0x28($sp)
/* B551F0 800DE050 3C158017 */  lui   $s5, %hi(gAudioContext) # $s5, 0x8017
/* B551F4 800DE054 26B5F180 */  addiu $s5, %lo(gAudioContext) # addiu $s5, $s5, -0xe80
/* B551F8 800DE058 8EA22894 */  lw    $v0, 0x2894($s5)
/* B551FC 800DE05C AFB40024 */  sw    $s4, 0x24($sp)
/* B55200 800DE060 AFB10018 */  sw    $s1, 0x18($sp)
/* B55204 800DE064 0080A025 */  move  $s4, $a0
/* B55208 800DE068 AFBF002C */  sw    $ra, 0x2c($sp)
/* B5520C 800DE06C AFB30020 */  sw    $s3, 0x20($sp)
/* B55210 800DE070 AFB2001C */  sw    $s2, 0x1c($sp)
/* B55214 800DE074 AFB00014 */  sw    $s0, 0x14($sp)
/* B55218 800DE078 18400023 */  blez  $v0, .L800DE108
/* B5521C 800DE07C 00008825 */   move  $s1, $zero
/* B55220 800DE080 3C138017 */  lui   $s3, %hi(gNoteFreeLists) # $s3, 0x8017
/* B55224 800DE084 26734D18 */  addiu $s3, %lo(gNoteFreeLists) # addiu $s3, $s3, 0x4d18
/* B55228 800DE088 00009025 */  move  $s2, $zero
.L800DE08C:
/* B5522C 800DE08C 8EAE352C */  lw    $t6, 0x352c($s5)
/* B55230 800DE090 024E8021 */  addu  $s0, $s2, $t6
/* B55234 800DE094 920F0033 */  lbu   $t7, 0x33($s0)
/* B55238 800DE098 568F0018 */  bnel  $s4, $t7, .L800DE0FC
/* B5523C 800DE09C 26310001 */   addiu $s1, $s1, 1
/* B55240 800DE0A0 92180034 */  lbu   $t8, 0x34($s0)
/* B55244 800DE0A4 1700000C */  bnez  $t8, .L800DE0D8
/* B55248 800DE0A8 00000000 */   nop   
/* B5524C 800DE0AC 92190030 */  lbu   $t9, 0x30($s0)
/* B55250 800DE0B0 13200009 */  beqz  $t9, .L800DE0D8
/* B55254 800DE0B4 00000000 */   nop   
/* B55258 800DE0B8 8E020044 */  lw    $v0, 0x44($s0)
/* B5525C 800DE0BC 90480000 */  lbu   $t0, ($v0)
/* B55260 800DE0C0 3109FF7F */  andi  $t1, $t0, 0xff7f
/* B55264 800DE0C4 A0490000 */  sb    $t1, ($v0)
/* B55268 800DE0C8 8E020044 */  lw    $v0, 0x44($s0)
/* B5526C 800DE0CC 904B0000 */  lbu   $t3, ($v0)
/* B55270 800DE0D0 356C0040 */  ori   $t4, $t3, 0x40
/* B55274 800DE0D4 A04C0000 */  sb    $t4, ($v0)
.L800DE0D8:
/* B55278 800DE0D8 0C039BCA */  jal   Audio_NoteDisable
/* B5527C 800DE0DC 02002025 */   move  $a0, $s0
/* B55280 800DE0E0 0C03A037 */  jal   Audio_AudioListRemove
/* B55284 800DE0E4 02002025 */   move  $a0, $s0
/* B55288 800DE0E8 02602025 */  move  $a0, $s3
/* B5528C 800DE0EC 0C03A70A */  jal   Audio_AudioListPushBack
/* B55290 800DE0F0 02002825 */   move  $a1, $s0
/* B55294 800DE0F4 8EA22894 */  lw    $v0, 0x2894($s5)
/* B55298 800DE0F8 26310001 */  addiu $s1, $s1, 1
.L800DE0FC:
/* B5529C 800DE0FC 0222082A */  slt   $at, $s1, $v0
/* B552A0 800DE100 1420FFE2 */  bnez  $at, .L800DE08C
/* B552A4 800DE104 265200E0 */   addiu $s2, $s2, 0xe0
.L800DE108:
/* B552A8 800DE108 8FBF002C */  lw    $ra, 0x2c($sp)
/* B552AC 800DE10C 8FB00014 */  lw    $s0, 0x14($sp)
/* B552B0 800DE110 8FB10018 */  lw    $s1, 0x18($sp)
/* B552B4 800DE114 8FB2001C */  lw    $s2, 0x1c($sp)
/* B552B8 800DE118 8FB30020 */  lw    $s3, 0x20($sp)
/* B552BC 800DE11C 8FB40024 */  lw    $s4, 0x24($sp)
/* B552C0 800DE120 8FB50028 */  lw    $s5, 0x28($sp)
/* B552C4 800DE124 03E00008 */  jr    $ra
/* B552C8 800DE128 27BD0030 */   addiu $sp, $sp, 0x30

glabel func_800DE12C
/* B552CC 800DE12C 3C088017 */  lui   $t0, %hi(gAudioContext) # $t0, 0x8017
/* B552D0 800DE130 2508F180 */  addiu $t0, %lo(gAudioContext) # addiu $t0, $t0, -0xe80
/* B552D4 800DE134 8D032894 */  lw    $v1, 0x2894($t0)
/* B552D8 800DE138 00803825 */  move  $a3, $a0
/* B552DC 800DE13C 00001025 */  move  $v0, $zero
/* B552E0 800DE140 1860001A */  blez  $v1, .L800DE1AC
/* B552E4 800DE144 00002825 */   move  $a1, $zero
/* B552E8 800DE148 240A0001 */  li    $t2, 1
/* B552EC 800DE14C 24090006 */  li    $t1, 6
.L800DE150:
/* B552F0 800DE150 8D0E352C */  lw    $t6, 0x352c($t0)
/* B552F4 800DE154 24420001 */  addiu $v0, $v0, 1
/* B552F8 800DE158 00AE2021 */  addu  $a0, $a1, $t6
/* B552FC 800DE15C 908F0033 */  lbu   $t7, 0x33($a0)
/* B55300 800DE160 24860030 */  addiu $a2, $a0, 0x30
/* B55304 800DE164 54EF000F */  bnel  $a3, $t7, .L800DE1A4
/* B55308 800DE168 0043082A */   slt   $at, $v0, $v1
/* B5530C 800DE16C 90D80000 */  lbu   $t8, ($a2)
/* B55310 800DE170 5300000C */  beql  $t8, $zero, .L800DE1A4
/* B55314 800DE174 0043082A */   slt   $at, $v0, $v1
/* B55318 800DE178 90C40040 */  lbu   $a0, 0x40($a2)
/* B5531C 800DE17C 3099000F */  andi  $t9, $a0, 0xf
/* B55320 800DE180 55390008 */  bnel  $t1, $t9, .L800DE1A4
/* B55324 800DE184 0043082A */   slt   $at, $v0, $v1
/* B55328 800DE188 A0CA0000 */  sb    $t2, ($a2)
/* B5532C 800DE18C C5042864 */  lwc1  $f4, 0x2864($t0)
/* B55330 800DE190 348C0010 */  ori   $t4, $a0, 0x10
/* B55334 800DE194 A0CC0040 */  sb    $t4, 0x40($a2)
/* B55338 800DE198 E4C4004C */  swc1  $f4, 0x4c($a2)
/* B5533C 800DE19C 8D032894 */  lw    $v1, 0x2894($t0)
/* B55340 800DE1A0 0043082A */  slt   $at, $v0, $v1
.L800DE1A4:
/* B55344 800DE1A4 1420FFEA */  bnez  $at, .L800DE150
/* B55348 800DE1A8 24A500E0 */   addiu $a1, $a1, 0xe0
.L800DE1AC:
/* B5534C 800DE1AC 03E00008 */  jr    $ra
/* B55350 800DE1B0 00000000 */   nop   

glabel func_800DE1B4
/* B55354 800DE1B4 3C028017 */  lui   $v0, %hi(D_801719DC) # $v0, 0x8017
/* B55358 800DE1B8 844219DC */  lh    $v0, %lo(D_801719DC)($v0)
/* B5535C 800DE1BC 27BDFFD8 */  addiu $sp, $sp, -0x28
/* B55360 800DE1C0 AFB20020 */  sw    $s2, 0x20($sp)
/* B55364 800DE1C4 AFB1001C */  sw    $s1, 0x1c($sp)
/* B55368 800DE1C8 00809025 */  move  $s2, $a0
/* B5536C 800DE1CC AFBF0024 */  sw    $ra, 0x24($sp)
/* B55370 800DE1D0 AFB00018 */  sw    $s0, 0x18($sp)
/* B55374 800DE1D4 18400012 */  blez  $v0, .L800DE220
/* B55378 800DE1D8 00008825 */   move  $s1, $zero
/* B5537C 800DE1DC 3C108017 */  lui   $s0, %hi(gAudioContext) # $s0, 0x8017
/* B55380 800DE1E0 2610F180 */  addiu $s0, %lo(gAudioContext) # addiu $s0, $s0, -0xe80
.L800DE1E4:
/* B55384 800DE1E4 8E0E3530 */  lw    $t6, 0x3530($s0)
/* B55388 800DE1E8 000E7FC2 */  srl   $t7, $t6, 0x1f
/* B5538C 800DE1EC 51E00009 */  beql  $t7, $zero, .L800DE214
/* B55390 800DE1F0 26310001 */   addiu $s1, $s1, 1
/* B55394 800DE1F4 92183534 */  lbu   $t8, 0x3534($s0)
/* B55398 800DE1F8 56580006 */  bnel  $s2, $t8, .L800DE214
/* B5539C 800DE1FC 26310001 */   addiu $s1, $s1, 1
/* B553A0 800DE200 0C03A6DB */  jal   func_800E9B6C
/* B553A4 800DE204 26043530 */   addiu $a0, $s0, 0x3530
/* B553A8 800DE208 3C028017 */  lui   $v0, %hi(D_801719DC) # $v0, 0x8017
/* B553AC 800DE20C 844219DC */  lh    $v0, %lo(D_801719DC)($v0)
/* B553B0 800DE210 26310001 */  addiu $s1, $s1, 1
.L800DE214:
/* B553B4 800DE214 0222082A */  slt   $at, $s1, $v0
/* B553B8 800DE218 1420FFF2 */  bnez  $at, .L800DE1E4
/* B553BC 800DE21C 26100160 */   addiu $s0, $s0, 0x160
.L800DE220:
/* B553C0 800DE220 8FBF0024 */  lw    $ra, 0x24($sp)
/* B553C4 800DE224 8FB00018 */  lw    $s0, 0x18($sp)
/* B553C8 800DE228 8FB1001C */  lw    $s1, 0x1c($sp)
/* B553CC 800DE22C 8FB20020 */  lw    $s2, 0x20($sp)
/* B553D0 800DE230 03E00008 */  jr    $ra
/* B553D4 800DE234 27BD0028 */   addiu $sp, $sp, 0x28

glabel func_800DE238
/* B553D8 800DE238 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B553DC 800DE23C AFBF0014 */  sw    $ra, 0x14($sp)
/* B553E0 800DE240 0C039A20 */  jal   func_800E6880
/* B553E4 800DE244 00000000 */   nop   
/* B553E8 800DE248 8FBF0014 */  lw    $ra, 0x14($sp)
/* B553EC 800DE24C 27BD0018 */  addiu $sp, $sp, 0x18
/* B553F0 800DE250 03E00008 */  jr    $ra
/* B553F4 800DE254 00000000 */   nop   

glabel func_800DE258
/* B553F8 800DE258 3C0E8017 */  lui   $t6, %hi(D_80171B20) # $t6, 0x8017
/* B553FC 800DE25C 8DCE1B20 */  lw    $t6, %lo(D_80171B20)($t6)
/* B55400 800DE260 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B55404 800DE264 AFBF0014 */  sw    $ra, 0x14($sp)
/* B55408 800DE268 AFA40018 */  sw    $a0, 0x18($sp)
/* B5540C 800DE26C AFA5001C */  sw    $a1, 0x1c($sp)
/* B55410 800DE270 11C00005 */  beqz  $t6, .L800DE288
/* B55414 800DE274 00001825 */   move  $v1, $zero
/* B55418 800DE278 3C048017 */  lui   $a0, %hi(D_80171B20) # $a0, 0x8017
/* B5541C 800DE27C 0C0378E0 */  jal   func_800DE380
/* B55420 800DE280 24841B20 */   addiu $a0, %lo(D_80171B20) # addiu $a0, $a0, 0x1b20
/* B55424 800DE284 00401825 */  move  $v1, $v0
.L800DE288:
/* B55428 800DE288 14600004 */  bnez  $v1, .L800DE29C
/* B5542C 800DE28C 8FA40018 */   lw    $a0, 0x18($sp)
/* B55430 800DE290 0C0378E0 */  jal   func_800DE380
/* B55434 800DE294 8FA5001C */   lw    $a1, 0x1c($sp)
/* B55438 800DE298 00401825 */  move  $v1, $v0
.L800DE29C:
/* B5543C 800DE29C 8FBF0014 */  lw    $ra, 0x14($sp)
/* B55440 800DE2A0 27BD0018 */  addiu $sp, $sp, 0x18
/* B55444 800DE2A4 00601025 */  move  $v0, $v1
/* B55448 800DE2A8 03E00008 */  jr    $ra
/* B5544C 800DE2AC 00000000 */   nop   

glabel func_800DE2B0
/* B55450 800DE2B0 3C0E8017 */  lui   $t6, %hi(D_80171B20) # $t6, 0x8017
/* B55454 800DE2B4 8DCE1B20 */  lw    $t6, %lo(D_80171B20)($t6)
/* B55458 800DE2B8 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B5545C 800DE2BC AFBF0014 */  sw    $ra, 0x14($sp)
/* B55460 800DE2C0 AFA40018 */  sw    $a0, 0x18($sp)
/* B55464 800DE2C4 AFA5001C */  sw    $a1, 0x1c($sp)
/* B55468 800DE2C8 11C00005 */  beqz  $t6, .L800DE2E0
/* B5546C 800DE2CC 00001825 */   move  $v1, $zero
/* B55470 800DE2D0 3C048017 */  lui   $a0, %hi(D_80171B20) # $a0, 0x8017
/* B55474 800DE2D4 0C0378F7 */  jal   func_800DE3DC
/* B55478 800DE2D8 24841B20 */   addiu $a0, %lo(D_80171B20) # addiu $a0, $a0, 0x1b20
/* B5547C 800DE2DC 00401825 */  move  $v1, $v0
.L800DE2E0:
/* B55480 800DE2E0 14600004 */  bnez  $v1, .L800DE2F4
/* B55484 800DE2E4 8FA40018 */   lw    $a0, 0x18($sp)
/* B55488 800DE2E8 0C0378F7 */  jal   func_800DE3DC
/* B5548C 800DE2EC 8FA5001C */   lw    $a1, 0x1c($sp)
/* B55490 800DE2F0 00401825 */  move  $v1, $v0
.L800DE2F4:
/* B55494 800DE2F4 8FBF0014 */  lw    $ra, 0x14($sp)
/* B55498 800DE2F8 27BD0018 */  addiu $sp, $sp, 0x18
/* B5549C 800DE2FC 00601025 */  move  $v0, $v1
/* B554A0 800DE300 03E00008 */  jr    $ra
/* B554A4 800DE304 00000000 */   nop   

glabel Audio_SoundAlloc
/* B554A8 800DE308 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B554AC 800DE30C AFBF0014 */  sw    $ra, 0x14($sp)
/* B554B0 800DE310 0C0378F7 */  jal   func_800DE3DC
/* B554B4 800DE314 AFA50024 */   sw    $a1, 0x24($sp)
/* B554B8 800DE318 10400005 */  beqz  $v0, .L800DE330
/* B554BC 800DE31C 00402025 */   move  $a0, $v0
/* B554C0 800DE320 8FA50024 */  lw    $a1, 0x24($sp)
/* B554C4 800DE324 0C03788E */  jal   func_800DE238
/* B554C8 800DE328 AFA2001C */   sw    $v0, 0x1c($sp)
/* B554CC 800DE32C 8FA4001C */  lw    $a0, 0x1c($sp)
.L800DE330:
/* B554D0 800DE330 8FBF0014 */  lw    $ra, 0x14($sp)
/* B554D4 800DE334 27BD0020 */  addiu $sp, $sp, 0x20
/* B554D8 800DE338 00801025 */  move  $v0, $a0
/* B554DC 800DE33C 03E00008 */  jr    $ra
/* B554E0 800DE340 00000000 */   nop   

glabel func_800DE344
/* B554E4 800DE344 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B554E8 800DE348 AFBF0014 */  sw    $ra, 0x14($sp)
/* B554EC 800DE34C 0C0378E0 */  jal   func_800DE380
/* B554F0 800DE350 AFA50024 */   sw    $a1, 0x24($sp)
/* B554F4 800DE354 10400005 */  beqz  $v0, .L800DE36C
/* B554F8 800DE358 00402025 */   move  $a0, $v0
/* B554FC 800DE35C 8FA50024 */  lw    $a1, 0x24($sp)
/* B55500 800DE360 0C03788E */  jal   func_800DE238
/* B55504 800DE364 AFA2001C */   sw    $v0, 0x1c($sp)
/* B55508 800DE368 8FA4001C */  lw    $a0, 0x1c($sp)
.L800DE36C:
/* B5550C 800DE36C 8FBF0014 */  lw    $ra, 0x14($sp)
/* B55510 800DE370 27BD0020 */  addiu $sp, $sp, 0x20
/* B55514 800DE374 00801025 */  move  $v0, $a0
/* B55518 800DE378 03E00008 */  jr    $ra
/* B5551C 800DE37C 00000000 */   nop   

glabel func_800DE380
/* B55520 800DE380 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B55524 800DE384 AFBF0014 */  sw    $ra, 0x14($sp)
/* B55528 800DE388 0C0378F7 */  jal   func_800DE3DC
/* B5552C 800DE38C AFA40018 */   sw    $a0, 0x18($sp)
/* B55530 800DE390 8FA40018 */  lw    $a0, 0x18($sp)
/* B55534 800DE394 1040000C */  beqz  $v0, .L800DE3C8
/* B55538 800DE398 00402825 */   move  $a1, $v0
/* B5553C 800DE39C 8C8E0004 */  lw    $t6, 4($a0)
/* B55540 800DE3A0 00401825 */  move  $v1, $v0
/* B55544 800DE3A4 004E082B */  sltu  $at, $v0, $t6
/* B55548 800DE3A8 50200008 */  beql  $at, $zero, .L800DE3CC
/* B5554C 800DE3AC 8FBF0014 */   lw    $ra, 0x14($sp)
/* B55550 800DE3B0 A0600000 */  sb    $zero, ($v1)
.L800DE3B4:
/* B55554 800DE3B4 8C8F0004 */  lw    $t7, 4($a0)
/* B55558 800DE3B8 24630001 */  addiu $v1, $v1, 1
/* B5555C 800DE3BC 006F082B */  sltu  $at, $v1, $t7
/* B55560 800DE3C0 5420FFFC */  bnezl $at, .L800DE3B4
/* B55564 800DE3C4 A0600000 */   sb    $zero, ($v1)
.L800DE3C8:
/* B55568 800DE3C8 8FBF0014 */  lw    $ra, 0x14($sp)
.L800DE3CC:
/* B5556C 800DE3CC 27BD0018 */  addiu $sp, $sp, 0x18
/* B55570 800DE3D0 00A01025 */  move  $v0, $a1
/* B55574 800DE3D4 03E00008 */  jr    $ra
/* B55578 800DE3D8 00000000 */   nop   

glabel func_800DE3DC
/* B5557C 800DE3DC 8C860004 */  lw    $a2, 4($a0)
/* B55580 800DE3E0 8C8E0000 */  lw    $t6, ($a0)
/* B55584 800DE3E4 8C8F0008 */  lw    $t7, 8($a0)
/* B55588 800DE3E8 24A2000F */  addiu $v0, $a1, 0xf
/* B5558C 800DE3EC 2401FFF0 */  li    $at, -16
/* B55590 800DE3F0 00411024 */  and   $v0, $v0, $at
/* B55594 800DE3F4 00C2C821 */  addu  $t9, $a2, $v0
/* B55598 800DE3F8 01CFC021 */  addu  $t8, $t6, $t7
/* B5559C 800DE3FC 0319082B */  sltu  $at, $t8, $t9
/* B555A0 800DE400 14200004 */  bnez  $at, .L800DE414
/* B555A4 800DE404 00C01825 */   move  $v1, $a2
/* B555A8 800DE408 00C24021 */  addu  $t0, $a2, $v0
/* B555AC 800DE40C 10000003 */  b     .L800DE41C
/* B555B0 800DE410 AC880004 */   sw    $t0, 4($a0)
.L800DE414:
/* B555B4 800DE414 03E00008 */  jr    $ra
/* B555B8 800DE418 00001025 */   move  $v0, $zero

.L800DE41C:
/* B555BC 800DE41C 8C89000C */  lw    $t1, 0xc($a0)
/* B555C0 800DE420 00601025 */  move  $v0, $v1
/* B555C4 800DE424 252A0001 */  addiu $t2, $t1, 1
/* B555C8 800DE428 AC8A000C */  sw    $t2, 0xc($a0)
/* B555CC 800DE42C 03E00008 */  jr    $ra
/* B555D0 800DE430 00000000 */   nop   

glabel func_800DE434
/* B555D4 800DE434 24A2000F */  addiu $v0, $a1, 0xf
/* B555D8 800DE438 2401FFF0 */  li    $at, -16
/* B555DC 800DE43C 30AE000F */  andi  $t6, $a1, 0xf
/* B555E0 800DE440 00411024 */  and   $v0, $v0, $at
/* B555E4 800DE444 00CE7823 */  subu  $t7, $a2, $t6
/* B555E8 800DE448 AC820000 */  sw    $v0, ($a0)
/* B555EC 800DE44C AC820004 */  sw    $v0, 4($a0)
/* B555F0 800DE450 AC8F0008 */  sw    $t7, 8($a0)
/* B555F4 800DE454 03E00008 */  jr    $ra
/* B555F8 800DE458 AC80000C */   sw    $zero, 0xc($a0)

glabel func_800DE45C
/* B555FC 800DE45C 8C8E0004 */  lw    $t6, 4($a0)
/* B55600 800DE460 AC800010 */  sw    $zero, 0x10($a0)
/* B55604 800DE464 AC800000 */  sw    $zero, ($a0)
/* B55608 800DE468 03E00008 */  jr    $ra
/* B5560C 800DE46C AC8E0008 */   sw    $t6, 8($a0)

glabel func_800DE470
/* B55610 800DE470 8C820004 */  lw    $v0, 4($a0)
/* B55614 800DE474 8C8E000C */  lw    $t6, 0xc($a0)
/* B55618 800DE478 2403FFFF */  li    $v1, -1
/* B5561C 800DE47C AC800010 */  sw    $zero, 0x10($a0)
/* B55620 800DE480 004E7821 */  addu  $t7, $v0, $t6
/* B55624 800DE484 AC800000 */  sw    $zero, ($a0)
/* B55628 800DE488 AC8F0020 */  sw    $t7, 0x20($a0)
/* B5562C 800DE48C A483001E */  sh    $v1, 0x1e($a0)
/* B55630 800DE490 A483002A */  sh    $v1, 0x2a($a0)
/* B55634 800DE494 AC820008 */  sw    $v0, 8($a0)
/* B55638 800DE498 03E00008 */  jr    $ra
/* B5563C 800DE49C AC820014 */   sw    $v0, 0x14($a0)

glabel func_800DE4A0
/* B55640 800DE4A0 8C8E0000 */  lw    $t6, ($a0)
/* B55644 800DE4A4 AC80000C */  sw    $zero, 0xc($a0)
/* B55648 800DE4A8 03E00008 */  jr    $ra
/* B5564C 800DE4AC AC8E0004 */   sw    $t6, 4($a0)

glabel func_800DE4B0
/* B55650 800DE4B0 27BDFFD0 */  addiu $sp, $sp, -0x30
/* B55654 800DE4B4 AFBF0014 */  sw    $ra, 0x14($sp)
/* B55658 800DE4B8 10800009 */  beqz  $a0, .L800DE4E0
/* B5565C 800DE4BC 00803025 */   move  $a2, $a0
/* B55660 800DE4C0 24010001 */  li    $at, 1
/* B55664 800DE4C4 1081000C */  beq   $a0, $at, .L800DE4F8
/* B55668 800DE4C8 3C038017 */   lui   $v1, %hi(D_80171CB0)
/* B5566C 800DE4CC 24010002 */  li    $at, 2
/* B55670 800DE4D0 1081000E */  beq   $a0, $at, .L800DE50C
/* B55674 800DE4D4 3C038017 */   lui   $v1, %hi(D_80171DC0)
/* B55678 800DE4D8 10000010 */  b     .L800DE51C
/* B5567C 800DE4DC 8FA3002C */   lw    $v1, 0x2c($sp)
.L800DE4E0:
/* B55680 800DE4E0 3C0E8017 */  lui   $t6, %hi(D_80172618) # $t6, 0x8017
/* B55684 800DE4E4 3C038017 */  lui   $v1, %hi(D_80171BA0) # $v1, 0x8017
/* B55688 800DE4E8 25CE2618 */  addiu $t6, %lo(D_80172618) # addiu $t6, $t6, 0x2618
/* B5568C 800DE4EC 24631BA0 */  addiu $v1, %lo(D_80171BA0) # addiu $v1, $v1, 0x1ba0
/* B55690 800DE4F0 1000000A */  b     .L800DE51C
/* B55694 800DE4F4 AFAE001C */   sw    $t6, 0x1c($sp)
.L800DE4F8:
/* B55698 800DE4F8 3C0F8017 */  lui   $t7, %hi(D_801725E8) # $t7, 0x8017
/* B5569C 800DE4FC 25EF25E8 */  addiu $t7, %lo(D_801725E8) # addiu $t7, $t7, 0x25e8
/* B556A0 800DE500 24631CB0 */  addiu $v1, %lo(D_80171CB0)
/* B556A4 800DE504 10000005 */  b     .L800DE51C
/* B556A8 800DE508 AFAF001C */   sw    $t7, 0x1c($sp)
.L800DE50C:
/* B556AC 800DE50C 3C188017 */  lui   $t8, %hi(D_801725B8) # $t8, 0x8017
/* B556B0 800DE510 271825B8 */  addiu $t8, %lo(D_801725B8) # addiu $t8, $t8, 0x25b8
/* B556B4 800DE514 24631DC0 */  addiu $v1, %lo(D_80171DC0)
/* B556B8 800DE518 AFB8001C */  sw    $t8, 0x1c($sp)
.L800DE51C:
/* B556BC 800DE51C 8C650000 */  lw    $a1, ($v1)
/* B556C0 800DE520 24620004 */  addiu $v0, $v1, 4
/* B556C4 800DE524 24010002 */  li    $at, 2
/* B556C8 800DE528 10A0002D */  beqz  $a1, .L800DE5E0
/* B556CC 800DE52C 0005C880 */   sll   $t9, $a1, 2
/* B556D0 800DE530 0325C823 */  subu  $t9, $t9, $a1
/* B556D4 800DE534 8C49000C */  lw    $t1, 0xc($v0)
/* B556D8 800DE538 0019C880 */  sll   $t9, $t9, 2
/* B556DC 800DE53C 00794021 */  addu  $t0, $v1, $t9
/* B556E0 800DE540 8D040008 */  lw    $a0, 8($t0)
/* B556E4 800DE544 252AFFFF */  addiu $t2, $t1, -1
/* B556E8 800DE548 AC4A000C */  sw    $t2, 0xc($v0)
/* B556EC 800DE54C 14C1000C */  bne   $a2, $at, .L800DE580
/* B556F0 800DE550 AC440004 */   sw    $a0, 4($v0)
/* B556F4 800DE554 8C6B0000 */  lw    $t3, ($v1)
/* B556F8 800DE558 000B6080 */  sll   $t4, $t3, 2
/* B556FC 800DE55C 018B6023 */  subu  $t4, $t4, $t3
/* B55700 800DE560 000C6080 */  sll   $t4, $t4, 2
/* B55704 800DE564 006C6821 */  addu  $t5, $v1, $t4
/* B55708 800DE568 85A40012 */  lh    $a0, 0x12($t5)
/* B5570C 800DE56C AFA60030 */  sw    $a2, 0x30($sp)
/* B55710 800DE570 0C03839B */  jal   func_800E0E6C
/* B55714 800DE574 AFA3002C */   sw    $v1, 0x2c($sp)
/* B55718 800DE578 8FA3002C */  lw    $v1, 0x2c($sp)
/* B5571C 800DE57C 8FA60030 */  lw    $a2, 0x30($sp)
.L800DE580:
/* B55720 800DE580 24010001 */  li    $at, 1
/* B55724 800DE584 54C1000B */  bnel  $a2, $at, .L800DE5B4
/* B55728 800DE588 8C680000 */   lw    $t0, ($v1)
/* B5572C 800DE58C 8C6E0000 */  lw    $t6, ($v1)
/* B55730 800DE590 000E7880 */  sll   $t7, $t6, 2
/* B55734 800DE594 01EE7823 */  subu  $t7, $t7, $t6
/* B55738 800DE598 000F7880 */  sll   $t7, $t7, 2
/* B5573C 800DE59C 006FC021 */  addu  $t8, $v1, $t7
/* B55740 800DE5A0 87040012 */  lh    $a0, 0x12($t8)
/* B55744 800DE5A4 0C037812 */  jal   func_800DE048
/* B55748 800DE5A8 AFA3002C */   sw    $v1, 0x2c($sp)
/* B5574C 800DE5AC 8FA3002C */  lw    $v1, 0x2c($sp)
/* B55750 800DE5B0 8C680000 */  lw    $t0, ($v1)
.L800DE5B4:
/* B55754 800DE5B4 8FB9001C */  lw    $t9, 0x1c($sp)
/* B55758 800DE5B8 00084880 */  sll   $t1, $t0, 2
/* B5575C 800DE5BC 01284823 */  subu  $t1, $t1, $t0
/* B55760 800DE5C0 00094880 */  sll   $t1, $t1, 2
/* B55764 800DE5C4 00695021 */  addu  $t2, $v1, $t1
/* B55768 800DE5C8 854B0012 */  lh    $t3, 0x12($t2)
/* B5576C 800DE5CC 032B6021 */  addu  $t4, $t9, $t3
/* B55770 800DE5D0 A1800000 */  sb    $zero, ($t4)
/* B55774 800DE5D4 8C6D0000 */  lw    $t5, ($v1)
/* B55778 800DE5D8 25AEFFFF */  addiu $t6, $t5, -1
/* B5577C 800DE5DC AC6E0000 */  sw    $t6, ($v1)
.L800DE5E0:
/* B55780 800DE5E0 8FBF0014 */  lw    $ra, 0x14($sp)
/* B55784 800DE5E4 27BD0030 */  addiu $sp, $sp, 0x30
/* B55788 800DE5E8 03E00008 */  jr    $ra
/* B5578C 800DE5EC 00000000 */   nop   

glabel func_800DE5F0
/* B55790 800DE5F0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B55794 800DE5F4 00803025 */  move  $a2, $a0
/* B55798 800DE5F8 AFBF0014 */  sw    $ra, 0x14($sp)
/* B5579C 800DE5FC 3C048017 */  lui   $a0, %hi(D_80171B30) # $a0, 0x8017
/* B557A0 800DE600 3C058017 */  lui   $a1, %hi(D_801726A4) # $a1, 0x8017
/* B557A4 800DE604 8CA526A4 */  lw    $a1, %lo(D_801726A4)($a1)
/* B557A8 800DE608 24841B30 */  addiu $a0, %lo(D_80171B30) # addiu $a0, $a0, 0x1b30
/* B557AC 800DE60C 0C03790D */  jal   func_800DE434
/* B557B0 800DE610 AFA60018 */   sw    $a2, 0x18($sp)
/* B557B4 800DE614 3C028017 */  lui   $v0, %hi(gAudioContext) # $v0, 0x8017
/* B557B8 800DE618 2442F180 */  addiu $v0, %lo(gAudioContext) # addiu $v0, $v0, -0xe80
/* B557BC 800DE61C 8FA70018 */  lw    $a3, 0x18($sp)
/* B557C0 800DE620 8C4E3524 */  lw    $t6, 0x3524($v0)
/* B557C4 800DE624 8C4F3528 */  lw    $t7, 0x3528($v0)
/* B557C8 800DE628 3C048017 */  lui   $a0, %hi(D_80171B10) # $a0, 0x8017
/* B557CC 800DE62C 24841B10 */  addiu $a0, %lo(D_80171B10) # addiu $a0, $a0, 0x1b10
/* B557D0 800DE630 01C72821 */  addu  $a1, $t6, $a3
/* B557D4 800DE634 0C03790D */  jal   func_800DE434
/* B557D8 800DE638 01E73023 */   subu  $a2, $t7, $a3
/* B557DC 800DE63C 8FBF0014 */  lw    $ra, 0x14($sp)
/* B557E0 800DE640 3C018017 */  lui   $at, %hi(D_80171B20) # $at, 0x8017
/* B557E4 800DE644 AC201B20 */  sw    $zero, %lo(D_80171B20)($at)
/* B557E8 800DE648 03E00008 */  jr    $ra
/* B557EC 800DE64C 27BD0018 */   addiu $sp, $sp, 0x18

glabel func_800DE650
/* B557F0 800DE650 3C028017 */  lui   $v0, %hi(gAudioContext) # $v0, 0x8017
/* B557F4 800DE654 2442F180 */  addiu $v0, %lo(gAudioContext) # addiu $v0, $v0, -0xe80
/* B557F8 800DE658 8C4E2990 */  lw    $t6, 0x2990($v0)
/* B557FC 800DE65C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B55800 800DE660 AFA40018 */  sw    $a0, 0x18($sp)
/* B55804 800DE664 8FAF0018 */  lw    $t7, 0x18($sp)
/* B55808 800DE668 AFBF0014 */  sw    $ra, 0x14($sp)
/* B5580C 800DE66C 3C048017 */  lui   $a0, %hi(D_80171B10) # $a0, 0x8017
/* B55810 800DE670 AC4E2994 */  sw    $t6, 0x2994($v0)
/* B55814 800DE674 24841B10 */  addiu $a0, %lo(D_80171B10) # addiu $a0, $a0, 0x1b10
/* B55818 800DE678 0C0378F7 */  jal   func_800DE3DC
/* B5581C 800DE67C 8DE50000 */   lw    $a1, ($t7)
/* B55820 800DE680 8FB80018 */  lw    $t8, 0x18($sp)
/* B55824 800DE684 3C048017 */  lui   $a0, %hi(D_80171B40) # $a0, 0x8017
/* B55828 800DE688 24841B40 */  addiu $a0, %lo(D_80171B40) # addiu $a0, $a0, 0x1b40
/* B5582C 800DE68C 00402825 */  move  $a1, $v0
/* B55830 800DE690 0C03790D */  jal   func_800DE434
/* B55834 800DE694 8F060000 */   lw    $a2, ($t8)
/* B55838 800DE698 8FB90018 */  lw    $t9, 0x18($sp)
/* B5583C 800DE69C 3C048017 */  lui   $a0, %hi(D_80171B10) # $a0, 0x8017
/* B55840 800DE6A0 24841B10 */  addiu $a0, %lo(D_80171B10) # addiu $a0, $a0, 0x1b10
/* B55844 800DE6A4 0C0378F7 */  jal   func_800DE3DC
/* B55848 800DE6A8 8F25000C */   lw    $a1, 0xc($t9)
/* B5584C 800DE6AC 8FA80018 */  lw    $t0, 0x18($sp)
/* B55850 800DE6B0 3C048017 */  lui   $a0, %hi(D_80171B70) # $a0, 0x8017
/* B55854 800DE6B4 24841B70 */  addiu $a0, %lo(D_80171B70) # addiu $a0, $a0, 0x1b70
/* B55858 800DE6B8 00402825 */  move  $a1, $v0
/* B5585C 800DE6BC 0C03790D */  jal   func_800DE434
/* B55860 800DE6C0 8D06000C */   lw    $a2, 0xc($t0)
/* B55864 800DE6C4 8FBF0014 */  lw    $ra, 0x14($sp)
/* B55868 800DE6C8 27BD0018 */  addiu $sp, $sp, 0x18
/* B5586C 800DE6CC 03E00008 */  jr    $ra
/* B55870 800DE6D0 00000000 */   nop   

glabel func_800DE6D4
/* B55874 800DE6D4 3C028017 */  lui   $v0, %hi(gAudioContext) # $v0, 0x8017
/* B55878 800DE6D8 2442F180 */  addiu $v0, %lo(gAudioContext) # addiu $v0, $v0, -0xe80
/* B5587C 800DE6DC 8C4E29F0 */  lw    $t6, 0x29f0($v0)
/* B55880 800DE6E0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B55884 800DE6E4 AFA40018 */  sw    $a0, 0x18($sp)
/* B55888 800DE6E8 8FAF0018 */  lw    $t7, 0x18($sp)
/* B5588C 800DE6EC AFBF0014 */  sw    $ra, 0x14($sp)
/* B55890 800DE6F0 3C048017 */  lui   $a0, %hi(D_80171B70) # $a0, 0x8017
/* B55894 800DE6F4 AC4E29F4 */  sw    $t6, 0x29f4($v0)
/* B55898 800DE6F8 24841B70 */  addiu $a0, %lo(D_80171B70) # addiu $a0, $a0, 0x1b70
/* B5589C 800DE6FC 0C0378F7 */  jal   func_800DE3DC
/* B558A0 800DE700 8DE50000 */   lw    $a1, ($t7)
/* B558A4 800DE704 8FB80018 */  lw    $t8, 0x18($sp)
/* B558A8 800DE708 3C048017 */  lui   $a0, %hi(D_80171B80) # $a0, 0x8017
/* B558AC 800DE70C 24841B80 */  addiu $a0, %lo(D_80171B80) # addiu $a0, $a0, 0x1b80
/* B558B0 800DE710 00402825 */  move  $a1, $v0
/* B558B4 800DE714 0C03790D */  jal   func_800DE434
/* B558B8 800DE718 8F060000 */   lw    $a2, ($t8)
/* B558BC 800DE71C 8FB90018 */  lw    $t9, 0x18($sp)
/* B558C0 800DE720 3C048017 */  lui   $a0, %hi(D_80171B70) # $a0, 0x8017
/* B558C4 800DE724 24841B70 */  addiu $a0, %lo(D_80171B70) # addiu $a0, $a0, 0x1b70
/* B558C8 800DE728 0C0378F7 */  jal   func_800DE3DC
/* B558CC 800DE72C 8F250004 */   lw    $a1, 4($t9)
/* B558D0 800DE730 8FA80018 */  lw    $t0, 0x18($sp)
/* B558D4 800DE734 3C048017 */  lui   $a0, %hi(D_80171B90) # $a0, 0x8017
/* B558D8 800DE738 24841B90 */  addiu $a0, %lo(D_80171B90) # addiu $a0, $a0, 0x1b90
/* B558DC 800DE73C 00402825 */  move  $a1, $v0
/* B558E0 800DE740 0C03790D */  jal   func_800DE434
/* B558E4 800DE744 8D060004 */   lw    $a2, 4($t0)
/* B558E8 800DE748 8FBF0014 */  lw    $ra, 0x14($sp)
/* B558EC 800DE74C 27BD0018 */  addiu $sp, $sp, 0x18
/* B558F0 800DE750 03E00008 */  jr    $ra
/* B558F4 800DE754 00000000 */   nop   

glabel func_800DE758
/* B558F8 800DE758 3C028017 */  lui   $v0, %hi(gAudioContext) # $v0, 0x8017
/* B558FC 800DE75C 2442F180 */  addiu $v0, %lo(gAudioContext) # addiu $v0, $v0, -0xe80
/* B55900 800DE760 8C4E2A00 */  lw    $t6, 0x2a00($v0)
/* B55904 800DE764 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B55908 800DE768 AFB00018 */  sw    $s0, 0x18($sp)
/* B5590C 800DE76C 00808025 */  move  $s0, $a0
/* B55910 800DE770 AFBF001C */  sw    $ra, 0x1c($sp)
/* B55914 800DE774 3C048017 */  lui   $a0, %hi(D_80171B80) # $a0, 0x8017
/* B55918 800DE778 AC4E2A04 */  sw    $t6, 0x2a04($v0)
/* B5591C 800DE77C 8E050000 */  lw    $a1, ($s0)
/* B55920 800DE780 0C0378F7 */  jal   func_800DE3DC
/* B55924 800DE784 24841B80 */   addiu $a0, %lo(D_80171B80) # addiu $a0, $a0, 0x1b80
/* B55928 800DE788 3C048017 */  lui   $a0, %hi(D_80171BA4) # $a0, 0x8017
/* B5592C 800DE78C 24841BA4 */  addiu $a0, %lo(D_80171BA4) # addiu $a0, $a0, 0x1ba4
/* B55930 800DE790 00402825 */  move  $a1, $v0
/* B55934 800DE794 0C03790D */  jal   func_800DE434
/* B55938 800DE798 8E060000 */   lw    $a2, ($s0)
/* B5593C 800DE79C 3C048017 */  lui   $a0, %hi(D_80171B80) # $a0, 0x8017
/* B55940 800DE7A0 24841B80 */  addiu $a0, %lo(D_80171B80) # addiu $a0, $a0, 0x1b80
/* B55944 800DE7A4 0C0378F7 */  jal   func_800DE3DC
/* B55948 800DE7A8 8E050004 */   lw    $a1, 4($s0)
/* B5594C 800DE7AC 3C048017 */  lui   $a0, %hi(D_80171CB4) # $a0, 0x8017
/* B55950 800DE7B0 24841CB4 */  addiu $a0, %lo(D_80171CB4) # addiu $a0, $a0, 0x1cb4
/* B55954 800DE7B4 00402825 */  move  $a1, $v0
/* B55958 800DE7B8 0C03790D */  jal   func_800DE434
/* B5595C 800DE7BC 8E060004 */   lw    $a2, 4($s0)
/* B55960 800DE7C0 3C048017 */  lui   $a0, %hi(D_80171B80) # $a0, 0x8017
/* B55964 800DE7C4 24841B80 */  addiu $a0, %lo(D_80171B80) # addiu $a0, $a0, 0x1b80
/* B55968 800DE7C8 0C0378F7 */  jal   func_800DE3DC
/* B5596C 800DE7CC 8E050008 */   lw    $a1, 8($s0)
/* B55970 800DE7D0 3C048017 */  lui   $a0, %hi(D_80171DC4) # $a0, 0x8017
/* B55974 800DE7D4 24841DC4 */  addiu $a0, %lo(D_80171DC4) # addiu $a0, $a0, 0x1dc4
/* B55978 800DE7D8 00402825 */  move  $a1, $v0
/* B5597C 800DE7DC 0C03790D */  jal   func_800DE434
/* B55980 800DE7E0 8E060008 */   lw    $a2, 8($s0)
/* B55984 800DE7E4 3C048017 */  lui   $a0, %hi(D_80171BA0) # $a0, 0x8017
/* B55988 800DE7E8 0C037917 */  jal   func_800DE45C
/* B5598C 800DE7EC 24841BA0 */   addiu $a0, %lo(D_80171BA0) # addiu $a0, $a0, 0x1ba0
/* B55990 800DE7F0 3C048017 */  lui   $a0, %hi(D_80171CB0) # $a0, 0x8017
/* B55994 800DE7F4 0C037917 */  jal   func_800DE45C
/* B55998 800DE7F8 24841CB0 */   addiu $a0, %lo(D_80171CB0) # addiu $a0, $a0, 0x1cb0
/* B5599C 800DE7FC 3C048017 */  lui   $a0, %hi(D_80171DC0) # $a0, 0x8017
/* B559A0 800DE800 0C037917 */  jal   func_800DE45C
/* B559A4 800DE804 24841DC0 */   addiu $a0, %lo(D_80171DC0) # addiu $a0, $a0, 0x1dc0
/* B559A8 800DE808 8FBF001C */  lw    $ra, 0x1c($sp)
/* B559AC 800DE80C 8FB00018 */  lw    $s0, 0x18($sp)
/* B559B0 800DE810 27BD0020 */  addiu $sp, $sp, 0x20
/* B559B4 800DE814 03E00008 */  jr    $ra
/* B559B8 800DE818 00000000 */   nop   

glabel func_800DE81C
/* B559BC 800DE81C 3C028017 */  lui   $v0, %hi(gAudioContext) # $v0, 0x8017
/* B559C0 800DE820 2442F180 */  addiu $v0, %lo(gAudioContext) # addiu $v0, $v0, -0xe80
/* B559C4 800DE824 8C4E2A10 */  lw    $t6, 0x2a10($v0)
/* B559C8 800DE828 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B559CC 800DE82C AFB00018 */  sw    $s0, 0x18($sp)
/* B559D0 800DE830 00808025 */  move  $s0, $a0
/* B559D4 800DE834 AFBF001C */  sw    $ra, 0x1c($sp)
/* B559D8 800DE838 3C048017 */  lui   $a0, %hi(D_80171B90) # $a0, 0x8017
/* B559DC 800DE83C AC4E2A14 */  sw    $t6, 0x2a14($v0)
/* B559E0 800DE840 8E050000 */  lw    $a1, ($s0)
/* B559E4 800DE844 0C0378F7 */  jal   func_800DE3DC
/* B559E8 800DE848 24841B90 */   addiu $a0, %lo(D_80171B90) # addiu $a0, $a0, 0x1b90
/* B559EC 800DE84C 3C048017 */  lui   $a0, %hi(D_80171C78) # $a0, 0x8017
/* B559F0 800DE850 24841C78 */  addiu $a0, %lo(D_80171C78) # addiu $a0, $a0, 0x1c78
/* B559F4 800DE854 00402825 */  move  $a1, $v0
/* B559F8 800DE858 0C03790D */  jal   func_800DE434
/* B559FC 800DE85C 8E060000 */   lw    $a2, ($s0)
/* B55A00 800DE860 3C048017 */  lui   $a0, %hi(D_80171B90) # $a0, 0x8017
/* B55A04 800DE864 24841B90 */  addiu $a0, %lo(D_80171B90) # addiu $a0, $a0, 0x1b90
/* B55A08 800DE868 0C0378F7 */  jal   func_800DE3DC
/* B55A0C 800DE86C 8E050004 */   lw    $a1, 4($s0)
/* B55A10 800DE870 3C048017 */  lui   $a0, %hi(D_80171D88) # $a0, 0x8017
/* B55A14 800DE874 24841D88 */  addiu $a0, %lo(D_80171D88) # addiu $a0, $a0, 0x1d88
/* B55A18 800DE878 00402825 */  move  $a1, $v0
/* B55A1C 800DE87C 0C03790D */  jal   func_800DE434
/* B55A20 800DE880 8E060004 */   lw    $a2, 4($s0)
/* B55A24 800DE884 3C048017 */  lui   $a0, %hi(D_80171B90) # $a0, 0x8017
/* B55A28 800DE888 24841B90 */  addiu $a0, %lo(D_80171B90) # addiu $a0, $a0, 0x1b90
/* B55A2C 800DE88C 0C0378F7 */  jal   func_800DE3DC
/* B55A30 800DE890 8E050008 */   lw    $a1, 8($s0)
/* B55A34 800DE894 3C048017 */  lui   $a0, %hi(D_80171E98) # $a0, 0x8017
/* B55A38 800DE898 24841E98 */  addiu $a0, %lo(D_80171E98) # addiu $a0, $a0, 0x1e98
/* B55A3C 800DE89C 00402825 */  move  $a1, $v0
/* B55A40 800DE8A0 0C03790D */  jal   func_800DE434
/* B55A44 800DE8A4 8E060008 */   lw    $a2, 8($s0)
/* B55A48 800DE8A8 3C048017 */  lui   $a0, %hi(D_80171C74) # $a0, 0x8017
/* B55A4C 800DE8AC 0C03791C */  jal   func_800DE470
/* B55A50 800DE8B0 24841C74 */   addiu $a0, %lo(D_80171C74) # addiu $a0, $a0, 0x1c74
/* B55A54 800DE8B4 3C048017 */  lui   $a0, %hi(D_80171D84) # $a0, 0x8017
/* B55A58 800DE8B8 0C03791C */  jal   func_800DE470
/* B55A5C 800DE8BC 24841D84 */   addiu $a0, %lo(D_80171D84) # addiu $a0, $a0, 0x1d84
/* B55A60 800DE8C0 3C048017 */  lui   $a0, %hi(D_80171E94) # $a0, 0x8017
/* B55A64 800DE8C4 0C03791C */  jal   func_800DE470
/* B55A68 800DE8C8 24841E94 */   addiu $a0, %lo(D_80171E94) # addiu $a0, $a0, 0x1e94
/* B55A6C 800DE8CC 8FBF001C */  lw    $ra, 0x1c($sp)
/* B55A70 800DE8D0 8FB00018 */  lw    $s0, 0x18($sp)
/* B55A74 800DE8D4 27BD0020 */  addiu $sp, $sp, 0x20
/* B55A78 800DE8D8 03E00008 */  jr    $ra
/* B55A7C 800DE8DC 00000000 */   nop   

glabel func_800DE8E0
/* B55A80 800DE8E0 27BDFFB0 */  addiu $sp, $sp, -0x50
/* B55A84 800DE8E4 AFB00018 */  sw    $s0, 0x18($sp)
/* B55A88 800DE8E8 00808025 */  move  $s0, $a0
/* B55A8C 800DE8EC AFBF001C */  sw    $ra, 0x1c($sp)
/* B55A90 800DE8F0 AFA50054 */  sw    $a1, 0x54($sp)
/* B55A94 800DE8F4 AFA7005C */  sw    $a3, 0x5c($sp)
/* B55A98 800DE8F8 8FAB0030 */  lw    $t3, 0x30($sp)
/* B55A9C 800DE8FC 8FA8004C */  lw    $t0, 0x4c($sp)
/* B55AA0 800DE900 240A0002 */  li    $t2, 2
/* B55AA4 800DE904 24090001 */  li    $t1, 1
.L800DE908:
/* B55AA8 800DE908 12000007 */  beqz  $s0, .L800DE928
/* B55AAC 800DE90C 8FA50054 */   lw    $a1, 0x54($sp)
/* B55AB0 800DE910 1209000A */  beq   $s0, $t1, .L800DE93C
/* B55AB4 800DE914 00000000 */   nop   
/* B55AB8 800DE918 120A000D */  beq   $s0, $t2, .L800DE950
/* B55ABC 800DE91C 00000000 */   nop   
/* B55AC0 800DE920 1000000F */  b     .L800DE960
/* B55AC4 800DE924 00000000 */   nop   
.L800DE928:
/* B55AC8 800DE928 3C088017 */  lui   $t0, %hi(D_80171BA0) # $t0, 0x8017
/* B55ACC 800DE92C 3C0B8017 */  lui   $t3, %hi(D_80172618) # $t3, 0x8017
/* B55AD0 800DE930 25081BA0 */  addiu $t0, %lo(D_80171BA0) # addiu $t0, $t0, 0x1ba0
/* B55AD4 800DE934 1000000A */  b     .L800DE960
/* B55AD8 800DE938 256B2618 */   addiu $t3, %lo(D_80172618) # addiu $t3, $t3, 0x2618
.L800DE93C:
/* B55ADC 800DE93C 3C088017 */  lui   $t0, %hi(D_80171CB0) # $t0, 0x8017
/* B55AE0 800DE940 3C0B8017 */  lui   $t3, %hi(D_801725E8) # $t3, 0x8017
/* B55AE4 800DE944 25081CB0 */  addiu $t0, %lo(D_80171CB0) # addiu $t0, $t0, 0x1cb0
/* B55AE8 800DE948 10000005 */  b     .L800DE960
/* B55AEC 800DE94C 256B25E8 */   addiu $t3, %lo(D_801725E8) # addiu $t3, $t3, 0x25e8
.L800DE950:
/* B55AF0 800DE950 3C088017 */  lui   $t0, %hi(D_80171DC0) # $t0, 0x8017
/* B55AF4 800DE954 3C0B8017 */  lui   $t3, %hi(D_801725B8) # $t3, 0x8017
/* B55AF8 800DE958 25081DC0 */  addiu $t0, %lo(D_80171DC0) # addiu $t0, $t0, 0x1dc0
/* B55AFC 800DE95C 256B25B8 */  addiu $t3, %lo(D_801725B8) # addiu $t3, $t3, 0x25b8
.L800DE960:
/* B55B00 800DE960 14C00192 */  bnez  $a2, .L800DEFAC
/* B55B04 800DE964 25040004 */   addiu $a0, $t0, 4
/* B55B08 800DE968 8D0E00E0 */  lw    $t6, 0xe0($t0)
/* B55B0C 800DE96C 8FAF0054 */  lw    $t7, 0x54($sp)
/* B55B10 800DE970 250700D4 */  addiu $a3, $t0, 0xd4
/* B55B14 800DE974 01CF082A */  slt   $at, $t6, $t7
/* B55B18 800DE978 50200004 */  beql  $at, $zero, .L800DE98C
/* B55B1C 800DE97C 84E6001E */   lh    $a2, 0x1e($a3)
/* B55B20 800DE980 100001B7 */  b     .L800DF060
/* B55B24 800DE984 00001025 */   move  $v0, $zero
/* B55B28 800DE988 84E6001E */  lh    $a2, 0x1e($a3)
.L800DE98C:
/* B55B2C 800DE98C 2401FFFF */  li    $at, -1
/* B55B30 800DE990 14C10003 */  bne   $a2, $at, .L800DE9A0
/* B55B34 800DE994 00CBC021 */   addu  $t8, $a2, $t3
/* B55B38 800DE998 10000002 */  b     .L800DE9A4
/* B55B3C 800DE99C 00006025 */   move  $t4, $zero
.L800DE9A0:
/* B55B40 800DE9A0 930C0000 */  lbu   $t4, ($t8)
.L800DE9A4:
/* B55B44 800DE9A4 84E4002A */  lh    $a0, 0x2a($a3)
/* B55B48 800DE9A8 2401FFFF */  li    $at, -1
/* B55B4C 800DE9AC 14810003 */  bne   $a0, $at, .L800DE9BC
/* B55B50 800DE9B0 008BC821 */   addu  $t9, $a0, $t3
/* B55B54 800DE9B4 10000002 */  b     .L800DE9C0
/* B55B58 800DE9B8 00006825 */   move  $t5, $zero
.L800DE9BC:
/* B55B5C 800DE9BC 932D0000 */  lbu   $t5, ($t9)
.L800DE9C0:
/* B55B60 800DE9C0 16090047 */  bne   $s0, $t1, .L800DEAE0
/* B55B64 800DE9C4 24010004 */   li    $at, 4
/* B55B68 800DE9C8 15810020 */  bne   $t4, $at, .L800DEA4C
/* B55B6C 800DE9CC 3C058017 */   lui   $a1, %hi(D_80171A14) # $a1, 0x8017
/* B55B70 800DE9D0 8CA51A14 */  lw    $a1, %lo(D_80171A14)($a1)
/* B55B74 800DE9D4 00001825 */  move  $v1, $zero
/* B55B78 800DE9D8 3C028017 */  lui   $v0, %hi(D_801726AC) # $v0, 0x8017
/* B55B7C 800DE9DC 18A0000D */  blez  $a1, .L800DEA14
/* B55B80 800DE9E0 00C02025 */   move  $a0, $a2
/* B55B84 800DE9E4 8C4226AC */  lw    $v0, %lo(D_801726AC)($v0)
.L800DE9E8:
/* B55B88 800DE9E8 904E0033 */  lbu   $t6, 0x33($v0)
/* B55B8C 800DE9EC 55C60006 */  bnel  $t6, $a2, .L800DEA08
/* B55B90 800DE9F0 24630001 */   addiu $v1, $v1, 1
/* B55B94 800DE9F4 8C4F00C0 */  lw    $t7, 0xc0($v0)
/* B55B98 800DE9F8 000FC7C2 */  srl   $t8, $t7, 0x1f
/* B55B9C 800DE9FC 17000005 */  bnez  $t8, .L800DEA14
/* B55BA0 800DEA00 00000000 */   nop   
/* B55BA4 800DEA04 24630001 */  addiu $v1, $v1, 1
.L800DEA08:
/* B55BA8 800DEA08 0065082A */  slt   $at, $v1, $a1
/* B55BAC 800DEA0C 1420FFF6 */  bnez  $at, .L800DE9E8
/* B55BB0 800DEA10 244200E0 */   addiu $v0, $v0, 0xe0
.L800DEA14:
/* B55BB4 800DEA14 1465000D */  bne   $v1, $a1, .L800DEA4C
/* B55BB8 800DEA18 24050003 */   li    $a1, 3
/* B55BBC 800DEA1C AFA70024 */  sw    $a3, 0x24($sp)
/* B55BC0 800DEA20 AFA8004C */  sw    $t0, 0x4c($sp)
/* B55BC4 800DEA24 AFAB0030 */  sw    $t3, 0x30($sp)
/* B55BC8 800DEA28 0C038686 */  jal   func_800E1A18
/* B55BCC 800DEA2C A3AD003A */   sb    $t5, 0x3a($sp)
/* B55BD0 800DEA30 8FA70024 */  lw    $a3, 0x24($sp)
/* B55BD4 800DEA34 8FA8004C */  lw    $t0, 0x4c($sp)
/* B55BD8 800DEA38 24090001 */  li    $t1, 1
/* B55BDC 800DEA3C 240A0002 */  li    $t2, 2
/* B55BE0 800DEA40 8FAB0030 */  lw    $t3, 0x30($sp)
/* B55BE4 800DEA44 93AD003A */  lbu   $t5, 0x3a($sp)
/* B55BE8 800DEA48 240C0003 */  li    $t4, 3
.L800DEA4C:
/* B55BEC 800DEA4C 24010004 */  li    $at, 4
/* B55BF0 800DEA50 15A10023 */  bne   $t5, $at, .L800DEAE0
/* B55BF4 800DEA54 3C058017 */   lui   $a1, %hi(D_80171A14) # $a1, 0x8017
/* B55BF8 800DEA58 8CA51A14 */  lw    $a1, %lo(D_80171A14)($a1)
/* B55BFC 800DEA5C 00001825 */  move  $v1, $zero
/* B55C00 800DEA60 3C028017 */  lui   $v0, %hi(D_801726AC) # $v0, 0x8017
/* B55C04 800DEA64 18A0000E */  blez  $a1, .L800DEAA0
/* B55C08 800DEA68 00000000 */   nop   
/* B55C0C 800DEA6C 8C4226AC */  lw    $v0, %lo(D_801726AC)($v0)
/* B55C10 800DEA70 84E4002A */  lh    $a0, 0x2a($a3)
.L800DEA74:
/* B55C14 800DEA74 90590033 */  lbu   $t9, 0x33($v0)
/* B55C18 800DEA78 57240006 */  bnel  $t9, $a0, .L800DEA94
/* B55C1C 800DEA7C 24630001 */   addiu $v1, $v1, 1
/* B55C20 800DEA80 8C4E00C0 */  lw    $t6, 0xc0($v0)
/* B55C24 800DEA84 000E7FC2 */  srl   $t7, $t6, 0x1f
/* B55C28 800DEA88 15E00005 */  bnez  $t7, .L800DEAA0
/* B55C2C 800DEA8C 00000000 */   nop   
/* B55C30 800DEA90 24630001 */  addiu $v1, $v1, 1
.L800DEA94:
/* B55C34 800DEA94 0065082A */  slt   $at, $v1, $a1
/* B55C38 800DEA98 1420FFF6 */  bnez  $at, .L800DEA74
/* B55C3C 800DEA9C 244200E0 */   addiu $v0, $v0, 0xe0
.L800DEAA0:
/* B55C40 800DEAA0 1465000F */  bne   $v1, $a1, .L800DEAE0
/* B55C44 800DEAA4 00000000 */   nop   
/* B55C48 800DEAA8 84E4002A */  lh    $a0, 0x2a($a3)
/* B55C4C 800DEAAC A3AC003B */  sb    $t4, 0x3b($sp)
/* B55C50 800DEAB0 AFAB0030 */  sw    $t3, 0x30($sp)
/* B55C54 800DEAB4 AFA8004C */  sw    $t0, 0x4c($sp)
/* B55C58 800DEAB8 AFA70024 */  sw    $a3, 0x24($sp)
/* B55C5C 800DEABC 0C038686 */  jal   func_800E1A18
/* B55C60 800DEAC0 24050003 */   li    $a1, 3
/* B55C64 800DEAC4 8FA70024 */  lw    $a3, 0x24($sp)
/* B55C68 800DEAC8 8FA8004C */  lw    $t0, 0x4c($sp)
/* B55C6C 800DEACC 24090001 */  li    $t1, 1
/* B55C70 800DEAD0 240A0002 */  li    $t2, 2
/* B55C74 800DEAD4 8FAB0030 */  lw    $t3, 0x30($sp)
/* B55C78 800DEAD8 93AC003B */  lbu   $t4, 0x3b($sp)
/* B55C7C 800DEADC 240D0003 */  li    $t5, 3
.L800DEAE0:
/* B55C80 800DEAE0 15800004 */  bnez  $t4, .L800DEAF4
/* B55C84 800DEAE4 0180F825 */   move  $ra, $t4
/* B55C88 800DEAE8 ACE00000 */  sw    $zero, ($a3)
/* B55C8C 800DEAEC 10000089 */  b     .L800DED14
/* B55C90 800DEAF0 00001025 */   move  $v0, $zero
.L800DEAF4:
/* B55C94 800DEAF4 15A00004 */  bnez  $t5, .L800DEB08
/* B55C98 800DEAF8 01A06025 */   move  $t4, $t5
/* B55C9C 800DEAFC 24020001 */  li    $v0, 1
/* B55CA0 800DEB00 10000084 */  b     .L800DED14
/* B55CA4 800DEB04 ACE20000 */   sw    $v0, ($a3)
.L800DEB08:
/* B55CA8 800DEB08 24020003 */  li    $v0, 3
/* B55CAC 800DEB0C 145F0005 */  bne   $v0, $ra, .L800DEB24
/* B55CB0 800DEB10 00000000 */   nop   
/* B55CB4 800DEB14 144C0003 */  bne   $v0, $t4, .L800DEB24
/* B55CB8 800DEB18 00000000 */   nop   
/* B55CBC 800DEB1C 1000007D */  b     .L800DED14
/* B55CC0 800DEB20 8CE20000 */   lw    $v0, ($a3)
.L800DEB24:
/* B55CC4 800DEB24 145F0004 */  bne   $v0, $ra, .L800DEB38
/* B55CC8 800DEB28 00000000 */   nop   
/* B55CCC 800DEB2C ACE00000 */  sw    $zero, ($a3)
/* B55CD0 800DEB30 10000078 */  b     .L800DED14
/* B55CD4 800DEB34 00001025 */   move  $v0, $zero
.L800DEB38:
/* B55CD8 800DEB38 144C0003 */  bne   $v0, $t4, .L800DEB48
/* B55CDC 800DEB3C 24020001 */   li    $v0, 1
/* B55CE0 800DEB40 10000074 */  b     .L800DED14
/* B55CE4 800DEB44 ACE20000 */   sw    $v0, ($a3)
.L800DEB48:
/* B55CE8 800DEB48 1600002F */  bnez  $s0, .L800DEC08
/* B55CEC 800DEB4C 00000000 */   nop   
/* B55CF0 800DEB50 155F0016 */  bne   $t2, $ra, .L800DEBAC
/* B55CF4 800DEB54 3C048017 */   lui   $a0, %hi(D_801719DC) # $a0, 0x8017
/* B55CF8 800DEB58 848419DC */  lh    $a0, %lo(D_801719DC)($a0)
/* B55CFC 800DEB5C 3C028017 */  lui   $v0, %hi(gAudioContext) # $v0, 0x8017
/* B55D00 800DEB60 2442F180 */  addiu $v0, %lo(gAudioContext) # addiu $v0, $v0, -0xe80
/* B55D04 800DEB64 1880000D */  blez  $a0, .L800DEB9C
/* B55D08 800DEB68 00001825 */   move  $v1, $zero
.L800DEB6C:
/* B55D0C 800DEB6C 8C4E3530 */  lw    $t6, 0x3530($v0)
/* B55D10 800DEB70 000E7FC2 */  srl   $t7, $t6, 0x1f
/* B55D14 800DEB74 51E00006 */  beql  $t7, $zero, .L800DEB90
/* B55D18 800DEB78 24630001 */   addiu $v1, $v1, 1
/* B55D1C 800DEB7C 90583534 */  lbu   $t8, 0x3534($v0)
/* B55D20 800DEB80 84F9001E */  lh    $t9, 0x1e($a3)
/* B55D24 800DEB84 13190005 */  beq   $t8, $t9, .L800DEB9C
/* B55D28 800DEB88 00000000 */   nop   
/* B55D2C 800DEB8C 24630001 */  addiu $v1, $v1, 1
.L800DEB90:
/* B55D30 800DEB90 0064082A */  slt   $at, $v1, $a0
/* B55D34 800DEB94 1420FFF5 */  bnez  $at, .L800DEB6C
/* B55D38 800DEB98 24420160 */   addiu $v0, $v0, 0x160
.L800DEB9C:
/* B55D3C 800DEB9C 14640003 */  bne   $v1, $a0, .L800DEBAC
/* B55D40 800DEBA0 00001025 */   move  $v0, $zero
/* B55D44 800DEBA4 1000005B */  b     .L800DED14
/* B55D48 800DEBA8 ACE00000 */   sw    $zero, ($a3)
.L800DEBAC:
/* B55D4C 800DEBAC 154C0048 */  bne   $t2, $t4, .L800DECD0
/* B55D50 800DEBB0 3C048017 */   lui   $a0, %hi(D_801719DC) # $a0, 0x8017
/* B55D54 800DEBB4 848419DC */  lh    $a0, %lo(D_801719DC)($a0)
/* B55D58 800DEBB8 3C028017 */  lui   $v0, %hi(gAudioContext) # $v0, 0x8017
/* B55D5C 800DEBBC 2442F180 */  addiu $v0, %lo(gAudioContext) # addiu $v0, $v0, -0xe80
/* B55D60 800DEBC0 1880000D */  blez  $a0, .L800DEBF8
/* B55D64 800DEBC4 00001825 */   move  $v1, $zero
.L800DEBC8:
/* B55D68 800DEBC8 8C4E3530 */  lw    $t6, 0x3530($v0)
/* B55D6C 800DEBCC 000E7FC2 */  srl   $t7, $t6, 0x1f
/* B55D70 800DEBD0 51E00006 */  beql  $t7, $zero, .L800DEBEC
/* B55D74 800DEBD4 24630001 */   addiu $v1, $v1, 1
/* B55D78 800DEBD8 90583534 */  lbu   $t8, 0x3534($v0)
/* B55D7C 800DEBDC 84F9002A */  lh    $t9, 0x2a($a3)
/* B55D80 800DEBE0 13190005 */  beq   $t8, $t9, .L800DEBF8
/* B55D84 800DEBE4 00000000 */   nop   
/* B55D88 800DEBE8 24630001 */  addiu $v1, $v1, 1
.L800DEBEC:
/* B55D8C 800DEBEC 0064082A */  slt   $at, $v1, $a0
/* B55D90 800DEBF0 1420FFF5 */  bnez  $at, .L800DEBC8
/* B55D94 800DEBF4 24420160 */   addiu $v0, $v0, 0x160
.L800DEBF8:
/* B55D98 800DEBF8 14640035 */  bne   $v1, $a0, .L800DECD0
/* B55D9C 800DEBFC 24020001 */   li    $v0, 1
/* B55DA0 800DEC00 10000044 */  b     .L800DED14
/* B55DA4 800DEC04 ACE20000 */   sw    $v0, ($a3)
.L800DEC08:
/* B55DA8 800DEC08 56090032 */  bnel  $s0, $t1, .L800DECD4
/* B55DAC 800DEC0C 8CE20000 */   lw    $v0, ($a3)
/* B55DB0 800DEC10 155F0017 */  bne   $t2, $ra, .L800DEC70
/* B55DB4 800DEC14 3C058017 */   lui   $a1, %hi(D_80171A14) # $a1, 0x8017
/* B55DB8 800DEC18 8CA51A14 */  lw    $a1, %lo(D_80171A14)($a1)
/* B55DBC 800DEC1C 00001825 */  move  $v1, $zero
/* B55DC0 800DEC20 3C028017 */  lui   $v0, %hi(D_801726AC) # $v0, 0x8017
/* B55DC4 800DEC24 18A0000E */  blez  $a1, .L800DEC60
/* B55DC8 800DEC28 00000000 */   nop   
/* B55DCC 800DEC2C 8C4226AC */  lw    $v0, %lo(D_801726AC)($v0)
/* B55DD0 800DEC30 84E6001E */  lh    $a2, 0x1e($a3)
.L800DEC34:
/* B55DD4 800DEC34 904F0033 */  lbu   $t7, 0x33($v0)
/* B55DD8 800DEC38 55E60006 */  bnel  $t7, $a2, .L800DEC54
/* B55DDC 800DEC3C 24630001 */   addiu $v1, $v1, 1
/* B55DE0 800DEC40 8C5800C0 */  lw    $t8, 0xc0($v0)
/* B55DE4 800DEC44 0018CFC2 */  srl   $t9, $t8, 0x1f
/* B55DE8 800DEC48 17200005 */  bnez  $t9, .L800DEC60
/* B55DEC 800DEC4C 00000000 */   nop   
/* B55DF0 800DEC50 24630001 */  addiu $v1, $v1, 1
.L800DEC54:
/* B55DF4 800DEC54 0065082A */  slt   $at, $v1, $a1
/* B55DF8 800DEC58 1420FFF6 */  bnez  $at, .L800DEC34
/* B55DFC 800DEC5C 244200E0 */   addiu $v0, $v0, 0xe0
.L800DEC60:
/* B55E00 800DEC60 14650003 */  bne   $v1, $a1, .L800DEC70
/* B55E04 800DEC64 00001025 */   move  $v0, $zero
/* B55E08 800DEC68 1000002A */  b     .L800DED14
/* B55E0C 800DEC6C ACE00000 */   sw    $zero, ($a3)
.L800DEC70:
/* B55E10 800DEC70 154C0017 */  bne   $t2, $t4, .L800DECD0
/* B55E14 800DEC74 3C058017 */   lui   $a1, %hi(D_80171A14) # $a1, 0x8017
/* B55E18 800DEC78 8CA51A14 */  lw    $a1, %lo(D_80171A14)($a1)
/* B55E1C 800DEC7C 00001825 */  move  $v1, $zero
/* B55E20 800DEC80 3C028017 */  lui   $v0, %hi(D_801726AC) # $v0, 0x8017
/* B55E24 800DEC84 18A0000E */  blez  $a1, .L800DECC0
/* B55E28 800DEC88 00000000 */   nop   
/* B55E2C 800DEC8C 8C4226AC */  lw    $v0, %lo(D_801726AC)($v0)
/* B55E30 800DEC90 84E4002A */  lh    $a0, 0x2a($a3)
.L800DEC94:
/* B55E34 800DEC94 904E0033 */  lbu   $t6, 0x33($v0)
/* B55E38 800DEC98 55C40006 */  bnel  $t6, $a0, .L800DECB4
/* B55E3C 800DEC9C 24630001 */   addiu $v1, $v1, 1
/* B55E40 800DECA0 8C4F00C0 */  lw    $t7, 0xc0($v0)
/* B55E44 800DECA4 000FC7C2 */  srl   $t8, $t7, 0x1f
/* B55E48 800DECA8 17000005 */  bnez  $t8, .L800DECC0
/* B55E4C 800DECAC 00000000 */   nop   
/* B55E50 800DECB0 24630001 */  addiu $v1, $v1, 1
.L800DECB4:
/* B55E54 800DECB4 0065082A */  slt   $at, $v1, $a1
/* B55E58 800DECB8 1420FFF6 */  bnez  $at, .L800DEC94
/* B55E5C 800DECBC 244200E0 */   addiu $v0, $v0, 0xe0
.L800DECC0:
/* B55E60 800DECC0 14650003 */  bne   $v1, $a1, .L800DECD0
/* B55E64 800DECC4 24020001 */   li    $v0, 1
/* B55E68 800DECC8 10000012 */  b     .L800DED14
/* B55E6C 800DECCC ACE20000 */   sw    $v0, ($a3)
.L800DECD0:
/* B55E70 800DECD0 8CE20000 */  lw    $v0, ($a3)
.L800DECD4:
/* B55E74 800DECD4 14400007 */  bnez  $v0, .L800DECF4
/* B55E78 800DECD8 00000000 */   nop   
/* B55E7C 800DECDC 553F000E */  bnel  $t1, $ra, .L800DED18
/* B55E80 800DECE0 00027880 */   sll   $t7, $v0, 2
/* B55E84 800DECE4 112C0009 */  beq   $t1, $t4, .L800DED0C
/* B55E88 800DECE8 24020001 */   li    $v0, 1
/* B55E8C 800DECEC 10000009 */  b     .L800DED14
/* B55E90 800DECF0 ACE20000 */   sw    $v0, ($a3)
.L800DECF4:
/* B55E94 800DECF4 552C0008 */  bnel  $t1, $t4, .L800DED18
/* B55E98 800DECF8 00027880 */   sll   $t7, $v0, 2
/* B55E9C 800DECFC 113F0003 */  beq   $t1, $ra, .L800DED0C
/* B55EA0 800DED00 00001025 */   move  $v0, $zero
/* B55EA4 800DED04 10000003 */  b     .L800DED14
/* B55EA8 800DED08 ACE00000 */   sw    $zero, ($a3)
.L800DED0C:
/* B55EAC 800DED0C 100000D4 */  b     .L800DF060
/* B55EB0 800DED10 00001025 */   move  $v0, $zero
.L800DED14:
/* B55EB4 800DED14 00027880 */  sll   $t7, $v0, 2
.L800DED18:
/* B55EB8 800DED18 01E27823 */  subu  $t7, $t7, $v0
/* B55EBC 800DED1C 000F7880 */  sll   $t7, $t7, 2
/* B55EC0 800DED20 00EF2821 */  addu  $a1, $a3, $t7
/* B55EC4 800DED24 84A4001E */  lh    $a0, 0x1e($a1)
/* B55EC8 800DED28 2401FFFF */  li    $at, -1
/* B55ECC 800DED2C 00401825 */  move  $v1, $v0
/* B55ED0 800DED30 10810020 */  beq   $a0, $at, .L800DEDB4
/* B55ED4 800DED34 00000000 */   nop   
/* B55ED8 800DED38 560A0010 */  bnel  $s0, $t2, .L800DED7C
/* B55EDC 800DED3C 0164C021 */   addu  $t8, $t3, $a0
/* B55EE0 800DED40 AFA2002C */  sw    $v0, 0x2c($sp)
/* B55EE4 800DED44 AFA50020 */  sw    $a1, 0x20($sp)
/* B55EE8 800DED48 AFA70024 */  sw    $a3, 0x24($sp)
/* B55EEC 800DED4C AFA8004C */  sw    $t0, 0x4c($sp)
/* B55EF0 800DED50 0C03839B */  jal   func_800E0E6C
/* B55EF4 800DED54 AFAB0030 */   sw    $t3, 0x30($sp)
/* B55EF8 800DED58 8FA50020 */  lw    $a1, 0x20($sp)
/* B55EFC 800DED5C 8FA3002C */  lw    $v1, 0x2c($sp)
/* B55F00 800DED60 8FA70024 */  lw    $a3, 0x24($sp)
/* B55F04 800DED64 8FA8004C */  lw    $t0, 0x4c($sp)
/* B55F08 800DED68 24090001 */  li    $t1, 1
/* B55F0C 800DED6C 240A0002 */  li    $t2, 2
/* B55F10 800DED70 8FAB0030 */  lw    $t3, 0x30($sp)
/* B55F14 800DED74 84A4001E */  lh    $a0, 0x1e($a1)
/* B55F18 800DED78 0164C021 */  addu  $t8, $t3, $a0
.L800DED7C:
/* B55F1C 800DED7C 1609000D */  bne   $s0, $t1, .L800DEDB4
/* B55F20 800DED80 A3000000 */   sb    $zero, ($t8)
/* B55F24 800DED84 84A4001E */  lh    $a0, 0x1e($a1)
/* B55F28 800DED88 AFAB0030 */  sw    $t3, 0x30($sp)
/* B55F2C 800DED8C AFA8004C */  sw    $t0, 0x4c($sp)
/* B55F30 800DED90 AFA70024 */  sw    $a3, 0x24($sp)
/* B55F34 800DED94 0C037812 */  jal   func_800DE048
/* B55F38 800DED98 AFA3002C */   sw    $v1, 0x2c($sp)
/* B55F3C 800DED9C 8FA3002C */  lw    $v1, 0x2c($sp)
/* B55F40 800DEDA0 8FA70024 */  lw    $a3, 0x24($sp)
/* B55F44 800DEDA4 8FA8004C */  lw    $t0, 0x4c($sp)
/* B55F48 800DEDA8 24090001 */  li    $t1, 1
/* B55F4C 800DEDAC 240A0002 */  li    $t2, 2
/* B55F50 800DEDB0 8FAB0030 */  lw    $t3, 0x30($sp)
.L800DEDB4:
/* B55F54 800DEDB4 10600005 */  beqz  $v1, .L800DEDCC
/* B55F58 800DEDB8 250200D8 */   addiu $v0, $t0, 0xd8
/* B55F5C 800DEDBC 10690040 */  beq   $v1, $t1, .L800DEEC0
/* B55F60 800DEDC0 250200D8 */   addiu $v0, $t0, 0xd8
/* B55F64 800DEDC4 100000A6 */  b     .L800DF060
/* B55F68 800DEDC8 00001025 */   move  $v0, $zero
.L800DEDCC:
/* B55F6C 800DEDCC 8C590000 */  lw    $t9, ($v0)
/* B55F70 800DEDD0 2401FFFF */  li    $at, -1
/* B55F74 800DEDD4 ACF90014 */  sw    $t9, 0x14($a3)
/* B55F78 800DEDD8 8FAE005C */  lw    $t6, 0x5c($sp)
/* B55F7C 800DEDDC A4EE001E */  sh    $t6, 0x1e($a3)
/* B55F80 800DEDE0 8FAF0054 */  lw    $t7, 0x54($sp)
/* B55F84 800DEDE4 ACEF0018 */  sw    $t7, 0x18($a3)
/* B55F88 800DEDE8 8FB90054 */  lw    $t9, 0x54($sp)
/* B55F8C 800DEDEC 8C580000 */  lw    $t8, ($v0)
/* B55F90 800DEDF0 03197021 */  addu  $t6, $t8, $t9
/* B55F94 800DEDF4 AC4E0004 */  sw    $t6, 4($v0)
/* B55F98 800DEDF8 84E4002A */  lh    $a0, 0x2a($a3)
/* B55F9C 800DEDFC 5081002B */  beql  $a0, $at, .L800DEEAC
/* B55FA0 800DEE00 8CE30014 */   lw    $v1, 0x14($a3)
/* B55FA4 800DEE04 8CEF0020 */  lw    $t7, 0x20($a3)
/* B55FA8 800DEE08 01EE082B */  sltu  $at, $t7, $t6
/* B55FAC 800DEE0C 50200027 */  beql  $at, $zero, .L800DEEAC
/* B55FB0 800DEE10 8CE30014 */   lw    $v1, 0x14($a3)
/* B55FB4 800DEE14 560A000B */  bnel  $s0, $t2, .L800DEE44
/* B55FB8 800DEE18 0164C821 */   addu  $t9, $t3, $a0
/* B55FBC 800DEE1C AFA20020 */  sw    $v0, 0x20($sp)
/* B55FC0 800DEE20 AFA70024 */  sw    $a3, 0x24($sp)
/* B55FC4 800DEE24 0C03839B */  jal   func_800E0E6C
/* B55FC8 800DEE28 AFAB0030 */   sw    $t3, 0x30($sp)
/* B55FCC 800DEE2C 8FA70024 */  lw    $a3, 0x24($sp)
/* B55FD0 800DEE30 8FA20020 */  lw    $v0, 0x20($sp)
/* B55FD4 800DEE34 24090001 */  li    $t1, 1
/* B55FD8 800DEE38 8FAB0030 */  lw    $t3, 0x30($sp)
/* B55FDC 800DEE3C 84E4002A */  lh    $a0, 0x2a($a3)
/* B55FE0 800DEE40 0164C821 */  addu  $t9, $t3, $a0
.L800DEE44:
/* B55FE4 800DEE44 12000005 */  beqz  $s0, .L800DEE5C
/* B55FE8 800DEE48 A3200000 */   sb    $zero, ($t9)
/* B55FEC 800DEE4C 5209000B */  beql  $s0, $t1, .L800DEE7C
/* B55FF0 800DEE50 84E4002A */   lh    $a0, 0x2a($a3)
/* B55FF4 800DEE54 1000000F */  b     .L800DEE94
/* B55FF8 800DEE58 240EFFFF */   li    $t6, -1
.L800DEE5C:
/* B55FFC 800DEE5C 84E4002A */  lh    $a0, 0x2a($a3)
/* B56000 800DEE60 AFA70024 */  sw    $a3, 0x24($sp)
/* B56004 800DEE64 0C03786D */  jal   func_800DE1B4
/* B56008 800DEE68 AFA20020 */   sw    $v0, 0x20($sp)
/* B5600C 800DEE6C 8FA20020 */  lw    $v0, 0x20($sp)
/* B56010 800DEE70 10000007 */  b     .L800DEE90
/* B56014 800DEE74 8FA70024 */   lw    $a3, 0x24($sp)
/* B56018 800DEE78 84E4002A */  lh    $a0, 0x2a($a3)
.L800DEE7C:
/* B5601C 800DEE7C AFA70024 */  sw    $a3, 0x24($sp)
/* B56020 800DEE80 0C037812 */  jal   func_800DE048
/* B56024 800DEE84 AFA20020 */   sw    $v0, 0x20($sp)
/* B56028 800DEE88 8FA20020 */  lw    $v0, 0x20($sp)
/* B5602C 800DEE8C 8FA70024 */  lw    $a3, 0x24($sp)
.L800DEE90:
/* B56030 800DEE90 240EFFFF */  li    $t6, -1
.L800DEE94:
/* B56034 800DEE94 A4EE002A */  sh    $t6, 0x2a($a3)
/* B56038 800DEE98 8C580008 */  lw    $t8, 8($v0)
/* B5603C 800DEE9C 8C4F0000 */  lw    $t7, ($v0)
/* B56040 800DEEA0 01F8C821 */  addu  $t9, $t7, $t8
/* B56044 800DEEA4 ACF90020 */  sw    $t9, 0x20($a3)
/* B56048 800DEEA8 8CE30014 */  lw    $v1, 0x14($a3)
.L800DEEAC:
/* B5604C 800DEEAC 8CEE0000 */  lw    $t6, ($a3)
/* B56050 800DEEB0 00601025 */  move  $v0, $v1
/* B56054 800DEEB4 39CF0001 */  xori  $t7, $t6, 1
/* B56058 800DEEB8 10000069 */  b     .L800DF060
/* B5605C 800DEEBC ACEF0000 */   sw    $t7, ($a3)
.L800DEEC0:
/* B56060 800DEEC0 8C580000 */  lw    $t8, ($v0)
/* B56064 800DEEC4 8C590008 */  lw    $t9, 8($v0)
/* B56068 800DEEC8 8FAF0054 */  lw    $t7, 0x54($sp)
/* B5606C 800DEECC 2401FFF0 */  li    $at, -16
/* B56070 800DEED0 03197021 */  addu  $t6, $t8, $t9
/* B56074 800DEED4 01CFC023 */  subu  $t8, $t6, $t7
/* B56078 800DEED8 0301C824 */  and   $t9, $t8, $at
/* B5607C 800DEEDC ACF90020 */  sw    $t9, 0x20($a3)
/* B56080 800DEEE0 8FAE005C */  lw    $t6, 0x5c($sp)
/* B56084 800DEEE4 84E6001E */  lh    $a2, 0x1e($a3)
/* B56088 800DEEE8 2401FFFF */  li    $at, -1
/* B5608C 800DEEEC A4EE002A */  sh    $t6, 0x2a($a3)
/* B56090 800DEEF0 8FAF0054 */  lw    $t7, 0x54($sp)
/* B56094 800DEEF4 0320C025 */  move  $t8, $t9
/* B56098 800DEEF8 10C10028 */  beq   $a2, $at, .L800DEF9C
/* B5609C 800DEEFC ACEF0024 */   sw    $t7, 0x24($a3)
/* B560A0 800DEF00 8C590004 */  lw    $t9, 4($v0)
/* B560A4 800DEF04 0319082B */  sltu  $at, $t8, $t9
/* B560A8 800DEF08 10200024 */  beqz  $at, .L800DEF9C
/* B560AC 800DEF0C 00000000 */   nop   
/* B560B0 800DEF10 160A000A */  bne   $s0, $t2, .L800DEF3C
/* B560B4 800DEF14 00C02025 */   move  $a0, $a2
/* B560B8 800DEF18 AFA20020 */  sw    $v0, 0x20($sp)
/* B560BC 800DEF1C AFA70024 */  sw    $a3, 0x24($sp)
/* B560C0 800DEF20 0C03839B */  jal   func_800E0E6C
/* B560C4 800DEF24 AFAB0030 */   sw    $t3, 0x30($sp)
/* B560C8 800DEF28 8FA70024 */  lw    $a3, 0x24($sp)
/* B560CC 800DEF2C 8FA20020 */  lw    $v0, 0x20($sp)
/* B560D0 800DEF30 24090001 */  li    $t1, 1
/* B560D4 800DEF34 8FAB0030 */  lw    $t3, 0x30($sp)
/* B560D8 800DEF38 84E6001E */  lh    $a2, 0x1e($a3)
.L800DEF3C:
/* B560DC 800DEF3C 01667021 */  addu  $t6, $t3, $a2
/* B560E0 800DEF40 12000005 */  beqz  $s0, .L800DEF58
/* B560E4 800DEF44 A1C00000 */   sb    $zero, ($t6)
/* B560E8 800DEF48 5209000B */  beql  $s0, $t1, .L800DEF78
/* B560EC 800DEF4C 84E4001E */   lh    $a0, 0x1e($a3)
/* B560F0 800DEF50 1000000F */  b     .L800DEF90
/* B560F4 800DEF54 240FFFFF */   li    $t7, -1
.L800DEF58:
/* B560F8 800DEF58 84E4001E */  lh    $a0, 0x1e($a3)
/* B560FC 800DEF5C AFA70024 */  sw    $a3, 0x24($sp)
/* B56100 800DEF60 0C03786D */  jal   func_800DE1B4
/* B56104 800DEF64 AFA20020 */   sw    $v0, 0x20($sp)
/* B56108 800DEF68 8FA20020 */  lw    $v0, 0x20($sp)
/* B5610C 800DEF6C 10000007 */  b     .L800DEF8C
/* B56110 800DEF70 8FA70024 */   lw    $a3, 0x24($sp)
/* B56114 800DEF74 84E4001E */  lh    $a0, 0x1e($a3)
.L800DEF78:
/* B56118 800DEF78 AFA70024 */  sw    $a3, 0x24($sp)
/* B5611C 800DEF7C 0C037812 */  jal   func_800DE048
/* B56120 800DEF80 AFA20020 */   sw    $v0, 0x20($sp)
/* B56124 800DEF84 8FA20020 */  lw    $v0, 0x20($sp)
/* B56128 800DEF88 8FA70024 */  lw    $a3, 0x24($sp)
.L800DEF8C:
/* B5612C 800DEF8C 240FFFFF */  li    $t7, -1
.L800DEF90:
/* B56130 800DEF90 A4EF001E */  sh    $t7, 0x1e($a3)
/* B56134 800DEF94 8C580000 */  lw    $t8, ($v0)
/* B56138 800DEF98 AC580004 */  sw    $t8, 4($v0)
.L800DEF9C:
/* B5613C 800DEF9C 1000FFC3 */  b     .L800DEEAC
/* B56140 800DEFA0 8CE30020 */   lw    $v1, 0x20($a3)
/* B56144 800DEFA4 1000002E */  b     .L800DF060
/* B56148 800DEFA8 00001025 */   move  $v0, $zero
.L800DEFAC:
/* B5614C 800DEFAC AFA60058 */  sw    $a2, 0x58($sp)
/* B56150 800DEFB0 AFA8004C */  sw    $t0, 0x4c($sp)
/* B56154 800DEFB4 0C0378F7 */  jal   func_800DE3DC
/* B56158 800DEFB8 AFAB0030 */   sw    $t3, 0x30($sp)
/* B5615C 800DEFBC 8FA8004C */  lw    $t0, 0x4c($sp)
/* B56160 800DEFC0 2407000C */  li    $a3, 12
/* B56164 800DEFC4 8FA60058 */  lw    $a2, 0x58($sp)
/* B56168 800DEFC8 8D190000 */  lw    $t9, ($t0)
/* B5616C 800DEFCC 8FAB0030 */  lw    $t3, 0x30($sp)
/* B56170 800DEFD0 24090001 */  li    $t1, 1
/* B56174 800DEFD4 03270019 */  multu $t9, $a3
/* B56178 800DEFD8 240A0002 */  li    $t2, 2
/* B5617C 800DEFDC 00007012 */  mflo  $t6
/* B56180 800DEFE0 010E7821 */  addu  $t7, $t0, $t6
/* B56184 800DEFE4 1440000B */  bnez  $v0, .L800DF014
/* B56188 800DEFE8 ADE20014 */   sw    $v0, 0x14($t7)
/* B5618C 800DEFEC 10C00007 */  beqz  $a2, .L800DF00C
/* B56190 800DEFF0 00000000 */   nop   
/* B56194 800DEFF4 10C90005 */  beq   $a2, $t1, .L800DF00C
/* B56198 800DEFF8 00000000 */   nop   
/* B5619C 800DEFFC 54CA0006 */  bnel  $a2, $t2, .L800DF018
/* B561A0 800DF000 8D190000 */   lw    $t9, ($t0)
/* B561A4 800DF004 1000FE40 */  b     .L800DE908
/* B561A8 800DF008 00003025 */   move  $a2, $zero
.L800DF00C:
/* B561AC 800DF00C 10000014 */  b     .L800DF060
/* B561B0 800DF010 00001025 */   move  $v0, $zero
.L800DF014:
/* B561B4 800DF014 8D190000 */  lw    $t9, ($t0)
.L800DF018:
/* B561B8 800DF018 8FB8005C */  lw    $t8, 0x5c($sp)
/* B561BC 800DF01C 03270019 */  multu $t9, $a3
/* B561C0 800DF020 00007012 */  mflo  $t6
/* B561C4 800DF024 010E7821 */  addu  $t7, $t0, $t6
/* B561C8 800DF028 A5F8001E */  sh    $t8, 0x1e($t7)
/* B561CC 800DF02C 8D0E0000 */  lw    $t6, ($t0)
/* B561D0 800DF030 8FB90054 */  lw    $t9, 0x54($sp)
/* B561D4 800DF034 01C70019 */  multu $t6, $a3
/* B561D8 800DF038 0000C012 */  mflo  $t8
/* B561DC 800DF03C 01187821 */  addu  $t7, $t0, $t8
/* B561E0 800DF040 ADF90018 */  sw    $t9, 0x18($t7)
/* B561E4 800DF044 8D030000 */  lw    $v1, ($t0)
/* B561E8 800DF048 00670019 */  multu $v1, $a3
/* B561EC 800DF04C 24790001 */  addiu $t9, $v1, 1
/* B561F0 800DF050 00007012 */  mflo  $t6
/* B561F4 800DF054 010EC021 */  addu  $t8, $t0, $t6
/* B561F8 800DF058 8F020014 */  lw    $v0, 0x14($t8)
/* B561FC 800DF05C AD190000 */  sw    $t9, ($t0)
.L800DF060:
/* B56200 800DF060 8FBF001C */  lw    $ra, 0x1c($sp)
/* B56204 800DF064 8FB00018 */  lw    $s0, 0x18($sp)
/* B56208 800DF068 27BD0050 */  addiu $sp, $sp, 0x50
/* B5620C 800DF06C 03E00008 */  jr    $ra
/* B56210 800DF070 00000000 */   nop   

glabel func_800DF074
/* B56214 800DF074 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B56218 800DF078 AFBF0014 */  sw    $ra, 0x14($sp)
/* B5621C 800DF07C AFA5001C */  sw    $a1, 0x1c($sp)
/* B56220 800DF080 AFA40018 */  sw    $a0, 0x18($sp)
/* B56224 800DF084 AFA60020 */  sw    $a2, 0x20($sp)
/* B56228 800DF088 0C03813A */  jal   func_800E04E8
/* B5622C 800DF08C 00C02825 */   move  $a1, $a2
/* B56230 800DF090 10400003 */  beqz  $v0, .L800DF0A0
/* B56234 800DF094 8FA5001C */   lw    $a1, 0x1c($sp)
/* B56238 800DF098 10000009 */  b     .L800DF0C0
/* B5623C 800DF09C 8FBF0014 */   lw    $ra, 0x14($sp)
.L800DF0A0:
/* B56240 800DF0A0 24010003 */  li    $at, 3
/* B56244 800DF0A4 14A10003 */  bne   $a1, $at, .L800DF0B4
/* B56248 800DF0A8 8FA40018 */   lw    $a0, 0x18($sp)
/* B5624C 800DF0AC 10000003 */  b     .L800DF0BC
/* B56250 800DF0B0 00001025 */   move  $v0, $zero
.L800DF0B4:
/* B56254 800DF0B4 0C037C33 */  jal   func_800DF0CC
/* B56258 800DF0B8 8FA60020 */   lw    $a2, 0x20($sp)
.L800DF0BC:
/* B5625C 800DF0BC 8FBF0014 */  lw    $ra, 0x14($sp)
.L800DF0C0:
/* B56260 800DF0C0 27BD0018 */  addiu $sp, $sp, 0x18
/* B56264 800DF0C4 03E00008 */  jr    $ra
/* B56268 800DF0C8 00000000 */   nop   

glabel func_800DF0CC
/* B5626C 800DF0CC 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B56270 800DF0D0 AFBF0014 */  sw    $ra, 0x14($sp)
/* B56274 800DF0D4 AFA50024 */  sw    $a1, 0x24($sp)
/* B56278 800DF0D8 10800009 */  beqz  $a0, .L800DF100
/* B5627C 800DF0DC 00803825 */   move  $a3, $a0
/* B56280 800DF0E0 24010001 */  li    $at, 1
/* B56284 800DF0E4 10810009 */  beq   $a0, $at, .L800DF10C
/* B56288 800DF0E8 3C058017 */   lui   $a1, %hi(D_80171CB0)
/* B5628C 800DF0EC 24010002 */  li    $at, 2
/* B56290 800DF0F0 10810008 */  beq   $a0, $at, .L800DF114
/* B56294 800DF0F4 3C058017 */   lui   $a1, %hi(D_80171DC0)
/* B56298 800DF0F8 10000007 */  b     .L800DF118
/* B5629C 800DF0FC 8FA50018 */   lw    $a1, 0x18($sp)
.L800DF100:
/* B562A0 800DF100 3C058017 */  lui   $a1, %hi(D_80171BA0) # $a1, 0x8017
/* B562A4 800DF104 10000004 */  b     .L800DF118
/* B562A8 800DF108 24A51BA0 */   addiu $a1, %lo(D_80171BA0) # addiu $a1, $a1, 0x1ba0
.L800DF10C:
/* B562AC 800DF10C 10000002 */  b     .L800DF118
/* B562B0 800DF110 24A51CB0 */   addiu $a1, %lo(D_80171CB0)
.L800DF114:
/* B562B4 800DF114 24A51DC0 */  addiu $a1, %lo(D_80171DC0)
.L800DF118:
/* B562B8 800DF118 8FAE0024 */  lw    $t6, 0x24($sp)
/* B562BC 800DF11C 24A300D4 */  addiu $v1, $a1, 0xd4
/* B562C0 800DF120 55C00011 */  bnezl $t6, .L800DF168
/* B562C4 800DF124 8CA80000 */   lw    $t0, ($a1)
/* B562C8 800DF128 846F001E */  lh    $t7, 0x1e($v1)
/* B562CC 800DF12C 24180001 */  li    $t8, 1
/* B562D0 800DF130 54CF0005 */  bnel  $a2, $t7, .L800DF148
/* B562D4 800DF134 8479002A */   lh    $t9, 0x2a($v1)
/* B562D8 800DF138 AC780000 */  sw    $t8, ($v1)
/* B562DC 800DF13C 10000022 */  b     .L800DF1C8
/* B562E0 800DF140 8C620014 */   lw    $v0, 0x14($v1)
/* B562E4 800DF144 8479002A */  lh    $t9, 0x2a($v1)
.L800DF148:
/* B562E8 800DF148 14D90004 */  bne   $a2, $t9, .L800DF15C
/* B562EC 800DF14C 00000000 */   nop   
/* B562F0 800DF150 AC600000 */  sw    $zero, ($v1)
/* B562F4 800DF154 1000001C */  b     .L800DF1C8
/* B562F8 800DF158 8C620020 */   lw    $v0, 0x20($v1)
.L800DF15C:
/* B562FC 800DF15C 1000001A */  b     .L800DF1C8
/* B56300 800DF160 00001025 */   move  $v0, $zero
/* B56304 800DF164 8CA80000 */  lw    $t0, ($a1)
.L800DF168:
/* B56308 800DF168 00A02025 */  move  $a0, $a1
/* B5630C 800DF16C 00001025 */  move  $v0, $zero
/* B56310 800DF170 1100000C */  beqz  $t0, .L800DF1A4
/* B56314 800DF174 00A01825 */   move  $v1, $a1
/* B56318 800DF178 8469001E */  lh    $t1, 0x1e($v1)
.L800DF17C:
/* B5631C 800DF17C 54C90004 */  bnel  $a2, $t1, .L800DF190
/* B56320 800DF180 8C8A0000 */   lw    $t2, ($a0)
/* B56324 800DF184 10000010 */  b     .L800DF1C8
/* B56328 800DF188 8C620014 */   lw    $v0, 0x14($v1)
/* B5632C 800DF18C 8C8A0000 */  lw    $t2, ($a0)
.L800DF190:
/* B56330 800DF190 24420001 */  addiu $v0, $v0, 1
/* B56334 800DF194 2463000C */  addiu $v1, $v1, 0xc
/* B56338 800DF198 004A082B */  sltu  $at, $v0, $t2
/* B5633C 800DF19C 5420FFF7 */  bnezl $at, .L800DF17C
/* B56340 800DF1A0 8469001E */   lh    $t1, 0x1e($v1)
.L800DF1A4:
/* B56344 800DF1A4 8FAB0024 */  lw    $t3, 0x24($sp)
/* B56348 800DF1A8 24010002 */  li    $at, 2
/* B5634C 800DF1AC 00E02025 */  move  $a0, $a3
/* B56350 800DF1B0 15610005 */  bne   $t3, $at, .L800DF1C8
/* B56354 800DF1B4 00001025 */   move  $v0, $zero
/* B56358 800DF1B8 0C037C1D */  jal   func_800DF074
/* B5635C 800DF1BC 00002825 */   move  $a1, $zero
/* B56360 800DF1C0 10000002 */  b     .L800DF1CC
/* B56364 800DF1C4 8FBF0014 */   lw    $ra, 0x14($sp)
.L800DF1C8:
/* B56368 800DF1C8 8FBF0014 */  lw    $ra, 0x14($sp)
.L800DF1CC:
/* B5636C 800DF1CC 27BD0020 */  addiu $sp, $sp, 0x20
/* B56370 800DF1D0 03E00008 */  jr    $ra
/* B56374 800DF1D4 00000000 */   nop   

glabel func_800DF1D8
/* B56378 800DF1D8 3C018015 */  lui   $at, %hi(D_801493F8)
/* B5637C 800DF1DC C42093F8 */  lwc1  $f0, %lo(D_801493F8)($at)
/* B56380 800DF1E0 27BDFFB0 */  addiu $sp, $sp, -0x50
/* B56384 800DF1E4 27A40014 */  addiu $a0, $sp, 0x14
/* B56388 800DF1E8 46007102 */  mul.s $f4, $f14, $f0
/* B5638C 800DF1EC 27A2002C */  addiu $v0, $sp, 0x2c
/* B56390 800DF1F0 24C30004 */  addiu $v1, $a2, 4
/* B56394 800DF1F4 46006182 */  mul.s $f6, $f12, $f0
/* B56398 800DF1F8 00000000 */  nop   
/* B5639C 800DF1FC 460C7202 */  mul.s $f8, $f14, $f12
/* B563A0 800DF200 E7A4000C */  swc1  $f4, 0xc($sp)
/* B563A4 800DF204 E7A6002C */  swc1  $f6, 0x2c($sp)
/* B563A8 800DF208 46004282 */  mul.s $f10, $f8, $f0
/* B563AC 800DF20C 00000000 */  nop   
/* B563B0 800DF210 460C6402 */  mul.s $f16, $f12, $f12
/* B563B4 800DF214 E7AA0010 */  swc1  $f10, 0x10($sp)
/* B563B8 800DF218 460E8480 */  add.s $f18, $f16, $f14
/* B563BC 800DF21C 46009102 */  mul.s $f4, $f18, $f0
/* B563C0 800DF220 E7A40030 */  swc1  $f4, 0x30($sp)
.L800DF224:
/* B563C4 800DF224 C486FFFC */  lwc1  $f6, -4($a0)
/* B563C8 800DF228 C48AFFF8 */  lwc1  $f10, -8($a0)
/* B563CC 800DF22C 240F0001 */  li    $t7, 1
/* B563D0 800DF230 460C3202 */  mul.s $f8, $f6, $f12
/* B563D4 800DF234 3C014F00 */  li    $at, 0x4F000000 # 0.000000
/* B563D8 800DF238 460A7402 */  mul.s $f16, $f14, $f10
/* B563DC 800DF23C 46104480 */  add.s $f18, $f8, $f16
/* B563E0 800DF240 444EF800 */  cfc1  $t6, $31
/* B563E4 800DF244 44CFF800 */  ctc1  $t7, $31
/* B563E8 800DF248 00000000 */  nop   
/* B563EC 800DF24C 46009124 */  cvt.w.s $f4, $f18
/* B563F0 800DF250 444FF800 */  cfc1  $t7, $31
/* B563F4 800DF254 00000000 */  nop   
/* B563F8 800DF258 31EF0078 */  andi  $t7, $t7, 0x78
/* B563FC 800DF25C 51E00013 */  beql  $t7, $zero, .L800DF2AC
/* B56400 800DF260 440F2000 */   mfc1  $t7, $f4
/* B56404 800DF264 44812000 */  mtc1  $at, $f4
/* B56408 800DF268 240F0001 */  li    $t7, 1
/* B5640C 800DF26C 46049101 */  sub.s $f4, $f18, $f4
/* B56410 800DF270 44CFF800 */  ctc1  $t7, $31
/* B56414 800DF274 00000000 */  nop   
/* B56418 800DF278 46002124 */  cvt.w.s $f4, $f4
/* B5641C 800DF27C 444FF800 */  cfc1  $t7, $31
/* B56420 800DF280 00000000 */  nop   
/* B56424 800DF284 31EF0078 */  andi  $t7, $t7, 0x78
/* B56428 800DF288 15E00005 */  bnez  $t7, .L800DF2A0
/* B5642C 800DF28C 00000000 */   nop   
/* B56430 800DF290 440F2000 */  mfc1  $t7, $f4
/* B56434 800DF294 3C018000 */  lui   $at, 0x8000
/* B56438 800DF298 10000007 */  b     .L800DF2B8
/* B5643C 800DF29C 01E17825 */   or    $t7, $t7, $at
.L800DF2A0:
/* B56440 800DF2A0 10000005 */  b     .L800DF2B8
/* B56444 800DF2A4 240FFFFF */   li    $t7, -1
/* B56448 800DF2A8 440F2000 */  mfc1  $t7, $f4
.L800DF2AC:
/* B5644C 800DF2AC 00000000 */  nop   
/* B56450 800DF2B0 05E0FFFB */  bltz  $t7, .L800DF2A0
/* B56454 800DF2B4 00000000 */   nop   
.L800DF2B8:
/* B56458 800DF2B8 A46F0000 */  sh    $t7, ($v1)
/* B5645C 800DF2BC 44CEF800 */  ctc1  $t6, $31
/* B56460 800DF2C0 C486001C */  lwc1  $f6, 0x1c($a0)
/* B56464 800DF2C4 C4880018 */  lwc1  $f8, 0x18($a0)
/* B56468 800DF2C8 24190001 */  li    $t9, 1
/* B5646C 800DF2CC 460C3282 */  mul.s $f10, $f6, $f12
/* B56470 800DF2D0 24840004 */  addiu $a0, $a0, 4
/* B56474 800DF2D4 3C014F00 */  li    $at, 0x4F000000 # 0.000000
/* B56478 800DF2D8 46087402 */  mul.s $f16, $f14, $f8
/* B5647C 800DF2DC 46105480 */  add.s $f18, $f10, $f16
/* B56480 800DF2E0 4458F800 */  cfc1  $t8, $31
/* B56484 800DF2E4 44D9F800 */  ctc1  $t9, $31
/* B56488 800DF2E8 00000000 */  nop   
/* B5648C 800DF2EC 46009124 */  cvt.w.s $f4, $f18
/* B56490 800DF2F0 4459F800 */  cfc1  $t9, $31
/* B56494 800DF2F4 00000000 */  nop   
/* B56498 800DF2F8 33390078 */  andi  $t9, $t9, 0x78
/* B5649C 800DF2FC 53200013 */  beql  $t9, $zero, .L800DF34C
/* B564A0 800DF300 44192000 */   mfc1  $t9, $f4
/* B564A4 800DF304 44812000 */  mtc1  $at, $f4
/* B564A8 800DF308 24190001 */  li    $t9, 1
/* B564AC 800DF30C 46049101 */  sub.s $f4, $f18, $f4
/* B564B0 800DF310 44D9F800 */  ctc1  $t9, $31
/* B564B4 800DF314 00000000 */  nop   
/* B564B8 800DF318 46002124 */  cvt.w.s $f4, $f4
/* B564BC 800DF31C 4459F800 */  cfc1  $t9, $31
/* B564C0 800DF320 00000000 */  nop   
/* B564C4 800DF324 33390078 */  andi  $t9, $t9, 0x78
/* B564C8 800DF328 17200005 */  bnez  $t9, .L800DF340
/* B564CC 800DF32C 00000000 */   nop   
/* B564D0 800DF330 44192000 */  mfc1  $t9, $f4
/* B564D4 800DF334 3C018000 */  lui   $at, 0x8000
/* B564D8 800DF338 10000007 */  b     .L800DF358
/* B564DC 800DF33C 0321C825 */   or    $t9, $t9, $at
.L800DF340:
/* B564E0 800DF340 10000005 */  b     .L800DF358
/* B564E4 800DF344 2419FFFF */   li    $t9, -1
/* B564E8 800DF348 44192000 */  mfc1  $t9, $f4
.L800DF34C:
/* B564EC 800DF34C 00000000 */  nop   
/* B564F0 800DF350 0720FFFB */  bltz  $t9, .L800DF340
/* B564F4 800DF354 00000000 */   nop   
.L800DF358:
/* B564F8 800DF358 0082082B */  sltu  $at, $a0, $v0
/* B564FC 800DF35C 44D8F800 */  ctc1  $t8, $31
/* B56500 800DF360 24630002 */  addiu $v1, $v1, 2
/* B56504 800DF364 1420FFAF */  bnez  $at, .L800DF224
/* B56508 800DF368 A479000E */   sh    $t9, 0xe($v1)
/* B5650C 800DF36C 00C01825 */  move  $v1, $a2
/* B56510 800DF370 27A4000C */  addiu $a0, $sp, 0xc
/* B56514 800DF374 27A2004C */  addiu $v0, $sp, 0x4c
.L800DF378:
/* B56518 800DF378 4448F800 */  cfc1  $t0, $31
/* B5651C 800DF37C 24090001 */  li    $t1, 1
/* B56520 800DF380 44C9F800 */  ctc1  $t1, $31
/* B56524 800DF384 C4860000 */  lwc1  $f6, ($a0)
/* B56528 800DF388 3C014F00 */  li    $at, 0x4F000000 # 0.000000
/* B5652C 800DF38C 46003224 */  cvt.w.s $f8, $f6
/* B56530 800DF390 4449F800 */  cfc1  $t1, $31
/* B56534 800DF394 00000000 */  nop   
/* B56538 800DF398 31290078 */  andi  $t1, $t1, 0x78
/* B5653C 800DF39C 51200013 */  beql  $t1, $zero, .L800DF3EC
/* B56540 800DF3A0 44094000 */   mfc1  $t1, $f8
/* B56544 800DF3A4 44814000 */  mtc1  $at, $f8
/* B56548 800DF3A8 24090001 */  li    $t1, 1
/* B5654C 800DF3AC 46083201 */  sub.s $f8, $f6, $f8
/* B56550 800DF3B0 44C9F800 */  ctc1  $t1, $31
/* B56554 800DF3B4 00000000 */  nop   
/* B56558 800DF3B8 46004224 */  cvt.w.s $f8, $f8
/* B5655C 800DF3BC 4449F800 */  cfc1  $t1, $31
/* B56560 800DF3C0 00000000 */  nop   
/* B56564 800DF3C4 31290078 */  andi  $t1, $t1, 0x78
/* B56568 800DF3C8 15200005 */  bnez  $t1, .L800DF3E0
/* B5656C 800DF3CC 00000000 */   nop   
/* B56570 800DF3D0 44094000 */  mfc1  $t1, $f8
/* B56574 800DF3D4 3C018000 */  lui   $at, 0x8000
/* B56578 800DF3D8 10000007 */  b     .L800DF3F8
/* B5657C 800DF3DC 01214825 */   or    $t1, $t1, $at
.L800DF3E0:
/* B56580 800DF3E0 10000005 */  b     .L800DF3F8
/* B56584 800DF3E4 2409FFFF */   li    $t1, -1
/* B56588 800DF3E8 44094000 */  mfc1  $t1, $f8
.L800DF3EC:
/* B5658C 800DF3EC 00000000 */  nop   
/* B56590 800DF3F0 0520FFFB */  bltz  $t1, .L800DF3E0
/* B56594 800DF3F4 00000000 */   nop   
.L800DF3F8:
/* B56598 800DF3F8 44C8F800 */  ctc1  $t0, $31
/* B5659C 800DF3FC 240B0001 */  li    $t3, 1
/* B565A0 800DF400 A4690000 */  sh    $t1, ($v1)
/* B565A4 800DF404 C48A0004 */  lwc1  $f10, 4($a0)
/* B565A8 800DF408 444AF800 */  cfc1  $t2, $31
/* B565AC 800DF40C 44CBF800 */  ctc1  $t3, $31
/* B565B0 800DF410 3C014F00 */  li    $at, 0x4F000000 # 0.000000
/* B565B4 800DF414 46005424 */  cvt.w.s $f16, $f10
/* B565B8 800DF418 444BF800 */  cfc1  $t3, $31
/* B565BC 800DF41C 00000000 */  nop   
/* B565C0 800DF420 316B0078 */  andi  $t3, $t3, 0x78
/* B565C4 800DF424 51600013 */  beql  $t3, $zero, .L800DF474
/* B565C8 800DF428 440B8000 */   mfc1  $t3, $f16
/* B565CC 800DF42C 44818000 */  mtc1  $at, $f16
/* B565D0 800DF430 240B0001 */  li    $t3, 1
/* B565D4 800DF434 46105401 */  sub.s $f16, $f10, $f16
/* B565D8 800DF438 44CBF800 */  ctc1  $t3, $31
/* B565DC 800DF43C 00000000 */  nop   
/* B565E0 800DF440 46008424 */  cvt.w.s $f16, $f16
/* B565E4 800DF444 444BF800 */  cfc1  $t3, $31
/* B565E8 800DF448 00000000 */  nop   
/* B565EC 800DF44C 316B0078 */  andi  $t3, $t3, 0x78
/* B565F0 800DF450 15600005 */  bnez  $t3, .L800DF468
/* B565F4 800DF454 00000000 */   nop   
/* B565F8 800DF458 440B8000 */  mfc1  $t3, $f16
/* B565FC 800DF45C 3C018000 */  lui   $at, 0x8000
/* B56600 800DF460 10000007 */  b     .L800DF480
/* B56604 800DF464 01615825 */   or    $t3, $t3, $at
.L800DF468:
/* B56608 800DF468 10000005 */  b     .L800DF480
/* B5660C 800DF46C 240BFFFF */   li    $t3, -1
/* B56610 800DF470 440B8000 */  mfc1  $t3, $f16
.L800DF474:
/* B56614 800DF474 00000000 */  nop   
/* B56618 800DF478 0560FFFB */  bltz  $t3, .L800DF468
/* B5661C 800DF47C 00000000 */   nop   
.L800DF480:
/* B56620 800DF480 44CAF800 */  ctc1  $t2, $31
/* B56624 800DF484 A46B0002 */  sh    $t3, 2($v1)
/* B56628 800DF488 240D0001 */  li    $t5, 1
/* B5662C 800DF48C C4920008 */  lwc1  $f18, 8($a0)
/* B56630 800DF490 444CF800 */  cfc1  $t4, $31
/* B56634 800DF494 44CDF800 */  ctc1  $t5, $31
/* B56638 800DF498 3C014F00 */  li    $at, 0x4F000000 # 0.000000
/* B5663C 800DF49C 46009124 */  cvt.w.s $f4, $f18
/* B56640 800DF4A0 444DF800 */  cfc1  $t5, $31
/* B56644 800DF4A4 00000000 */  nop   
/* B56648 800DF4A8 31AD0078 */  andi  $t5, $t5, 0x78
/* B5664C 800DF4AC 51A00013 */  beql  $t5, $zero, .L800DF4FC
/* B56650 800DF4B0 440D2000 */   mfc1  $t5, $f4
/* B56654 800DF4B4 44812000 */  mtc1  $at, $f4
/* B56658 800DF4B8 240D0001 */  li    $t5, 1
/* B5665C 800DF4BC 46049101 */  sub.s $f4, $f18, $f4
/* B56660 800DF4C0 44CDF800 */  ctc1  $t5, $31
/* B56664 800DF4C4 00000000 */  nop   
/* B56668 800DF4C8 46002124 */  cvt.w.s $f4, $f4
/* B5666C 800DF4CC 444DF800 */  cfc1  $t5, $31
/* B56670 800DF4D0 00000000 */  nop   
/* B56674 800DF4D4 31AD0078 */  andi  $t5, $t5, 0x78
/* B56678 800DF4D8 15A00005 */  bnez  $t5, .L800DF4F0
/* B5667C 800DF4DC 00000000 */   nop   
/* B56680 800DF4E0 440D2000 */  mfc1  $t5, $f4
/* B56684 800DF4E4 3C018000 */  lui   $at, 0x8000
/* B56688 800DF4E8 10000007 */  b     .L800DF508
/* B5668C 800DF4EC 01A16825 */   or    $t5, $t5, $at
.L800DF4F0:
/* B56690 800DF4F0 10000005 */  b     .L800DF508
/* B56694 800DF4F4 240DFFFF */   li    $t5, -1
/* B56698 800DF4F8 440D2000 */  mfc1  $t5, $f4
.L800DF4FC:
/* B5669C 800DF4FC 00000000 */  nop   
/* B566A0 800DF500 05A0FFFB */  bltz  $t5, .L800DF4F0
/* B566A4 800DF504 00000000 */   nop   
.L800DF508:
/* B566A8 800DF508 44CCF800 */  ctc1  $t4, $31
/* B566AC 800DF50C A46D0004 */  sh    $t5, 4($v1)
/* B566B0 800DF510 240F0001 */  li    $t7, 1
/* B566B4 800DF514 C486000C */  lwc1  $f6, 0xc($a0)
/* B566B8 800DF518 444EF800 */  cfc1  $t6, $31
/* B566BC 800DF51C 44CFF800 */  ctc1  $t7, $31
/* B566C0 800DF520 24840010 */  addiu $a0, $a0, 0x10
/* B566C4 800DF524 3C014F00 */  li    $at, 0x4F000000 # 0.000000
/* B566C8 800DF528 46003224 */  cvt.w.s $f8, $f6
/* B566CC 800DF52C 444FF800 */  cfc1  $t7, $31
/* B566D0 800DF530 00000000 */  nop   
/* B566D4 800DF534 31EF0078 */  andi  $t7, $t7, 0x78
/* B566D8 800DF538 51E00013 */  beql  $t7, $zero, .L800DF588
/* B566DC 800DF53C 440F4000 */   mfc1  $t7, $f8
/* B566E0 800DF540 44814000 */  mtc1  $at, $f8
/* B566E4 800DF544 240F0001 */  li    $t7, 1
/* B566E8 800DF548 46083201 */  sub.s $f8, $f6, $f8
/* B566EC 800DF54C 44CFF800 */  ctc1  $t7, $31
/* B566F0 800DF550 00000000 */  nop   
/* B566F4 800DF554 46004224 */  cvt.w.s $f8, $f8
/* B566F8 800DF558 444FF800 */  cfc1  $t7, $31
/* B566FC 800DF55C 00000000 */  nop   
/* B56700 800DF560 31EF0078 */  andi  $t7, $t7, 0x78
/* B56704 800DF564 15E00005 */  bnez  $t7, .L800DF57C
/* B56708 800DF568 00000000 */   nop   
/* B5670C 800DF56C 440F4000 */  mfc1  $t7, $f8
/* B56710 800DF570 3C018000 */  lui   $at, 0x8000
/* B56714 800DF574 10000007 */  b     .L800DF594
/* B56718 800DF578 01E17825 */   or    $t7, $t7, $at
.L800DF57C:
/* B5671C 800DF57C 10000005 */  b     .L800DF594
/* B56720 800DF580 240FFFFF */   li    $t7, -1
/* B56724 800DF584 440F4000 */  mfc1  $t7, $f8
.L800DF588:
/* B56728 800DF588 00000000 */  nop   
/* B5672C 800DF58C 05E0FFFB */  bltz  $t7, .L800DF57C
/* B56730 800DF590 00000000 */   nop   
.L800DF594:
/* B56734 800DF594 44CEF800 */  ctc1  $t6, $31
/* B56738 800DF598 A46F0006 */  sh    $t7, 6($v1)
/* B5673C 800DF59C 1482FF76 */  bne   $a0, $v0, .L800DF378
/* B56740 800DF5A0 24630008 */   addiu $v1, $v1, 8
/* B56744 800DF5A4 03E00008 */  jr    $ra
/* B56748 800DF5A8 27BD0050 */   addiu $sp, $sp, 0x50

glabel func_800DF5AC
/* B5674C 800DF5AC 00801825 */  move  $v1, $a0
/* B56750 800DF5B0 24040008 */  li    $a0, 8
/* B56754 800DF5B4 00001025 */  move  $v0, $zero
.L800DF5B8:
/* B56758 800DF5B8 24420004 */  addiu $v0, $v0, 4
/* B5675C 800DF5BC A4600002 */  sh    $zero, 2($v1)
/* B56760 800DF5C0 A4600004 */  sh    $zero, 4($v1)
/* B56764 800DF5C4 A4600006 */  sh    $zero, 6($v1)
/* B56768 800DF5C8 24630008 */  addiu $v1, $v1, 8
/* B5676C 800DF5CC 1444FFFA */  bne   $v0, $a0, .L800DF5B8
/* B56770 800DF5D0 A460FFF8 */   sh    $zero, -8($v1)
/* B56774 800DF5D4 03E00008 */  jr    $ra
/* B56778 800DF5D8 00000000 */   nop   

glabel func_800DF5DC
/* B5677C 800DF5DC 3C188013 */  lui   $t8, %hi(D_80130228) # $t8, 0x8013
/* B56780 800DF5E0 27180228 */  addiu $t8, %lo(D_80130228) # addiu $t8, $t8, 0x228
/* B56784 800DF5E4 00801825 */  move  $v1, $a0
/* B56788 800DF5E8 00057900 */  sll   $t7, $a1, 4
/* B5678C 800DF5EC 01F83021 */  addu  $a2, $t7, $t8
/* B56790 800DF5F0 24040008 */  li    $a0, 8
/* B56794 800DF5F4 00001025 */  move  $v0, $zero
.L800DF5F8:
/* B56798 800DF5F8 84D90000 */  lh    $t9, ($a2)
/* B5679C 800DF5FC 24420004 */  addiu $v0, $v0, 4
/* B567A0 800DF600 24630008 */  addiu $v1, $v1, 8
/* B567A4 800DF604 A479FFF8 */  sh    $t9, -8($v1)
/* B567A8 800DF608 84C80002 */  lh    $t0, 2($a2)
/* B567AC 800DF60C 24C60008 */  addiu $a2, $a2, 8
/* B567B0 800DF610 A468FFFA */  sh    $t0, -6($v1)
/* B567B4 800DF614 84C9FFFC */  lh    $t1, -4($a2)
/* B567B8 800DF618 A469FFFC */  sh    $t1, -4($v1)
/* B567BC 800DF61C 84CAFFFE */  lh    $t2, -2($a2)
/* B567C0 800DF620 1444FFF5 */  bne   $v0, $a0, .L800DF5F8
/* B567C4 800DF624 A46AFFFE */   sh    $t2, -2($v1)
/* B567C8 800DF628 03E00008 */  jr    $ra
/* B567CC 800DF62C 00000000 */   nop   

glabel func_800DF630
/* B567D0 800DF630 00057900 */  sll   $t7, $a1, 4
/* B567D4 800DF634 3C198013 */  lui   $t9, %hi(D_80130328) # $t9, 0x8013
/* B567D8 800DF638 27390328 */  addiu $t9, %lo(D_80130328) # addiu $t9, $t9, 0x328
/* B567DC 800DF63C 25F8FFF0 */  addiu $t8, $t7, -0x10
/* B567E0 800DF640 00801825 */  move  $v1, $a0
/* B567E4 800DF644 24040008 */  li    $a0, 8
/* B567E8 800DF648 03193021 */  addu  $a2, $t8, $t9
/* B567EC 800DF64C 00001025 */  move  $v0, $zero
.L800DF650:
/* B567F0 800DF650 84C80000 */  lh    $t0, ($a2)
/* B567F4 800DF654 24420004 */  addiu $v0, $v0, 4
/* B567F8 800DF658 24630008 */  addiu $v1, $v1, 8
/* B567FC 800DF65C A468FFF8 */  sh    $t0, -8($v1)
/* B56800 800DF660 84C90002 */  lh    $t1, 2($a2)
/* B56804 800DF664 24C60008 */  addiu $a2, $a2, 8
/* B56808 800DF668 A469FFFA */  sh    $t1, -6($v1)
/* B5680C 800DF66C 84CAFFFC */  lh    $t2, -4($a2)
/* B56810 800DF670 A46AFFFC */  sh    $t2, -4($v1)
/* B56814 800DF674 84CBFFFE */  lh    $t3, -2($a2)
/* B56818 800DF678 1444FFF5 */  bne   $v0, $a0, .L800DF650
/* B5681C 800DF67C A46BFFFE */   sh    $t3, -2($v1)
/* B56820 800DF680 03E00008 */  jr    $ra
/* B56824 800DF684 00000000 */   nop   

glabel func_800DF688
/* B56828 800DF688 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B5682C 800DF68C AFBF0014 */  sw    $ra, 0x14($sp)
/* B56830 800DF690 AFA40018 */  sw    $a0, 0x18($sp)
/* B56834 800DF694 14A00007 */  bnez  $a1, .L800DF6B4
/* B56838 800DF698 00A03825 */   move  $a3, $a1
/* B5683C 800DF69C 14C00005 */  bnez  $a2, .L800DF6B4
/* B56840 800DF6A0 00000000 */   nop   
/* B56844 800DF6A4 0C037D77 */  jal   func_800DF5DC
/* B56848 800DF6A8 00002825 */   move  $a1, $zero
/* B5684C 800DF6AC 10000040 */  b     .L800DF7B0
/* B56850 800DF6B0 8FBF0014 */   lw    $ra, 0x14($sp)
.L800DF6B4:
/* B56854 800DF6B4 14C00005 */  bnez  $a2, .L800DF6CC
/* B56858 800DF6B8 8FA40018 */   lw    $a0, 0x18($sp)
/* B5685C 800DF6BC 0C037D77 */  jal   func_800DF5DC
/* B56860 800DF6C0 00E02825 */   move  $a1, $a3
/* B56864 800DF6C4 1000003A */  b     .L800DF7B0
/* B56868 800DF6C8 8FBF0014 */   lw    $ra, 0x14($sp)
.L800DF6CC:
/* B5686C 800DF6CC 14E00006 */  bnez  $a3, .L800DF6E8
/* B56870 800DF6D0 00002825 */   move  $a1, $zero
/* B56874 800DF6D4 8FA40018 */  lw    $a0, 0x18($sp)
/* B56878 800DF6D8 0C037D8C */  jal   func_800DF630
/* B5687C 800DF6DC 00C02825 */   move  $a1, $a2
/* B56880 800DF6E0 10000033 */  b     .L800DF7B0
/* B56884 800DF6E4 8FBF0014 */   lw    $ra, 0x14($sp)
.L800DF6E8:
/* B56888 800DF6E8 00C07025 */  move  $t6, $a2
/* B5688C 800DF6EC 000E7900 */  sll   $t7, $t6, 4
/* B56890 800DF6F0 3C198013 */  lui   $t9, %hi(D_80130328) # $t9, 0x8013
/* B56894 800DF6F4 3C0A8013 */  lui   $t2, %hi(D_80130228) # $t2, 0x8013
/* B56898 800DF6F8 254A0228 */  addiu $t2, %lo(D_80130228) # addiu $t2, $t2, 0x228
/* B5689C 800DF6FC 27390328 */  addiu $t9, %lo(D_80130328) # addiu $t9, $t9, 0x328
/* B568A0 800DF700 25F8FFF0 */  addiu $t8, $t7, -0x10
/* B568A4 800DF704 00074900 */  sll   $t1, $a3, 4
/* B568A8 800DF708 012A2021 */  addu  $a0, $t1, $t2
/* B568AC 800DF70C 03191821 */  addu  $v1, $t8, $t9
/* B568B0 800DF710 24060008 */  li    $a2, 8
/* B568B4 800DF714 8FA20018 */  lw    $v0, 0x18($sp)
.L800DF718:
/* B568B8 800DF718 846B0000 */  lh    $t3, ($v1)
/* B568BC 800DF71C 848C0000 */  lh    $t4, ($a0)
/* B568C0 800DF720 24A50004 */  addiu $a1, $a1, 4
/* B568C4 800DF724 24420008 */  addiu $v0, $v0, 8
/* B568C8 800DF728 016C6821 */  addu  $t5, $t3, $t4
/* B568CC 800DF72C 05A10003 */  bgez  $t5, .L800DF73C
/* B568D0 800DF730 000D7043 */   sra   $t6, $t5, 1
/* B568D4 800DF734 25A10001 */  addiu $at, $t5, 1
/* B568D8 800DF738 00017043 */  sra   $t6, $at, 1
.L800DF73C:
/* B568DC 800DF73C A44EFFF8 */  sh    $t6, -8($v0)
/* B568E0 800DF740 84980002 */  lh    $t8, 2($a0)
/* B568E4 800DF744 846F0002 */  lh    $t7, 2($v1)
/* B568E8 800DF748 24630008 */  addiu $v1, $v1, 8
/* B568EC 800DF74C 24840008 */  addiu $a0, $a0, 8
/* B568F0 800DF750 01F8C821 */  addu  $t9, $t7, $t8
/* B568F4 800DF754 07210003 */  bgez  $t9, .L800DF764
/* B568F8 800DF758 00194043 */   sra   $t0, $t9, 1
/* B568FC 800DF75C 27210001 */  addiu $at, $t9, 1
/* B56900 800DF760 00014043 */  sra   $t0, $at, 1
.L800DF764:
/* B56904 800DF764 A448FFFA */  sh    $t0, -6($v0)
/* B56908 800DF768 848AFFFC */  lh    $t2, -4($a0)
/* B5690C 800DF76C 8469FFFC */  lh    $t1, -4($v1)
/* B56910 800DF770 012A5821 */  addu  $t3, $t1, $t2
/* B56914 800DF774 05610003 */  bgez  $t3, .L800DF784
/* B56918 800DF778 000B6043 */   sra   $t4, $t3, 1
/* B5691C 800DF77C 25610001 */  addiu $at, $t3, 1
/* B56920 800DF780 00016043 */  sra   $t4, $at, 1
.L800DF784:
/* B56924 800DF784 A44CFFFC */  sh    $t4, -4($v0)
/* B56928 800DF788 848EFFFE */  lh    $t6, -2($a0)
/* B5692C 800DF78C 846DFFFE */  lh    $t5, -2($v1)
/* B56930 800DF790 01AE7821 */  addu  $t7, $t5, $t6
/* B56934 800DF794 05E10003 */  bgez  $t7, .L800DF7A4
/* B56938 800DF798 000FC043 */   sra   $t8, $t7, 1
/* B5693C 800DF79C 25E10001 */  addiu $at, $t7, 1
/* B56940 800DF7A0 0001C043 */  sra   $t8, $at, 1
.L800DF7A4:
/* B56944 800DF7A4 14A6FFDC */  bne   $a1, $a2, .L800DF718
/* B56948 800DF7A8 A458FFFE */   sh    $t8, -2($v0)
/* B5694C 800DF7AC 8FBF0014 */  lw    $ra, 0x14($sp)
.L800DF7B0:
/* B56950 800DF7B0 27BD0018 */  addiu $sp, $sp, 0x18
/* B56954 800DF7B4 03E00008 */  jr    $ra
/* B56958 800DF7B8 00000000 */   nop   

glabel func_800DF7BC
/* B5695C 800DF7BC 03E00008 */  jr    $ra
/* B56960 800DF7C0 AFA40000 */   sw    $a0, ($sp)

glabel func_800DF7C4
/* B56964 800DF7C4 3C038017 */  lui   $v1, %hi(gAudioContext) # $v1, 0x8017
/* B56968 800DF7C8 2463F180 */  addiu $v1, %lo(gAudioContext) # addiu $v1, $v1, -0xe80
/* B5696C 800DF7CC 27BDFFD8 */  addiu $sp, $sp, -0x28
/* B56970 800DF7D0 846E2848 */  lh    $t6, 0x2848($v1)
/* B56974 800DF7D4 24010002 */  li    $at, 2
/* B56978 800DF7D8 AFBF0024 */  sw    $ra, 0x24($sp)
/* B5697C 800DF7DC AFB30020 */  sw    $s3, 0x20($sp)
/* B56980 800DF7E0 AFB2001C */  sw    $s2, 0x1c($sp)
/* B56984 800DF7E4 AFB10018 */  sw    $s1, 0x18($sp)
/* B56988 800DF7E8 15C10003 */  bne   $t6, $at, .L800DF7F8
/* B5698C 800DF7EC AFB00014 */   sw    $s0, 0x14($sp)
/* B56990 800DF7F0 10000002 */  b     .L800DF7FC
/* B56994 800DF7F4 24120002 */   li    $s2, 2
.L800DF7F8:
/* B56998 800DF7F8 24120001 */  li    $s2, 1
.L800DF7FC:
/* B5699C 800DF7FC 80620001 */  lb    $v0, 1($v1)
/* B569A0 800DF800 00009825 */  move  $s3, $zero
/* B569A4 800DF804 5840001A */  blezl $v0, .L800DF870
/* B569A8 800DF808 8FBF0024 */   lw    $ra, 0x24($sp)
.L800DF80C:
/* B569AC 800DF80C 1A400013 */  blez  $s2, .L800DF85C
/* B569B0 800DF810 00008025 */   move  $s0, $zero
/* B569B4 800DF814 00137880 */  sll   $t7, $s3, 2
/* B569B8 800DF818 01F37823 */  subu  $t7, $t7, $s3
/* B569BC 800DF81C 000F7880 */  sll   $t7, $t7, 2
/* B569C0 800DF820 01F37823 */  subu  $t7, $t7, $s3
/* B569C4 800DF824 000F78C0 */  sll   $t7, $t7, 3
/* B569C8 800DF828 01F37821 */  addu  $t7, $t7, $s3
/* B569CC 800DF82C 000F78C0 */  sll   $t7, $t7, 3
/* B569D0 800DF830 3C198017 */  lui   $t9, %hi(gAudioContext) # $t9, 0x8017
/* B569D4 800DF834 2739F180 */  addiu $t9, %lo(gAudioContext) # addiu $t9, $t9, -0xe80
/* B569D8 800DF838 25F80018 */  addiu $t8, $t7, 0x18
/* B569DC 800DF83C 03198821 */  addu  $s1, $t8, $t9
.L800DF840:
/* B569E0 800DF840 0C037DEF */  jal   func_800DF7BC
/* B569E4 800DF844 02202025 */   move  $a0, $s1
/* B569E8 800DF848 26100001 */  addiu $s0, $s0, 1
/* B569EC 800DF84C 1612FFFC */  bne   $s0, $s2, .L800DF840
/* B569F0 800DF850 00000000 */   nop   
/* B569F4 800DF854 3C028017 */  lui   $v0, %hi(D_8016F181) # $v0, 0x8017
/* B569F8 800DF858 8042F181 */  lb    $v0, %lo(D_8016F181)($v0)
.L800DF85C:
/* B569FC 800DF85C 26730001 */  addiu $s3, $s3, 1
/* B56A00 800DF860 0262082A */  slt   $at, $s3, $v0
/* B56A04 800DF864 1420FFE9 */  bnez  $at, .L800DF80C
/* B56A08 800DF868 00000000 */   nop   
/* B56A0C 800DF86C 8FBF0024 */  lw    $ra, 0x24($sp)
.L800DF870:
/* B56A10 800DF870 8FB00014 */  lw    $s0, 0x14($sp)
/* B56A14 800DF874 8FB10018 */  lw    $s1, 0x18($sp)
/* B56A18 800DF878 8FB2001C */  lw    $s2, 0x1c($sp)
/* B56A1C 800DF87C 8FB30020 */  lw    $s3, 0x20($sp)
/* B56A20 800DF880 03E00008 */  jr    $ra
/* B56A24 800DF884 27BD0028 */   addiu $sp, $sp, 0x28

glabel func_800DF888
/* B56A28 800DF888 3C068017 */  lui   $a2, %hi(gAudioContext) # $a2, 0x8017
/* B56A2C 800DF88C 24C6F180 */  addiu $a2, %lo(gAudioContext) # addiu $a2, $a2, -0xe80
/* B56A30 800DF890 8CC228A8 */  lw    $v0, 0x28a8($a2)
/* B56A34 800DF894 84CE2852 */  lh    $t6, 0x2852($a2)
/* B56A38 800DF898 00002825 */  move  $a1, $zero
/* B56A3C 800DF89C 00027840 */  sll   $t7, $v0, 1
/* B56A40 800DF8A0 0002C880 */  sll   $t9, $v0, 2
/* B56A44 800DF8A4 00CFC021 */  addu  $t8, $a2, $t7
/* B56A48 800DF8A8 00D92021 */  addu  $a0, $a2, $t9
/* B56A4C 800DF8AC 24020B00 */  li    $v0, 2816
/* B56A50 800DF8B0 A70E2974 */  sh    $t6, 0x2974($t8)
.L800DF8B4:
/* B56A54 800DF8B4 8C882968 */  lw    $t0, 0x2968($a0)
/* B56A58 800DF8B8 01054821 */  addu  $t1, $t0, $a1
/* B56A5C 800DF8BC A5200000 */  sh    $zero, ($t1)
/* B56A60 800DF8C0 8C8A2968 */  lw    $t2, 0x2968($a0)
/* B56A64 800DF8C4 01455821 */  addu  $t3, $t2, $a1
/* B56A68 800DF8C8 A5600002 */  sh    $zero, 2($t3)
/* B56A6C 800DF8CC 8C8C2968 */  lw    $t4, 0x2968($a0)
/* B56A70 800DF8D0 01856821 */  addu  $t5, $t4, $a1
/* B56A74 800DF8D4 A5A00004 */  sh    $zero, 4($t5)
/* B56A78 800DF8D8 8C8F2968 */  lw    $t7, 0x2968($a0)
/* B56A7C 800DF8DC 01E57021 */  addu  $t6, $t7, $a1
/* B56A80 800DF8E0 24A50008 */  addiu $a1, $a1, 8
/* B56A84 800DF8E4 14A2FFF3 */  bne   $a1, $v0, .L800DF8B4
/* B56A88 800DF8E8 A5C00006 */   sh    $zero, 6($t6)
/* B56A8C 800DF8EC 03E00008 */  jr    $ra
/* B56A90 800DF8F0 00000000 */   nop   

glabel func_800DF8F4
/* B56A94 800DF8F4 27BDFFD0 */  addiu $sp, $sp, -0x30
/* B56A98 800DF8F8 AFB10018 */  sw    $s1, 0x18($sp)
/* B56A9C 800DF8FC 3C118017 */  lui   $s1, %hi(gAudioContext) # $s1, 0x8017
/* B56AA0 800DF900 2631F180 */  addiu $s1, %lo(gAudioContext) # addiu $s1, $s1, -0xe80
/* B56AA4 800DF904 862E2848 */  lh    $t6, 0x2848($s1)
/* B56AA8 800DF908 24010002 */  li    $at, 2
/* B56AAC 800DF90C AFBF001C */  sw    $ra, 0x1c($sp)
/* B56AB0 800DF910 15C10004 */  bne   $t6, $at, .L800DF924
/* B56AB4 800DF914 AFB00014 */   sw    $s0, 0x14($sp)
/* B56AB8 800DF918 240F0002 */  li    $t7, 2
/* B56ABC 800DF91C 10000003 */  b     .L800DF92C
/* B56AC0 800DF920 AFAF0024 */   sw    $t7, 0x24($sp)
.L800DF924:
/* B56AC4 800DF924 24180001 */  li    $t8, 1
/* B56AC8 800DF928 AFB80024 */  sw    $t8, 0x24($sp)
.L800DF92C:
/* B56ACC 800DF92C 92393518 */  lbu   $t9, 0x3518($s1)
/* B56AD0 800DF930 2728FFFF */  addiu $t0, $t9, -1
/* B56AD4 800DF934 2D010005 */  sltiu $at, $t0, 5
/* B56AD8 800DF938 102000A3 */  beqz  $at, .L800DFBC8
/* B56ADC 800DF93C 00084080 */   sll   $t0, $t0, 2
/* B56AE0 800DF940 3C018015 */  lui   $at, %hi(jtbl_801493FC)
/* B56AE4 800DF944 00280821 */  addu  $at, $at, $t0
/* B56AE8 800DF948 8C2893FC */  lw    $t0, %lo(jtbl_801493FC)($at)
/* B56AEC 800DF94C 01000008 */  jr    $t0
/* B56AF0 800DF950 00000000 */   nop   
glabel L800DF954
/* B56AF4 800DF954 8629285C */  lh    $t1, 0x285c($s1)
/* B56AF8 800DF958 00002825 */  move  $a1, $zero
/* B56AFC 800DF95C 5920000E */  blezl $t1, .L800DF998
/* B56B00 800DF960 8FAB0024 */   lw    $t3, 0x24($sp)
/* B56B04 800DF964 3C108017 */  lui   $s0, %hi(D_801726B0) # $s0, 0x8017
/* B56B08 800DF968 261026B0 */  addiu $s0, %lo(D_801726B0) # addiu $s0, $s0, 0x26b0
/* B56B0C 800DF96C 02002025 */  move  $a0, $s0
.L800DF970:
/* B56B10 800DF970 0C03A6D1 */  jal   func_800E9B44
/* B56B14 800DF974 AFA5002C */   sw    $a1, 0x2c($sp)
/* B56B18 800DF978 8FA5002C */  lw    $a1, 0x2c($sp)
/* B56B1C 800DF97C 862A285C */  lh    $t2, 0x285c($s1)
/* B56B20 800DF980 26100160 */  addiu $s0, $s0, 0x160
/* B56B24 800DF984 24A50001 */  addiu $a1, $a1, 1
/* B56B28 800DF988 00AA082A */  slt   $at, $a1, $t2
/* B56B2C 800DF98C 5420FFF8 */  bnezl $at, .L800DF970
/* B56B30 800DF990 02002025 */   move  $a0, $s0
/* B56B34 800DF994 8FAB0024 */  lw    $t3, 0x24($sp)
.L800DF998:
/* B56B38 800DF998 240C0002 */  li    $t4, 2
/* B56B3C 800DF99C 92223518 */  lbu   $v0, 0x3518($s1)
/* B56B40 800DF9A0 018B001A */  div   $zero, $t4, $t3
/* B56B44 800DF9A4 00006812 */  mflo  $t5
/* B56B48 800DF9A8 244EFFFF */  addiu $t6, $v0, -1
/* B56B4C 800DF9AC 15600002 */  bnez  $t3, .L800DF9B8
/* B56B50 800DF9B0 00000000 */   nop   
/* B56B54 800DF9B4 0007000D */  break 7
.L800DF9B8:
/* B56B58 800DF9B8 2401FFFF */  li    $at, -1
/* B56B5C 800DF9BC 15610004 */  bne   $t3, $at, .L800DF9D0
/* B56B60 800DF9C0 3C018000 */   lui   $at, 0x8000
/* B56B64 800DF9C4 15810002 */  bne   $t4, $at, .L800DF9D0
/* B56B68 800DF9C8 00000000 */   nop   
/* B56B6C 800DF9CC 0006000D */  break 6
.L800DF9D0:
/* B56B70 800DF9D0 AE2D351C */  sw    $t5, 0x351c($s1)
/* B56B74 800DF9D4 1000007C */  b     .L800DFBC8
/* B56B78 800DF9D8 A22E3518 */   sb    $t6, 0x3518($s1)
glabel L800DF9DC
/* B56B7C 800DF9DC 8E22351C */  lw    $v0, 0x351c($s1)
/* B56B80 800DF9E0 10400005 */  beqz  $v0, .L800DF9F8
/* B56B84 800DF9E4 244FFFFF */   addiu $t7, $v0, -1
/* B56B88 800DF9E8 0C037DF1 */  jal   func_800DF7C4
/* B56B8C 800DF9EC AE2F351C */   sw    $t7, 0x351c($s1)
/* B56B90 800DF9F0 10000076 */  b     .L800DFBCC
/* B56B94 800DF9F4 922F3518 */   lbu   $t7, 0x3518($s1)
.L800DF9F8:
/* B56B98 800DF9F8 8E242894 */  lw    $a0, 0x2894($s1)
/* B56B9C 800DF9FC 00002825 */  move  $a1, $zero
/* B56BA0 800DFA00 5880001A */  blezl $a0, .L800DFA6C
/* B56BA4 800DFA04 8FAF0024 */   lw    $t7, 0x24($sp)
/* B56BA8 800DFA08 00001825 */  move  $v1, $zero
.L800DFA0C:
/* B56BAC 800DFA0C 8E38352C */  lw    $t8, 0x352c($s1)
/* B56BB0 800DFA10 24A50001 */  addiu $a1, $a1, 1
/* B56BB4 800DFA14 03031021 */  addu  $v0, $t8, $v1
/* B56BB8 800DFA18 8C5900C0 */  lw    $t9, 0xc0($v0)
/* B56BBC 800DFA1C 001947C2 */  srl   $t0, $t9, 0x1f
/* B56BC0 800DFA20 5100000F */  beql  $t0, $zero, .L800DFA60
/* B56BC4 800DFA24 00A4082A */   slt   $at, $a1, $a0
/* B56BC8 800DFA28 90490070 */  lbu   $t1, 0x70($v0)
/* B56BCC 800DFA2C 312A000F */  andi  $t2, $t1, 0xf
/* B56BD0 800DFA30 5140000B */  beql  $t2, $zero, .L800DFA60
/* B56BD4 800DFA34 00A4082A */   slt   $at, $a1, $a0
/* B56BD8 800DFA38 C6242864 */  lwc1  $f4, 0x2864($s1)
/* B56BDC 800DFA3C E444007C */  swc1  $f4, 0x7c($v0)
/* B56BE0 800DFA40 8E2C352C */  lw    $t4, 0x352c($s1)
/* B56BE4 800DFA44 01831021 */  addu  $v0, $t4, $v1
/* B56BE8 800DFA48 904B0070 */  lbu   $t3, 0x70($v0)
/* B56BEC 800DFA4C 316DFFEF */  andi  $t5, $t3, 0xffef
/* B56BF0 800DFA50 35AE0010 */  ori   $t6, $t5, 0x10
/* B56BF4 800DFA54 A04E0070 */  sb    $t6, 0x70($v0)
/* B56BF8 800DFA58 8E242894 */  lw    $a0, 0x2894($s1)
/* B56BFC 800DFA5C 00A4082A */  slt   $at, $a1, $a0
.L800DFA60:
/* B56C00 800DFA60 1420FFEA */  bnez  $at, .L800DFA0C
/* B56C04 800DFA64 246300E0 */   addiu $v1, $v1, 0xe0
/* B56C08 800DFA68 8FAF0024 */  lw    $t7, 0x24($sp)
.L800DFA6C:
/* B56C0C 800DFA6C 24180008 */  li    $t8, 8
/* B56C10 800DFA70 92223518 */  lbu   $v0, 0x3518($s1)
/* B56C14 800DFA74 030F001A */  div   $zero, $t8, $t7
/* B56C18 800DFA78 0000C812 */  mflo  $t9
/* B56C1C 800DFA7C 2448FFFF */  addiu $t0, $v0, -1
/* B56C20 800DFA80 15E00002 */  bnez  $t7, .L800DFA8C
/* B56C24 800DFA84 00000000 */   nop   
/* B56C28 800DFA88 0007000D */  break 7
.L800DFA8C:
/* B56C2C 800DFA8C 2401FFFF */  li    $at, -1
/* B56C30 800DFA90 15E10004 */  bne   $t7, $at, .L800DFAA4
/* B56C34 800DFA94 3C018000 */   lui   $at, 0x8000
/* B56C38 800DFA98 17010002 */  bne   $t8, $at, .L800DFAA4
/* B56C3C 800DFA9C 00000000 */   nop   
/* B56C40 800DFAA0 0006000D */  break 6
.L800DFAA4:
/* B56C44 800DFAA4 AE39351C */  sw    $t9, 0x351c($s1)
/* B56C48 800DFAA8 10000047 */  b     .L800DFBC8
/* B56C4C 800DFAAC A2283518 */   sb    $t0, 0x3518($s1)
glabel L800DFAB0
/* B56C50 800DFAB0 8E22351C */  lw    $v0, 0x351c($s1)
/* B56C54 800DFAB4 8FAA0024 */  lw    $t2, 0x24($sp)
/* B56C58 800DFAB8 240C0002 */  li    $t4, 2
/* B56C5C 800DFABC 10400006 */  beqz  $v0, .L800DFAD8
/* B56C60 800DFAC0 00000000 */   nop   
/* B56C64 800DFAC4 2449FFFF */  addiu $t1, $v0, -1
/* B56C68 800DFAC8 0C037DF1 */  jal   func_800DF7C4
/* B56C6C 800DFACC AE29351C */   sw    $t1, 0x351c($s1)
/* B56C70 800DFAD0 1000003E */  b     .L800DFBCC
/* B56C74 800DFAD4 922F3518 */   lbu   $t7, 0x3518($s1)
.L800DFAD8:
/* B56C78 800DFAD8 018A001A */  div   $zero, $t4, $t2
/* B56C7C 800DFADC 92223518 */  lbu   $v0, 0x3518($s1)
/* B56C80 800DFAE0 00005812 */  mflo  $t3
/* B56C84 800DFAE4 AE2B351C */  sw    $t3, 0x351c($s1)
/* B56C88 800DFAE8 15400002 */  bnez  $t2, .L800DFAF4
/* B56C8C 800DFAEC 00000000 */   nop   
/* B56C90 800DFAF0 0007000D */  break 7
.L800DFAF4:
/* B56C94 800DFAF4 2401FFFF */  li    $at, -1
/* B56C98 800DFAF8 15410004 */  bne   $t2, $at, .L800DFB0C
/* B56C9C 800DFAFC 3C018000 */   lui   $at, 0x8000
/* B56CA0 800DFB00 15810002 */  bne   $t4, $at, .L800DFB0C
/* B56CA4 800DFB04 00000000 */   nop   
/* B56CA8 800DFB08 0006000D */  break 6
.L800DFB0C:
/* B56CAC 800DFB0C 244DFFFF */  addiu $t5, $v0, -1
/* B56CB0 800DFB10 1000002D */  b     .L800DFBC8
/* B56CB4 800DFB14 A22D3518 */   sb    $t5, 0x3518($s1)
glabel L800DFB18
/* B56CB8 800DFB18 0C037E22 */  jal   func_800DF888
/* B56CBC 800DFB1C 00000000 */   nop   
/* B56CC0 800DFB20 8E22351C */  lw    $v0, 0x351c($s1)
/* B56CC4 800DFB24 10400003 */  beqz  $v0, .L800DFB34
/* B56CC8 800DFB28 244EFFFF */   addiu $t6, $v0, -1
/* B56CCC 800DFB2C 10000026 */  b     .L800DFBC8
/* B56CD0 800DFB30 AE2E351C */   sw    $t6, 0x351c($s1)
.L800DFB34:
/* B56CD4 800DFB34 92223518 */  lbu   $v0, 0x3518($s1)
/* B56CD8 800DFB38 2458FFFF */  addiu $t8, $v0, -1
/* B56CDC 800DFB3C 0C03832F */  jal   func_800E0CBC
/* B56CE0 800DFB40 A2383518 */   sb    $t8, 0x3518($s1)
/* B56CE4 800DFB44 0C038452 */  jal   func_800E1148
/* B56CE8 800DFB48 00000000 */   nop   
/* B56CEC 800DFB4C 1000001F */  b     .L800DFBCC
/* B56CF0 800DFB50 922F3518 */   lbu   $t7, 0x3518($s1)
glabel L800DFB54
/* B56CF4 800DFB54 0C037EFE */  jal   func_800DFBF8
/* B56CF8 800DFB58 00000000 */   nop   
/* B56CFC 800DFB5C 3C0F8017 */  lui   $t7, %hi(gAudioContext)
/* B56D00 800DFB60 25E3F180 */  addiu $v1, $t7, %lo(gAudioContext)
/* B56D04 800DFB64 3C078017 */  lui   $a3, %hi(D_8016F18C) # $a3, 0x8017
/* B56D08 800DFB68 A2203518 */  sb    $zero, 0x3518($s1)
/* B56D0C 800DFB6C 24E7F18C */  addiu $a3, %lo(D_8016F18C) # addiu $a3, $a3, -0xe74
/* B56D10 800DFB70 00603025 */  move  $a2, $v1
/* B56D14 800DFB74 24040B00 */  li    $a0, 2816
.L800DFB78:
/* B56D18 800DFB78 86392850 */  lh    $t9, 0x2850($s1)
/* B56D1C 800DFB7C 00001025 */  move  $v0, $zero
/* B56D20 800DFB80 A4D92974 */  sh    $t9, 0x2974($a2)
.L800DFB84:
/* B56D24 800DFB84 8C682968 */  lw    $t0, 0x2968($v1)
/* B56D28 800DFB88 01024821 */  addu  $t1, $t0, $v0
/* B56D2C 800DFB8C A5200000 */  sh    $zero, ($t1)
/* B56D30 800DFB90 8C6C2968 */  lw    $t4, 0x2968($v1)
/* B56D34 800DFB94 01825021 */  addu  $t2, $t4, $v0
/* B56D38 800DFB98 A5400002 */  sh    $zero, 2($t2)
/* B56D3C 800DFB9C 8C6B2968 */  lw    $t3, 0x2968($v1)
/* B56D40 800DFBA0 01626821 */  addu  $t5, $t3, $v0
/* B56D44 800DFBA4 A5A00004 */  sh    $zero, 4($t5)
/* B56D48 800DFBA8 8C6E2968 */  lw    $t6, 0x2968($v1)
/* B56D4C 800DFBAC 01C2C021 */  addu  $t8, $t6, $v0
/* B56D50 800DFBB0 24420008 */  addiu $v0, $v0, 8
/* B56D54 800DFBB4 1444FFF3 */  bne   $v0, $a0, .L800DFB84
/* B56D58 800DFBB8 A7000006 */   sh    $zero, 6($t8)
/* B56D5C 800DFBBC 24630004 */  addiu $v1, $v1, 4
/* B56D60 800DFBC0 1467FFED */  bne   $v1, $a3, .L800DFB78
/* B56D64 800DFBC4 24C60002 */   addiu $a2, $a2, 2
.L800DFBC8:
/* B56D68 800DFBC8 922F3518 */  lbu   $t7, 0x3518($s1)
.L800DFBCC:
/* B56D6C 800DFBCC 8FBF001C */  lw    $ra, 0x1c($sp)
/* B56D70 800DFBD0 24020001 */  li    $v0, 1
/* B56D74 800DFBD4 29E10003 */  slti  $at, $t7, 3
/* B56D78 800DFBD8 10200003 */  beqz  $at, .L800DFBE8
/* B56D7C 800DFBDC 00000000 */   nop   
/* B56D80 800DFBE0 10000001 */  b     .L800DFBE8
/* B56D84 800DFBE4 00001025 */   move  $v0, $zero
.L800DFBE8:
/* B56D88 800DFBE8 8FB00014 */  lw    $s0, 0x14($sp)
/* B56D8C 800DFBEC 8FB10018 */  lw    $s1, 0x18($sp)
/* B56D90 800DFBF0 03E00008 */  jr    $ra
/* B56D94 800DFBF4 27BD0030 */   addiu $sp, $sp, 0x30

glabel func_800DFBF8
/* B56D98 800DFBF8 27BDFF60 */  addiu $sp, $sp, -0xa0
/* B56D9C 800DFBFC AFB60030 */  sw    $s6, 0x30($sp)
/* B56DA0 800DFC00 3C168017 */  lui   $s6, %hi(gAudioContext) # $s6, 0x8017
/* B56DA4 800DFC04 26D6F180 */  addiu $s6, %lo(gAudioContext) # addiu $s6, $s6, -0xe80
/* B56DA8 800DFC08 92CE3519 */  lbu   $t6, 0x3519($s6)
/* B56DAC 800DFC0C 3C188013 */  lui   $t8, %hi(D_801337C8) # $t8, 0x8013
/* B56DB0 800DFC10 271837C8 */  addiu $t8, %lo(D_801337C8) # addiu $t8, $t8, 0x37c8
/* B56DB4 800DFC14 000E78C0 */  sll   $t7, $t6, 3
/* B56DB8 800DFC18 01EE7823 */  subu  $t7, $t7, $t6
/* B56DBC 800DFC1C 000F78C0 */  sll   $t7, $t7, 3
/* B56DC0 800DFC20 AFBF003C */  sw    $ra, 0x3c($sp)
/* B56DC4 800DFC24 AFBE0038 */  sw    $fp, 0x38($sp)
/* B56DC8 800DFC28 AFB70034 */  sw    $s7, 0x34($sp)
/* B56DCC 800DFC2C AFB5002C */  sw    $s5, 0x2c($sp)
/* B56DD0 800DFC30 AFB40028 */  sw    $s4, 0x28($sp)
/* B56DD4 800DFC34 AFB30024 */  sw    $s3, 0x24($sp)
/* B56DD8 800DFC38 AFB20020 */  sw    $s2, 0x20($sp)
/* B56DDC 800DFC3C AFB1001C */  sw    $s1, 0x1c($sp)
/* B56DE0 800DFC40 AFB00018 */  sw    $s0, 0x18($sp)
/* B56DE4 800DFC44 01F81021 */  addu  $v0, $t7, $t8
/* B56DE8 800DFC48 AEC02620 */  sw    $zero, 0x2620($s6)
/* B56DEC 800DFC4C 8C590000 */  lw    $t9, ($v0)
/* B56DF0 800DFC50 AFA20068 */  sw    $v0, 0x68($sp)
/* B56DF4 800DFC54 A6D9284A */  sh    $t9, 0x284a($s6)
/* B56DF8 800DFC58 0C040FFC */  jal   func_80103FF0
/* B56DFC 800DFC5C 3324FFFF */   andi  $a0, $t9, 0xffff
/* B56E00 800DFC60 96C3284A */  lhu   $v1, 0x284a($s6)
/* B56E04 800DFC64 8EC92964 */  lw    $t1, 0x2964($s6)
/* B56E08 800DFC68 8FA80068 */  lw    $t0, 0x68($sp)
/* B56E0C 800DFC6C 44833000 */  mtc1  $v1, $f6
/* B56E10 800DFC70 0069001A */  div   $zero, $v1, $t1
/* B56E14 800DFC74 00005012 */  mflo  $t2
/* B56E18 800DFC78 254B000F */  addiu $t3, $t2, 0xf
/* B56E1C 800DFC7C 316CFFF0 */  andi  $t4, $t3, 0xfff0
/* B56E20 800DFC80 A6CC284E */  sh    $t4, 0x284e($s6)
/* B56E24 800DFC84 86C6284E */  lh    $a2, 0x284e($s6)
/* B56E28 800DFC88 46803220 */  cvt.s.w $f8, $f6
/* B56E2C 800DFC8C A6C2284C */  sh    $v0, 0x284c($s6)
/* B56E30 800DFC90 15200002 */  bnez  $t1, .L800DFC9C
/* B56E34 800DFC94 00000000 */   nop   
/* B56E38 800DFC98 0007000D */  break 7
.L800DFC9C:
/* B56E3C 800DFC9C 2401FFFF */  li    $at, -1
/* B56E40 800DFCA0 15210004 */  bne   $t1, $at, .L800DFCB4
/* B56E44 800DFCA4 3C018000 */   lui   $at, 0x8000
/* B56E48 800DFCA8 14610002 */  bne   $v1, $at, .L800DFCB4
/* B56E4C 800DFCAC 00000000 */   nop   
/* B56E50 800DFCB0 0006000D */  break 6
.L800DFCB4:
/* B56E54 800DFCB4 240100D0 */  li    $at, 208
/* B56E58 800DFCB8 24C40010 */  addiu $a0, $a2, 0x10
/* B56E5C 800DFCBC 0081001A */  div   $zero, $a0, $at
/* B56E60 800DFCC0 00007012 */  mflo  $t6
/* B56E64 800DFCC4 25CF0001 */  addiu $t7, $t6, 1
/* B56E68 800DFCC8 A6CF2854 */  sh    $t7, 0x2854($s6)
/* B56E6C 800DFCCC 86C72854 */  lh    $a3, 0x2854($s6)
/* B56E70 800DFCD0 24CDFFF0 */  addiu $t5, $a2, -0x10
/* B56E74 800DFCD4 A6CD2852 */  sh    $t5, 0x2852($s6)
/* B56E78 800DFCD8 00C7001A */  div   $zero, $a2, $a3
/* B56E7C 800DFCDC 0000C012 */  mflo  $t8
/* B56E80 800DFCE0 44878000 */  mtc1  $a3, $f16
/* B56E84 800DFCE4 A6C42850 */  sh    $a0, 0x2850($s6)
/* B56E88 800DFCE8 14E00002 */  bnez  $a3, .L800DFCF4
/* B56E8C 800DFCEC 00000000 */   nop   
/* B56E90 800DFCF0 0007000D */  break 7
.L800DFCF4:
/* B56E94 800DFCF4 2401FFFF */  li    $at, -1
/* B56E98 800DFCF8 14E10004 */  bne   $a3, $at, .L800DFD0C
/* B56E9C 800DFCFC 3C018000 */   lui   $at, 0x8000
/* B56EA0 800DFD00 14C10002 */  bne   $a2, $at, .L800DFD0C
/* B56EA4 800DFD04 00000000 */   nop   
/* B56EA8 800DFD08 0006000D */  break 6
.L800DFD0C:
/* B56EAC 800DFD0C 2401FFF8 */  li    $at, -8
/* B56EB0 800DFD10 0301C824 */  and   $t9, $t8, $at
/* B56EB4 800DFD14 3C0146FA */  li    $at, 0x46FA0000 # 0.000000
/* B56EB8 800DFD18 44812000 */  mtc1  $at, $f4
/* B56EBC 800DFD1C 3C013B80 */  li    $at, 0x3B800000 # 0.000000
/* B56EC0 800DFD20 46808020 */  cvt.s.w $f0, $f16
/* B56EC4 800DFD24 44819000 */  mtc1  $at, $f18
/* B56EC8 800DFD28 3C013E80 */  li    $at, 0x3E800000 # 0.000000
/* B56ECC 800DFD2C A6D92856 */  sh    $t9, 0x2856($s6)
/* B56ED0 800DFD30 86C52856 */  lh    $a1, 0x2856($s6)
/* B56ED4 800DFD34 46082283 */  div.s $f10, $f4, $f8
/* B56ED8 800DFD38 44812000 */  mtc1  $at, $f4
/* B56EDC 800DFD3C 3C013F80 */  lui   $at, 0x3f80
/* B56EE0 800DFD40 24AA0008 */  addiu $t2, $a1, 8
/* B56EE4 800DFD44 46040202 */  mul.s $f8, $f0, $f4
/* B56EE8 800DFD48 24ABFFF8 */  addiu $t3, $a1, -8
/* B56EEC 800DFD4C A6CA2858 */  sh    $t2, 0x2858($s6)
/* B56EF0 800DFD50 A6CB285A */  sh    $t3, 0x285a($s6)
/* B56EF4 800DFD54 3C048017 */  lui   $a0, %hi(D_80172588)
/* B56EF8 800DFD58 24842588 */  addiu $a0, %lo(D_80172588) # addiu $a0, $a0, 0x2588
/* B56EFC 800DFD5C E6C8286C */  swc1  $f8, 0x286c($s6)
/* B56F00 800DFD60 46009183 */  div.s $f6, $f18, $f0
/* B56F04 800DFD64 E6CA2860 */  swc1  $f10, 0x2860($s6)
/* B56F08 800DFD68 44815000 */  mtc1  $at, $f10
/* B56F0C 800DFD6C 00000000 */  nop   
/* B56F10 800DFD70 46005403 */  div.s $f16, $f10, $f0
/* B56F14 800DFD74 E6C62868 */  swc1  $f6, 0x2868($s6)
/* B56F18 800DFD78 E6D02864 */  swc1  $f16, 0x2864($s6)
/* B56F1C 800DFD7C 950C0010 */  lhu   $t4, 0x10($t0)
/* B56F20 800DFD80 AECC2874 */  sw    $t4, 0x2874($s6)
/* B56F24 800DFD84 950D0012 */  lhu   $t5, 0x12($t0)
/* B56F28 800DFD88 AECD2878 */  sw    $t5, 0x2878($s6)
/* B56F2C 800DFD8C 910E0005 */  lbu   $t6, 5($t0)
/* B56F30 800DFD90 AECE2894 */  sw    $t6, 0x2894($s6)
/* B56F34 800DFD94 910F0006 */  lbu   $t7, 6($t0)
/* B56F38 800DFD98 A6CF285C */  sh    $t7, 0x285c($s6)
/* B56F3C 800DFD9C 86D8285C */  lh    $t8, 0x285c($s6)
/* B56F40 800DFDA0 2B010005 */  slti  $at, $t8, 5
/* B56F44 800DFDA4 14200002 */  bnez  $at, .L800DFDB0
/* B56F48 800DFDA8 24190004 */   li    $t9, 4
/* B56F4C 800DFDAC A6D9285C */  sh    $t9, 0x285c($s6)
.L800DFDB0:
/* B56F50 800DFDB0 950A0014 */  lhu   $t2, 0x14($t0)
/* B56F54 800DFDB4 3C0B8015 */  lui   $t3, %hi(D_8014A6C0+2) # $t3, 0x8015
/* B56F58 800DFDB8 3C018015 */  lui   $at, %hi(D_80149410)
/* B56F5C 800DFDBC A6CA0002 */  sh    $t2, 2($s6)
/* B56F60 800DFDC0 856BA6C2 */  lh    $t3, %lo(D_8014A6C0+2)($t3)
/* B56F64 800DFDC4 C4329410 */  lwc1  $f18, %lo(D_80149410)($at)
/* B56F68 800DFDC8 C6D02960 */  lwc1  $f16, 0x2960($s6)
/* B56F6C 800DFDCC 448B2000 */  mtc1  $t3, $f4
/* B56F70 800DFDD0 46120182 */  mul.s $f6, $f0, $f18
/* B56F74 800DFDD4 240D0001 */  li    $t5, 1
/* B56F78 800DFDD8 46802220 */  cvt.s.w $f8, $f4
/* B56F7C 800DFDDC 46083283 */  div.s $f10, $f6, $f8
/* B56F80 800DFDE0 46105483 */  div.s $f18, $f10, $f16
/* B56F84 800DFDE4 444CF800 */  cfc1  $t4, $31
/* B56F88 800DFDE8 44CDF800 */  ctc1  $t5, $31
/* B56F8C 800DFDEC 00000000 */  nop   
/* B56F90 800DFDF0 46009124 */  cvt.w.s $f4, $f18
/* B56F94 800DFDF4 444DF800 */  cfc1  $t5, $31
/* B56F98 800DFDF8 00000000 */  nop   
/* B56F9C 800DFDFC 31AD0078 */  andi  $t5, $t5, 0x78
/* B56FA0 800DFE00 11A00012 */  beqz  $t5, .L800DFE4C
/* B56FA4 800DFE04 3C014F00 */   li    $at, 0x4F000000 # 0.000000
/* B56FA8 800DFE08 44812000 */  mtc1  $at, $f4
/* B56FAC 800DFE0C 240D0001 */  li    $t5, 1
/* B56FB0 800DFE10 46049101 */  sub.s $f4, $f18, $f4
/* B56FB4 800DFE14 44CDF800 */  ctc1  $t5, $31
/* B56FB8 800DFE18 00000000 */  nop   
/* B56FBC 800DFE1C 46002124 */  cvt.w.s $f4, $f4
/* B56FC0 800DFE20 444DF800 */  cfc1  $t5, $31
/* B56FC4 800DFE24 00000000 */  nop   
/* B56FC8 800DFE28 31AD0078 */  andi  $t5, $t5, 0x78
/* B56FCC 800DFE2C 15A00005 */  bnez  $t5, .L800DFE44
/* B56FD0 800DFE30 00000000 */   nop   
/* B56FD4 800DFE34 440D2000 */  mfc1  $t5, $f4
/* B56FD8 800DFE38 3C018000 */  li    $at, 0x80000000 # 0.000000
/* B56FDC 800DFE3C 10000007 */  b     .L800DFE5C
/* B56FE0 800DFE40 01A16825 */   or    $t5, $t5, $at
.L800DFE44:
/* B56FE4 800DFE44 10000005 */  b     .L800DFE5C
/* B56FE8 800DFE48 240DFFFF */   li    $t5, -1
.L800DFE4C:
/* B56FEC 800DFE4C 440D2000 */  mfc1  $t5, $f4
/* B56FF0 800DFE50 00000000 */  nop   
/* B56FF4 800DFE54 05A0FFFB */  bltz  $t5, .L800DFE44
/* B56FF8 800DFE58 00000000 */   nop   
.L800DFE5C:
/* B56FFC 800DFE5C 44CCF800 */  ctc1  $t4, $31
/* B57000 800DFE60 44893000 */  mtc1  $t1, $f6
/* B57004 800DFE64 96CE284C */  lhu   $t6, 0x284c($s6)
/* B57008 800DFE68 A6CD2898 */  sh    $t5, 0x2898($s6)
/* B5700C 800DFE6C 46803220 */  cvt.s.w $f8, $f6
/* B57010 800DFE70 448E2000 */  mtc1  $t6, $f4
/* B57014 800DFE74 00000000 */  nop   
/* B57018 800DFE78 468021A0 */  cvt.s.w $f6, $f4
/* B5701C 800DFE7C E6C82870 */  swc1  $f8, 0x2870($s6)
/* B57020 800DFE80 C6CA2870 */  lwc1  $f10, 0x2870($s6)
/* B57024 800DFE84 46005402 */  mul.s $f16, $f10, $f0
/* B57028 800DFE88 E6D02870 */  swc1  $f16, 0x2870($s6)
/* B5702C 800DFE8C 05C10005 */  bgez  $t6, .L800DFEA4
/* B57030 800DFE90 C6D22870 */   lwc1  $f18, 0x2870($s6)
/* B57034 800DFE94 3C014F80 */  li    $at, 0x4F800000 # 0.000000
/* B57038 800DFE98 44814000 */  mtc1  $at, $f8
/* B5703C 800DFE9C 00000000 */  nop   
/* B57040 800DFEA0 46083180 */  add.s $f6, $f6, $f8
.L800DFEA4:
/* B57044 800DFEA4 46069283 */  div.s $f10, $f18, $f6
/* B57048 800DFEA8 86CF2898 */  lh    $t7, 0x2898($s6)
/* B5704C 800DFEAC 86CA2850 */  lh    $t2, 0x2850($s6)
/* B57050 800DFEB0 86CC2852 */  lh    $t4, 0x2852($s6)
/* B57054 800DFEB4 448F2000 */  mtc1  $t7, $f4
/* B57058 800DFEB8 00000000 */  nop   
/* B5705C 800DFEBC 46802220 */  cvt.s.w $f8, $f4
/* B57060 800DFEC0 E6CA2870 */  swc1  $f10, 0x2870($s6)
/* B57064 800DFEC4 C6D02870 */  lwc1  $f16, 0x2870($s6)
/* B57068 800DFEC8 46088483 */  div.s $f18, $f16, $f8
/* B5706C 800DFECC E6D22870 */  swc1  $f18, 0x2870($s6)
/* B57070 800DFED0 91180004 */  lbu   $t8, 4($t0)
/* B57074 800DFED4 A6D82848 */  sh    $t8, 0x2848($s6)
/* B57078 800DFED8 86C22848 */  lh    $v0, 0x2848($s6)
/* B5707C 800DFEDC 00C20019 */  multu $a2, $v0
/* B57080 800DFEE0 28410002 */  slti  $at, $v0, 2
/* B57084 800DFEE4 0000C812 */  mflo  $t9
/* B57088 800DFEE8 A6D9284E */  sh    $t9, 0x284e($s6)
/* B5708C 800DFEEC 00000000 */  nop   
/* B57090 800DFEF0 01420019 */  multu $t2, $v0
/* B57094 800DFEF4 00005812 */  mflo  $t3
/* B57098 800DFEF8 A6CB2850 */  sh    $t3, 0x2850($s6)
/* B5709C 800DFEFC 00000000 */  nop   
/* B570A0 800DFF00 01820019 */  multu $t4, $v0
/* B570A4 800DFF04 00006812 */  mflo  $t5
/* B570A8 800DFF08 A6CD2852 */  sh    $t5, 0x2852($s6)
/* B570AC 800DFF0C 00000000 */  nop   
/* B570B0 800DFF10 00E20019 */  multu $a3, $v0
/* B570B4 800DFF14 00007012 */  mflo  $t6
/* B570B8 800DFF18 A6CE2854 */  sh    $t6, 0x2854($s6)
/* B570BC 800DFF1C 54200005 */  bnezl $at, .L800DFF34
/* B570C0 800DFF20 8ED92894 */   lw    $t9, 0x2894($s6)
/* B570C4 800DFF24 86CF2850 */  lh    $t7, 0x2850($s6)
/* B570C8 800DFF28 25F8FFF0 */  addiu $t8, $t7, -0x10
/* B570CC 800DFF2C A6D82850 */  sh    $t8, 0x2850($s6)
/* B570D0 800DFF30 8ED92894 */  lw    $t9, 0x2894($s6)
.L800DFF34:
/* B570D4 800DFF34 86CB2854 */  lh    $t3, 0x2854($s6)
/* B570D8 800DFF38 910D0009 */  lbu   $t5, 9($t0)
/* B570DC 800DFF3C 00195100 */  sll   $t2, $t9, 4
/* B570E0 800DFF40 014B0019 */  multu $t2, $t3
/* B570E4 800DFF44 000D7080 */  sll   $t6, $t5, 2
/* B570E8 800DFF48 01CD7023 */  subu  $t6, $t6, $t5
/* B570EC 800DFF4C 000E70C0 */  sll   $t6, $t6, 3
/* B570F0 800DFF50 8EC329A0 */  lw    $v1, 0x29a0($s6)
/* B570F4 800DFF54 3C018017 */  lui   $at, %hi(D_80172594) # $at, 0x8017
/* B570F8 800DFF58 00006012 */  mflo  $t4
/* B570FC 800DFF5C 018E7821 */  addu  $t7, $t4, $t6
/* B57100 800DFF60 25F80140 */  addiu $t8, $t7, 0x140
/* B57104 800DFF64 AED82890 */  sw    $t8, 0x2890($s6)
/* B57108 800DFF68 8D0A001C */  lw    $t2, 0x1c($t0)
/* B5710C 800DFF6C 8D190018 */  lw    $t9, 0x18($t0)
/* B57110 800DFF70 8D0E0028 */  lw    $t6, 0x28($t0)
/* B57114 800DFF74 8D0C0024 */  lw    $t4, 0x24($t0)
/* B57118 800DFF78 8D0D0020 */  lw    $t5, 0x20($t0)
/* B5711C 800DFF7C 8D18002C */  lw    $t8, 0x2c($t0)
/* B57120 800DFF80 032A5821 */  addu  $t3, $t9, $t2
/* B57124 800DFF84 018E7821 */  addu  $t7, $t4, $t6
/* B57128 800DFF88 8ED92998 */  lw    $t9, 0x2998($s6)
/* B5712C 800DFF8C 016D8021 */  addu  $s0, $t3, $t5
/* B57130 800DFF90 01F88821 */  addu  $s1, $t7, $t8
/* B57134 800DFF94 26100010 */  addiu $s0, $s0, 0x10
/* B57138 800DFF98 26310010 */  addiu $s1, $s1, 0x10
/* B5713C 800DFF9C 02111021 */  addu  $v0, $s0, $s1
/* B57140 800DFFA0 03222823 */  subu  $a1, $t9, $v0
/* B57144 800DFFA4 10600002 */  beqz  $v1, .L800DFFB0
/* B57148 800DFFA8 24A5FF00 */   addiu $a1, $a1, -0x100
/* B5714C 800DFFAC AEC329A4 */  sw    $v1, 0x29a4($s6)
.L800DFFB0:
/* B57150 800DFFB0 AEC53408 */  sw    $a1, 0x3408($s6)
/* B57154 800DFFB4 0C037994 */  jal   func_800DE650
/* B57158 800DFFB8 AC222594 */   sw    $v0, %lo(D_80172594)($at)
/* B5715C 800DFFBC 3C048017 */  lui   $a0, %hi(D_80172598) # $a0, 0x8017
/* B57160 800DFFC0 AED03418 */  sw    $s0, 0x3418($s6)
/* B57164 800DFFC4 AED1341C */  sw    $s1, 0x341c($s6)
/* B57168 800DFFC8 0C0379B5 */  jal   func_800DE6D4
/* B5716C 800DFFCC 24842598 */   addiu $a0, %lo(D_80172598) # addiu $a0, $a0, 0x2598
/* B57170 800DFFD0 8FA20068 */  lw    $v0, 0x68($sp)
/* B57174 800DFFD4 3C048017 */  lui   $a0, %hi(D_801725A0) # $a0, 0x8017
/* B57178 800DFFD8 248425A0 */  addiu $a0, %lo(D_801725A0) # addiu $a0, $a0, 0x25a0
/* B5717C 800DFFDC 8C4A0018 */  lw    $t2, 0x18($v0)
/* B57180 800DFFE0 AECA3420 */  sw    $t2, 0x3420($s6)
/* B57184 800DFFE4 8C4B001C */  lw    $t3, 0x1c($v0)
/* B57188 800DFFE8 AECB3424 */  sw    $t3, 0x3424($s6)
/* B5718C 800DFFEC 8C4D0020 */  lw    $t5, 0x20($v0)
/* B57190 800DFFF0 0C0379D6 */  jal   func_800DE758
/* B57194 800DFFF4 AECD3428 */   sw    $t5, 0x3428($s6)
/* B57198 800DFFF8 8FA20068 */  lw    $v0, 0x68($sp)
/* B5719C 800DFFFC 3C048017 */  lui   $a0, %hi(D_801725AC) # $a0, 0x8017
/* B571A0 800E0000 248425AC */  addiu $a0, %lo(D_801725AC) # addiu $a0, $a0, 0x25ac
/* B571A4 800E0004 8C4C0024 */  lw    $t4, 0x24($v0)
/* B571A8 800E0008 AECC342C */  sw    $t4, 0x342c($s6)
/* B571AC 800E000C 8C4E0028 */  lw    $t6, 0x28($v0)
/* B571B0 800E0010 AECE3430 */  sw    $t6, 0x3430($s6)
/* B571B4 800E0014 8C4F002C */  lw    $t7, 0x2c($v0)
/* B571B8 800E0018 0C037A07 */  jal   func_800DE81C
/* B571BC 800E001C AECF3434 */   sw    $t7, 0x3434($s6)
/* B571C0 800E0020 0C0377E0 */  jal   func_800DDF80
/* B571C4 800E0024 00000000 */   nop   
/* B571C8 800E0028 8EC52894 */  lw    $a1, 0x2894($s6)
/* B571CC 800E002C 3C138017 */  lui   $s3, %hi(D_80171B40) # $s3, 0x8017
/* B571D0 800E0030 26731B40 */  addiu $s3, %lo(D_80171B40) # addiu $s3, $s3, 0x1b40
/* B571D4 800E0034 00A00821 */  addu  $at, $a1, $zero
/* B571D8 800E0038 000528C0 */  sll   $a1, $a1, 3
/* B571DC 800E003C 00A12823 */  subu  $a1, $a1, $at
/* B571E0 800E0040 00052940 */  sll   $a1, $a1, 5
/* B571E4 800E0044 0C0378E0 */  jal   func_800DE380
/* B571E8 800E0048 02602025 */   move  $a0, $s3
/* B571EC 800E004C 0C03A1E2 */  jal   Audio_NoteInitAll
/* B571F0 800E0050 AEC2352C */   sw    $v0, 0x352c($s6)
/* B571F4 800E0054 0C039F57 */  jal   Audio_InitNoteFreeList
/* B571F8 800E0058 00000000 */   nop   
/* B571FC 800E005C 86D82854 */  lh    $t8, 0x2854($s6)
/* B57200 800E0060 8ED92894 */  lw    $t9, 0x2894($s6)
/* B57204 800E0064 02602025 */  move  $a0, $s3
/* B57208 800E0068 03190019 */  multu $t8, $t9
/* B5720C 800E006C 00002812 */  mflo  $a1
/* B57210 800E0070 00052940 */  sll   $a1, $a1, 5
/* B57214 800E0074 0C0378E0 */  jal   func_800DE380
/* B57218 800E0078 00000000 */   nop   
/* B5721C 800E007C 3C108017 */  lui   $s0, %hi(gAudioContext) # $s0, 0x8017
/* B57220 800E0080 3C118017 */  lui   $s1, %hi(D_8016F188) # $s1, 0x8017
/* B57224 800E0084 AEC20014 */  sw    $v0, 0x14($s6)
/* B57228 800E0088 2631F188 */  addiu $s1, %lo(D_8016F188) # addiu $s1, $s1, -0xe78
/* B5722C 800E008C 2610F180 */  addiu $s0, %lo(gAudioContext) # addiu $s0, $s0, -0xe80
.L800E0090:
/* B57230 800E0090 8EC52890 */  lw    $a1, 0x2890($s6)
/* B57234 800E0094 02602025 */  move  $a0, $s3
/* B57238 800E0098 0C0378D1 */  jal   func_800DE344
/* B5723C 800E009C 000528C0 */   sll   $a1, $a1, 3
/* B57240 800E00A0 26100004 */  addiu $s0, $s0, 4
/* B57244 800E00A4 1611FFFA */  bne   $s0, $s1, .L800E0090
/* B57248 800E00A8 AE0228A8 */   sw    $v0, 0x28a8($s0)
/* B5724C 800E00AC 02602025 */  move  $a0, $s3
/* B57250 800E00B0 0C0378F7 */  jal   func_800DE3DC
/* B57254 800E00B4 24050400 */   li    $a1, 1024
/* B57258 800E00B8 0C03778F */  jal   func_800DDE3C
/* B5725C 800E00BC AEC23520 */   sw    $v0, 0x3520($s6)
/* B57260 800E00C0 3C148017 */  lui   $s4, %hi(gAudioContext) # $s4, 0x8017
/* B57264 800E00C4 3C028017 */  lui   $v0, %hi(D_8016FCA0) # $v0, 0x8017
/* B57268 800E00C8 2442FCA0 */  addiu $v0, %lo(D_8016FCA0) # addiu $v0, $v0, -0x360
/* B5726C 800E00CC 2694F180 */  addiu $s4, %lo(gAudioContext) # addiu $s4, $s4, -0xe80
.L800E00D0:
/* B57270 800E00D0 269402C8 */  addiu $s4, $s4, 0x2c8
/* B57274 800E00D4 0282082B */  sltu  $at, $s4, $v0
/* B57278 800E00D8 1420FFFD */  bnez  $at, .L800E00D0
/* B5727C 800E00DC A280FD51 */   sb    $zero, -0x2af($s4)
/* B57280 800E00E0 8FA20068 */  lw    $v0, 0x68($sp)
/* B57284 800E00E4 904A0009 */  lbu   $t2, 9($v0)
/* B57288 800E00E8 AFA00074 */  sw    $zero, 0x74($sp)
/* B5728C 800E00EC A2CA0001 */  sb    $t2, 1($s6)
/* B57290 800E00F0 82CB0001 */  lb    $t3, 1($s6)
/* B57294 800E00F4 196000CA */  blez  $t3, .L800E0420
/* B57298 800E00F8 3C0D8017 */   lui   $t5, %hi(D_8016F430) # $t5, 0x8017
/* B5729C 800E00FC 25ADF430 */  addiu $t5, %lo(D_8016F430) # addiu $t5, $t5, -0xbd0
/* B572A0 800E0100 3C148017 */  lui   $s4, %hi(gAudioContext) # $s4, 0x8017
/* B572A4 800E0104 3C128017 */  lui   $s2, %hi(D_8016F198) # $s2, 0x8017
/* B572A8 800E0108 3C1E8017 */  lui   $fp, %hi(D_8016F420) # $fp, 0x8017
/* B572AC 800E010C 27DEF420 */  addiu $fp, %lo(D_8016F420) # addiu $fp, $fp, -0xbe0
/* B572B0 800E0110 2652F198 */  addiu $s2, %lo(D_8016F198) # addiu $s2, $s2, -0xe68
/* B572B4 800E0114 2694F180 */  addiu $s4, %lo(gAudioContext) # addiu $s4, $s4, -0xe80
/* B572B8 800E0118 AFAD0044 */  sw    $t5, 0x44($sp)
/* B572BC 800E011C 0000B825 */  move  $s7, $zero
.L800E0120:
/* B572C0 800E0120 8FA20068 */  lw    $v0, 0x68($sp)
/* B572C4 800E0124 02602025 */  move  $a0, $s3
/* B572C8 800E0128 8C4C000C */  lw    $t4, 0xc($v0)
/* B572CC 800E012C 0197A821 */  addu  $s5, $t4, $s7
/* B572D0 800E0130 92AE0000 */  lbu   $t6, ($s5)
/* B572D4 800E0134 A28E001C */  sb    $t6, 0x1c($s4)
/* B572D8 800E0138 96AF0002 */  lhu   $t7, 2($s5)
/* B572DC 800E013C 31CA00FF */  andi  $t2, $t6, 0xff
/* B572E0 800E0140 000FC180 */  sll   $t8, $t7, 6
/* B572E4 800E0144 3319FFFF */  andi  $t9, $t8, 0xffff
/* B572E8 800E0148 032A001A */  div   $zero, $t9, $t2
/* B572EC 800E014C A698001E */  sh    $t8, 0x1e($s4)
/* B572F0 800E0150 00005812 */  mflo  $t3
/* B572F4 800E0154 A68B001E */  sh    $t3, 0x1e($s4)
/* B572F8 800E0158 96AD0004 */  lhu   $t5, 4($s5)
/* B572FC 800E015C 15400002 */  bnez  $t2, .L800E0168
/* B57300 800E0160 00000000 */   nop   
/* B57304 800E0164 0007000D */  break 7
.L800E0168:
/* B57308 800E0168 2401FFFF */  li    $at, -1
/* B5730C 800E016C 15410004 */  bne   $t2, $at, .L800E0180
/* B57310 800E0170 3C018000 */   lui   $at, 0x8000
/* B57314 800E0174 17210002 */  bne   $t9, $at, .L800E0180
/* B57318 800E0178 00000000 */   nop   
/* B5731C 800E017C 0006000D */  break 6
.L800E0180:
/* B57320 800E0180 A68D0024 */  sh    $t5, 0x24($s4)
/* B57324 800E0184 96AC000A */  lhu   $t4, 0xa($s5)
/* B57328 800E0188 9685001E */  lhu   $a1, 0x1e($s4)
/* B5732C 800E018C A68C0022 */  sh    $t4, 0x22($s4)
/* B57330 800E0190 96AE0006 */  lhu   $t6, 6($s5)
/* B57334 800E0194 240C0008 */  li    $t4, 8
/* B57338 800E0198 00052840 */  sll   $a1, $a1, 1
/* B5733C 800E019C 000E7980 */  sll   $t7, $t6, 6
/* B57340 800E01A0 A68F002C */  sh    $t7, 0x2c($s4)
/* B57344 800E01A4 96B80008 */  lhu   $t8, 8($s5)
/* B57348 800E01A8 A2800030 */  sb    $zero, 0x30($s4)
/* B5734C 800E01AC A698002E */  sh    $t8, 0x2e($s4)
/* B57350 800E01B0 96B9000C */  lhu   $t9, 0xc($s5)
/* B57354 800E01B4 A6990028 */  sh    $t9, 0x28($s4)
/* B57358 800E01B8 96AA000E */  lhu   $t2, 0xe($s5)
/* B5735C 800E01BC A68A002A */  sh    $t2, 0x2a($s4)
/* B57360 800E01C0 82AB0010 */  lb    $t3, 0x10($s5)
/* B57364 800E01C4 A28B001D */  sb    $t3, 0x1d($s4)
/* B57368 800E01C8 96AD0012 */  lhu   $t5, 0x12($s5)
/* B5736C 800E01CC A28C0019 */  sb    $t4, 0x19($s4)
/* B57370 800E01D0 0C037896 */  jal   func_800DE258
/* B57374 800E01D4 A68D0020 */   sh    $t5, 0x20($s4)
/* B57378 800E01D8 96450006 */  lhu   $a1, 6($s2)
/* B5737C 800E01DC AE420028 */  sw    $v0, 0x28($s2)
/* B57380 800E01E0 02602025 */  move  $a0, $s3
/* B57384 800E01E4 0C037896 */  jal   func_800DE258
/* B57388 800E01E8 00052840 */   sll   $a1, $a1, 1
/* B5738C 800E01EC 92590288 */  lbu   $t9, 0x288($s2)
/* B57390 800E01F0 96450006 */  lhu   $a1, 6($s2)
/* B57394 800E01F4 240E0002 */  li    $t6, 2
/* B57398 800E01F8 240F0001 */  li    $t7, 1
/* B5739C 800E01FC 332AFF0F */  andi  $t2, $t9, 0xff0f
/* B573A0 800E0200 AE42002C */  sw    $v0, 0x2c($s2)
/* B573A4 800E0204 AE40001C */  sw    $zero, 0x1c($s2)
/* B573A8 800E0208 AE400020 */  sw    $zero, 0x20($s2)
/* B573AC 800E020C A2400003 */  sb    $zero, 3($s2)
/* B573B0 800E0210 A24E0002 */  sb    $t6, 2($s2)
/* B573B4 800E0214 A24F0000 */  sb    $t7, ($s2)
/* B573B8 800E0218 AE5E0280 */  sw    $fp, 0x280($s2)
/* B573BC 800E021C 354D0040 */  ori   $t5, $t2, 0x40
/* B573C0 800E0220 AE450024 */  sw    $a1, 0x24($s2)
/* B573C4 800E0224 8FB80044 */  lw    $t8, 0x44($sp)
/* B573C8 800E0228 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* B573CC 800E022C A24D0288 */  sb    $t5, 0x288($s2)
/* B573D0 800E0230 31AC00F3 */  andi  $t4, $t5, 0xf3
/* B573D4 800E0234 44813000 */  mtc1  $at, $f6
/* B573D8 800E0238 A24C0288 */  sb    $t4, 0x288($s2)
/* B573DC 800E023C 8E440288 */  lw    $a0, 0x288($s2)
/* B573E0 800E0240 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* B573E4 800E0244 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* B573E8 800E0248 00057040 */  sll   $t6, $a1, 1
/* B573EC 800E024C 01C17824 */  and   $t7, $t6, $at
/* B573F0 800E0250 AE580290 */  sw    $t8, 0x290($s2)
/* B573F4 800E0254 01E4C026 */  xor   $t8, $t7, $a0
/* B573F8 800E0258 92420004 */  lbu   $v0, 4($s2)
/* B573FC 800E025C 0018CA00 */  sll   $t9, $t8, 8
/* B57400 800E0260 8E4D0028 */  lw    $t5, 0x28($s2)
/* B57404 800E0264 00195202 */  srl   $t2, $t9, 8
/* B57408 800E0268 240C0001 */  li    $t4, 1
/* B5740C 800E026C 24010001 */  li    $at, 1
/* B57410 800E0270 01445826 */  xor   $t3, $t2, $a0
/* B57414 800E0274 AE4B0288 */  sw    $t3, 0x288($s2)
/* B57418 800E0278 AE400298 */  sw    $zero, 0x298($s2)
/* B5741C 800E027C AE4C02A0 */  sw    $t4, 0x2a0($s2)
/* B57420 800E0280 00A01825 */  move  $v1, $a1
/* B57424 800E0284 AE45029C */  sw    $a1, 0x29c($s2)
/* B57428 800E0288 E6460284 */  swc1  $f6, 0x284($s2)
/* B5742C 800E028C 10410035 */  beq   $v0, $at, .L800E0364
/* B57430 800E0290 AE4D028C */   sw    $t5, 0x28c($s2)
/* B57434 800E0294 340E8000 */  li    $t6, 32768
/* B57438 800E0298 01C2001A */  div   $zero, $t6, $v0
/* B5743C 800E029C 00007812 */  mflo  $t7
/* B57440 800E02A0 A64F000E */  sh    $t7, 0xe($s2)
/* B57444 800E02A4 14400002 */  bnez  $v0, .L800E02B0
/* B57448 800E02A8 00000000 */   nop   
/* B5744C 800E02AC 0007000D */  break 7
.L800E02B0:
/* B57450 800E02B0 2401FFFF */  li    $at, -1
/* B57454 800E02B4 14410004 */  bne   $v0, $at, .L800E02C8
/* B57458 800E02B8 3C018000 */   lui   $at, 0x8000
/* B5745C 800E02BC 15C10002 */  bne   $t6, $at, .L800E02C8
/* B57460 800E02C0 00000000 */   nop   
/* B57464 800E02C4 0006000D */  break 6
.L800E02C8:
/* B57468 800E02C8 02602025 */  move  $a0, $s3
/* B5746C 800E02CC 24050020 */  li    $a1, 32
/* B57470 800E02D0 0C0378E0 */  jal   func_800DE380
/* B57474 800E02D4 00008825 */   move  $s1, $zero
/* B57478 800E02D8 AE420030 */  sw    $v0, 0x30($s2)
/* B5747C 800E02DC 02602025 */  move  $a0, $s3
/* B57480 800E02E0 0C0378E0 */  jal   func_800DE380
/* B57484 800E02E4 24050020 */   li    $a1, 32
/* B57488 800E02E8 AE420034 */  sw    $v0, 0x34($s2)
/* B5748C 800E02EC 02602025 */  move  $a0, $s3
/* B57490 800E02F0 0C0378E0 */  jal   func_800DE380
/* B57494 800E02F4 24050020 */   li    $a1, 32
/* B57498 800E02F8 AE420038 */  sw    $v0, 0x38($s2)
/* B5749C 800E02FC 02602025 */  move  $a0, $s3
/* B574A0 800E0300 0C0378E0 */  jal   func_800DE380
/* B574A4 800E0304 24050020 */   li    $a1, 32
/* B574A8 800E0308 AE42003C */  sw    $v0, 0x3c($s2)
/* B574AC 800E030C 86D82854 */  lh    $t8, 0x2854($s6)
/* B574B0 800E0310 5B000015 */  blezl $t8, .L800E0368
/* B574B4 800E0314 86AD0014 */   lh    $t5, 0x14($s5)
/* B574B8 800E0318 02408025 */  move  $s0, $s2
/* B574BC 800E031C 02602025 */  move  $a0, $s3
.L800E0320:
/* B574C0 800E0320 0C037896 */  jal   func_800DE258
/* B574C4 800E0324 24050340 */   li    $a1, 832
/* B574C8 800E0328 245901A0 */  addiu $t9, $v0, 0x1a0
/* B574CC 800E032C AE020044 */  sw    $v0, 0x44($s0)
/* B574D0 800E0330 AE190048 */  sw    $t9, 0x48($s0)
/* B574D4 800E0334 02602025 */  move  $a0, $s3
/* B574D8 800E0338 0C037896 */  jal   func_800DE258
/* B574DC 800E033C 24050340 */   li    $a1, 832
/* B574E0 800E0340 244A01A0 */  addiu $t2, $v0, 0x1a0
/* B574E4 800E0344 AE0200D0 */  sw    $v0, 0xd0($s0)
/* B574E8 800E0348 AE0A00D4 */  sw    $t2, 0xd4($s0)
/* B574EC 800E034C 86CB2854 */  lh    $t3, 0x2854($s6)
/* B574F0 800E0350 26310001 */  addiu $s1, $s1, 1
/* B574F4 800E0354 2610001C */  addiu $s0, $s0, 0x1c
/* B574F8 800E0358 022B082A */  slt   $at, $s1, $t3
/* B574FC 800E035C 5420FFF0 */  bnezl $at, .L800E0320
/* B57500 800E0360 02602025 */   move  $a0, $s3
.L800E0364:
/* B57504 800E0364 86AD0014 */  lh    $t5, 0x14($s5)
.L800E0368:
/* B57508 800E0368 51A0000F */  beql  $t5, $zero, .L800E03A8
/* B5750C 800E036C AE400270 */   sw    $zero, 0x270($s2)
/* B57510 800E0370 02602025 */  move  $a0, $s3
/* B57514 800E0374 0C0378D1 */  jal   func_800DE344
/* B57518 800E0378 24050040 */   li    $a1, 64
/* B5751C 800E037C AE420278 */  sw    $v0, 0x278($s2)
/* B57520 800E0380 02602025 */  move  $a0, $s3
/* B57524 800E0384 0C0378C2 */  jal   Audio_SoundAlloc
/* B57528 800E0388 24050010 */   li    $a1, 16
/* B5752C 800E038C AE420270 */  sw    $v0, 0x270($s2)
/* B57530 800E0390 86A50014 */  lh    $a1, 0x14($s5)
/* B57534 800E0394 0C037D77 */  jal   func_800DF5DC
/* B57538 800E0398 00402025 */   move  $a0, $v0
/* B5753C 800E039C 10000003 */  b     .L800E03AC
/* B57540 800E03A0 86AC0016 */   lh    $t4, 0x16($s5)
/* B57544 800E03A4 AE400270 */  sw    $zero, 0x270($s2)
.L800E03A8:
/* B57548 800E03A8 86AC0016 */  lh    $t4, 0x16($s5)
.L800E03AC:
/* B5754C 800E03AC 5180000F */  beql  $t4, $zero, .L800E03EC
/* B57550 800E03B0 AE400274 */   sw    $zero, 0x274($s2)
/* B57554 800E03B4 02602025 */  move  $a0, $s3
/* B57558 800E03B8 0C0378D1 */  jal   func_800DE344
/* B5755C 800E03BC 24050040 */   li    $a1, 64
/* B57560 800E03C0 AE42027C */  sw    $v0, 0x27c($s2)
/* B57564 800E03C4 02602025 */  move  $a0, $s3
/* B57568 800E03C8 0C0378C2 */  jal   Audio_SoundAlloc
/* B5756C 800E03CC 24050010 */   li    $a1, 16
/* B57570 800E03D0 AE420274 */  sw    $v0, 0x274($s2)
/* B57574 800E03D4 86A50016 */  lh    $a1, 0x16($s5)
/* B57578 800E03D8 0C037D77 */  jal   func_800DF5DC
/* B5757C 800E03DC 00402025 */   move  $a0, $v0
/* B57580 800E03E0 10000003 */  b     .L800E03F0
/* B57584 800E03E4 8FA20074 */   lw    $v0, 0x74($sp)
/* B57588 800E03E8 AE400274 */  sw    $zero, 0x274($s2)
.L800E03EC:
/* B5758C 800E03EC 8FA20074 */  lw    $v0, 0x74($sp)
.L800E03F0:
/* B57590 800E03F0 8FAE0044 */  lw    $t6, 0x44($sp)
/* B57594 800E03F4 82D80001 */  lb    $t8, 1($s6)
/* B57598 800E03F8 24420001 */  addiu $v0, $v0, 1
/* B5759C 800E03FC 25CF02C8 */  addiu $t7, $t6, 0x2c8
/* B575A0 800E0400 0058082A */  slt   $at, $v0, $t8
/* B575A4 800E0404 AFAF0044 */  sw    $t7, 0x44($sp)
/* B575A8 800E0408 AFA20074 */  sw    $v0, 0x74($sp)
/* B575AC 800E040C 269402C8 */  addiu $s4, $s4, 0x2c8
/* B575B0 800E0410 26F70018 */  addiu $s7, $s7, 0x18
/* B575B4 800E0414 265202C8 */  addiu $s2, $s2, 0x2c8
/* B575B8 800E0418 1420FF41 */  bnez  $at, .L800E0120
/* B575BC 800E041C 27DE02C8 */   addiu $fp, $fp, 0x2c8
.L800E0420:
/* B575C0 800E0420 0C03B237 */  jal   func_800EC8DC
/* B575C4 800E0424 00008825 */   move  $s1, $zero
/* B575C8 800E0428 86D9285C */  lh    $t9, 0x285c($s6)
/* B575CC 800E042C 3C108017 */  lui   $s0, %hi(D_801726B0) # $s0, 0x8017
/* B575D0 800E0430 261026B0 */  addiu $s0, %lo(D_801726B0) # addiu $s0, $s0, 0x26b0
/* B575D4 800E0434 5B20000C */  blezl $t9, .L800E0468
/* B575D8 800E0438 8FAB0068 */   lw    $t3, 0x68($sp)
.L800E043C:
/* B575DC 800E043C 0C03B1CD */  jal   func_800EC734
/* B575E0 800E0440 02202025 */   move  $a0, $s1
/* B575E4 800E0444 0C03B19A */  jal   func_800EC668
/* B575E8 800E0448 02002025 */   move  $a0, $s0
/* B575EC 800E044C 86CA285C */  lh    $t2, 0x285c($s6)
/* B575F0 800E0450 26310001 */  addiu $s1, $s1, 1
/* B575F4 800E0454 26100160 */  addiu $s0, $s0, 0x160
/* B575F8 800E0458 022A082A */  slt   $at, $s1, $t2
/* B575FC 800E045C 1420FFF7 */  bnez  $at, .L800E043C
/* B57600 800E0460 00000000 */   nop   
/* B57604 800E0464 8FAB0068 */  lw    $t3, 0x68($sp)
.L800E0468:
/* B57608 800E0468 8D640030 */  lw    $a0, 0x30($t3)
/* B5760C 800E046C 0C03818D */  jal   func_800E0634
/* B57610 800E0470 8D650034 */   lw    $a1, 0x34($t3)
/* B57614 800E0474 0C038586 */  jal   func_800E1618
/* B57618 800E0478 8EC42894 */   lw    $a0, 0x2894($s6)
/* B5761C 800E047C 0C038D00 */  jal   func_800E3400
/* B57620 800E0480 AEC0176C */   sw    $zero, 0x176c($s6)
/* B57624 800E0484 0C0393EC */  jal   func_800E4FB0
/* B57628 800E0488 00000000 */   nop   
/* B5762C 800E048C 0C038E85 */  jal   func_800E3A14
/* B57630 800E0490 00000000 */   nop   
/* B57634 800E0494 240D1000 */  li    $t5, 4096
/* B57638 800E0498 0C039365 */  jal   func_800E4D94
/* B5763C 800E049C A6CD0004 */   sh    $t5, 4($s6)
/* B57640 800E04A0 0C0013D0 */  jal   osSetIntMask
/* B57644 800E04A4 24040001 */   li    $a0, 1
/* B57648 800E04A8 0C041924 */  jal   osWritebackDCacheAll
/* B5764C 800E04AC 00408025 */   move  $s0, $v0
/* B57650 800E04B0 0C0013D0 */  jal   osSetIntMask
/* B57654 800E04B4 02002025 */   move  $a0, $s0
/* B57658 800E04B8 8FBF003C */  lw    $ra, 0x3c($sp)
/* B5765C 800E04BC 8FB00018 */  lw    $s0, 0x18($sp)
/* B57660 800E04C0 8FB1001C */  lw    $s1, 0x1c($sp)
/* B57664 800E04C4 8FB20020 */  lw    $s2, 0x20($sp)
/* B57668 800E04C8 8FB30024 */  lw    $s3, 0x24($sp)
/* B5766C 800E04CC 8FB40028 */  lw    $s4, 0x28($sp)
/* B57670 800E04D0 8FB5002C */  lw    $s5, 0x2c($sp)
/* B57674 800E04D4 8FB60030 */  lw    $s6, 0x30($sp)
/* B57678 800E04D8 8FB70034 */  lw    $s7, 0x34($sp)
/* B5767C 800E04DC 8FBE0038 */  lw    $fp, 0x38($sp)
/* B57680 800E04E0 03E00008 */  jr    $ra
/* B57684 800E04E4 27BD00A0 */   addiu $sp, $sp, 0xa0

glabel func_800E04E8
/* B57688 800E04E8 3C038017 */  lui   $v1, %hi(D_80171EDC) # $v1, 0x8017
/* B5768C 800E04EC 8C631EDC */  lw    $v1, %lo(D_80171EDC)($v1)
/* B57690 800E04F0 00A03025 */  move  $a2, $a1
/* B57694 800E04F4 3C058017 */  lui   $a1, %hi(gAudioContext) # $a1, 0x8017
/* B57698 800E04F8 1860000E */  blez  $v1, .L800E0534
/* B5769C 800E04FC 00001025 */   move  $v0, $zero
/* B576A0 800E0500 24A5F180 */  addiu $a1, %lo(gAudioContext) # addiu $a1, $a1, -0xe80
.L800E0504:
/* B576A4 800E0504 84AE2D68 */  lh    $t6, 0x2d68($a1)
/* B576A8 800E0508 24420001 */  addiu $v0, $v0, 1
/* B576AC 800E050C 0043082A */  slt   $at, $v0, $v1
/* B576B0 800E0510 148E0006 */  bne   $a0, $t6, .L800E052C
/* B576B4 800E0514 00000000 */   nop   
/* B576B8 800E0518 84AF2D6A */  lh    $t7, 0x2d6a($a1)
/* B576BC 800E051C 14CF0003 */  bne   $a2, $t7, .L800E052C
/* B576C0 800E0520 00000000 */   nop   
/* B576C4 800E0524 03E00008 */  jr    $ra
/* B576C8 800E0528 8CA22D60 */   lw    $v0, 0x2d60($a1)

.L800E052C:
/* B576CC 800E052C 1420FFF5 */  bnez  $at, .L800E0504
/* B576D0 800E0530 24A5000C */   addiu $a1, $a1, 0xc
.L800E0534:
/* B576D4 800E0534 00001025 */  move  $v0, $zero
/* B576D8 800E0538 03E00008 */  jr    $ra
/* B576DC 800E053C 00000000 */   nop   

glabel func_800E0540
/* B576E0 800E0540 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B576E4 800E0544 3C0E8017 */  lui   $t6, %hi(D_80171EDC) # $t6, 0x8017
/* B576E8 800E0548 8DCE1EDC */  lw    $t6, %lo(D_80171EDC)($t6)
/* B576EC 800E054C AFA40020 */  sw    $a0, 0x20($sp)
/* B576F0 800E0550 AFBF0014 */  sw    $ra, 0x14($sp)
/* B576F4 800E0554 AFA50024 */  sw    $a1, 0x24($sp)
/* B576F8 800E0558 3C048017 */  lui   $a0, %hi(D_80171ED0) # $a0, 0x8017
/* B576FC 800E055C AFA60028 */  sw    $a2, 0x28($sp)
/* B57700 800E0560 24841ED0 */  addiu $a0, %lo(D_80171ED0) # addiu $a0, $a0, 0x1ed0
/* B57704 800E0564 00C02825 */  move  $a1, $a2
/* B57708 800E0568 0C0378F7 */  jal   func_800DE3DC
/* B5770C 800E056C AFAE0018 */   sw    $t6, 0x18($sp)
/* B57710 800E0570 8FAF0018 */  lw    $t7, 0x18($sp)
/* B57714 800E0574 3C198017 */  lui   $t9, %hi(gAudioContext) # $t9, 0x8017
/* B57718 800E0578 2739F180 */  addiu $t9, %lo(gAudioContext) # addiu $t9, $t9, -0xe80
/* B5771C 800E057C 000FC080 */  sll   $t8, $t7, 2
/* B57720 800E0580 030FC023 */  subu  $t8, $t8, $t7
/* B57724 800E0584 0018C080 */  sll   $t8, $t8, 2
/* B57728 800E0588 03191821 */  addu  $v1, $t8, $t9
/* B5772C 800E058C 14400003 */  bnez  $v0, .L800E059C
/* B57730 800E0590 AC622D60 */   sw    $v0, 0x2d60($v1)
/* B57734 800E0594 10000007 */  b     .L800E05B4
/* B57738 800E0598 00001025 */   move  $v0, $zero
.L800E059C:
/* B5773C 800E059C 8FA80020 */  lw    $t0, 0x20($sp)
/* B57740 800E05A0 8FA90024 */  lw    $t1, 0x24($sp)
/* B57744 800E05A4 8FAA0028 */  lw    $t2, 0x28($sp)
/* B57748 800E05A8 A4682D68 */  sh    $t0, 0x2d68($v1)
/* B5774C 800E05AC A4692D6A */  sh    $t1, 0x2d6a($v1)
/* B57750 800E05B0 AC6A2D64 */  sw    $t2, 0x2d64($v1)
.L800E05B4:
/* B57754 800E05B4 8FBF0014 */  lw    $ra, 0x14($sp)
/* B57758 800E05B8 27BD0020 */  addiu $sp, $sp, 0x20
/* B5775C 800E05BC 03E00008 */  jr    $ra
/* B57760 800E05C0 00000000 */   nop   

glabel func_800E05C4
/* B57764 800E05C4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B57768 800E05C8 8FAE0028 */  lw    $t6, 0x28($sp)
/* B5776C 800E05CC AFBF0014 */  sw    $ra, 0x14($sp)
/* B57770 800E05D0 AFA5001C */  sw    $a1, 0x1c($sp)
/* B57774 800E05D4 AFA60020 */  sw    $a2, 0x20($sp)
/* B57778 800E05D8 15C00005 */  bnez  $t6, .L800E05F0
/* B5777C 800E05DC AFA70024 */   sw    $a3, 0x24($sp)
/* B57780 800E05E0 0C0381B3 */  jal   func_800E06CC
/* B57784 800E05E4 00000000 */   nop   
/* B57788 800E05E8 10000004 */  b     .L800E05FC
/* B5778C 800E05EC 00401825 */   move  $v1, $v0
.L800E05F0:
/* B57790 800E05F0 0C0382FE */  jal   func_800E0BF8
/* B57794 800E05F4 00000000 */   nop   
/* B57798 800E05F8 00401825 */  move  $v1, $v0
.L800E05FC:
/* B5779C 800E05FC 10400008 */  beqz  $v0, .L800E0620
/* B577A0 800E0600 8FAF001C */   lw    $t7, 0x1c($sp)
/* B577A4 800E0604 A06F0002 */  sb    $t7, 2($v1)
/* B577A8 800E0608 8FB80020 */  lw    $t8, 0x20($sp)
/* B577AC 800E060C 8C620008 */  lw    $v0, 8($v1)
/* B577B0 800E0610 AC78000C */  sw    $t8, 0xc($v1)
/* B577B4 800E0614 83B90027 */  lb    $t9, 0x27($sp)
/* B577B8 800E0618 10000002 */  b     .L800E0624
/* B577BC 800E061C A0790001 */   sb    $t9, 1($v1)
.L800E0620:
/* B577C0 800E0620 00001025 */  move  $v0, $zero
.L800E0624:
/* B577C4 800E0624 8FBF0014 */  lw    $ra, 0x14($sp)
/* B577C8 800E0628 27BD0018 */  addiu $sp, $sp, 0x18
/* B577CC 800E062C 03E00008 */  jr    $ra
/* B577D0 800E0630 00000000 */   nop   

glabel func_800E0634
/* B577D4 800E0634 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B577D8 800E0638 AFA40018 */  sw    $a0, 0x18($sp)
/* B577DC 800E063C AFBF0014 */  sw    $ra, 0x14($sp)
/* B577E0 800E0640 AFA5001C */  sw    $a1, 0x1c($sp)
/* B577E4 800E0644 3C048017 */  lui   $a0, %hi(D_80171B40) # $a0, 0x8017
/* B577E8 800E0648 24841B40 */  addiu $a0, %lo(D_80171B40) # addiu $a0, $a0, 0x1b40
/* B577EC 800E064C 0C0378AC */  jal   func_800DE2B0
/* B577F0 800E0650 8FA50018 */   lw    $a1, 0x18($sp)
/* B577F4 800E0654 14400004 */  bnez  $v0, .L800E0668
/* B577F8 800E0658 00402825 */   move  $a1, $v0
/* B577FC 800E065C 3C018017 */  lui   $at, %hi(D_80172068) # $at, 0x8017
/* B57800 800E0660 10000005 */  b     .L800E0678
/* B57804 800E0664 AC202068 */   sw    $zero, %lo(D_80172068)($at)
.L800E0668:
/* B57808 800E0668 3C048017 */  lui   $a0, %hi(D_80172060) # $a0, 0x8017
/* B5780C 800E066C 24842060 */  addiu $a0, %lo(D_80172060) # addiu $a0, $a0, 0x2060
/* B57810 800E0670 0C03790D */  jal   func_800DE434
/* B57814 800E0674 8FA60018 */   lw    $a2, 0x18($sp)
.L800E0678:
/* B57818 800E0678 3C048017 */  lui   $a0, %hi(D_80171B40) # $a0, 0x8017
/* B5781C 800E067C 24841B40 */  addiu $a0, %lo(D_80171B40) # addiu $a0, $a0, 0x1b40
/* B57820 800E0680 0C0378AC */  jal   func_800DE2B0
/* B57824 800E0684 8FA5001C */   lw    $a1, 0x1c($sp)
/* B57828 800E0688 3C038017 */  lui   $v1, %hi(gAudioContext) # $v1, 0x8017
/* B5782C 800E068C 2463F180 */  addiu $v1, %lo(gAudioContext) # addiu $v1, $v1, -0xe80
/* B57830 800E0690 14400003 */  bnez  $v0, .L800E06A0
/* B57834 800E0694 00402825 */   move  $a1, $v0
/* B57838 800E0698 10000007 */  b     .L800E06B8
/* B5783C 800E069C AC60317C */   sw    $zero, 0x317c($v1)
.L800E06A0:
/* B57840 800E06A0 3C048017 */  lui   $a0, %hi(D_801722F4) # $a0, 0x8017
/* B57844 800E06A4 248422F4 */  addiu $a0, %lo(D_801722F4) # addiu $a0, $a0, 0x22f4
/* B57848 800E06A8 0C03790D */  jal   func_800DE434
/* B5784C 800E06AC 8FA6001C */   lw    $a2, 0x1c($sp)
/* B57850 800E06B0 3C038017 */  lui   $v1, %hi(gAudioContext) # $v1, 0x8017
/* B57854 800E06B4 2463F180 */  addiu $v1, %lo(gAudioContext) # addiu $v1, $v1, -0xe80
.L800E06B8:
/* B57858 800E06B8 8FBF0014 */  lw    $ra, 0x14($sp)
/* B5785C 800E06BC AC603170 */  sw    $zero, 0x3170($v1)
/* B57860 800E06C0 AC603404 */  sw    $zero, 0x3404($v1)
/* B57864 800E06C4 03E00008 */  jr    $ra
/* B57868 800E06C8 27BD0018 */   addiu $sp, $sp, 0x18

glabel func_800E06CC
/* B5786C 800E06CC 27BDFFB8 */  addiu $sp, $sp, -0x48
/* B57870 800E06D0 AFB6002C */  sw    $s6, 0x2c($sp)
/* B57874 800E06D4 AFA40048 */  sw    $a0, 0x48($sp)
/* B57878 800E06D8 3C048017 */  lui   $a0, %hi(D_801722F4) # $a0, 0x8017
/* B5787C 800E06DC 3C168017 */  lui   $s6, %hi(gAudioContext) # $s6, 0x8017
/* B57880 800E06E0 26D6F180 */  addiu $s6, %lo(gAudioContext) # addiu $s6, $s6, -0xe80
/* B57884 800E06E4 248422F4 */  addiu $a0, %lo(D_801722F4) # addiu $a0, $a0, 0x22f4
/* B57888 800E06E8 AFBF0034 */  sw    $ra, 0x34($sp)
/* B5788C 800E06EC AFB40024 */  sw    $s4, 0x24($sp)
/* B57890 800E06F0 AFB30020 */  sw    $s3, 0x20($sp)
/* B57894 800E06F4 AFB70030 */  sw    $s7, 0x30($sp)
/* B57898 800E06F8 AFB50028 */  sw    $s5, 0x28($sp)
/* B5789C 800E06FC AFB2001C */  sw    $s2, 0x1c($sp)
/* B578A0 800E0700 AFB10018 */  sw    $s1, 0x18($sp)
/* B578A4 800E0704 AFB00014 */  sw    $s0, 0x14($sp)
/* B578A8 800E0708 0080A025 */  move  $s4, $a0
/* B578AC 800E070C 8ED33178 */  lw    $s3, 0x3178($s6)
/* B578B0 800E0710 0C0378F7 */  jal   func_800DE3DC
/* B578B4 800E0714 8FA50048 */   lw    $a1, 0x48($sp)
/* B578B8 800E0718 14400013 */  bnez  $v0, .L800E0768
/* B578BC 800E071C AFA2003C */   sw    $v0, 0x3c($sp)
/* B578C0 800E0720 3C0E8017 */  lui   $t6, %hi(D_801722F4) # $t6, 0x8017
/* B578C4 800E0724 8DCE22F4 */  lw    $t6, %lo(D_801722F4)($t6)
/* B578C8 800E0728 3C108017 */  lui   $s0, %hi(D_801722F8) # $s0, 0x8017
/* B578CC 800E072C 8E1022F8 */  lw    $s0, %lo(D_801722F8)($s0)
/* B578D0 800E0730 3C018017 */  lui   $at, %hi(D_801722F8) # $at, 0x8017
/* B578D4 800E0734 3C048017 */  lui   $a0, %hi(D_801722F4) # $a0, 0x8017
/* B578D8 800E0738 248422F4 */  addiu $a0, %lo(D_801722F4) # addiu $a0, $a0, 0x22f4
/* B578DC 800E073C 8FA50048 */  lw    $a1, 0x48($sp)
/* B578E0 800E0740 0C0378F7 */  jal   func_800DE3DC
/* B578E4 800E0744 AC2E22F8 */   sw    $t6, %lo(D_801722F8)($at)
/* B578E8 800E0748 14400005 */  bnez  $v0, .L800E0760
/* B578EC 800E074C AFA2003C */   sw    $v0, 0x3c($sp)
/* B578F0 800E0750 3C018017 */  lui   $at, %hi(D_801722F8) # $at, 0x8017
/* B578F4 800E0754 AC3022F8 */  sw    $s0, %lo(D_801722F8)($at)
/* B578F8 800E0758 10000077 */  b     .L800E0938
/* B578FC 800E075C 00001025 */   move  $v0, $zero
.L800E0760:
/* B57900 800E0760 3C138017 */  lui   $s3, %hi(D_801722F4) # $s3, 0x8017
/* B57904 800E0764 8E7322F4 */  lw    $s3, %lo(D_801722F4)($s3)
.L800E0768:
/* B57908 800E0768 8EC7176C */  lw    $a3, 0x176c($s6)
/* B5790C 800E076C 3C128017 */  lui   $s2, %hi(D_801722F8) # $s2, 0x8017
/* B57910 800E0770 8E5222F8 */  lw    $s2, %lo(D_801722F8)($s2)
/* B57914 800E0774 2415FFFF */  li    $s5, -1
/* B57918 800E0778 18E00034 */  blez  $a3, .L800E084C
/* B5791C 800E077C 00008825 */   move  $s1, $zero
/* B57920 800E0780 3C068017 */  lui   $a2, %hi(gAudioContext) # $a2, 0x8017
/* B57924 800E0784 24C6F180 */  addiu $a2, %lo(gAudioContext) # addiu $a2, $a2, -0xe80
/* B57928 800E0788 24170001 */  li    $s7, 1
/* B5792C 800E078C 8CCF0D78 */  lw    $t7, 0xd78($a2)
.L800E0790:
/* B57930 800E0790 3C0E8017 */  lui   $t6, %hi(gAudioContext) # $t6, 0x8017
/* B57934 800E0794 25CEF180 */  addiu $t6, %lo(gAudioContext) # addiu $t6, $t6, -0xe80
/* B57938 800E0798 15E00023 */  bnez  $t7, .L800E0828
/* B5793C 800E079C 24C40D68 */   addiu $a0, $a2, 0xd68
/* B57940 800E07A0 8C980004 */  lw    $t8, 4($a0)
/* B57944 800E07A4 8C820008 */  lw    $v0, 8($a0)
/* B57948 800E07A8 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* B5794C 800E07AC 8F190000 */  lw    $t9, ($t8)
/* B57950 800E07B0 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* B57954 800E07B4 00401825 */  move  $v1, $v0
/* B57958 800E07B8 03214024 */  and   $t0, $t9, $at
/* B5795C 800E07BC 00482821 */  addu  $a1, $v0, $t0
/* B57960 800E07C0 24A5FFFF */  addiu $a1, $a1, -1
/* B57964 800E07C4 00B3082B */  sltu  $at, $a1, $s3
/* B57968 800E07C8 10200009 */  beqz  $at, .L800E07F0
/* B5796C 800E07CC 0053082B */   sltu  $at, $v0, $s3
/* B57970 800E07D0 10200007 */  beqz  $at, .L800E07F0
/* B57974 800E07D4 00074880 */   sll   $t1, $a3, 2
/* B57978 800E07D8 01274821 */  addu  $t1, $t1, $a3
/* B5797C 800E07DC 3C0A8017 */  lui   $t2, %hi(gAudioContext) # $t2, 0x8017
/* B57980 800E07E0 254AF180 */  addiu $t2, %lo(gAudioContext) # addiu $t2, $t2, -0xe80
/* B57984 800E07E4 00094880 */  sll   $t1, $t1, 2
/* B57988 800E07E8 10000013 */  b     .L800E0838
/* B5798C 800E07EC 012A1021 */   addu  $v0, $t1, $t2
.L800E07F0:
/* B57990 800E07F0 00B2082B */  sltu  $at, $a1, $s2
/* B57994 800E07F4 14200009 */  bnez  $at, .L800E081C
/* B57998 800E07F8 0072082B */   sltu  $at, $v1, $s2
/* B5799C 800E07FC 14200007 */  bnez  $at, .L800E081C
/* B579A0 800E0800 00075880 */   sll   $t3, $a3, 2
/* B579A4 800E0804 01675821 */  addu  $t3, $t3, $a3
/* B579A8 800E0808 3C0C8017 */  lui   $t4, %hi(gAudioContext) # $t4, 0x8017
/* B579AC 800E080C 258CF180 */  addiu $t4, %lo(gAudioContext) # addiu $t4, $t4, -0xe80
/* B579B0 800E0810 000B5880 */  sll   $t3, $t3, 2
/* B579B4 800E0814 10000008 */  b     .L800E0838
/* B579B8 800E0818 016C1021 */   addu  $v0, $t3, $t4
.L800E081C:
/* B579BC 800E081C AC970010 */  sw    $s7, 0x10($a0)
/* B579C0 800E0820 3C078017 */  lui   $a3, %hi(D_801708EC) # $a3, 0x8017
/* B579C4 800E0824 8CE708EC */  lw    $a3, %lo(D_801708EC)($a3)
.L800E0828:
/* B579C8 800E0828 00076880 */  sll   $t5, $a3, 2
/* B579CC 800E082C 01A76821 */  addu  $t5, $t5, $a3
/* B579D0 800E0830 000D6880 */  sll   $t5, $t5, 2
/* B579D4 800E0834 01AE1021 */  addu  $v0, $t5, $t6
.L800E0838:
/* B579D8 800E0838 24C60014 */  addiu $a2, $a2, 0x14
/* B579DC 800E083C 00C2082B */  sltu  $at, $a2, $v0
/* B579E0 800E0840 5420FFD3 */  bnezl $at, .L800E0790
/* B579E4 800E0844 8CCF0D78 */   lw    $t7, 0xd78($a2)
/* B579E8 800E0848 00008825 */  move  $s1, $zero
.L800E084C:
/* B579EC 800E084C 3C0F8017 */  lui   $t7, %hi(D_80172584) # $t7, 0x8017
/* B579F0 800E0850 8DEF2584 */  lw    $t7, %lo(D_80172584)($t7)
/* B579F4 800E0854 3C108017 */  lui   $s0, %hi(D_801722F4) # $s0, 0x8017
/* B579F8 800E0858 24170001 */  li    $s7, 1
/* B579FC 800E085C 19E00023 */  blez  $t7, .L800E08EC
/* B57A00 800E0860 261022F4 */   addiu $s0, %lo(D_801722F4) # addiu $s0, $s0, 0x22f4
/* B57A04 800E0864 2416FFFF */  li    $s6, -1
.L800E0868:
/* B57A08 800E0868 82180010 */  lb    $t8, 0x10($s0)
/* B57A0C 800E086C 57000004 */  bnezl $t8, .L800E0880
/* B57A10 800E0870 8E030018 */   lw    $v1, 0x18($s0)
/* B57A14 800E0874 10000019 */  b     .L800E08DC
/* B57A18 800E0878 8E820290 */   lw    $v0, 0x290($s4)
/* B57A1C 800E087C 8E030018 */  lw    $v1, 0x18($s0)
.L800E0880:
/* B57A20 800E0880 8E190020 */  lw    $t9, 0x20($s0)
/* B57A24 800E0884 03232821 */  addu  $a1, $t9, $v1
/* B57A28 800E0888 24A5FFFF */  addiu $a1, $a1, -1
/* B57A2C 800E088C 00B3082B */  sltu  $at, $a1, $s3
/* B57A30 800E0890 10200005 */  beqz  $at, .L800E08A8
/* B57A34 800E0894 0073082B */   sltu  $at, $v1, $s3
/* B57A38 800E0898 50200004 */  beql  $at, $zero, .L800E08AC
/* B57A3C 800E089C 00B2082B */   sltu  $at, $a1, $s2
/* B57A40 800E08A0 1000000E */  b     .L800E08DC
/* B57A44 800E08A4 8E820290 */   lw    $v0, 0x290($s4)
.L800E08A8:
/* B57A48 800E08A8 00B2082B */  sltu  $at, $a1, $s2
.L800E08AC:
/* B57A4C 800E08AC 14200005 */  bnez  $at, .L800E08C4
/* B57A50 800E08B0 0072082B */   sltu  $at, $v1, $s2
/* B57A54 800E08B4 14200003 */  bnez  $at, .L800E08C4
/* B57A58 800E08B8 00000000 */   nop   
/* B57A5C 800E08BC 10000007 */  b     .L800E08DC
/* B57A60 800E08C0 8E820290 */   lw    $v0, 0x290($s4)
.L800E08C4:
/* B57A64 800E08C4 0C0382B6 */  jal   func_800E0AD8
/* B57A68 800E08C8 26040010 */   addiu $a0, $s0, 0x10
/* B57A6C 800E08CC 56B60003 */  bnel  $s5, $s6, .L800E08DC
/* B57A70 800E08D0 8E820290 */   lw    $v0, 0x290($s4)
/* B57A74 800E08D4 0220A825 */  move  $s5, $s1
/* B57A78 800E08D8 8E820290 */  lw    $v0, 0x290($s4)
.L800E08DC:
/* B57A7C 800E08DC 26310001 */  addiu $s1, $s1, 1
/* B57A80 800E08E0 0222082A */  slt   $at, $s1, $v0
/* B57A84 800E08E4 1420FFE0 */  bnez  $at, .L800E0868
/* B57A88 800E08E8 26100014 */   addiu $s0, $s0, 0x14
.L800E08EC:
/* B57A8C 800E08EC 2416FFFF */  li    $s6, -1
/* B57A90 800E08F0 16B60006 */  bne   $s5, $s6, .L800E090C
/* B57A94 800E08F4 3C0B8017 */   lui   $t3, %hi(D_801722F4) # $t3, 0x8017
/* B57A98 800E08F8 3C088017 */  lui   $t0, %hi(D_80172584) # $t0, 0x8017
/* B57A9C 800E08FC 8D152584 */  lw    $s5, %lo(D_80172584)($t0)
/* B57AA0 800E0900 3C018017 */  lui   $at, %hi(D_80172584) # $at, 0x8017
/* B57AA4 800E0904 26A90001 */  addiu $t1, $s5, 1
/* B57AA8 800E0908 AC292584 */  sw    $t1, %lo(D_80172584)($at)
.L800E090C:
/* B57AAC 800E090C 00155080 */  sll   $t2, $s5, 2
/* B57AB0 800E0910 01555021 */  addu  $t2, $t2, $s5
/* B57AB4 800E0914 000A5080 */  sll   $t2, $t2, 2
/* B57AB8 800E0918 256B22F4 */  addiu $t3, %lo(D_801722F4) # addiu $t3, $t3, 0x22f4
/* B57ABC 800E091C 014B1821 */  addu  $v1, $t2, $t3
/* B57AC0 800E0920 8FAC003C */  lw    $t4, 0x3c($sp)
/* B57AC4 800E0924 8FAD0048 */  lw    $t5, 0x48($sp)
/* B57AC8 800E0928 A0770010 */  sb    $s7, 0x10($v1)
/* B57ACC 800E092C 24620010 */  addiu $v0, $v1, 0x10
/* B57AD0 800E0930 AC6C0018 */  sw    $t4, 0x18($v1)
/* B57AD4 800E0934 AC6D0020 */  sw    $t5, 0x20($v1)
.L800E0938:
/* B57AD8 800E0938 8FBF0034 */  lw    $ra, 0x34($sp)
/* B57ADC 800E093C 8FB00014 */  lw    $s0, 0x14($sp)
/* B57AE0 800E0940 8FB10018 */  lw    $s1, 0x18($sp)
/* B57AE4 800E0944 8FB2001C */  lw    $s2, 0x1c($sp)
/* B57AE8 800E0948 8FB30020 */  lw    $s3, 0x20($sp)
/* B57AEC 800E094C 8FB40024 */  lw    $s4, 0x24($sp)
/* B57AF0 800E0950 8FB50028 */  lw    $s5, 0x28($sp)
/* B57AF4 800E0954 8FB6002C */  lw    $s6, 0x2c($sp)
/* B57AF8 800E0958 8FB70030 */  lw    $s7, 0x30($sp)
/* B57AFC 800E095C 03E00008 */  jr    $ra
/* B57B00 800E0960 27BD0048 */   addiu $sp, $sp, 0x48

glabel func_800E0964
/* B57B04 800E0964 27BDFFC8 */  addiu $sp, $sp, -0x38
/* B57B08 800E0968 AFB5002C */  sw    $s5, 0x2c($sp)
/* B57B0C 800E096C 3C158017 */  lui   $s5, %hi(gAudioContext) # $s5, 0x8017
/* B57B10 800E0970 26B5F180 */  addiu $s5, %lo(gAudioContext) # addiu $s5, $s5, -0xe80
/* B57B14 800E0974 AFB30024 */  sw    $s3, 0x24($sp)
/* B57B18 800E0978 8EAE2844 */  lw    $t6, 0x2844($s5)
/* B57B1C 800E097C 00059880 */  sll   $s3, $a1, 2
/* B57B20 800E0980 02659821 */  addu  $s3, $s3, $a1
/* B57B24 800E0984 00139880 */  sll   $s3, $s3, 2
/* B57B28 800E0988 AFBF0034 */  sw    $ra, 0x34($sp)
/* B57B2C 800E098C AFB60030 */  sw    $s6, 0x30($sp)
/* B57B30 800E0990 AFB40028 */  sw    $s4, 0x28($sp)
/* B57B34 800E0994 AFB20020 */  sw    $s2, 0x20($sp)
/* B57B38 800E0998 AFB1001C */  sw    $s1, 0x1c($sp)
/* B57B3C 800E099C AFB00018 */  sw    $s0, 0x18($sp)
/* B57B40 800E09A0 01D31021 */  addu  $v0, $t6, $s3
/* B57B44 800E09A4 904F0000 */  lbu   $t7, ($v0)
/* B57B48 800E09A8 00809025 */  move  $s2, $a0
/* B57B4C 800E09AC 00A0A025 */  move  $s4, $a1
/* B57B50 800E09B0 19E0001D */  blez  $t7, .L800E0A28
/* B57B54 800E09B4 00008825 */   move  $s1, $zero
/* B57B58 800E09B8 2416007F */  li    $s6, 127
/* B57B5C 800E09BC 02802025 */  move  $a0, $s4
.L800E09C0:
/* B57B60 800E09C0 0C039D26 */  jal   Audio_GetInstrumentInner
/* B57B64 800E09C4 02202825 */   move  $a1, $s1
/* B57B68 800E09C8 10400010 */  beqz  $v0, .L800E0A0C
/* B57B6C 800E09CC 00408025 */   move  $s0, $v0
/* B57B70 800E09D0 90580001 */  lbu   $t8, 1($v0)
/* B57B74 800E09D4 02402025 */  move  $a0, $s2
/* B57B78 800E09D8 53000004 */  beql  $t8, $zero, .L800E09EC
/* B57B7C 800E09DC 92190002 */   lbu   $t9, 2($s0)
/* B57B80 800E09E0 0C0382ED */  jal   func_800E0BB4
/* B57B84 800E09E4 8C450008 */   lw    $a1, 8($v0)
/* B57B88 800E09E8 92190002 */  lbu   $t9, 2($s0)
.L800E09EC:
/* B57B8C 800E09EC 02402025 */  move  $a0, $s2
/* B57B90 800E09F0 52D90004 */  beql  $s6, $t9, .L800E0A04
/* B57B94 800E09F4 02402025 */   move  $a0, $s2
/* B57B98 800E09F8 0C0382ED */  jal   func_800E0BB4
/* B57B9C 800E09FC 8E050018 */   lw    $a1, 0x18($s0)
/* B57BA0 800E0A00 02402025 */  move  $a0, $s2
.L800E0A04:
/* B57BA4 800E0A04 0C0382ED */  jal   func_800E0BB4
/* B57BA8 800E0A08 8E050010 */   lw    $a1, 0x10($s0)
.L800E0A0C:
/* B57BAC 800E0A0C 8EA82844 */  lw    $t0, 0x2844($s5)
/* B57BB0 800E0A10 26310001 */  addiu $s1, $s1, 1
/* B57BB4 800E0A14 01131021 */  addu  $v0, $t0, $s3
/* B57BB8 800E0A18 90490000 */  lbu   $t1, ($v0)
/* B57BBC 800E0A1C 0229082A */  slt   $at, $s1, $t1
/* B57BC0 800E0A20 5420FFE7 */  bnezl $at, .L800E09C0
/* B57BC4 800E0A24 02802025 */   move  $a0, $s4
.L800E0A28:
/* B57BC8 800E0A28 904A0001 */  lbu   $t2, 1($v0)
/* B57BCC 800E0A2C 00008025 */  move  $s0, $zero
/* B57BD0 800E0A30 1940000E */  blez  $t2, .L800E0A6C
/* B57BD4 800E0A34 02802025 */   move  $a0, $s4
.L800E0A38:
/* B57BD8 800E0A38 0C039D5B */  jal   Audio_GetDrum
/* B57BDC 800E0A3C 02002825 */   move  $a1, $s0
/* B57BE0 800E0A40 10400003 */  beqz  $v0, .L800E0A50
/* B57BE4 800E0A44 02402025 */   move  $a0, $s2
/* B57BE8 800E0A48 0C0382ED */  jal   func_800E0BB4
/* B57BEC 800E0A4C 8C450004 */   lw    $a1, 4($v0)
.L800E0A50:
/* B57BF0 800E0A50 8EAB2844 */  lw    $t3, 0x2844($s5)
/* B57BF4 800E0A54 26100001 */  addiu $s0, $s0, 1
/* B57BF8 800E0A58 01731021 */  addu  $v0, $t3, $s3
/* B57BFC 800E0A5C 904C0001 */  lbu   $t4, 1($v0)
/* B57C00 800E0A60 020C082A */  slt   $at, $s0, $t4
/* B57C04 800E0A64 5420FFF4 */  bnezl $at, .L800E0A38
/* B57C08 800E0A68 02802025 */   move  $a0, $s4
.L800E0A6C:
/* B57C0C 800E0A6C 944D0004 */  lhu   $t5, 4($v0)
/* B57C10 800E0A70 00008025 */  move  $s0, $zero
/* B57C14 800E0A74 19A0000E */  blez  $t5, .L800E0AB0
/* B57C18 800E0A78 02802025 */   move  $a0, $s4
.L800E0A7C:
/* B57C1C 800E0A7C 0C039D94 */  jal   Audio_GetUnkInstrument
/* B57C20 800E0A80 02002825 */   move  $a1, $s0
/* B57C24 800E0A84 10400003 */  beqz  $v0, .L800E0A94
/* B57C28 800E0A88 02402025 */   move  $a0, $s2
/* B57C2C 800E0A8C 0C0382ED */  jal   func_800E0BB4
/* B57C30 800E0A90 8C450000 */   lw    $a1, ($v0)
.L800E0A94:
/* B57C34 800E0A94 8EAE2844 */  lw    $t6, 0x2844($s5)
/* B57C38 800E0A98 26100001 */  addiu $s0, $s0, 1
/* B57C3C 800E0A9C 01D37821 */  addu  $t7, $t6, $s3
/* B57C40 800E0AA0 95F80004 */  lhu   $t8, 4($t7)
/* B57C44 800E0AA4 0218082A */  slt   $at, $s0, $t8
/* B57C48 800E0AA8 5420FFF4 */  bnezl $at, .L800E0A7C
/* B57C4C 800E0AAC 02802025 */   move  $a0, $s4
.L800E0AB0:
/* B57C50 800E0AB0 8FBF0034 */  lw    $ra, 0x34($sp)
/* B57C54 800E0AB4 8FB00018 */  lw    $s0, 0x18($sp)
/* B57C58 800E0AB8 8FB1001C */  lw    $s1, 0x1c($sp)
/* B57C5C 800E0ABC 8FB20020 */  lw    $s2, 0x20($sp)
/* B57C60 800E0AC0 8FB30024 */  lw    $s3, 0x24($sp)
/* B57C64 800E0AC4 8FB40028 */  lw    $s4, 0x28($sp)
/* B57C68 800E0AC8 8FB5002C */  lw    $s5, 0x2c($sp)
/* B57C6C 800E0ACC 8FB60030 */  lw    $s6, 0x30($sp)
/* B57C70 800E0AD0 03E00008 */  jr    $ra
/* B57C74 800E0AD4 27BD0038 */   addiu $sp, $sp, 0x38

glabel func_800E0AD8
/* B57C78 800E0AD8 27BDFFD0 */  addiu $sp, $sp, -0x30
/* B57C7C 800E0ADC AFB50028 */  sw    $s5, 0x28($sp)
/* B57C80 800E0AE0 3C158017 */  lui   $s5, %hi(gAudioContext) # $s5, 0x8017
/* B57C84 800E0AE4 26B5F180 */  addiu $s5, %lo(gAudioContext) # addiu $s5, $s5, -0xe80
/* B57C88 800E0AE8 8EAE2834 */  lw    $t6, 0x2834($s5)
/* B57C8C 800E0AEC AFBF002C */  sw    $ra, 0x2c($sp)
/* B57C90 800E0AF0 AFB40024 */  sw    $s4, 0x24($sp)
/* B57C94 800E0AF4 AFB30020 */  sw    $s3, 0x20($sp)
/* B57C98 800E0AF8 AFB2001C */  sw    $s2, 0x1c($sp)
/* B57C9C 800E0AFC AFB10018 */  sw    $s1, 0x18($sp)
/* B57CA0 800E0B00 AFB00014 */  sw    $s0, 0x14($sp)
/* B57CA4 800E0B04 85D40000 */  lh    $s4, ($t6)
/* B57CA8 800E0B08 00809025 */  move  $s2, $a0
/* B57CAC 800E0B0C 00008025 */  move  $s0, $zero
/* B57CB0 800E0B10 1A80001F */  blez  $s4, .L800E0B90
/* B57CB4 800E0B14 00008825 */   move  $s1, $zero
/* B57CB8 800E0B18 241300FF */  li    $s3, 255
.L800E0B1C:
/* B57CBC 800E0B1C 8EAF2844 */  lw    $t7, 0x2844($s5)
/* B57CC0 800E0B20 82450002 */  lb    $a1, 2($s2)
/* B57CC4 800E0B24 01F11021 */  addu  $v0, $t7, $s1
/* B57CC8 800E0B28 90430002 */  lbu   $v1, 2($v0)
/* B57CCC 800E0B2C 90440003 */  lbu   $a0, 3($v0)
/* B57CD0 800E0B30 10730003 */  beq   $v1, $s3, .L800E0B40
/* B57CD4 800E0B34 00000000 */   nop   
/* B57CD8 800E0B38 50650007 */  beql  $v1, $a1, .L800E0B58
/* B57CDC 800E0B3C 24040001 */   li    $a0, 1
.L800E0B40:
/* B57CE0 800E0B40 10930003 */  beq   $a0, $s3, .L800E0B50
/* B57CE4 800E0B44 00000000 */   nop   
/* B57CE8 800E0B48 50850003 */  beql  $a0, $a1, .L800E0B58
/* B57CEC 800E0B4C 24040001 */   li    $a0, 1
.L800E0B50:
/* B57CF0 800E0B50 14A0000C */  bnez  $a1, .L800E0B84
/* B57CF4 800E0B54 24040001 */   li    $a0, 1
.L800E0B58:
/* B57CF8 800E0B58 24050002 */  li    $a1, 2
/* B57CFC 800E0B5C 0C037C1D */  jal   func_800DF074
/* B57D00 800E0B60 02003025 */   move  $a2, $s0
/* B57D04 800E0B64 50400008 */  beql  $v0, $zero, .L800E0B88
/* B57D08 800E0B68 26100001 */   addiu $s0, $s0, 1
/* B57D0C 800E0B6C 0C03862C */  jal   func_800E18B0
/* B57D10 800E0B70 02002025 */   move  $a0, $s0
/* B57D14 800E0B74 10400003 */  beqz  $v0, .L800E0B84
/* B57D18 800E0B78 02402025 */   move  $a0, $s2
/* B57D1C 800E0B7C 0C038259 */  jal   func_800E0964
/* B57D20 800E0B80 02002825 */   move  $a1, $s0
.L800E0B84:
/* B57D24 800E0B84 26100001 */  addiu $s0, $s0, 1
.L800E0B88:
/* B57D28 800E0B88 1614FFE4 */  bne   $s0, $s4, .L800E0B1C
/* B57D2C 800E0B8C 26310014 */   addiu $s1, $s1, 0x14
.L800E0B90:
/* B57D30 800E0B90 8FBF002C */  lw    $ra, 0x2c($sp)
/* B57D34 800E0B94 8FB00014 */  lw    $s0, 0x14($sp)
/* B57D38 800E0B98 8FB10018 */  lw    $s1, 0x18($sp)
/* B57D3C 800E0B9C 8FB2001C */  lw    $s2, 0x1c($sp)
/* B57D40 800E0BA0 8FB30020 */  lw    $s3, 0x20($sp)
/* B57D44 800E0BA4 8FB40024 */  lw    $s4, 0x24($sp)
/* B57D48 800E0BA8 8FB50028 */  lw    $s5, 0x28($sp)
/* B57D4C 800E0BAC 03E00008 */  jr    $ra
/* B57D50 800E0BB0 27BD0030 */   addiu $sp, $sp, 0x30

glabel func_800E0BB4
/* B57D54 800E0BB4 10A0000E */  beqz  $a1, .L800E0BF0
/* B57D58 800E0BB8 00000000 */   nop   
/* B57D5C 800E0BBC 8C8E0008 */  lw    $t6, 8($a0)
/* B57D60 800E0BC0 8CAF0004 */  lw    $t7, 4($a1)
/* B57D64 800E0BC4 15CF000A */  bne   $t6, $t7, .L800E0BF0
/* B57D68 800E0BC8 00000000 */   nop   
/* B57D6C 800E0BCC 8C98000C */  lw    $t8, 0xc($a0)
/* B57D70 800E0BD0 90AB0000 */  lbu   $t3, ($a1)
/* B57D74 800E0BD4 ACB80004 */  sw    $t8, 4($a1)
/* B57D78 800E0BD8 80880001 */  lb    $t0, 1($a0)
/* B57D7C 800E0BDC 316CFFF3 */  andi  $t4, $t3, 0xfff3
/* B57D80 800E0BE0 00084880 */  sll   $t1, $t0, 2
/* B57D84 800E0BE4 312A000C */  andi  $t2, $t1, 0xc
/* B57D88 800E0BE8 014C6825 */  or    $t5, $t2, $t4
/* B57D8C 800E0BEC A0AD0000 */  sb    $t5, ($a1)
.L800E0BF0:
/* B57D90 800E0BF0 03E00008 */  jr    $ra
/* B57D94 800E0BF4 00000000 */   nop   

glabel func_800E0BF8
/* B57D98 800E0BF8 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B57D9C 800E0BFC AFA40018 */  sw    $a0, 0x18($sp)
/* B57DA0 800E0C00 AFBF0014 */  sw    $ra, 0x14($sp)
/* B57DA4 800E0C04 3C048017 */  lui   $a0, %hi(D_80172060) # $a0, 0x8017
/* B57DA8 800E0C08 24842060 */  addiu $a0, %lo(D_80172060) # addiu $a0, $a0, 0x2060
/* B57DAC 800E0C0C 0C0378F7 */  jal   func_800DE3DC
/* B57DB0 800E0C10 8FA50018 */   lw    $a1, 0x18($sp)
/* B57DB4 800E0C14 14400003 */  bnez  $v0, .L800E0C24
/* B57DB8 800E0C18 00402025 */   move  $a0, $v0
/* B57DBC 800E0C1C 10000014 */  b     .L800E0C70
/* B57DC0 800E0C20 00001025 */   move  $v0, $zero
.L800E0C24:
/* B57DC4 800E0C24 3C0E8017 */  lui   $t6, %hi(D_801722F0) # $t6, 0x8017
/* B57DC8 800E0C28 8DCE22F0 */  lw    $t6, %lo(D_801722F0)($t6)
/* B57DCC 800E0C2C 3C198017 */  lui   $t9, %hi(D_80172060) # $t9, 0x8017
/* B57DD0 800E0C30 27392060 */  addiu $t9, %lo(D_80172060) # addiu $t9, $t9, 0x2060
/* B57DD4 800E0C34 000E7880 */  sll   $t7, $t6, 2
/* B57DD8 800E0C38 01EE7821 */  addu  $t7, $t7, $t6
/* B57DDC 800E0C3C 000F7880 */  sll   $t7, $t7, 2
/* B57DE0 800E0C40 25F80010 */  addiu $t8, $t7, 0x10
/* B57DE4 800E0C44 03191021 */  addu  $v0, $t8, $t9
/* B57DE8 800E0C48 24080001 */  li    $t0, 1
/* B57DEC 800E0C4C A0480000 */  sb    $t0, ($v0)
/* B57DF0 800E0C50 AC440008 */  sw    $a0, 8($v0)
/* B57DF4 800E0C54 8FA90018 */  lw    $t1, 0x18($sp)
/* B57DF8 800E0C58 3C0A8017 */  lui   $t2, %hi(D_801722F0) # $t2, 0x8017
/* B57DFC 800E0C5C 3C018017 */  lui   $at, %hi(D_801722F0) # $at, 0x8017
/* B57E00 800E0C60 AC490010 */  sw    $t1, 0x10($v0)
/* B57E04 800E0C64 8D4A22F0 */  lw    $t2, %lo(D_801722F0)($t2)
/* B57E08 800E0C68 254B0001 */  addiu $t3, $t2, 1
/* B57E0C 800E0C6C AC2B22F0 */  sw    $t3, %lo(D_801722F0)($at)
.L800E0C70:
/* B57E10 800E0C70 8FBF0014 */  lw    $ra, 0x14($sp)
/* B57E14 800E0C74 27BD0018 */  addiu $sp, $sp, 0x18
/* B57E18 800E0C78 03E00008 */  jr    $ra
/* B57E1C 800E0C7C 00000000 */   nop   

glabel func_800E0C80
/* B57E20 800E0C80 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B57E24 800E0C84 AFBF0014 */  sw    $ra, 0x14($sp)
/* B57E28 800E0C88 80820002 */  lb    $v0, 2($a0)
/* B57E2C 800E0C8C 10A20005 */  beq   $a1, $v0, .L800E0CA4
/* B57E30 800E0C90 00000000 */   nop   
/* B57E34 800E0C94 10C20003 */  beq   $a2, $v0, .L800E0CA4
/* B57E38 800E0C98 00000000 */   nop   
/* B57E3C 800E0C9C 54400004 */  bnezl $v0, .L800E0CB0
/* B57E40 800E0CA0 8FBF0014 */   lw    $ra, 0x14($sp)
.L800E0CA4:
/* B57E44 800E0CA4 0C038259 */  jal   func_800E0964
/* B57E48 800E0CA8 00E02825 */   move  $a1, $a3
/* B57E4C 800E0CAC 8FBF0014 */  lw    $ra, 0x14($sp)
.L800E0CB0:
/* B57E50 800E0CB0 27BD0018 */  addiu $sp, $sp, 0x18
/* B57E54 800E0CB4 03E00008 */  jr    $ra
/* B57E58 800E0CB8 00000000 */   nop   

glabel func_800E0CBC
/* B57E5C 800E0CBC 27BDFFC0 */  addiu $sp, $sp, -0x40
/* B57E60 800E0CC0 AFB5002C */  sw    $s5, 0x2c($sp)
/* B57E64 800E0CC4 3C158017 */  lui   $s5, %hi(gAudioContext) # $s5, 0x8017
/* B57E68 800E0CC8 26B5F180 */  addiu $s5, %lo(gAudioContext) # addiu $s5, $s5, -0xe80
/* B57E6C 800E0CCC 8EAE2834 */  lw    $t6, 0x2834($s5)
/* B57E70 800E0CD0 AFBF003C */  sw    $ra, 0x3c($sp)
/* B57E74 800E0CD4 AFBE0038 */  sw    $fp, 0x38($sp)
/* B57E78 800E0CD8 AFB70034 */  sw    $s7, 0x34($sp)
/* B57E7C 800E0CDC AFB60030 */  sw    $s6, 0x30($sp)
/* B57E80 800E0CE0 AFB40028 */  sw    $s4, 0x28($sp)
/* B57E84 800E0CE4 AFB30024 */  sw    $s3, 0x24($sp)
/* B57E88 800E0CE8 AFB20020 */  sw    $s2, 0x20($sp)
/* B57E8C 800E0CEC AFB1001C */  sw    $s1, 0x1c($sp)
/* B57E90 800E0CF0 AFB00018 */  sw    $s0, 0x18($sp)
/* B57E94 800E0CF4 85DE0000 */  lh    $fp, ($t6)
/* B57E98 800E0CF8 0000A025 */  move  $s4, $zero
/* B57E9C 800E0CFC 0000B025 */  move  $s6, $zero
/* B57EA0 800E0D00 1BC00036 */  blez  $fp, .L800E0DDC
/* B57EA4 800E0D04 241700FF */   li    $s7, 255
.L800E0D08:
/* B57EA8 800E0D08 8EAF2844 */  lw    $t7, 0x2844($s5)
/* B57EAC 800E0D0C 24040001 */  li    $a0, 1
/* B57EB0 800E0D10 24050003 */  li    $a1, 3
/* B57EB4 800E0D14 01F61021 */  addu  $v0, $t7, $s6
/* B57EB8 800E0D18 90520002 */  lbu   $s2, 2($v0)
/* B57EBC 800E0D1C 90530003 */  lbu   $s3, 3($v0)
/* B57EC0 800E0D20 16570003 */  bne   $s2, $s7, .L800E0D30
/* B57EC4 800E0D24 00000000 */   nop   
/* B57EC8 800E0D28 5277002A */  beql  $s3, $s7, .L800E0DD4
/* B57ECC 800E0D2C 26940001 */   addiu $s4, $s4, 1
.L800E0D30:
/* B57ED0 800E0D30 0C037C1D */  jal   func_800DF074
/* B57ED4 800E0D34 02803025 */   move  $a2, $s4
/* B57ED8 800E0D38 50400026 */  beql  $v0, $zero, .L800E0DD4
/* B57EDC 800E0D3C 26940001 */   addiu $s4, $s4, 1
/* B57EE0 800E0D40 0C03862C */  jal   func_800E18B0
/* B57EE4 800E0D44 02802025 */   move  $a0, $s4
/* B57EE8 800E0D48 50400022 */  beql  $v0, $zero, .L800E0DD4
/* B57EEC 800E0D4C 26940001 */   addiu $s4, $s4, 1
/* B57EF0 800E0D50 8EB83170 */  lw    $t8, 0x3170($s5)
/* B57EF4 800E0D54 3C118017 */  lui   $s1, %hi(D_80172070) # $s1, 0x8017
/* B57EF8 800E0D58 26312070 */  addiu $s1, %lo(D_80172070) # addiu $s1, $s1, 0x2070
/* B57EFC 800E0D5C 1B00000D */  blez  $t8, .L800E0D94
/* B57F00 800E0D60 00008025 */   move  $s0, $zero
/* B57F04 800E0D64 02202025 */  move  $a0, $s1
.L800E0D68:
/* B57F08 800E0D68 02402825 */  move  $a1, $s2
/* B57F0C 800E0D6C 02603025 */  move  $a2, $s3
/* B57F10 800E0D70 0C038320 */  jal   func_800E0C80
/* B57F14 800E0D74 02803825 */   move  $a3, $s4
/* B57F18 800E0D78 8EB93170 */  lw    $t9, 0x3170($s5)
/* B57F1C 800E0D7C 26100001 */  addiu $s0, $s0, 1
/* B57F20 800E0D80 26310014 */  addiu $s1, $s1, 0x14
/* B57F24 800E0D84 0219082A */  slt   $at, $s0, $t9
/* B57F28 800E0D88 5420FFF7 */  bnezl $at, .L800E0D68
/* B57F2C 800E0D8C 02202025 */   move  $a0, $s1
/* B57F30 800E0D90 00008025 */  move  $s0, $zero
.L800E0D94:
/* B57F34 800E0D94 8EA83404 */  lw    $t0, 0x3404($s5)
/* B57F38 800E0D98 3C118017 */  lui   $s1, %hi(D_80172304) # $s1, 0x8017
/* B57F3C 800E0D9C 26312304 */  addiu $s1, %lo(D_80172304) # addiu $s1, $s1, 0x2304
/* B57F40 800E0DA0 1900000B */  blez  $t0, .L800E0DD0
/* B57F44 800E0DA4 02202025 */   move  $a0, $s1
.L800E0DA8:
/* B57F48 800E0DA8 02402825 */  move  $a1, $s2
/* B57F4C 800E0DAC 02603025 */  move  $a2, $s3
/* B57F50 800E0DB0 0C038320 */  jal   func_800E0C80
/* B57F54 800E0DB4 02803825 */   move  $a3, $s4
/* B57F58 800E0DB8 8EA93404 */  lw    $t1, 0x3404($s5)
/* B57F5C 800E0DBC 26100001 */  addiu $s0, $s0, 1
/* B57F60 800E0DC0 26310014 */  addiu $s1, $s1, 0x14
/* B57F64 800E0DC4 0209082A */  slt   $at, $s0, $t1
/* B57F68 800E0DC8 5420FFF7 */  bnezl $at, .L800E0DA8
/* B57F6C 800E0DCC 02202025 */   move  $a0, $s1
.L800E0DD0:
/* B57F70 800E0DD0 26940001 */  addiu $s4, $s4, 1
.L800E0DD4:
/* B57F74 800E0DD4 169EFFCC */  bne   $s4, $fp, .L800E0D08
/* B57F78 800E0DD8 26D60014 */   addiu $s6, $s6, 0x14
.L800E0DDC:
/* B57F7C 800E0DDC 8FBF003C */  lw    $ra, 0x3c($sp)
/* B57F80 800E0DE0 8FB00018 */  lw    $s0, 0x18($sp)
/* B57F84 800E0DE4 8FB1001C */  lw    $s1, 0x1c($sp)
/* B57F88 800E0DE8 8FB20020 */  lw    $s2, 0x20($sp)
/* B57F8C 800E0DEC 8FB30024 */  lw    $s3, 0x24($sp)
/* B57F90 800E0DF0 8FB40028 */  lw    $s4, 0x28($sp)
/* B57F94 800E0DF4 8FB5002C */  lw    $s5, 0x2c($sp)
/* B57F98 800E0DF8 8FB60030 */  lw    $s6, 0x30($sp)
/* B57F9C 800E0DFC 8FB70034 */  lw    $s7, 0x34($sp)
/* B57FA0 800E0E00 8FBE0038 */  lw    $fp, 0x38($sp)
/* B57FA4 800E0E04 03E00008 */  jr    $ra
/* B57FA8 800E0E08 27BD0040 */   addiu $sp, $sp, 0x40

glabel func_800E0E0C
/* B57FAC 800E0E0C 10A00015 */  beqz  $a1, .L800E0E64
/* B57FB0 800E0E10 00000000 */   nop   
/* B57FB4 800E0E14 8C830000 */  lw    $v1, ($a0)
/* B57FB8 800E0E18 8CA70004 */  lw    $a3, 4($a1)
/* B57FBC 800E0E1C 8C8E0008 */  lw    $t6, 8($a0)
/* B57FC0 800E0E20 00E3082B */  sltu  $at, $a3, $v1
/* B57FC4 800E0E24 1420000F */  bnez  $at, .L800E0E64
/* B57FC8 800E0E28 006E3021 */   addu  $a2, $v1, $t6
/* B57FCC 800E0E2C 00E6082B */  sltu  $at, $a3, $a2
/* B57FD0 800E0E30 1020000C */  beqz  $at, .L800E0E64
/* B57FD4 800E0E34 00000000 */   nop   
/* B57FD8 800E0E38 8C980004 */  lw    $t8, 4($a0)
/* B57FDC 800E0E3C 00E37823 */  subu  $t7, $a3, $v1
/* B57FE0 800E0E40 90AD0000 */  lbu   $t5, ($a1)
/* B57FE4 800E0E44 01F8C821 */  addu  $t9, $t7, $t8
/* B57FE8 800E0E48 ACB90004 */  sw    $t9, 4($a1)
/* B57FEC 800E0E4C 908A000C */  lbu   $t2, 0xc($a0)
/* B57FF0 800E0E50 31AEFFF3 */  andi  $t6, $t5, 0xfff3
/* B57FF4 800E0E54 000A5880 */  sll   $t3, $t2, 2
/* B57FF8 800E0E58 316C000C */  andi  $t4, $t3, 0xc
/* B57FFC 800E0E5C 018E7825 */  or    $t7, $t4, $t6
/* B58000 800E0E60 A0AF0000 */  sb    $t7, ($a1)
.L800E0E64:
/* B58004 800E0E64 03E00008 */  jr    $ra
/* B58008 800E0E68 00000000 */   nop   

glabel func_800E0E6C
/* B5800C 800E0E6C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B58010 800E0E70 AFBF0014 */  sw    $ra, 0x14($sp)
/* B58014 800E0E74 00802825 */  move  $a1, $a0
/* B58018 800E0E78 0C0383AD */  jal   func_800E0EB4
/* B5801C 800E0E7C 00002025 */   move  $a0, $zero
/* B58020 800E0E80 8FBF0014 */  lw    $ra, 0x14($sp)
/* B58024 800E0E84 27BD0018 */  addiu $sp, $sp, 0x18
/* B58028 800E0E88 03E00008 */  jr    $ra
/* B5802C 800E0E8C 00000000 */   nop   

glabel func_800E0E90
/* B58030 800E0E90 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B58034 800E0E94 AFBF0014 */  sw    $ra, 0x14($sp)
/* B58038 800E0E98 00802825 */  move  $a1, $a0
/* B5803C 800E0E9C 0C0383AD */  jal   func_800E0EB4
/* B58040 800E0EA0 24040001 */   li    $a0, 1
/* B58044 800E0EA4 8FBF0014 */  lw    $ra, 0x14($sp)
/* B58048 800E0EA8 27BD0018 */  addiu $sp, $sp, 0x18
/* B5804C 800E0EAC 03E00008 */  jr    $ra
/* B58050 800E0EB0 00000000 */   nop   

glabel func_800E0EB4
/* B58054 800E0EB4 27BDFF60 */  addiu $sp, $sp, -0xa0
/* B58058 800E0EB8 AFB70034 */  sw    $s7, 0x34($sp)
/* B5805C 800E0EBC 3C178017 */  lui   $s7, %hi(gAudioContext) # $s7, 0x8017
/* B58060 800E0EC0 26F7F180 */  addiu $s7, %lo(gAudioContext) # addiu $s7, $s7, -0xe80
/* B58064 800E0EC4 8EEE2834 */  lw    $t6, 0x2834($s7)
/* B58068 800E0EC8 AFBF003C */  sw    $ra, 0x3c($sp)
/* B5806C 800E0ECC AFBE0038 */  sw    $fp, 0x38($sp)
/* B58070 800E0ED0 AFB60030 */  sw    $s6, 0x30($sp)
/* B58074 800E0ED4 AFB5002C */  sw    $s5, 0x2c($sp)
/* B58078 800E0ED8 AFB40028 */  sw    $s4, 0x28($sp)
/* B5807C 800E0EDC AFB30024 */  sw    $s3, 0x24($sp)
/* B58080 800E0EE0 AFB20020 */  sw    $s2, 0x20($sp)
/* B58084 800E0EE4 AFB1001C */  sw    $s1, 0x1c($sp)
/* B58088 800E0EE8 AFB00018 */  sw    $s0, 0x18($sp)
/* B5808C 800E0EEC AFA500A4 */  sw    $a1, 0xa4($sp)
/* B58090 800E0EF0 85CF0000 */  lh    $t7, ($t6)
/* B58094 800E0EF4 00808825 */  move  $s1, $a0
/* B58098 800E0EF8 8EF02838 */  lw    $s0, 0x2838($s7)
/* B5809C 800E0EFC 24040002 */  li    $a0, 2
/* B580A0 800E0F00 8FA600A4 */  lw    $a2, 0xa4($sp)
/* B580A4 800E0F04 24050002 */  li    $a1, 2
/* B580A8 800E0F08 0C037C1D */  jal   func_800DF074
/* B580AC 800E0F0C AFAF0094 */   sw    $t7, 0x94($sp)
/* B580B0 800E0F10 10400081 */  beqz  $v0, .L800E1118
/* B580B4 800E0F14 AFA20078 */   sw    $v0, 0x78($sp)
/* B580B8 800E0F18 8FB800A4 */  lw    $t8, 0xa4($sp)
/* B580BC 800E0F1C 24010002 */  li    $at, 2
/* B580C0 800E0F20 0000B025 */  move  $s6, $zero
/* B580C4 800E0F24 0018C900 */  sll   $t9, $t8, 4
/* B580C8 800E0F28 02191021 */  addu  $v0, $s0, $t9
/* B580CC 800E0F2C 8C480014 */  lw    $t0, 0x14($v0)
/* B580D0 800E0F30 241E007F */  li    $fp, 127
/* B580D4 800E0F34 27B40078 */  addiu $s4, $sp, 0x78
/* B580D8 800E0F38 AFA80080 */  sw    $t0, 0x80($sp)
/* B580DC 800E0F3C 80490018 */  lb    $t1, 0x18($v0)
/* B580E0 800E0F40 312300FF */  andi  $v1, $t1, 0xff
/* B580E4 800E0F44 10610004 */  beq   $v1, $at, .L800E0F58
/* B580E8 800E0F48 A3A90084 */   sb    $t1, 0x84($sp)
/* B580EC 800E0F4C 24010003 */  li    $at, 3
/* B580F0 800E0F50 54610005 */  bnel  $v1, $at, .L800E0F68
/* B580F4 800E0F54 AFA0007C */   sw    $zero, 0x7c($sp)
.L800E0F58:
/* B580F8 800E0F58 8C4A0010 */  lw    $t2, 0x10($v0)
/* B580FC 800E0F5C 10000002 */  b     .L800E0F68
/* B58100 800E0F60 AFAA007C */   sw    $t2, 0x7c($sp)
/* B58104 800E0F64 AFA0007C */  sw    $zero, 0x7c($sp)
.L800E0F68:
/* B58108 800E0F68 12200007 */  beqz  $s1, .L800E0F88
/* B5810C 800E0F6C 24010001 */   li    $at, 1
/* B58110 800E0F70 16210005 */  bne   $s1, $at, .L800E0F88
/* B58114 800E0F74 8FA2007C */   lw    $v0, 0x7c($sp)
/* B58118 800E0F78 8FAB0078 */  lw    $t3, 0x78($sp)
/* B5811C 800E0F7C AFA20078 */  sw    $v0, 0x78($sp)
/* B58120 800E0F80 A3A00084 */  sb    $zero, 0x84($sp)
/* B58124 800E0F84 AFAB007C */  sw    $t3, 0x7c($sp)
.L800E0F88:
/* B58128 800E0F88 8FAC0094 */  lw    $t4, 0x94($sp)
/* B5812C 800E0F8C 0000A825 */  move  $s5, $zero
/* B58130 800E0F90 59800062 */  blezl $t4, .L800E111C
/* B58134 800E0F94 8FBF003C */   lw    $ra, 0x3c($sp)
/* B58138 800E0F98 8EED2844 */  lw    $t5, 0x2844($s7)
.L800E0F9C:
/* B5813C 800E0F9C 240100FF */  li    $at, 255
/* B58140 800E0FA0 01B61021 */  addu  $v0, $t5, $s6
/* B58144 800E0FA4 90500002 */  lbu   $s0, 2($v0)
/* B58148 800E0FA8 90510003 */  lbu   $s1, 3($v0)
/* B5814C 800E0FAC 16010003 */  bne   $s0, $at, .L800E0FBC
/* B58150 800E0FB0 240100FF */   li    $at, 255
/* B58154 800E0FB4 52210054 */  beql  $s1, $at, .L800E1108
/* B58158 800E0FB8 8FA90094 */   lw    $t1, 0x94($sp)
.L800E0FBC:
/* B5815C 800E0FBC 0C03862C */  jal   func_800E18B0
/* B58160 800E0FC0 02A02025 */   move  $a0, $s5
/* B58164 800E0FC4 1040004F */  beqz  $v0, .L800E1104
/* B58168 800E0FC8 24040001 */   li    $a0, 1
/* B5816C 800E0FCC 24050002 */  li    $a1, 2
/* B58170 800E0FD0 0C037C1D */  jal   func_800DF074
/* B58174 800E0FD4 02A03025 */   move  $a2, $s5
/* B58178 800E0FD8 1040004A */  beqz  $v0, .L800E1104
/* B5817C 800E0FDC 8FAE00A4 */   lw    $t6, 0xa4($sp)
/* B58180 800E0FE0 160E0005 */  bne   $s0, $t6, .L800E0FF8
/* B58184 800E0FE4 8FAF00A4 */   lw    $t7, 0xa4($sp)
/* B58188 800E0FE8 00008825 */  move  $s1, $zero
/* B5818C 800E0FEC 00009025 */  move  $s2, $zero
/* B58190 800E0FF0 10000005 */  b     .L800E1008
/* B58194 800E0FF4 00009825 */   move  $s3, $zero
.L800E0FF8:
/* B58198 800E0FF8 162F0042 */  bne   $s1, $t7, .L800E1104
/* B5819C 800E0FFC 00009025 */   move  $s2, $zero
/* B581A0 800E1000 00008825 */  move  $s1, $zero
/* B581A4 800E1004 00009825 */  move  $s3, $zero
.L800E1008:
/* B581A8 800E1008 8EF82844 */  lw    $t8, 0x2844($s7)
/* B581AC 800E100C 03161021 */  addu  $v0, $t8, $s6
/* B581B0 800E1010 90590000 */  lbu   $t9, ($v0)
/* B581B4 800E1014 1B20001B */  blez  $t9, .L800E1084
/* B581B8 800E1018 02A02025 */   move  $a0, $s5
.L800E101C:
/* B581BC 800E101C 0C039D26 */  jal   Audio_GetInstrumentInner
/* B581C0 800E1020 02202825 */   move  $a1, $s1
/* B581C4 800E1024 10400010 */  beqz  $v0, .L800E1068
/* B581C8 800E1028 00408025 */   move  $s0, $v0
/* B581CC 800E102C 90480001 */  lbu   $t0, 1($v0)
/* B581D0 800E1030 02802025 */  move  $a0, $s4
/* B581D4 800E1034 51000004 */  beql  $t0, $zero, .L800E1048
/* B581D8 800E1038 92090002 */   lbu   $t1, 2($s0)
/* B581DC 800E103C 0C038383 */  jal   func_800E0E0C
/* B581E0 800E1040 8C450008 */   lw    $a1, 8($v0)
/* B581E4 800E1044 92090002 */  lbu   $t1, 2($s0)
.L800E1048:
/* B581E8 800E1048 02802025 */  move  $a0, $s4
/* B581EC 800E104C 53C90004 */  beql  $fp, $t1, .L800E1060
/* B581F0 800E1050 02802025 */   move  $a0, $s4
/* B581F4 800E1054 0C038383 */  jal   func_800E0E0C
/* B581F8 800E1058 8E050018 */   lw    $a1, 0x18($s0)
/* B581FC 800E105C 02802025 */  move  $a0, $s4
.L800E1060:
/* B58200 800E1060 0C038383 */  jal   func_800E0E0C
/* B58204 800E1064 8E050010 */   lw    $a1, 0x10($s0)
.L800E1068:
/* B58208 800E1068 8EEA2844 */  lw    $t2, 0x2844($s7)
/* B5820C 800E106C 26310001 */  addiu $s1, $s1, 1
/* B58210 800E1070 01561021 */  addu  $v0, $t2, $s6
/* B58214 800E1074 904B0000 */  lbu   $t3, ($v0)
/* B58218 800E1078 022B082A */  slt   $at, $s1, $t3
/* B5821C 800E107C 5420FFE7 */  bnezl $at, .L800E101C
/* B58220 800E1080 02A02025 */   move  $a0, $s5
.L800E1084:
/* B58224 800E1084 904C0001 */  lbu   $t4, 1($v0)
/* B58228 800E1088 1980000E */  blez  $t4, .L800E10C4
/* B5822C 800E108C 02A02025 */   move  $a0, $s5
.L800E1090:
/* B58230 800E1090 0C039D5B */  jal   Audio_GetDrum
/* B58234 800E1094 02402825 */   move  $a1, $s2
/* B58238 800E1098 10400003 */  beqz  $v0, .L800E10A8
/* B5823C 800E109C 02802025 */   move  $a0, $s4
/* B58240 800E10A0 0C038383 */  jal   func_800E0E0C
/* B58244 800E10A4 8C450004 */   lw    $a1, 4($v0)
.L800E10A8:
/* B58248 800E10A8 8EED2844 */  lw    $t5, 0x2844($s7)
/* B5824C 800E10AC 26520001 */  addiu $s2, $s2, 1
/* B58250 800E10B0 01B61021 */  addu  $v0, $t5, $s6
/* B58254 800E10B4 904E0001 */  lbu   $t6, 1($v0)
/* B58258 800E10B8 024E082A */  slt   $at, $s2, $t6
/* B5825C 800E10BC 5420FFF4 */  bnezl $at, .L800E1090
/* B58260 800E10C0 02A02025 */   move  $a0, $s5
.L800E10C4:
/* B58264 800E10C4 944F0004 */  lhu   $t7, 4($v0)
/* B58268 800E10C8 19E0000E */  blez  $t7, .L800E1104
/* B5826C 800E10CC 02A02025 */   move  $a0, $s5
.L800E10D0:
/* B58270 800E10D0 0C039D94 */  jal   Audio_GetUnkInstrument
/* B58274 800E10D4 02602825 */   move  $a1, $s3
/* B58278 800E10D8 10400003 */  beqz  $v0, .L800E10E8
/* B5827C 800E10DC 02802025 */   move  $a0, $s4
/* B58280 800E10E0 0C038383 */  jal   func_800E0E0C
/* B58284 800E10E4 8C450000 */   lw    $a1, ($v0)
.L800E10E8:
/* B58288 800E10E8 8EF82844 */  lw    $t8, 0x2844($s7)
/* B5828C 800E10EC 26730001 */  addiu $s3, $s3, 1
/* B58290 800E10F0 0316C821 */  addu  $t9, $t8, $s6
/* B58294 800E10F4 97280004 */  lhu   $t0, 4($t9)
/* B58298 800E10F8 0268082A */  slt   $at, $s3, $t0
/* B5829C 800E10FC 5420FFF4 */  bnezl $at, .L800E10D0
/* B582A0 800E1100 02A02025 */   move  $a0, $s5
.L800E1104:
/* B582A4 800E1104 8FA90094 */  lw    $t1, 0x94($sp)
.L800E1108:
/* B582A8 800E1108 26B50001 */  addiu $s5, $s5, 1
/* B582AC 800E110C 26D60014 */  addiu $s6, $s6, 0x14
/* B582B0 800E1110 56A9FFA2 */  bnel  $s5, $t1, .L800E0F9C
/* B582B4 800E1114 8EED2844 */   lw    $t5, 0x2844($s7)
.L800E1118:
/* B582B8 800E1118 8FBF003C */  lw    $ra, 0x3c($sp)
.L800E111C:
/* B582BC 800E111C 8FB00018 */  lw    $s0, 0x18($sp)
/* B582C0 800E1120 8FB1001C */  lw    $s1, 0x1c($sp)
/* B582C4 800E1124 8FB20020 */  lw    $s2, 0x20($sp)
/* B582C8 800E1128 8FB30024 */  lw    $s3, 0x24($sp)
/* B582CC 800E112C 8FB40028 */  lw    $s4, 0x28($sp)
/* B582D0 800E1130 8FB5002C */  lw    $s5, 0x2c($sp)
/* B582D4 800E1134 8FB60030 */  lw    $s6, 0x30($sp)
/* B582D8 800E1138 8FB70034 */  lw    $s7, 0x34($sp)
/* B582DC 800E113C 8FBE0038 */  lw    $fp, 0x38($sp)
/* B582E0 800E1140 03E00008 */  jr    $ra
/* B582E4 800E1144 27BD00A0 */   addiu $sp, $sp, 0xa0

glabel func_800E1148
/* B582E8 800E1148 3C0E8017 */  lui   $t6, %hi(D_80171EB2) # $t6, 0x8017
/* B582EC 800E114C 85CE1EB2 */  lh    $t6, %lo(D_80171EB2)($t6)
/* B582F0 800E1150 27BDFFD8 */  addiu $sp, $sp, -0x28
/* B582F4 800E1154 AFB00018 */  sw    $s0, 0x18($sp)
/* B582F8 800E1158 2410FFFF */  li    $s0, -1
/* B582FC 800E115C AFBF0024 */  sw    $ra, 0x24($sp)
/* B58300 800E1160 AFB20020 */  sw    $s2, 0x20($sp)
/* B58304 800E1164 120E0003 */  beq   $s0, $t6, .L800E1174
/* B58308 800E1168 AFB1001C */   sw    $s1, 0x1c($sp)
/* B5830C 800E116C 0C03839B */  jal   func_800E0E6C
/* B58310 800E1170 01C02025 */   move  $a0, $t6
.L800E1174:
/* B58314 800E1174 3C048017 */  lui   $a0, %hi(D_80171EBE) # $a0, 0x8017
/* B58318 800E1178 84841EBE */  lh    $a0, %lo(D_80171EBE)($a0)
/* B5831C 800E117C 12040003 */  beq   $s0, $a0, .L800E118C
/* B58320 800E1180 00000000 */   nop   
/* B58324 800E1184 0C03839B */  jal   func_800E0E6C
/* B58328 800E1188 00000000 */   nop   
.L800E118C:
/* B5832C 800E118C 3C188017 */  lui   $t8, %hi(D_80171DC0) # $t8, 0x8017
/* B58330 800E1190 8F181DC0 */  lw    $t8, %lo(D_80171DC0)($t8)
/* B58334 800E1194 3C0F8017 */  lui   $t7, %hi(D_80171DC0) # $t7, 0x8017
/* B58338 800E1198 25EF1DC0 */  addiu $t7, %lo(D_80171DC0) # addiu $t7, $t7, 0x1dc0
/* B5833C 800E119C 01E09025 */  move  $s2, $t7
/* B58340 800E11A0 1300000A */  beqz  $t8, .L800E11CC
/* B58344 800E11A4 00008025 */   move  $s0, $zero
/* B58348 800E11A8 01E08825 */  move  $s1, $t7
.L800E11AC:
/* B5834C 800E11AC 0C03839B */  jal   func_800E0E6C
/* B58350 800E11B0 8624001E */   lh    $a0, 0x1e($s1)
/* B58354 800E11B4 8E590000 */  lw    $t9, ($s2)
/* B58358 800E11B8 26100001 */  addiu $s0, $s0, 1
/* B5835C 800E11BC 2631000C */  addiu $s1, $s1, 0xc
/* B58360 800E11C0 0219082B */  sltu  $at, $s0, $t9
/* B58364 800E11C4 1420FFF9 */  bnez  $at, .L800E11AC
/* B58368 800E11C8 00000000 */   nop   
.L800E11CC:
/* B5836C 800E11CC 8FBF0024 */  lw    $ra, 0x24($sp)
/* B58370 800E11D0 8FB00018 */  lw    $s0, 0x18($sp)
/* B58374 800E11D4 8FB1001C */  lw    $s1, 0x1c($sp)
/* B58378 800E11D8 8FB20020 */  lw    $s2, 0x20($sp)
/* B5837C 800E11DC 03E00008 */  jr    $ra
/* B58380 800E11E0 27BD0028 */   addiu $sp, $sp, 0x28
