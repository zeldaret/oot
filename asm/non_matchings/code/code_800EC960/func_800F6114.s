glabel func_800F6114
/* B6D2B4 800F6114 3C0E8013 */  lui   $t6, %hi(D_8013061C)
/* B6D2B8 800F6118 91CE061C */  lbu   $t6, %lo(D_8013061C)($t6)
/* B6D2BC 800F611C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B6D2C0 800F6120 24010081 */  li    $at, 129
/* B6D2C4 800F6124 15C1004B */  bne   $t6, $at, .L800F6254
/* B6D2C8 800F6128 AFBF0014 */   sw    $ra, 0x14($sp)
/* B6D2CC 800F612C 3C018013 */  lui   $at, %hi(D_80130620)
/* B6D2D0 800F6130 C4240620 */  lwc1  $f4, %lo(D_80130620)($at)
/* B6D2D4 800F6134 3C014316 */  li    $at, 0x43160000 # 0.000000
/* B6D2D8 800F6138 46046032 */  c.eq.s $f12, $f4
/* B6D2DC 800F613C 00000000 */  nop   
/* B6D2E0 800F6140 4501003A */  bc1t  .L800F622C
/* B6D2E4 800F6144 00000000 */   nop   
/* B6D2E8 800F6148 44811000 */  mtc1  $at, $f2
/* B6D2EC 800F614C 3C0143FA */  li    $at, 0x43FA0000 # 0.000000
/* B6D2F0 800F6150 4602603C */  c.lt.s $f12, $f2
/* B6D2F4 800F6154 00000000 */  nop   
/* B6D2F8 800F6158 45020007 */  bc1fl .L800F6178
/* B6D2FC 800F615C 44813000 */   mtc1  $at, $f6
/* B6D300 800F6160 3C0143AF */  li    $at, 0x43AF0000 # 0.000000
/* B6D304 800F6164 44811000 */  mtc1  $at, $f2
/* B6D308 800F6168 44800000 */  mtc1  $zero, $f0
/* B6D30C 800F616C 1000000F */  b     .L800F61AC
/* B6D310 800F6170 46001201 */   sub.s $f8, $f2, $f0
/* B6D314 800F6174 44813000 */  mtc1  $at, $f6
.L800F6178:
/* B6D318 800F6178 3C0143AF */  li    $at, 0x43AF0000 # 0.000000
/* B6D31C 800F617C 460C303C */  c.lt.s $f6, $f12
/* B6D320 800F6180 00000000 */  nop   
/* B6D324 800F6184 45020006 */  bc1fl .L800F61A0
/* B6D328 800F6188 46026001 */   sub.s $f0, $f12, $f2
/* B6D32C 800F618C 3C0143AF */  li    $at, 0x43AF0000 # 0.000000
/* B6D330 800F6190 44811000 */  mtc1  $at, $f2
/* B6D334 800F6194 10000004 */  b     .L800F61A8
/* B6D338 800F6198 46001006 */   mov.s $f0, $f2
/* B6D33C 800F619C 46026001 */  sub.s $f0, $f12, $f2
.L800F61A0:
/* B6D340 800F61A0 44811000 */  mtc1  $at, $f2
/* B6D344 800F61A4 00000000 */  nop   
.L800F61A8:
/* B6D348 800F61A8 46001201 */  sub.s $f8, $f2, $f0
.L800F61AC:
/* B6D34C 800F61AC 3C0142FE */  li    $at, 0x42FE0000 # 0.000000
/* B6D350 800F61B0 44815000 */  mtc1  $at, $f10
/* B6D354 800F61B4 3C028013 */  lui   $v0, %hi(D_80130624) # $v0, 0x8013
/* B6D358 800F61B8 24420624 */  addiu $v0, %lo(D_80130624) # addiu $v0, $v0, 0x624
/* B6D35C 800F61BC 460A4402 */  mul.s $f16, $f8, $f10
/* B6D360 800F61C0 24040003 */  li    $a0, 3
/* B6D364 800F61C4 24050003 */  li    $a1, 3
/* B6D368 800F61C8 2407000A */  li    $a3, 10
/* B6D36C 800F61CC E7AC0018 */  swc1  $f12, 0x18($sp)
/* B6D370 800F61D0 46028483 */  div.s $f18, $f16, $f2
/* B6D374 800F61D4 4600910D */  trunc.w.s $f4, $f18
/* B6D378 800F61D8 44182000 */  mfc1  $t8, $f4
/* B6D37C 800F61DC 00000000 */  nop   
/* B6D380 800F61E0 A0580000 */  sb    $t8, ($v0)
/* B6D384 800F61E4 0C03E890 */  jal   func_800FA240
/* B6D388 800F61E8 330600FF */   andi  $a2, $t8, 0xff
/* B6D38C 800F61EC 3C198017 */  lui   $t9, %hi(D_8016E9A4) # $t9, 0x8017
/* B6D390 800F61F0 9739E9A4 */  lhu   $t9, %lo(D_8016E9A4)($t9)
/* B6D394 800F61F4 24010001 */  li    $at, 1
/* B6D398 800F61F8 C7AC0018 */  lwc1  $f12, 0x18($sp)
/* B6D39C 800F61FC 1321000B */  beq   $t9, $at, .L800F622C
/* B6D3A0 800F6200 00002025 */   move  $a0, $zero
/* B6D3A4 800F6204 3C088013 */  lui   $t0, %hi(D_80130624) # $t0, 0x8013
/* B6D3A8 800F6208 81080624 */  lb    $t0, %lo(D_80130624)($t0)
/* B6D3AC 800F620C 2409007F */  li    $t1, 127
/* B6D3B0 800F6210 24050003 */  li    $a1, 3
/* B6D3B4 800F6214 01283023 */  subu  $a2, $t1, $t0
/* B6D3B8 800F6218 30C600FF */  andi  $a2, $a2, 0xff
/* B6D3BC 800F621C 2407000A */  li    $a3, 10
/* B6D3C0 800F6220 0C03E890 */  jal   func_800FA240
/* B6D3C4 800F6224 E7AC0018 */   swc1  $f12, 0x18($sp)
/* B6D3C8 800F6228 C7AC0018 */  lwc1  $f12, 0x18($sp)
.L800F622C:
/* B6D3CC 800F622C 3C0A8017 */  lui   $t2, %hi(D_8016E9A4) # $t2, 0x8017
/* B6D3D0 800F6230 954AE9A4 */  lhu   $t2, %lo(D_8016E9A4)($t2)
/* B6D3D4 800F6234 24010001 */  li    $at, 1
/* B6D3D8 800F6238 3C048013 */  lui   $a0, %hi(D_80130624) # $a0, 0x8013
/* B6D3DC 800F623C 51410006 */  beql  $t2, $at, .L800F6258
/* B6D3E0 800F6240 8FBF0014 */   lw    $ra, 0x14($sp)
/* B6D3E4 800F6244 80840624 */  lb    $a0, %lo(D_80130624)($a0)
/* B6D3E8 800F6248 0C03D443 */  jal   func_800F510C
/* B6D3EC 800F624C E7AC0018 */   swc1  $f12, 0x18($sp)
/* B6D3F0 800F6250 C7AC0018 */  lwc1  $f12, 0x18($sp)
.L800F6254:
/* B6D3F4 800F6254 8FBF0014 */  lw    $ra, 0x14($sp)
.L800F6258:
/* B6D3F8 800F6258 3C018013 */  lui   $at, %hi(D_80130620)
/* B6D3FC 800F625C E42C0620 */  swc1  $f12, %lo(D_80130620)($at)
/* B6D400 800F6260 03E00008 */  jr    $ra
/* B6D404 800F6264 27BD0018 */   addiu $sp, $sp, 0x18

