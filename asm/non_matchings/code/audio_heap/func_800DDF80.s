glabel func_800DDF80
/* B55120 800DDF80 3C038017 */  lui   $v1, %hi(gAudioContext) # $v1, 0x8017
/* B55124 800DDF84 3C028017 */  lui   $v0, %hi(gAudioContext+0x30) # $v0, 0x8017
/* B55128 800DDF88 2442F1B0 */  addiu $v0, %lo(gAudioContext+0x30) # addiu $v0, $v0, -0xe50
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
/* B55158 800DDFB8 3C028017 */  lui   $v0, %hi(gAudioContext+0x30) # $v0, 0x8017
/* B5515C 800DDFBC 2442F1B0 */  addiu $v0, %lo(gAudioContext+0x30) # addiu $v0, $v0, -0xe50
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
/* B55188 800DDFE8 3C028017 */  lui   $v0, %hi(gAudioContext+0x80) # $v0, 0x8017
/* B5518C 800DDFEC 2442F200 */  addiu $v0, %lo(gAudioContext+0x80) # addiu $v0, $v0, -0xe00
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

