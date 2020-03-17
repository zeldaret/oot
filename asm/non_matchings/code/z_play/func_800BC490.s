.rdata
glabel D_80144190
    .asciz "point == 1 || point == 2"
    .balign 4

glabel D_801441AC
    .asciz "../z_play.c"
    .balign 4

.text
glabel func_800BC490
/* B33630 800BC490 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B33634 800BC494 00053C00 */  sll   $a3, $a1, 0x10
/* B33638 800BC498 00073C03 */  sra   $a3, $a3, 0x10
/* B3363C 800BC49C 24010001 */  li    $at, 1
/* B33640 800BC4A0 AFBF001C */  sw    $ra, 0x1c($sp)
/* B33644 800BC4A4 AFA40020 */  sw    $a0, 0x20($sp)
/* B33648 800BC4A8 10E1000B */  beq   $a3, $at, .L800BC4D8
/* B3364C 800BC4AC AFA50024 */   sw    $a1, 0x24($sp)
/* B33650 800BC4B0 24010002 */  li    $at, 2
/* B33654 800BC4B4 10E10008 */  beq   $a3, $at, .L800BC4D8
/* B33658 800BC4B8 3C048014 */   lui   $a0, %hi(D_80144190) # $a0, 0x8014
/* B3365C 800BC4BC 3C058014 */  lui   $a1, %hi(D_801441AC) # $a1, 0x8014
/* B33660 800BC4C0 24A541AC */  addiu $a1, %lo(D_801441AC) # addiu $a1, $a1, 0x41ac
/* B33664 800BC4C4 24844190 */  addiu $a0, %lo(D_80144190) # addiu $a0, $a0, 0x4190
/* B33668 800BC4C8 24060870 */  li    $a2, 2160
/* B3366C 800BC4CC 0C0007FC */  jal   __assert
/* B33670 800BC4D0 A7A70026 */   sh    $a3, 0x26($sp)
/* B33674 800BC4D4 87A70026 */  lh    $a3, 0x26($sp)
.L800BC4D8:
/* B33678 800BC4D8 8FAE0020 */  lw    $t6, 0x20($sp)
/* B3367C 800BC4DC 3C010001 */  lui   $at, 1
/* B33680 800BC4E0 3C0F8016 */  lui   $t7, %hi(gGameInfo) # $t7, 0x8016
/* B33684 800BC4E4 002E0821 */  addu  $at, $at, $t6
/* B33688 800BC4E8 A027242B */  sb    $a3, 0x242b($at)
/* B3368C 800BC4EC 8DEFFA90 */  lw    $t7, %lo(gGameInfo)($t7)
/* B33690 800BC4F0 24010010 */  li    $at, 16
/* B33694 800BC4F4 3C198016 */  lui   $t9, %hi(gSaveContext+8) # $t9, 0x8016
/* B33698 800BC4F8 85F804B2 */  lh    $t8, 0x4b2($t7)
/* B3369C 800BC4FC 13010015 */  beq   $t8, $at, .L800BC554
/* B336A0 800BC500 00000000 */   nop   
/* B336A4 800BC504 8F39E668 */  lw    $t9, %lo(gSaveContext+8)($t9)
/* B336A8 800BC508 3401FFF0 */  li    $at, 65520
/* B336AC 800BC50C 3C058013 */  lui   $a1, %hi(D_801333D4) # $a1, 0x8013
/* B336B0 800BC510 0321082A */  slt   $at, $t9, $at
/* B336B4 800BC514 1020000F */  beqz  $at, .L800BC554
/* B336B8 800BC518 24A533D4 */   addiu $a1, %lo(D_801333D4) # addiu $a1, $a1, 0x33d4
/* B336BC 800BC51C 24010001 */  li    $at, 1
/* B336C0 800BC520 14E10003 */  bne   $a3, $at, .L800BC530
/* B336C4 800BC524 24060004 */   li    $a2, 4
/* B336C8 800BC528 10000002 */  b     .L800BC534
/* B336CC 800BC52C 24024814 */   li    $v0, 18452
.L800BC530:
/* B336D0 800BC530 24024813 */  li    $v0, 18451
.L800BC534:
/* B336D4 800BC534 3C078013 */  lui   $a3, %hi(D_801333E0) # $a3, 0x8013
/* B336D8 800BC538 3C088013 */  lui   $t0, %hi(D_801333E8) # $t0, 0x8013
/* B336DC 800BC53C 250833E8 */  addiu $t0, %lo(D_801333E8) # addiu $t0, $t0, 0x33e8
/* B336E0 800BC540 24E733E0 */  addiu $a3, %lo(D_801333E0) # addiu $a3, $a3, 0x33e0
/* B336E4 800BC544 AFA70010 */  sw    $a3, 0x10($sp)
/* B336E8 800BC548 AFA80014 */  sw    $t0, 0x14($sp)
/* B336EC 800BC54C 0C03DCE3 */  jal   Audio_PlaySoundGeneral
/* B336F0 800BC550 3044FFFF */   andi  $a0, $v0, 0xffff
.L800BC554:
/* B336F4 800BC554 0C02F114 */  jal   func_800BC450
/* B336F8 800BC558 8FA40020 */   lw    $a0, 0x20($sp)
/* B336FC 800BC55C 8FBF001C */  lw    $ra, 0x1c($sp)
/* B33700 800BC560 27BD0020 */  addiu $sp, $sp, 0x20
/* B33704 800BC564 03E00008 */  jr    $ra
/* B33708 800BC568 00000000 */   nop   

