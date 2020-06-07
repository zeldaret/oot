.rdata
glabel D_801398E4
    .asciz "camera: change camera status: cond %c%c\n"
    .balign 4

glabel D_80139910
    .asciz "camera: res: stat (%d/%d/%d)\n"
    .balign 4

glabel D_80139930
    .asciz "camera: change camera status: PREG(%02d) = %d\n"
    .balign 4

.text
glabel Camera_ChangeStatus
/* ACF4F4 80058354 27BDFFD0 */  addiu $sp, $sp, -0x30
/* ACF4F8 80058358 AFB40024 */  sw    $s4, 0x24($sp)
/* ACF4FC 8005835C 3C148016 */  lui   $s4, %hi(gGameInfo) # $s4, 0x8016
/* ACF500 80058360 2694FA90 */  addiu $s4, %lo(gGameInfo) # addiu $s4, $s4, -0x570
/* ACF504 80058364 8E8E0000 */  lw    $t6, ($s4)
/* ACF508 80058368 AFBF002C */  sw    $ra, 0x2c($sp)
/* ACF50C 8005836C AFB50028 */  sw    $s5, 0x28($sp)
/* ACF510 80058370 AFB30020 */  sw    $s3, 0x20($sp)
/* ACF514 80058374 AFB2001C */  sw    $s2, 0x1c($sp)
/* ACF518 80058378 AFB10018 */  sw    $s1, 0x18($sp)
/* ACF51C 8005837C AFB00014 */  sw    $s0, 0x14($sp)
/* ACF520 80058380 AFA50034 */  sw    $a1, 0x34($sp)
/* ACF524 80058384 85C202F8 */  lh    $v0, 0x2f8($t6)
/* ACF528 80058388 00809825 */  move  $s3, $a0
/* ACF52C 8005838C 3C048014 */  lui   $a0, %hi(D_801398E4) # $a0, 0x8014
/* ACF530 80058390 10400010 */  beqz  $v0, .L800583D4
/* ACF534 80058394 87AF0036 */   lh    $t7, 0x36($sp)
/* ACF538 80058398 24100007 */  li    $s0, 7
/* ACF53C 8005839C 15F00003 */  bne   $t7, $s0, .L800583AC
/* ACF540 800583A0 24050078 */   li    $a1, 120
/* ACF544 800583A4 10000001 */  b     .L800583AC
/* ACF548 800583A8 2405006F */   li    $a1, 111
.L800583AC:
/* ACF54C 800583AC 86780140 */  lh    $t8, 0x140($s3)
/* ACF550 800583B0 24060078 */  li    $a2, 120
/* ACF554 800583B4 12180003 */  beq   $s0, $t8, .L800583C4
/* ACF558 800583B8 00000000 */   nop
/* ACF55C 800583BC 10000001 */  b     .L800583C4
/* ACF560 800583C0 2406006F */   li    $a2, 111
.L800583C4:
/* ACF564 800583C4 0C00084C */  jal   osSyncPrintf
/* ACF568 800583C8 248498E4 */   addiu $a0, %lo(D_801398E4) # addiu $a0, $a0, -0x671c
/* ACF56C 800583CC 8E990000 */  lw    $t9, ($s4)
/* ACF570 800583D0 872202F8 */  lh    $v0, 0x2f8($t9)
.L800583D4:
/* ACF574 800583D4 10400007 */  beqz  $v0, .L800583F4
/* ACF578 800583D8 24100007 */   li    $s0, 7
/* ACF57C 800583DC 3C048014 */  lui   $a0, %hi(D_80139910) # $a0, 0x8014
/* ACF580 800583E0 24849910 */  addiu $a0, %lo(D_80139910) # addiu $a0, $a0, -0x66f0
/* ACF584 800583E4 86650164 */  lh    $a1, 0x164($s3)
/* ACF588 800583E8 86660142 */  lh    $a2, 0x142($s3)
/* ACF58C 800583EC 0C00084C */  jal   osSyncPrintf
/* ACF590 800583F0 86670144 */   lh    $a3, 0x144($s3)
.L800583F4:
/* ACF594 800583F4 87A80036 */  lh    $t0, 0x36($sp)
/* ACF598 800583F8 55100030 */  bnel  $t0, $s0, .L800584BC
/* ACF59C 800583FC 87AC0036 */   lh    $t4, 0x36($sp)
/* ACF5A0 80058400 86690140 */  lh    $t1, 0x140($s3)
/* ACF5A4 80058404 3C158012 */  lui   $s5, %hi(sCameraSettings) # $s5, 0x8012
/* ACF5A8 80058408 5209002C */  beql  $s0, $t1, .L800584BC
/* ACF5AC 8005840C 87AC0036 */   lh    $t4, 0x36($sp)
/* ACF5B0 80058410 866A0142 */  lh    $t2, 0x142($s3)
/* ACF5B4 80058414 26B5D064 */  addiu $s5, %lo(sCameraSettings) # addiu $s5, $s5, -0x2f9c
/* ACF5B8 80058418 866E0144 */  lh    $t6, 0x144($s3)
/* ACF5BC 8005841C 000A58C0 */  sll   $t3, $t2, 3
/* ACF5C0 80058420 02AB6021 */  addu  $t4, $s5, $t3
/* ACF5C4 80058424 8D8D0004 */  lw    $t5, 4($t4)
/* ACF5C8 80058428 000E78C0 */  sll   $t7, $t6, 3
/* ACF5CC 8005842C 00008825 */  move  $s1, $zero
/* ACF5D0 80058430 01AF1021 */  addu  $v0, $t5, $t7
/* ACF5D4 80058434 84580002 */  lh    $t8, 2($v0)
/* ACF5D8 80058438 8C430004 */  lw    $v1, 4($v0)
/* ACF5DC 8005843C 3C128014 */  lui   $s2, %hi(D_80139930) # $s2, 0x8014
/* ACF5E0 80058440 1B00001D */  blez  $t8, .L800584B8
/* ACF5E4 80058444 00608025 */   move  $s0, $v1
/* ACF5E8 80058448 26529930 */  addiu $s2, %lo(D_80139930) # addiu $s2, $s2, -0x66d0
/* ACF5EC 8005844C 86090002 */  lh    $t1, 2($s0)
.L80058450:
/* ACF5F0 80058450 8E880000 */  lw    $t0, ($s4)
/* ACF5F4 80058454 86190000 */  lh    $t9, ($s0)
/* ACF5F8 80058458 00095040 */  sll   $t2, $t1, 1
/* ACF5FC 8005845C 010A5821 */  addu  $t3, $t0, $t2
/* ACF600 80058460 A5790254 */  sh    $t9, 0x254($t3)
/* ACF604 80058464 8E8C0000 */  lw    $t4, ($s4)
/* ACF608 80058468 02402025 */  move  $a0, $s2
/* ACF60C 8005846C 858E02F8 */  lh    $t6, 0x2f8($t4)
/* ACF610 80058470 51C00005 */  beql  $t6, $zero, .L80058488
/* ACF614 80058474 866D0142 */   lh    $t5, 0x142($s3)
/* ACF618 80058478 86050002 */  lh    $a1, 2($s0)
/* ACF61C 8005847C 0C00084C */  jal   osSyncPrintf
/* ACF620 80058480 86060000 */   lh    $a2, ($s0)
/* ACF624 80058484 866D0142 */  lh    $t5, 0x142($s3)
.L80058488:
/* ACF628 80058488 86680144 */  lh    $t0, 0x144($s3)
/* ACF62C 8005848C 26310001 */  addiu $s1, $s1, 1
/* ACF630 80058490 000D78C0 */  sll   $t7, $t5, 3
/* ACF634 80058494 02AFC021 */  addu  $t8, $s5, $t7
/* ACF638 80058498 8F090004 */  lw    $t1, 4($t8)
/* ACF63C 8005849C 000850C0 */  sll   $t2, $t0, 3
/* ACF640 800584A0 26100004 */  addiu $s0, $s0, 4
/* ACF644 800584A4 012AC821 */  addu  $t9, $t1, $t2
/* ACF648 800584A8 872B0002 */  lh    $t3, 2($t9)
/* ACF64C 800584AC 022B082A */  slt   $at, $s1, $t3
/* ACF650 800584B0 5420FFE7 */  bnezl $at, .L80058450
/* ACF654 800584B4 86090002 */   lh    $t1, 2($s0)
.L800584B8:
/* ACF658 800584B8 87AC0036 */  lh    $t4, 0x36($sp)
.L800584BC:
/* ACF65C 800584BC A66C0140 */  sh    $t4, 0x140($s3)
/* ACF660 800584C0 8FBF002C */  lw    $ra, 0x2c($sp)
/* ACF664 800584C4 86620140 */  lh    $v0, 0x140($s3)
/* ACF668 800584C8 8FB30020 */  lw    $s3, 0x20($sp)
/* ACF66C 800584CC 8FB50028 */  lw    $s5, 0x28($sp)
/* ACF670 800584D0 8FB40024 */  lw    $s4, 0x24($sp)
/* ACF674 800584D4 8FB2001C */  lw    $s2, 0x1c($sp)
/* ACF678 800584D8 8FB10018 */  lw    $s1, 0x18($sp)
/* ACF67C 800584DC 8FB00014 */  lw    $s0, 0x14($sp)
/* ACF680 800584E0 03E00008 */  jr    $ra
/* ACF684 800584E4 27BD0030 */   addiu $sp, $sp, 0x30

