.rdata
glabel D_8013E160
    .asciz "item_no=%x,  c_no=%x,  Pt=%x  Item_Register=%x\n"
    .balign 4

.text
glabel Inventory_UpdateBottleItem
/* AFDD3C 80086B9C 27BDFFD0 */  addiu $sp, $sp, -0x30
/* AFDD40 80086BA0 AFA60038 */  sw    $a2, 0x38($sp)
/* AFDD44 80086BA4 93A6003B */  lbu   $a2, 0x3b($sp)
/* AFDD48 80086BA8 3C088016 */  lui   $t0, %hi(gSaveContext) # $t0, 0x8016
/* AFDD4C 80086BAC 2508E660 */  addiu $t0, %lo(gSaveContext) # addiu $t0, $t0, -0x19a0
/* AFDD50 80086BB0 01061821 */  addu  $v1, $t0, $a2
/* AFDD54 80086BB4 9062006B */  lbu   $v0, 0x6b($v1)
/* AFDD58 80086BB8 AFB00020 */  sw    $s0, 0x20($sp)
/* AFDD5C 80086BBC AFA40030 */  sw    $a0, 0x30($sp)
/* AFDD60 80086BC0 01027021 */  addu  $t6, $t0, $v0
/* AFDD64 80086BC4 91CF0074 */  lbu   $t7, 0x74($t6)
/* AFDD68 80086BC8 30B000FF */  andi  $s0, $a1, 0xff
/* AFDD6C 80086BCC AFBF0024 */  sw    $ra, 0x24($sp)
/* AFDD70 80086BD0 AFA50034 */  sw    $a1, 0x34($sp)
/* AFDD74 80086BD4 3C048014 */  lui   $a0, %hi(D_8013E160) # $a0, 0x8014
/* AFDD78 80086BD8 2484E160 */  addiu $a0, %lo(D_8013E160) # addiu $a0, $a0, -0x1ea0
/* AFDD7C 80086BDC 02002825 */  move  $a1, $s0
/* AFDD80 80086BE0 AFB0002C */  sw    $s0, 0x2c($sp)
/* AFDD84 80086BE4 AFA30028 */  sw    $v1, 0x28($sp)
/* AFDD88 80086BE8 00403825 */  move  $a3, $v0
/* AFDD8C 80086BEC 0C00084C */  jal   osSyncPrintf
/* AFDD90 80086BF0 AFAF0010 */   sw    $t7, 0x10($sp)
/* AFDD94 80086BF4 8FA30028 */  lw    $v1, 0x28($sp)
/* AFDD98 80086BF8 3C088016 */  lui   $t0, %hi(gSaveContext) # $t0, 0x8016
/* AFDD9C 80086BFC 2508E660 */  addiu $t0, %lo(gSaveContext) # addiu $t0, $t0, -0x19a0
/* AFDDA0 80086C00 9078006B */  lbu   $t8, 0x6b($v1)
/* AFDDA4 80086C04 93A6003B */  lbu   $a2, 0x3b($sp)
/* AFDDA8 80086C08 2401001A */  li    $at, 26
/* AFDDAC 80086C0C 01181021 */  addu  $v0, $t0, $t8
/* AFDDB0 80086C10 90590074 */  lbu   $t9, 0x74($v0)
/* AFDDB4 80086C14 8FA5002C */  lw    $a1, 0x2c($sp)
/* AFDDB8 80086C18 01061821 */  addu  $v1, $t0, $a2
/* AFDDBC 80086C1C 17210004 */  bne   $t9, $at, .L80086C30
/* AFDDC0 80086C20 24010014 */   li    $at, 20
/* AFDDC4 80086C24 54A10003 */  bnel  $a1, $at, .L80086C34
/* AFDDC8 80086C28 A0500074 */   sb    $s0, 0x74($v0)
/* AFDDCC 80086C2C 2410001F */  li    $s0, 31
.L80086C30:
/* AFDDD0 80086C30 A0500074 */  sb    $s0, 0x74($v0)
.L80086C34:
/* AFDDD4 80086C34 A0700068 */  sb    $s0, 0x68($v1)
/* AFDDD8 80086C38 8FA40030 */  lw    $a0, 0x30($sp)
/* AFDDDC 80086C3C 30C5FFFF */  andi  $a1, $a2, 0xffff
/* AFDDE0 80086C40 0C02129B */  jal   Interface_LoadItemIcon1
/* AFDDE4 80086C44 AFA3002C */   sw    $v1, 0x2c($sp)
/* AFDDE8 80086C48 8FA90030 */  lw    $t1, 0x30($sp)
/* AFDDEC 80086C4C 3C010001 */  lui   $at, 1
/* AFDDF0 80086C50 8FA3002C */  lw    $v1, 0x2c($sp)
/* AFDDF4 80086C54 00290821 */  addu  $at, $at, $t1
/* AFDDF8 80086C58 A430099E */  sh    $s0, 0x99e($at)
/* AFDDFC 80086C5C 8FBF0024 */  lw    $ra, 0x24($sp)
/* AFDE00 80086C60 8FB00020 */  lw    $s0, 0x20($sp)
/* AFDE04 80086C64 27BD0030 */  addiu $sp, $sp, 0x30
/* AFDE08 80086C68 03E00008 */  jr    $ra
/* AFDE0C 80086C6C A06013E2 */   sb    $zero, 0x13e2($v1)

