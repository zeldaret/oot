.rdata
glabel D_801352CC
    .asciz "../z_eff_blure.c"
    .balign 4

glabel D_801352E0
    .asciz "../z_eff_blure.c"
    .balign 4

.late_rodata
glabel D_80135448
    .float 0.1

.text
glabel EffectBlure_DrawSmooth
/* A990A0 80021F00 27BDFED8 */  addiu $sp, $sp, -0x128
/* A990A4 80021F04 AFB40024 */  sw    $s4, 0x24($sp)
/* A990A8 80021F08 AFB30020 */  sw    $s3, 0x20($sp)
/* A990AC 80021F0C 0080A025 */  move  $s4, $a0
/* A990B0 80021F10 AFBF002C */  sw    $ra, 0x2c($sp)
/* A990B4 80021F14 AFB50028 */  sw    $s5, 0x28($sp)
/* A990B8 80021F18 00809825 */  move  $s3, $a0
/* A990BC 80021F1C 3C068013 */  lui   $a2, %hi(D_801352CC) # $a2, 0x8013
/* A990C0 80021F20 00A0A825 */  move  $s5, $a1
/* A990C4 80021F24 AFB2001C */  sw    $s2, 0x1c($sp)
/* A990C8 80021F28 AFB10018 */  sw    $s1, 0x18($sp)
/* A990CC 80021F2C AFB00014 */  sw    $s0, 0x14($sp)
/* A990D0 80021F30 24C652CC */  addiu $a2, %lo(D_801352CC) # addiu $a2, $a2, 0x52cc
/* A990D4 80021F34 27A40044 */  addiu $a0, $sp, 0x44
/* A990D8 80021F38 0C031AB1 */  jal   Graph_OpenDisps
/* A990DC 80021F3C 240704B1 */   li    $a3, 1201
/* A990E0 80021F40 9284019E */  lbu   $a0, 0x19e($s4)
/* A990E4 80021F44 24120018 */  li    $s2, 24
/* A990E8 80021F48 28810002 */  slti  $at, $a0, 2
/* A990EC 80021F4C 142000A2 */  bnez  $at, .L800221D8
/* A990F0 80021F50 00801825 */   move  $v1, $a0
/* A990F4 80021F54 00920019 */  multu $a0, $s2
/* A990F8 80021F58 968E0014 */  lhu   $t6, 0x14($s4)
/* A990FC 80021F5C 26900018 */  addiu $s0, $s4, 0x18
/* A99100 80021F60 2411FFFC */  li    $s1, -4
/* A99104 80021F64 31D8FFFC */  andi  $t8, $t6, 0xfffc
/* A99108 80021F68 A6980014 */  sh    $t8, 0x14($s4)
/* A9910C 80021F6C 37190002 */  ori   $t9, $t8, 2
/* A99110 80021F70 A6990014 */  sh    $t9, 0x14($s4)
/* A99114 80021F74 00004012 */  mflo  $t0
/* A99118 80021F78 02884821 */  addu  $t1, $s4, $t0
/* A9911C 80021F7C 252AFFE8 */  addiu $t2, $t1, -0x18
/* A99120 80021F80 020A082B */  sltu  $at, $s0, $t2
/* A99124 80021F84 5020000E */  beql  $at, $zero, .L80021FC0
/* A99128 80021F88 24060018 */   li    $a2, 24
.L80021F8C:
/* A9912C 80021F8C 0C008238 */  jal   EffectBlure_UpdateFlags
/* A99130 80021F90 02002025 */   move  $a0, $s0
/* A99134 80021F94 926B019E */  lbu   $t3, 0x19e($s3)
/* A99138 80021F98 26100018 */  addiu $s0, $s0, 0x18
/* A9913C 80021F9C 01720019 */  multu $t3, $s2
/* A99140 80021FA0 00006012 */  mflo  $t4
/* A99144 80021FA4 026C6821 */  addu  $t5, $s3, $t4
/* A99148 80021FA8 25AEFFE8 */  addiu $t6, $t5, -0x18
/* A9914C 80021FAC 020E082B */  sltu  $at, $s0, $t6
/* A99150 80021FB0 1420FFF6 */  bnez  $at, .L80021F8C
/* A99154 80021FB4 00000000 */   nop   
/* A99158 80021FB8 9283019E */  lbu   $v1, 0x19e($s4)
/* A9915C 80021FBC 24060018 */  li    $a2, 24
.L80021FC0:
/* A99160 80021FC0 00660019 */  multu $v1, $a2
/* A99164 80021FC4 02802025 */  move  $a0, $s4
/* A99168 80021FC8 02A02825 */  move  $a1, $s5
/* A9916C 80021FCC 00007812 */  mflo  $t7
/* A99170 80021FD0 028F1021 */  addu  $v0, $s4, $t7
/* A99174 80021FD4 9458FFFC */  lhu   $t8, -4($v0)
/* A99178 80021FD8 0311C824 */  and   $t9, $t8, $s1
/* A9917C 80021FDC A459FFFC */  sh    $t9, -4($v0)
/* A99180 80021FE0 9288019E */  lbu   $t0, 0x19e($s4)
/* A99184 80021FE4 01060019 */  multu $t0, $a2
/* A99188 80021FE8 00004812 */  mflo  $t1
/* A9918C 80021FEC 02891021 */  addu  $v0, $s4, $t1
/* A99190 80021FF0 944AFFFC */  lhu   $t2, -4($v0)
/* A99194 80021FF4 354B0002 */  ori   $t3, $t2, 2
/* A99198 80021FF8 0C0083D8 */  jal   EffectBlure_SetupSmooth
/* A9919C 80021FFC A44BFFFC */   sh    $t3, -4($v0)
/* A991A0 80022000 868C000E */  lh    $t4, 0xe($s4)
/* A991A4 80022004 868D0010 */  lh    $t5, 0x10($s4)
/* A991A8 80022008 868E0012 */  lh    $t6, 0x12($s4)
/* A991AC 8002200C 448C2000 */  mtc1  $t4, $f4
/* A991B0 80022010 448D3000 */  mtc1  $t5, $f6
/* A991B4 80022014 448E4000 */  mtc1  $t6, $f8
/* A991B8 80022018 46802120 */  cvt.s.w $f4, $f4
/* A991BC 8002201C 27B000DC */  addiu $s0, $sp, 0xdc
/* A991C0 80022020 02002025 */  move  $a0, $s0
/* A991C4 80022024 468031A0 */  cvt.s.w $f6, $f6
/* A991C8 80022028 44052000 */  mfc1  $a1, $f4
/* A991CC 8002202C 46804220 */  cvt.s.w $f8, $f8
/* A991D0 80022030 44063000 */  mfc1  $a2, $f6
/* A991D4 80022034 44074000 */  mfc1  $a3, $f8
/* A991D8 80022038 0C029E89 */  jal   SkinMatrix_SetTranslate
/* A991DC 8002203C 00000000 */   nop   
/* A991E0 80022040 3C018013 */  lui   $at, %hi(D_80135448)
/* A991E4 80022044 C4205448 */  lwc1  $f0, %lo(D_80135448)($at)
/* A991E8 80022048 27B1009C */  addiu $s1, $sp, 0x9c
/* A991EC 8002204C 02202025 */  move  $a0, $s1
/* A991F0 80022050 44050000 */  mfc1  $a1, $f0
/* A991F4 80022054 44060000 */  mfc1  $a2, $f0
/* A991F8 80022058 44070000 */  mfc1  $a3, $f0
/* A991FC 8002205C 0C029DA9 */  jal   SkinMatrix_SetScale
/* A99200 80022060 00000000 */   nop   
/* A99204 80022064 02002025 */  move  $a0, $s0
/* A99208 80022068 02202825 */  move  $a1, $s1
/* A9920C 8002206C 0C029BE8 */  jal   SkinMatrix_MtxFMtxFMult
/* A99210 80022070 27A6005C */   addiu $a2, $sp, 0x5c
/* A99214 80022074 02A02025 */  move  $a0, $s5
/* A99218 80022078 0C029F9C */  jal   SkinMatrix_MtxFToNewMtx
/* A9921C 8002207C 27A5005C */   addiu $a1, $sp, 0x5c
/* A99220 80022080 50400056 */  beql  $v0, $zero, .L800221DC
/* A99224 80022084 8FBF002C */   lw    $ra, 0x2c($sp)
/* A99228 80022088 8EA402D0 */  lw    $a0, 0x2d0($s5)
/* A9922C 8002208C 3C18DA38 */  lui   $t8, (0xDA380003 >> 16) # lui $t8, 0xda38
/* A99230 80022090 37180003 */  ori   $t8, (0xDA380003 & 0xFFFF) # ori $t8, $t8, 3
/* A99234 80022094 248F0008 */  addiu $t7, $a0, 8
/* A99238 80022098 AEAF02D0 */  sw    $t7, 0x2d0($s5)
/* A9923C 8002209C AC820004 */  sw    $v0, 4($a0)
/* A99240 800220A0 AC980000 */  sw    $t8, ($a0)
/* A99244 800220A4 9299019E */  lbu   $t9, 0x19e($s4)
/* A99248 800220A8 00008825 */  move  $s1, $zero
/* A9924C 800220AC 02808025 */  move  $s0, $s4
/* A99250 800220B0 03320019 */  multu $t9, $s2
/* A99254 800220B4 24120002 */  li    $s2, 2
/* A99258 800220B8 00004012 */  mflo  $t0
/* A9925C 800220BC 02884821 */  addu  $t1, $s4, $t0
/* A99260 800220C0 252AFFE8 */  addiu $t2, $t1, -0x18
/* A99264 800220C4 028A082B */  sltu  $at, $s4, $t2
/* A99268 800220C8 1020003D */  beqz  $at, .L800221C0
/* A9926C 800220CC 00000000 */   nop   
.L800220D0:
/* A99270 800220D0 8E0B0000 */  lw    $t3, ($s0)
/* A99274 800220D4 51600005 */  beql  $t3, $zero, .L800220EC
/* A99278 800220D8 926D019E */   lbu   $t5, 0x19e($s3)
/* A9927C 800220DC 8E0C0018 */  lw    $t4, 0x18($s0)
/* A99280 800220E0 55800009 */  bnezl $t4, .L80022108
/* A99284 800220E4 96020014 */   lhu   $v0, 0x14($s0)
/* A99288 800220E8 926D019E */  lbu   $t5, 0x19e($s3)
.L800220EC:
/* A9928C 800220EC 000D7080 */  sll   $t6, $t5, 2
/* A99290 800220F0 01CD7023 */  subu  $t6, $t6, $t5
/* A99294 800220F4 000E70C0 */  sll   $t6, $t6, 3
/* A99298 800220F8 026E1021 */  addu  $v0, $s3, $t6
/* A9929C 800220FC 1000002C */  b     .L800221B0
/* A992A0 80022100 2442FFE8 */   addiu $v0, $v0, -0x18
/* A992A4 80022104 96020014 */  lhu   $v0, 0x14($s0)
.L80022108:
/* A992A8 80022108 30420003 */  andi  $v0, $v0, 3
/* A992AC 8002210C 14400005 */  bnez  $v0, .L80022124
/* A992B0 80022110 00000000 */   nop   
/* A992B4 80022114 960F002C */  lhu   $t7, 0x2c($s0)
/* A992B8 80022118 31F80003 */  andi  $t8, $t7, 3
/* A992BC 8002211C 53000014 */  beql  $t8, $zero, .L80022170
/* A992C0 80022120 02802025 */   move  $a0, $s4
.L80022124:
/* A992C4 80022124 16420005 */  bne   $s2, $v0, .L8002213C
/* A992C8 80022128 00000000 */   nop   
/* A992CC 8002212C 9619002C */  lhu   $t9, 0x2c($s0)
/* A992D0 80022130 33280003 */  andi  $t0, $t9, 3
/* A992D4 80022134 5100000E */  beql  $t0, $zero, .L80022170
/* A992D8 80022138 02802025 */   move  $a0, $s4
.L8002213C:
/* A992DC 8002213C 14400005 */  bnez  $v0, .L80022154
/* A992E0 80022140 00000000 */   nop   
/* A992E4 80022144 9609002C */  lhu   $t1, 0x2c($s0)
/* A992E8 80022148 312A0003 */  andi  $t2, $t1, 3
/* A992EC 8002214C 524A0008 */  beql  $s2, $t2, .L80022170
/* A992F0 80022150 02802025 */   move  $a0, $s4
.L80022154:
/* A992F4 80022154 1642000C */  bne   $s2, $v0, .L80022188
/* A992F8 80022158 02802025 */   move  $a0, $s4
/* A992FC 8002215C 960B002C */  lhu   $t3, 0x2c($s0)
/* A99300 80022160 316C0003 */  andi  $t4, $t3, 3
/* A99304 80022164 564C0009 */  bnel  $s2, $t4, .L8002218C
/* A99308 80022168 02002825 */   move  $a1, $s0
/* A9930C 8002216C 02802025 */  move  $a0, $s4
.L80022170:
/* A99310 80022170 02002825 */  move  $a1, $s0
/* A99314 80022174 02203025 */  move  $a2, $s1
/* A99318 80022178 0C0083F0 */  jal   EffectBlure_DrawElemNoInterpolation
/* A9931C 8002217C 02A03825 */   move  $a3, $s5
/* A99320 80022180 10000006 */  b     .L8002219C
/* A99324 80022184 926D019E */   lbu   $t5, 0x19e($s3)
.L80022188:
/* A99328 80022188 02002825 */  move  $a1, $s0
.L8002218C:
/* A9932C 8002218C 02203025 */  move  $a2, $s1
/* A99330 80022190 0C008534 */  jal   EffectBlure_DrawElemHermiteInterpolation
/* A99334 80022194 02A03825 */   move  $a3, $s5
/* A99338 80022198 926D019E */  lbu   $t5, 0x19e($s3)
.L8002219C:
/* A9933C 8002219C 000D7080 */  sll   $t6, $t5, 2
/* A99340 800221A0 01CD7023 */  subu  $t6, $t6, $t5
/* A99344 800221A4 000E70C0 */  sll   $t6, $t6, 3
/* A99348 800221A8 026E1021 */  addu  $v0, $s3, $t6
/* A9934C 800221AC 2442FFE8 */  addiu $v0, $v0, -0x18
.L800221B0:
/* A99350 800221B0 26100018 */  addiu $s0, $s0, 0x18
/* A99354 800221B4 0202082B */  sltu  $at, $s0, $v0
/* A99358 800221B8 1420FFC5 */  bnez  $at, .L800220D0
/* A9935C 800221BC 26310001 */   addiu $s1, $s1, 1
.L800221C0:
/* A99360 800221C0 3C068013 */  lui   $a2, %hi(D_801352E0) # $a2, 0x8013
/* A99364 800221C4 24C652E0 */  addiu $a2, %lo(D_801352E0) # addiu $a2, $a2, 0x52e0
/* A99368 800221C8 27A40044 */  addiu $a0, $sp, 0x44
/* A9936C 800221CC 02A02825 */  move  $a1, $s5
/* A99370 800221D0 0C031AD5 */  jal   Graph_CloseDisps
/* A99374 800221D4 240704EF */   li    $a3, 1263
.L800221D8:
/* A99378 800221D8 8FBF002C */  lw    $ra, 0x2c($sp)
.L800221DC:
/* A9937C 800221DC 8FB00014 */  lw    $s0, 0x14($sp)
/* A99380 800221E0 8FB10018 */  lw    $s1, 0x18($sp)
/* A99384 800221E4 8FB2001C */  lw    $s2, 0x1c($sp)
/* A99388 800221E8 8FB30020 */  lw    $s3, 0x20($sp)
/* A9938C 800221EC 8FB40024 */  lw    $s4, 0x24($sp)
/* A99390 800221F0 8FB50028 */  lw    $s5, 0x28($sp)
/* A99394 800221F4 03E00008 */  jr    $ra
/* A99398 800221F8 27BD0128 */   addiu $sp, $sp, 0x128

