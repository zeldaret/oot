.rdata
glabel D_80146DD4
    .asciz "\x1b[41;37mfault_AddressConverterAddClient: %08x は既にリスト中にある\n\x1b[m"
    .balign 4

.text
glabel Fault_AddAddrConvClient
/* B4B558 800D43B8 3C0CFFFA */  lui   $t4, (0xFFFA5A5A >> 16) # lui $t4, 0xfffa
/* B4B55C 800D43BC 03A06825 */  move  $t5, $sp
/* B4B560 800D43C0 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B4B564 800D43C4 358C5A5A */  ori   $t4, (0xFFFA5A5A & 0xFFFF) # ori $t4, $t4, 0x5a5a
.L800D43C8:
/* B4B568 800D43C8 25ADFFF8 */  addiu $t5, $t5, -8
/* B4B56C 800D43CC ADAC0000 */  sw    $t4, ($t5)
/* B4B570 800D43D0 15BDFFFD */  bne   $t5, $sp, .L800D43C8
/* B4B574 800D43D4 ADAC0004 */   sw    $t4, 4($t5)
/* B4B578 800D43D8 AFBF0014 */  sw    $ra, 0x14($sp)
/* B4B57C 800D43DC 00803825 */  move  $a3, $a0
/* B4B580 800D43E0 AFA50024 */  sw    $a1, 0x24($sp)
/* B4B584 800D43E4 AFA60028 */  sw    $a2, 0x28($sp)
/* B4B588 800D43E8 AFA00018 */  sw    $zero, 0x18($sp)
/* B4B58C 800D43EC 24040001 */  li    $a0, 1
/* B4B590 800D43F0 0C0013D0 */  jal   osSetIntMask
/* B4B594 800D43F4 AFA70020 */   sw    $a3, 0x20($sp)
/* B4B598 800D43F8 3C058017 */  lui   $a1, %hi(sFaultStructPtr) # $a1, 0x8017
/* B4B59C 800D43FC 24A5A800 */  addiu $a1, %lo(sFaultStructPtr) # addiu $a1, $a1, -0x5800
/* B4B5A0 800D4400 8FA70020 */  lw    $a3, 0x20($sp)
/* B4B5A4 800D4404 00402025 */  move  $a0, $v0
/* B4B5A8 800D4408 8CAE0000 */  lw    $t6, ($a1)
/* B4B5AC 800D440C 240F0001 */  li    $t7, 1
/* B4B5B0 800D4410 8FB80024 */  lw    $t8, 0x24($sp)
/* B4B5B4 800D4414 8DC307DC */  lw    $v1, 0x7dc($t6)
/* B4B5B8 800D4418 50600009 */  beql  $v1, $zero, .L800D4440
/* B4B5BC 800D441C ACF80004 */   sw    $t8, 4($a3)
.L800D4420:
/* B4B5C0 800D4420 54670004 */  bnel  $v1, $a3, .L800D4434
/* B4B5C4 800D4424 8C630000 */   lw    $v1, ($v1)
/* B4B5C8 800D4428 1000000C */  b     .L800D445C
/* B4B5CC 800D442C AFAF0018 */   sw    $t7, 0x18($sp)
/* B4B5D0 800D4430 8C630000 */  lw    $v1, ($v1)
.L800D4434:
/* B4B5D4 800D4434 1460FFFA */  bnez  $v1, .L800D4420
/* B4B5D8 800D4438 00000000 */   nop   
/* B4B5DC 800D443C ACF80004 */  sw    $t8, 4($a3)
.L800D4440:
/* B4B5E0 800D4440 8FB90028 */  lw    $t9, 0x28($sp)
/* B4B5E4 800D4444 ACF90008 */  sw    $t9, 8($a3)
/* B4B5E8 800D4448 8CA80000 */  lw    $t0, ($a1)
/* B4B5EC 800D444C 8D0907DC */  lw    $t1, 0x7dc($t0)
/* B4B5F0 800D4450 ACE90000 */  sw    $t1, ($a3)
/* B4B5F4 800D4454 8CAA0000 */  lw    $t2, ($a1)
/* B4B5F8 800D4458 AD4707DC */  sw    $a3, 0x7dc($t2)
.L800D445C:
/* B4B5FC 800D445C 0C0013D0 */  jal   osSetIntMask
/* B4B600 800D4460 AFA70020 */   sw    $a3, 0x20($sp)
/* B4B604 800D4464 8FAB0018 */  lw    $t3, 0x18($sp)
/* B4B608 800D4468 3C048014 */  lui   $a0, %hi(D_80146DD4) # $a0, 0x8014
/* B4B60C 800D446C 8FA70020 */  lw    $a3, 0x20($sp)
/* B4B610 800D4470 11600003 */  beqz  $t3, .L800D4480
/* B4B614 800D4474 24846DD4 */   addiu $a0, %lo(D_80146DD4) # addiu $a0, $a0, 0x6dd4
/* B4B618 800D4478 0C00084C */  jal   osSyncPrintf
/* B4B61C 800D447C 00E02825 */   move  $a1, $a3
.L800D4480:
/* B4B620 800D4480 8FBF0014 */  lw    $ra, 0x14($sp)
/* B4B624 800D4484 27BD0020 */  addiu $sp, $sp, 0x20
/* B4B628 800D4488 03E00008 */  jr    $ra
/* B4B62C 800D448C 00000000 */   nop   

