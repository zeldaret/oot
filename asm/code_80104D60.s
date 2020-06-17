.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel osPfsFileState
/* B7BF00 80104D60 27BDFEA0 */  addiu $sp, $sp, -0x160
/* B7BF04 80104D64 AFBF002C */  sw    $ra, 0x2c($sp)
/* B7BF08 80104D68 AFB40028 */  sw    $s4, 0x28($sp)
/* B7BF0C 80104D6C AFB30024 */  sw    $s3, 0x24($sp)
/* B7BF10 80104D70 AFB20020 */  sw    $s2, 0x20($sp)
/* B7BF14 80104D74 AFB1001C */  sw    $s1, 0x1c($sp)
/* B7BF18 80104D78 AFB00018 */  sw    $s0, 0x18($sp)
/* B7BF1C 80104D7C AFA60168 */  sw    $a2, 0x168($sp)
/* B7BF20 80104D80 8C8E0050 */  lw    $t6, 0x50($a0)
/* B7BF24 80104D84 00A08025 */  move  $s0, $a1
/* B7BF28 80104D88 00809825 */  move  $s3, $a0
/* B7BF2C 80104D8C 00AE082A */  slt   $at, $a1, $t6
/* B7BF30 80104D90 10200003 */  beqz  $at, .L80104DA0
/* B7BF34 80104D94 00000000 */   nop   
/* B7BF38 80104D98 04A30004 */  bgezl $a1, .L80104DAC
/* B7BF3C 80104D9C 8E6F0000 */   lw    $t7, ($s3)
.L80104DA0:
/* B7BF40 80104DA0 1000005E */  b     .L80104F1C
/* B7BF44 80104DA4 24020005 */   li    $v0, 5
/* B7BF48 80104DA8 8E6F0000 */  lw    $t7, ($s3)
.L80104DAC:
/* B7BF4C 80104DAC 31F80001 */  andi  $t8, $t7, 1
/* B7BF50 80104DB0 17000003 */  bnez  $t8, .L80104DC0
/* B7BF54 80104DB4 00000000 */   nop   
/* B7BF58 80104DB8 10000058 */  b     .L80104F1C
/* B7BF5C 80104DBC 24020005 */   li    $v0, 5
.L80104DC0:
/* B7BF60 80104DC0 0C040AFC */  jal   __osCheckId
/* B7BF64 80104DC4 02602025 */   move  $a0, $s3
/* B7BF68 80104DC8 50400004 */  beql  $v0, $zero, .L80104DDC
/* B7BF6C 80104DCC 92790065 */   lbu   $t9, 0x65($s3)
/* B7BF70 80104DD0 10000053 */  b     .L80104F20
/* B7BF74 80104DD4 8FBF002C */   lw    $ra, 0x2c($sp)
/* B7BF78 80104DD8 92790065 */  lbu   $t9, 0x65($s3)
.L80104DDC:
/* B7BF7C 80104DDC 02602025 */  move  $a0, $s3
/* B7BF80 80104DE0 53200008 */  beql  $t9, $zero, .L80104E04
/* B7BF84 80104DE4 8E68005C */   lw    $t0, 0x5c($s3)
/* B7BF88 80104DE8 0C041320 */  jal   __osPfsSelectBank
/* B7BF8C 80104DEC 00002825 */   move  $a1, $zero
/* B7BF90 80104DF0 50400004 */  beql  $v0, $zero, .L80104E04
/* B7BF94 80104DF4 8E68005C */   lw    $t0, 0x5c($s3)
/* B7BF98 80104DF8 10000049 */  b     .L80104F20
/* B7BF9C 80104DFC 8FBF002C */   lw    $ra, 0x2c($sp)
/* B7BFA0 80104E00 8E68005C */  lw    $t0, 0x5c($s3)
.L80104E04:
/* B7BFA4 80104E04 8E640004 */  lw    $a0, 4($s3)
/* B7BFA8 80104E08 8E650008 */  lw    $a1, 8($s3)
/* B7BFAC 80104E0C 01103021 */  addu  $a2, $t0, $s0
/* B7BFB0 80104E10 30C9FFFF */  andi  $t1, $a2, 0xffff
/* B7BFB4 80104E14 01203025 */  move  $a2, $t1
/* B7BFB8 80104E18 0C0417D0 */  jal   osReadMempak
/* B7BFBC 80104E1C 27A70038 */   addiu $a3, $sp, 0x38
/* B7BFC0 80104E20 10400003 */  beqz  $v0, .L80104E30
/* B7BFC4 80104E24 97AA003C */   lhu   $t2, 0x3c($sp)
/* B7BFC8 80104E28 1000003D */  b     .L80104F20
/* B7BFCC 80104E2C 8FBF002C */   lw    $ra, 0x2c($sp)
.L80104E30:
/* B7BFD0 80104E30 11400003 */  beqz  $t2, .L80104E40
/* B7BFD4 80104E34 8FAB0038 */   lw    $t3, 0x38($sp)
/* B7BFD8 80104E38 15600003 */  bnez  $t3, .L80104E48
/* B7BFDC 80104E3C 27B40034 */   addiu $s4, $sp, 0x34
.L80104E40:
/* B7BFE0 80104E40 10000036 */  b     .L80104F1C
/* B7BFE4 80104E44 24020005 */   li    $v0, 5
.L80104E48:
/* B7BFE8 80104E48 27AC003E */  addiu $t4, $sp, 0x3e
/* B7BFEC 80104E4C 95810000 */  lhu   $at, ($t4)
/* B7BFF0 80104E50 00009025 */  move  $s2, $zero
/* B7BFF4 80104E54 241000FF */  li    $s0, 255
/* B7BFF8 80104E58 27B10058 */  addiu $s1, $sp, 0x58
/* B7BFFC 80104E5C A6810000 */  sh    $at, ($s4)
.L80104E60:
/* B7C000 80104E60 97AF0034 */  lhu   $t7, 0x34($sp)
/* B7C004 80104E64 8E780060 */  lw    $t8, 0x60($s3)
/* B7C008 80104E68 93B90034 */  lbu   $t9, 0x34($sp)
/* B7C00C 80104E6C 02602025 */  move  $a0, $s3
/* B7C010 80104E70 01F8082A */  slt   $at, $t7, $t8
/* B7C014 80104E74 14200011 */  bnez  $at, .L80104EBC
/* B7C018 80104E78 02202825 */   move  $a1, $s1
/* B7C01C 80104E7C 12190008 */  beq   $s0, $t9, .L80104EA0
/* B7C020 80104E80 00003025 */   move  $a2, $zero
/* B7C024 80104E84 03208025 */  move  $s0, $t9
/* B7C028 80104E88 0C040B31 */  jal   __osPfsRWInode
/* B7C02C 80104E8C 332700FF */   andi  $a3, $t9, 0xff
/* B7C030 80104E90 50400004 */  beql  $v0, $zero, .L80104EA4
/* B7C034 80104E94 93A80035 */   lbu   $t0, 0x35($sp)
/* B7C038 80104E98 10000021 */  b     .L80104F20
/* B7C03C 80104E9C 8FBF002C */   lw    $ra, 0x2c($sp)
.L80104EA0:
/* B7C040 80104EA0 93A80035 */  lbu   $t0, 0x35($sp)
.L80104EA4:
/* B7C044 80104EA4 26520001 */  addiu $s2, $s2, 1
/* B7C048 80104EA8 00084840 */  sll   $t1, $t0, 1
/* B7C04C 80104EAC 02295021 */  addu  $t2, $s1, $t1
/* B7C050 80104EB0 95410000 */  lhu   $at, ($t2)
/* B7C054 80104EB4 1000FFEA */  b     .L80104E60
/* B7C058 80104EB8 A6810000 */   sh    $at, ($s4)
.L80104EBC:
/* B7C05C 80104EBC 97AC0034 */  lhu   $t4, 0x34($sp)
/* B7C060 80104EC0 24010001 */  li    $at, 1
/* B7C064 80104EC4 8FA20168 */  lw    $v0, 0x168($sp)
/* B7C068 80104EC8 11810003 */  beq   $t4, $at, .L80104ED8
/* B7C06C 80104ECC 00127200 */   sll   $t6, $s2, 8
/* B7C070 80104ED0 10000012 */  b     .L80104F1C
/* B7C074 80104ED4 24020003 */   li    $v0, 3
.L80104ED8:
/* B7C078 80104ED8 AC4E0000 */  sw    $t6, ($v0)
/* B7C07C 80104EDC 97AF003C */  lhu   $t7, 0x3c($sp)
/* B7C080 80104EE0 27A40048 */  addiu $a0, $sp, 0x48
/* B7C084 80104EE4 2445000E */  addiu $a1, $v0, 0xe
/* B7C088 80104EE8 A44F0008 */  sh    $t7, 8($v0)
/* B7C08C 80104EEC 8FB80038 */  lw    $t8, 0x38($sp)
/* B7C090 80104EF0 24060010 */  li    $a2, 16
/* B7C094 80104EF4 0C001BC4 */  jal   bcopy
/* B7C098 80104EF8 AC580004 */   sw    $t8, 4($v0)
/* B7C09C 80104EFC 8FA50168 */  lw    $a1, 0x168($sp)
/* B7C0A0 80104F00 27A40044 */  addiu $a0, $sp, 0x44
/* B7C0A4 80104F04 24060004 */  li    $a2, 4
/* B7C0A8 80104F08 0C001BC4 */  jal   bcopy
/* B7C0AC 80104F0C 24A5000A */   addiu $a1, $a1, 0xa
/* B7C0B0 80104F10 8E640004 */  lw    $a0, 4($s3)
/* B7C0B4 80104F14 0C040644 */  jal   __osPfsGetStatus
/* B7C0B8 80104F18 8E650008 */   lw    $a1, 8($s3)
.L80104F1C:
/* B7C0BC 80104F1C 8FBF002C */  lw    $ra, 0x2c($sp)
.L80104F20:
/* B7C0C0 80104F20 8FB00018 */  lw    $s0, 0x18($sp)
/* B7C0C4 80104F24 8FB1001C */  lw    $s1, 0x1c($sp)
/* B7C0C8 80104F28 8FB20020 */  lw    $s2, 0x20($sp)
/* B7C0CC 80104F2C 8FB30024 */  lw    $s3, 0x24($sp)
/* B7C0D0 80104F30 8FB40028 */  lw    $s4, 0x28($sp)
/* B7C0D4 80104F34 03E00008 */  jr    $ra
/* B7C0D8 80104F38 27BD0160 */   addiu $sp, $sp, 0x160
