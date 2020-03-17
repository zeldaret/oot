.rdata
glabel D_8013CCDC
    .asciz "\x1b[43;30mactor attention demo camera: canceled by other camera\n\x1b[m"
    .balign 4

glabel D_8013CD20
    .asciz "\x1b[43;30mactor attention demo camera: change mode BOOKEEPON -> NORMAL\n\x1b[m"
    .balign 4

glabel D_8013CD6C
    .asciz "\x1b[43;30mactor attention demo camera: %d: unkown part of actor %d\n\x1b[m"
    .balign 4
    
glabel D_8013CDB4
    .asciz "\x1b[36m%06u:\x1b[m actor attention demo camera: request %d "
    .balign 4

glabel D_8013CDEC
    .asciz "→ \x1b[35m×\x1B[m (%d)\n"
    # EUC-JP: → [35m×[m (%d)
    .balign 4

glabel D_8013CE00
    .asciz "→ \x1b[34m○\x1B[m (%d)\n"
    # EUC-JP: → [34m○[m (%d)
    .balign 4

glabel D_8013CE14
    .asciz "\x1b[41;37mactor attention demo: give up! \n\x1b[m"
    .balign 4

.late_rodata
glabel jtbl_8013D6D0
    .word L800805A0
    .word L800805A0
    .word L800805A0
    .word L800805B0
    .word L800805A8
    .word L800805B0
    .word L800805A0
    .word L800805A8
    .word L800805B0
    .word L800805B0
    .word L800805A0
    .word L800805A8

.text
glabel func_80080480
/* AF7620 80080480 3C0E8012 */  lui   $t6, %hi(D_80120130) # $t6, 0x8012
/* AF7624 80080484 85CE0130 */  lh    $t6, %lo(D_80120130)($t6)
/* AF7628 80080488 27BDFFC0 */  addiu $sp, $sp, -0x40
/* AF762C 8008048C AFB10020 */  sw    $s1, 0x20($sp)
/* AF7630 80080490 AFB0001C */  sw    $s0, 0x1c($sp)
/* AF7634 80080494 00A08025 */  move  $s0, $a1
/* AF7638 80080498 00808825 */  move  $s1, $a0
/* AF763C 8008049C 11C00006 */  beqz  $t6, .L800804B8
/* AF7640 800804A0 AFBF0024 */   sw    $ra, 0x24($sp)
/* AF7644 800804A4 3C048014 */  lui   $a0, %hi(D_8013CCDC) # $a0, 0x8014
/* AF7648 800804A8 0C00084C */  jal   osSyncPrintf
/* AF764C 800804AC 2484CCDC */   addiu $a0, %lo(D_8013CCDC) # addiu $a0, $a0, -0x3324
/* AF7650 800804B0 1000007D */  b     .L800806A8
/* AF7654 800804B4 2402FFFF */   li    $v0, -1
.L800804B8:
/* AF7658 800804B8 2408FFFF */  li    $t0, -1
/* AF765C 800804BC 3C018012 */  lui   $at, %hi(D_80120134) # $at, 0x8012
/* AF7660 800804C0 A4280134 */  sh    $t0, %lo(D_80120134)($at)
/* AF7664 800804C4 8E260790 */  lw    $a2, 0x790($s1)
/* AF7668 800804C8 24010014 */  li    $at, 20
/* AF766C 800804CC 3C048014 */  lui   $a0, %hi(D_8013CD20) # $a0, 0x8014
/* AF7670 800804D0 84CF0144 */  lh    $t7, 0x144($a2)
/* AF7674 800804D4 2484CD20 */  addiu $a0, %lo(D_8013CD20) # addiu $a0, $a0, -0x32e0
/* AF7678 800804D8 55E10009 */  bnel  $t7, $at, .L80080500
/* AF767C 800804DC 84C2014E */   lh    $v0, 0x14e($a2)
/* AF7680 800804E0 0C00084C */  jal   osSyncPrintf
/* AF7684 800804E4 AFA6003C */   sw    $a2, 0x3c($sp)
/* AF7688 800804E8 8FA4003C */  lw    $a0, 0x3c($sp)
/* AF768C 800804EC 0C016911 */  jal   func_8005A444
/* AF7690 800804F0 00002825 */   move  $a1, $zero
/* AF7694 800804F4 8FA6003C */  lw    $a2, 0x3c($sp)
/* AF7698 800804F8 2408FFFF */  li    $t0, -1
/* AF769C 800804FC 84C2014E */  lh    $v0, 0x14e($a2)
.L80080500:
/* AF76A0 80080500 01003825 */  move  $a3, $t0
/* AF76A4 80080504 2403002B */  li    $v1, 43
/* AF76A8 80080508 10400016 */  beqz  $v0, .L80080564
/* AF76AC 8008050C 0002C080 */   sll   $t8, $v0, 2
.L80080510:
/* AF76B0 80080510 0238C821 */  addu  $t9, $s1, $t8
/* AF76B4 80080514 8F260790 */  lw    $a2, 0x790($t9)
/* AF76B8 80080518 50C00013 */  beql  $a2, $zero, .L80080568
/* AF76BC 8008051C 920C0002 */   lbu   $t4, 2($s0)
/* AF76C0 80080520 84C90142 */  lh    $t1, 0x142($a2)
/* AF76C4 80080524 50690006 */  beql  $v1, $t1, .L80080540
/* AF76C8 80080528 8CCA00A8 */   lw    $t2, 0xa8($a2)
/* AF76CC 8008052C 54E8000E */  bnel  $a3, $t0, .L80080568
/* AF76D0 80080530 920C0002 */   lbu   $t4, 2($s0)
/* AF76D4 80080534 10000009 */  b     .L8008055C
/* AF76D8 80080538 84C2014E */   lh    $v0, 0x14e($a2)
/* AF76DC 8008053C 8CCA00A8 */  lw    $t2, 0xa8($a2)
.L80080540:
/* AF76E0 80080540 920B0002 */  lbu   $t3, 2($s0)
/* AF76E4 80080544 91420002 */  lbu   $v0, 2($t2)
/* AF76E8 80080548 004B082A */  slt   $at, $v0, $t3
/* AF76EC 8008054C 54200006 */  bnezl $at, .L80080568
/* AF76F0 80080550 920C0002 */   lbu   $t4, 2($s0)
/* AF76F4 80080554 00403825 */  move  $a3, $v0
/* AF76F8 80080558 84C2014E */  lh    $v0, 0x14e($a2)
.L8008055C:
/* AF76FC 8008055C 5440FFEC */  bnezl $v0, .L80080510
/* AF7700 80080560 0002C080 */   sll   $t8, $v0, 2
.L80080564:
/* AF7704 80080564 920C0002 */  lbu   $t4, 2($s0)
.L80080568:
/* AF7708 80080568 AFAC0028 */  sw    $t4, 0x28($sp)
/* AF770C 8008056C 14E80003 */  bne   $a3, $t0, .L8008057C
/* AF7710 80080570 8FAD0028 */   lw    $t5, 0x28($sp)
/* AF7714 80080574 10000002 */  b     .L80080580
/* AF7718 80080578 00001025 */   move  $v0, $zero
.L8008057C:
/* AF771C 8008057C 84C20164 */  lh    $v0, 0x164($a2)
.L80080580:
/* AF7720 80080580 2DA1000C */  sltiu $at, $t5, 0xc
/* AF7724 80080584 1020000A */  beqz  $at, .L800805B0
/* AF7728 80080588 000D6880 */   sll   $t5, $t5, 2
/* AF772C 8008058C 3C018014 */  lui   $at, %hi(jtbl_8013D6D0)
/* AF7730 80080590 002D0821 */  addu  $at, $at, $t5
/* AF7734 80080594 8C2DD6D0 */  lw    $t5, %lo(jtbl_8013D6D0)($at)
/* AF7738 80080598 01A00008 */  jr    $t5
/* AF773C 8008059C 00000000 */   nop   
glabel L800805A0
/* AF7740 800805A0 1000000F */  b     .L800805E0
/* AF7744 800805A4 2403001E */   li    $v1, 30
glabel L800805A8
/* AF7748 800805A8 1000000D */  b     .L800805E0
/* AF774C 800805AC 24030064 */   li    $v1, 100
.L800805B0:
glabel L800805B0
/* AF7750 800805B0 3C048014 */  lui   $a0, %hi(D_8013CD6C) # $a0, 0x8014
/* AF7754 800805B4 8E25009C */  lw    $a1, 0x9c($s1)
/* AF7758 800805B8 AFA70034 */  sw    $a3, 0x34($sp)
/* AF775C 800805BC AFA20038 */  sw    $v0, 0x38($sp)
/* AF7760 800805C0 2484CD6C */  addiu $a0, %lo(D_8013CD6C) # addiu $a0, $a0, -0x3294
/* AF7764 800805C4 0C00084C */  jal   osSyncPrintf
/* AF7768 800805C8 8FA60028 */   lw    $a2, 0x28($sp)
/* AF776C 800805CC 920E0002 */  lbu   $t6, 2($s0)
/* AF7770 800805D0 8FA20038 */  lw    $v0, 0x38($sp)
/* AF7774 800805D4 8FA70034 */  lw    $a3, 0x34($sp)
/* AF7778 800805D8 2403001E */  li    $v1, 30
/* AF777C 800805DC AFAE0028 */  sw    $t6, 0x28($sp)
.L800805E0:
/* AF7780 800805E0 8E25009C */  lw    $a1, 0x9c($s1)
/* AF7784 800805E4 3C048014 */  lui   $a0, %hi(D_8013CDB4) # $a0, 0x8014
/* AF7788 800805E8 2484CDB4 */  addiu $a0, %lo(D_8013CDB4) # addiu $a0, $a0, -0x324c
/* AF778C 800805EC AFA70034 */  sw    $a3, 0x34($sp)
/* AF7790 800805F0 AFA30030 */  sw    $v1, 0x30($sp)
/* AF7794 800805F4 AFA20038 */  sw    $v0, 0x38($sp)
/* AF7798 800805F8 0C00084C */  jal   osSyncPrintf
/* AF779C 800805FC 8FA60028 */   lw    $a2, 0x28($sp)
/* AF77A0 80080600 8FA70034 */  lw    $a3, 0x34($sp)
/* AF77A4 80080604 920F0002 */  lbu   $t7, 2($s0)
/* AF77A8 80080608 8FA20038 */  lw    $v0, 0x38($sp)
/* AF77AC 8008060C 8FA30030 */  lw    $v1, 0x30($sp)
/* AF77B0 80080610 14EF0007 */  bne   $a3, $t7, .L80080630
/* AF77B4 80080614 3C048014 */   lui   $a0, %hi(D_8013CE00)
/* AF77B8 80080618 3C048014 */  lui   $a0, %hi(D_8013CDEC) # $a0, 0x8014
/* AF77BC 8008061C 2484CDEC */  addiu $a0, %lo(D_8013CDEC) # addiu $a0, $a0, -0x3214
/* AF77C0 80080620 0C00084C */  jal   osSyncPrintf
/* AF77C4 80080624 86050000 */   lh    $a1, ($s0)
/* AF77C8 80080628 1000001F */  b     .L800806A8
/* AF77CC 8008062C 2402FFFF */   li    $v0, -1
.L80080630:
/* AF77D0 80080630 86050000 */  lh    $a1, ($s0)
/* AF77D4 80080634 AFA30030 */  sw    $v1, 0x30($sp)
/* AF77D8 80080638 AFA20038 */  sw    $v0, 0x38($sp)
/* AF77DC 8008063C 0C00084C */  jal   osSyncPrintf
/* AF77E0 80080640 2484CE00 */   addiu $a0, %lo(D_8013CE00)
/* AF77E4 80080644 8FA30030 */  lw    $v1, 0x30($sp)
/* AF77E8 80080648 8FA20038 */  lw    $v0, 0x38($sp)
/* AF77EC 8008064C 02202025 */  move  $a0, $s1
/* AF77F0 80080650 00033400 */  sll   $a2, $v1, 0x10
/* AF77F4 80080654 00063403 */  sra   $a2, $a2, 0x10
/* AF77F8 80080658 24051392 */  li    $a1, 5010
/* AF77FC 8008065C 02003825 */  move  $a3, $s0
/* AF7800 80080660 0C02003E */  jal   func_800800F8
/* AF7804 80080664 AFA20010 */   sw    $v0, 0x10($sp)
/* AF7808 80080668 2408FFFF */  li    $t0, -1
/* AF780C 8008066C 14480007 */  bne   $v0, $t0, .L8008068C
/* AF7810 80080670 00403825 */   move  $a3, $v0
/* AF7814 80080674 3C048014 */  lui   $a0, %hi(D_8013CE14) # $a0, 0x8014
/* AF7818 80080678 2484CE14 */  addiu $a0, %lo(D_8013CE14) # addiu $a0, $a0, -0x31ec
/* AF781C 8008067C 0C00084C */  jal   osSyncPrintf
/* AF7820 80080680 86050000 */   lh    $a1, ($s0)
/* AF7824 80080684 10000008 */  b     .L800806A8
/* AF7828 80080688 2402FFFF */   li    $v0, -1
.L8008068C:
/* AF782C 8008068C 0007C080 */  sll   $t8, $a3, 2
/* AF7830 80080690 0238C821 */  addu  $t9, $s1, $t8
/* AF7834 80080694 8F230790 */  lw    $v1, 0x790($t9)
/* AF7838 80080698 24094802 */  li    $t1, 18434
/* AF783C 8008069C 00E01025 */  move  $v0, $a3
/* AF7840 800806A0 24630128 */  addiu $v1, $v1, 0x128
/* AF7844 800806A4 AC690000 */  sw    $t1, ($v1)
.L800806A8:
/* AF7848 800806A8 8FBF0024 */  lw    $ra, 0x24($sp)
/* AF784C 800806AC 8FB0001C */  lw    $s0, 0x1c($sp)
/* AF7850 800806B0 8FB10020 */  lw    $s1, 0x20($sp)
/* AF7854 800806B4 03E00008 */  jr    $ra
/* AF7858 800806B8 27BD0040 */   addiu $sp, $sp, 0x40

