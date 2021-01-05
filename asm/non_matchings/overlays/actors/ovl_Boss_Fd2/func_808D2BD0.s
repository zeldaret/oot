.rdata
glabel D_808D62D0
    .asciz "UP INIT 1\n"
    .balign 4

glabel D_808D62DC
    .asciz "UP INIT 2\n"
    .balign 4

.late_rodata
glabel D_808D647C
 .word 0x410E6666

.text
glabel func_808D2BD0
/* 00560 808D2BD0 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00564 808D2BD4 AFBF001C */  sw      $ra, 0x001C($sp)
/* 00568 808D2BD8 AFB00018 */  sw      $s0, 0x0018($sp)
/* 0056C 808D2BDC AFA5002C */  sw      $a1, 0x002C($sp)
/* 00570 808D2BE0 8C8E0118 */  lw      $t6, 0x0118($a0)           ## 00000118
/* 00574 808D2BE4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00578 808D2BE8 3C04808D */  lui     $a0, %hi(D_808D62D0)       ## $a0 = 808D0000
/* 0057C 808D2BEC 248462D0 */  addiu   $a0, $a0, %lo(D_808D62D0)  ## $a0 = 808D62D0
/* 00580 808D2BF0 0C00084C */  jal     osSyncPrintf

/* 00584 808D2BF4 AFAE0024 */  sw      $t6, 0x0024($sp)
/* 00588 808D2BF8 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 0058C 808D2BFC 24A5C1D0 */  addiu   $a1, $a1, 0xC1D0           ## $a1 = 0600C1D0
/* 00590 808D2C00 0C02947A */  jal     Animation_PlayOnce
/* 00594 808D2C04 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 00598 808D2C08 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 0059C 808D2C0C 3C0F808D */  lui     $t7, %hi(func_808D2CE0)    ## $t7 = 808D0000
/* 005A0 808D2C10 25EF2CE0 */  addiu   $t7, $t7, %lo(func_808D2CE0) ## $t7 = 808D2CE0
/* 005A4 808D2C14 AE0F0190 */  sw      $t7, 0x0190($s0)           ## 00000190
/* 005A8 808D2C18 3C01808D */  lui     $at, %hi(D_808D647C)       ## $at = 808D0000
/* 005AC 808D2C1C E6040168 */  swc1    $f4, 0x0168($s0)           ## 00000168
/* 005B0 808D2C20 0C00CFBE */  jal     Rand_ZeroFloat

/* 005B4 808D2C24 C42C647C */  lwc1    $f12, %lo(D_808D647C)($at)
/* 005B8 808D2C28 4600018D */  trunc.w.s $f6, $f0
/* 005BC 808D2C2C 3C0B808D */  lui     $t3, %hi(D_808D6124)       ## $t3 = 808D0000
/* 005C0 808D2C30 256B6124 */  addiu   $t3, $t3, %lo(D_808D6124)  ## $t3 = 808D6124
/* 005C4 808D2C34 3C04808D */  lui     $a0, %hi(D_808D62DC)       ## $a0 = 808D0000
/* 005C8 808D2C38 44193000 */  mfc1    $t9, $f6
/* 005CC 808D2C3C 248462DC */  addiu   $a0, $a0, %lo(D_808D62DC)  ## $a0 = 808D62DC
/* 005D0 808D2C40 00194400 */  sll     $t0, $t9, 16
/* 005D4 808D2C44 00084C03 */  sra     $t1, $t0, 16
/* 005D8 808D2C48 00095080 */  sll     $t2, $t1,  2
/* 005DC 808D2C4C 01495023 */  subu    $t2, $t2, $t1
/* 005E0 808D2C50 000A5080 */  sll     $t2, $t2,  2
/* 005E4 808D2C54 014B1021 */  addu    $v0, $t2, $t3
/* 005E8 808D2C58 C4480000 */  lwc1    $f8, 0x0000($v0)           ## 00000000
/* 005EC 808D2C5C E6080024 */  swc1    $f8, 0x0024($s0)           ## 00000024
/* 005F0 808D2C60 C44A0008 */  lwc1    $f10, 0x0008($v0)          ## 00000008
/* 005F4 808D2C64 A6000198 */  sh      $zero, 0x0198($s0)         ## 00000198
/* 005F8 808D2C68 0C00084C */  jal     osSyncPrintf

/* 005FC 808D2C6C E60A002C */  swc1    $f10, 0x002C($s0)          ## 0000002C
/* 00600 808D2C70 8FA30024 */  lw      $v1, 0x0024($sp)
/* 00604 808D2C74 240C000A */  addiu   $t4, $zero, 0x000A         ## $t4 = 0000000A
/* 00608 808D2C78 A60C01BC */  sh      $t4, 0x01BC($s0)           ## 000001BC
/* 0060C 808D2C7C 50600014 */  beql    $v1, $zero, .L808D2CD0
/* 00610 808D2C80 8FBF001C */  lw      $ra, 0x001C($sp)
/* 00614 808D2C84 806200AF */  lb      $v0, 0x00AF($v1)           ## 000000AF
/* 00618 808D2C88 28410012 */  slti    $at, $v0, 0x0012
/* 0061C 808D2C8C 54200004 */  bnel    $at, $zero, .L808D2CA0
/* 00620 808D2C90 2841000C */  slti    $at, $v0, 0x000C
/* 00624 808D2C94 1000000D */  beq     $zero, $zero, .L808D2CCC
/* 00628 808D2C98 A60001AC */  sh      $zero, 0x01AC($s0)         ## 000001AC
/* 0062C 808D2C9C 2841000C */  slti    $at, $v0, 0x000C
.L808D2CA0:
/* 00630 808D2CA0 14200003 */  bne     $at, $zero, .L808D2CB0
/* 00634 808D2CA4 240D0001 */  addiu   $t5, $zero, 0x0001         ## $t5 = 00000001
/* 00638 808D2CA8 10000008 */  beq     $zero, $zero, .L808D2CCC
/* 0063C 808D2CAC A60D01AC */  sh      $t5, 0x01AC($s0)           ## 000001AC
.L808D2CB0:
/* 00640 808D2CB0 28410006 */  slti    $at, $v0, 0x0006
/* 00644 808D2CB4 14200004 */  bne     $at, $zero, .L808D2CC8
/* 00648 808D2CB8 240F0003 */  addiu   $t7, $zero, 0x0003         ## $t7 = 00000003
/* 0064C 808D2CBC 240E0002 */  addiu   $t6, $zero, 0x0002         ## $t6 = 00000002
/* 00650 808D2CC0 10000002 */  beq     $zero, $zero, .L808D2CCC
/* 00654 808D2CC4 A60E01AC */  sh      $t6, 0x01AC($s0)           ## 000001AC
.L808D2CC8:
/* 00658 808D2CC8 A60F01AC */  sh      $t7, 0x01AC($s0)           ## 000001AC
.L808D2CCC:
/* 0065C 808D2CCC 8FBF001C */  lw      $ra, 0x001C($sp)
.L808D2CD0:
/* 00660 808D2CD0 8FB00018 */  lw      $s0, 0x0018($sp)
/* 00664 808D2CD4 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00668 808D2CD8 03E00008 */  jr      $ra
/* 0066C 808D2CDC 00000000 */  nop
