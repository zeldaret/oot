.rdata
glabel D_80146D64
    .asciz "\x1b[41;37mfault_AddClient: %08x は既にリスト中にある\n\x1b[m"
    .balign 4

.text
glabel Fault_AddClient
/* B4B37C 800D41DC 3C0DFFFA */  lui   $t5, (0xFFFA5A5A >> 16) # lui $t5, 0xfffa
/* B4B380 800D41E0 03A07025 */  move  $t6, $sp
/* B4B384 800D41E4 27BDFFD8 */  addiu $sp, $sp, -0x28
/* B4B388 800D41E8 35AD5A5A */  ori   $t5, (0xFFFA5A5A & 0xFFFF) # ori $t5, $t5, 0x5a5a
.L800D41EC:
/* B4B38C 800D41EC 25CEFFF8 */  addiu $t6, $t6, -8
/* B4B390 800D41F0 ADCD0000 */  sw    $t5, ($t6)
/* B4B394 800D41F4 15DDFFFD */  bne   $t6, $sp, .L800D41EC
/* B4B398 800D41F8 ADCD0004 */   sw    $t5, 4($t6)
/* B4B39C 800D41FC AFB00018 */  sw    $s0, 0x18($sp)
/* B4B3A0 800D4200 00808025 */  move  $s0, $a0
/* B4B3A4 800D4204 AFBF001C */  sw    $ra, 0x1c($sp)
/* B4B3A8 800D4208 AFA5002C */  sw    $a1, 0x2c($sp)
/* B4B3AC 800D420C AFA60030 */  sw    $a2, 0x30($sp)
/* B4B3B0 800D4210 AFA70034 */  sw    $a3, 0x34($sp)
/* B4B3B4 800D4214 AFA00020 */  sw    $zero, 0x20($sp)
/* B4B3B8 800D4218 0C0013D0 */  jal   osSetIntMask
/* B4B3BC 800D421C 24040001 */   li    $a0, 1
/* B4B3C0 800D4220 3C058017 */  lui   $a1, %hi(sFaultStructPtr) # $a1, 0x8017
/* B4B3C4 800D4224 24A5A800 */  addiu $a1, %lo(sFaultStructPtr) # addiu $a1, $a1, -0x5800
/* B4B3C8 800D4228 00402025 */  move  $a0, $v0
/* B4B3CC 800D422C 8CAE0000 */  lw    $t6, ($a1)
/* B4B3D0 800D4230 240F0001 */  li    $t7, 1
/* B4B3D4 800D4234 8FB8002C */  lw    $t8, 0x2c($sp)
/* B4B3D8 800D4238 8DC307D8 */  lw    $v1, 0x7d8($t6)
/* B4B3DC 800D423C 50600009 */  beql  $v1, $zero, .L800D4264
/* B4B3E0 800D4240 AE180004 */   sw    $t8, 4($s0)
.L800D4244:
/* B4B3E4 800D4244 54700004 */  bnel  $v1, $s0, .L800D4258
/* B4B3E8 800D4248 8C630000 */   lw    $v1, ($v1)
/* B4B3EC 800D424C 1000000E */  b     .L800D4288
/* B4B3F0 800D4250 AFAF0020 */   sw    $t7, 0x20($sp)
/* B4B3F4 800D4254 8C630000 */  lw    $v1, ($v1)
.L800D4258:
/* B4B3F8 800D4258 1460FFFA */  bnez  $v1, .L800D4244
/* B4B3FC 800D425C 00000000 */   nop   
/* B4B400 800D4260 AE180004 */  sw    $t8, 4($s0)
.L800D4264:
/* B4B404 800D4264 8FB90030 */  lw    $t9, 0x30($sp)
/* B4B408 800D4268 AE190008 */  sw    $t9, 8($s0)
/* B4B40C 800D426C 8FA80034 */  lw    $t0, 0x34($sp)
/* B4B410 800D4270 AE08000C */  sw    $t0, 0xc($s0)
/* B4B414 800D4274 8CA90000 */  lw    $t1, ($a1)
/* B4B418 800D4278 8D2A07D8 */  lw    $t2, 0x7d8($t1)
/* B4B41C 800D427C AE0A0000 */  sw    $t2, ($s0)
/* B4B420 800D4280 8CAB0000 */  lw    $t3, ($a1)
/* B4B424 800D4284 AD7007D8 */  sw    $s0, 0x7d8($t3)
.L800D4288:
/* B4B428 800D4288 0C0013D0 */  jal   osSetIntMask
/* B4B42C 800D428C 00000000 */   nop   
/* B4B430 800D4290 8FAC0020 */  lw    $t4, 0x20($sp)
/* B4B434 800D4294 3C048014 */  lui   $a0, %hi(D_80146D64) # $a0, 0x8014
/* B4B438 800D4298 24846D64 */  addiu $a0, %lo(D_80146D64) # addiu $a0, $a0, 0x6d64
/* B4B43C 800D429C 51800004 */  beql  $t4, $zero, .L800D42B0
/* B4B440 800D42A0 8FBF001C */   lw    $ra, 0x1c($sp)
/* B4B444 800D42A4 0C00084C */  jal   osSyncPrintf
/* B4B448 800D42A8 02002825 */   move  $a1, $s0
/* B4B44C 800D42AC 8FBF001C */  lw    $ra, 0x1c($sp)
.L800D42B0:
/* B4B450 800D42B0 8FB00018 */  lw    $s0, 0x18($sp)
/* B4B454 800D42B4 27BD0028 */  addiu $sp, $sp, 0x28
/* B4B458 800D42B8 03E00008 */  jr    $ra
/* B4B45C 800D42BC 00000000 */   nop   

