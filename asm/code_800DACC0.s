.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

.align 4

/* B51E50 800DACB0 00000000 */  nop   
/* B51E54 800DACB4 00000000 */  nop   
/* B51E58 800DACB8 00000000 */  nop   
/* B51E5C 800DACBC 00000000 */  nop   
glabel func_800DACC0
/* B51E60 800DACC0 00067080 */  sll   $t6, $a2, 2
/* B51E64 800DACC4 01C67023 */  subu  $t6, $t6, $a2
/* B51E68 800DACC8 000E7080 */  sll   $t6, $t6, 2
/* B51E6C 800DACCC 01C67023 */  subu  $t6, $t6, $a2
/* B51E70 800DACD0 000E70C0 */  sll   $t6, $t6, 3
/* B51E74 800DACD4 01C67021 */  addu  $t6, $t6, $a2
/* B51E78 800DACD8 3C0F8017 */  lui   $t7, %hi(gAudioContext) # $t7, 0x8017
/* B51E7C 800DACDC 25EFF180 */  addiu $t7, %lo(gAudioContext) # addiu $t7, $t7, -0xe80
/* B51E80 800DACE0 000E70C0 */  sll   $t6, $t6, 3
/* B51E84 800DACE4 01CF4021 */  addu  $t0, $t6, $t7
/* B51E88 800DACE8 9118001C */  lbu   $t8, 0x1c($t0)
/* B51E8C 800DACEC 27BDFFB0 */  addiu $sp, $sp, -0x50
/* B51E90 800DACF0 AFBF0014 */  sw    $ra, 0x14($sp)
/* B51E94 800DACF4 2B010002 */  slti  $at, $t8, 2
/* B51E98 800DACF8 AFA40050 */  sw    $a0, 0x50($sp)
/* B51E9C 800DACFC 14200065 */  bnez  $at, .L800DAE94
/* B51EA0 800DAD00 AFA50054 */   sw    $a1, 0x54($sp)
/* B51EA4 800DAD04 25070018 */  addiu $a3, $t0, 0x18
/* B51EA8 800DAD08 90F90002 */  lbu   $t9, 2($a3)
/* B51EAC 800DAD0C 000578C0 */  sll   $t7, $a1, 3
/* B51EB0 800DAD10 01E57823 */  subu  $t7, $t7, $a1
/* B51EB4 800DAD14 57200060 */  bnezl $t9, .L800DAE98
/* B51EB8 800DAD18 25070018 */   addiu $a3, $t0, 0x18
/* B51EBC 800DAD1C 90EB0003 */  lbu   $t3, 3($a3)
/* B51EC0 800DAD20 000F7880 */  sll   $t7, $t7, 2
/* B51EC4 800DAD24 24050340 */  li    $a1, 832
/* B51EC8 800DAD28 000B60C0 */  sll   $t4, $t3, 3
/* B51ECC 800DAD2C 018B6021 */  addu  $t4, $t4, $t3
/* B51ED0 800DAD30 000C6080 */  sll   $t4, $t4, 2
/* B51ED4 800DAD34 018B6023 */  subu  $t4, $t4, $t3
/* B51ED8 800DAD38 000C6080 */  sll   $t4, $t4, 2
/* B51EDC 800DAD3C 00EC6821 */  addu  $t5, $a3, $t4
/* B51EE0 800DAD40 01AF3021 */  addu  $a2, $t5, $t7
/* B51EE4 800DAD44 8CC40044 */  lw    $a0, 0x44($a2)
/* B51EE8 800DAD48 24C60040 */  addiu $a2, $a2, 0x40
/* B51EEC 800DAD4C AFA6004C */  sw    $a2, 0x4c($sp)
/* B51EF0 800DAD50 AFA80020 */  sw    $t0, 0x20($sp)
/* B51EF4 800DAD54 0C039A10 */  jal   func_800E6840
/* B51EF8 800DAD58 AFA7001C */   sw    $a3, 0x1c($sp)
/* B51EFC 800DAD5C 8FA6004C */  lw    $a2, 0x4c($sp)
/* B51F00 800DAD60 8FA7001C */  lw    $a3, 0x1c($sp)
/* B51F04 800DAD64 8FA80020 */  lw    $t0, 0x20($sp)
/* B51F08 800DAD68 84D80010 */  lh    $t8, 0x10($a2)
/* B51F0C 800DAD6C 00002825 */  move  $a1, $zero
/* B51F10 800DAD70 00002025 */  move  $a0, $zero
/* B51F14 800DAD74 07010003 */  bgez  $t8, .L800DAD84
/* B51F18 800DAD78 0018C843 */   sra   $t9, $t8, 1
/* B51F1C 800DAD7C 27010001 */  addiu $at, $t8, 1
/* B51F20 800DAD80 0001C843 */  sra   $t9, $at, 1
.L800DAD84:
/* B51F24 800DAD84 5B200023 */  blezl $t9, .L800DAE14
/* B51F28 800DAD88 84CE0012 */   lh    $t6, 0x12($a2)
/* B51F2C 800DAD8C 00001025 */  move  $v0, $zero
/* B51F30 800DAD90 8CCB0004 */  lw    $t3, 4($a2)
.L800DAD94:
/* B51F34 800DAD94 8CCF000C */  lw    $t7, 0xc($a2)
/* B51F38 800DAD98 8CED0028 */  lw    $t5, 0x28($a3)
/* B51F3C 800DAD9C 00051840 */  sll   $v1, $a1, 1
/* B51F40 800DADA0 01636021 */  addu  $t4, $t3, $v1
/* B51F44 800DADA4 858E0000 */  lh    $t6, ($t4)
/* B51F48 800DADA8 000FC040 */  sll   $t8, $t7, 1
/* B51F4C 800DADAC 01B8C821 */  addu  $t9, $t5, $t8
/* B51F50 800DADB0 03225821 */  addu  $t3, $t9, $v0
/* B51F54 800DADB4 A56E0000 */  sh    $t6, ($t3)
/* B51F58 800DADB8 8CCC0008 */  lw    $t4, 8($a2)
/* B51F5C 800DADBC 8CD9000C */  lw    $t9, 0xc($a2)
/* B51F60 800DADC0 8CF8002C */  lw    $t8, 0x2c($a3)
/* B51F64 800DADC4 01837821 */  addu  $t7, $t4, $v1
/* B51F68 800DADC8 85ED0000 */  lh    $t5, ($t7)
/* B51F6C 800DADCC 00197040 */  sll   $t6, $t9, 1
/* B51F70 800DADD0 030E5821 */  addu  $t3, $t8, $t6
/* B51F74 800DADD4 01626021 */  addu  $t4, $t3, $v0
/* B51F78 800DADD8 A58D0000 */  sh    $t5, ($t4)
/* B51F7C 800DADDC 84D90010 */  lh    $t9, 0x10($a2)
/* B51F80 800DADE0 90EF0004 */  lbu   $t7, 4($a3)
/* B51F84 800DADE4 24840001 */  addiu $a0, $a0, 1
/* B51F88 800DADE8 24420002 */  addiu $v0, $v0, 2
/* B51F8C 800DADEC 00AF2821 */  addu  $a1, $a1, $t7
/* B51F90 800DADF0 07210003 */  bgez  $t9, .L800DAE00
/* B51F94 800DADF4 0019C043 */   sra   $t8, $t9, 1
/* B51F98 800DADF8 27210001 */  addiu $at, $t9, 1
/* B51F9C 800DADFC 0001C043 */  sra   $t8, $at, 1
.L800DAE00:
/* B51FA0 800DAE00 0098082A */  slt   $at, $a0, $t8
/* B51FA4 800DAE04 5420FFE3 */  bnezl $at, .L800DAD94
/* B51FA8 800DAE08 8CCB0004 */   lw    $t3, 4($a2)
/* B51FAC 800DAE0C 00002025 */  move  $a0, $zero
/* B51FB0 800DAE10 84CE0012 */  lh    $t6, 0x12($a2)
.L800DAE14:
/* B51FB4 800DAE14 05C10003 */  bgez  $t6, .L800DAE24
/* B51FB8 800DAE18 000E5843 */   sra   $t3, $t6, 1
/* B51FBC 800DAE1C 25C10001 */  addiu $at, $t6, 1
/* B51FC0 800DAE20 00015843 */  sra   $t3, $at, 1
.L800DAE24:
/* B51FC4 800DAE24 5960001C */  blezl $t3, .L800DAE98
/* B51FC8 800DAE28 25070018 */   addiu $a3, $t0, 0x18
/* B51FCC 800DAE2C 00001025 */  move  $v0, $zero
/* B51FD0 800DAE30 8CCD0004 */  lw    $t5, 4($a2)
.L800DAE34:
/* B51FD4 800DAE34 00051840 */  sll   $v1, $a1, 1
/* B51FD8 800DAE38 8CF90028 */  lw    $t9, 0x28($a3)
/* B51FDC 800DAE3C 01A36021 */  addu  $t4, $t5, $v1
/* B51FE0 800DAE40 858F0000 */  lh    $t7, ($t4)
/* B51FE4 800DAE44 0322C021 */  addu  $t8, $t9, $v0
/* B51FE8 800DAE48 24840001 */  addiu $a0, $a0, 1
/* B51FEC 800DAE4C A70F0000 */  sh    $t7, ($t8)
/* B51FF0 800DAE50 8CCE0008 */  lw    $t6, 8($a2)
/* B51FF4 800DAE54 8CEC002C */  lw    $t4, 0x2c($a3)
/* B51FF8 800DAE58 01C35821 */  addu  $t3, $t6, $v1
/* B51FFC 800DAE5C 856D0000 */  lh    $t5, ($t3)
/* B52000 800DAE60 0182C821 */  addu  $t9, $t4, $v0
/* B52004 800DAE64 24420002 */  addiu $v0, $v0, 2
/* B52008 800DAE68 A72D0000 */  sh    $t5, ($t9)
/* B5200C 800DAE6C 84D80012 */  lh    $t8, 0x12($a2)
/* B52010 800DAE70 90EF0004 */  lbu   $t7, 4($a3)
/* B52014 800DAE74 00AF2821 */  addu  $a1, $a1, $t7
/* B52018 800DAE78 07010003 */  bgez  $t8, .L800DAE88
/* B5201C 800DAE7C 00187043 */   sra   $t6, $t8, 1
/* B52020 800DAE80 27010001 */  addiu $at, $t8, 1
/* B52024 800DAE84 00017043 */  sra   $t6, $at, 1
.L800DAE88:
/* B52028 800DAE88 008E082A */  slt   $at, $a0, $t6
/* B5202C 800DAE8C 5420FFE9 */  bnezl $at, .L800DAE34
/* B52030 800DAE90 8CCD0004 */   lw    $t5, 4($a2)
.L800DAE94:
/* B52034 800DAE94 25070018 */  addiu $a3, $t0, 0x18
.L800DAE98:
/* B52038 800DAE98 90EF0004 */  lbu   $t7, 4($a3)
/* B5203C 800DAE9C 8FB90050 */  lw    $t9, 0x50($sp)
/* B52040 800DAEA0 8FA90054 */  lw    $t1, 0x54($sp)
/* B52044 800DAEA4 90EB0003 */  lbu   $t3, 3($a3)
/* B52048 800DAEA8 032F001A */  div   $zero, $t9, $t7
/* B5204C 800DAEAC 01200821 */  addu  $at, $t1, $zero
/* B52050 800DAEB0 000948C0 */  sll   $t1, $t1, 3
/* B52054 800DAEB4 01214823 */  subu  $t1, $t1, $at
/* B52058 800DAEB8 000B60C0 */  sll   $t4, $t3, 3
/* B5205C 800DAEBC 018B6021 */  addu  $t4, $t4, $t3
/* B52060 800DAEC0 8CE4001C */  lw    $a0, 0x1c($a3)
/* B52064 800DAEC4 000C6080 */  sll   $t4, $t4, 2
/* B52068 800DAEC8 8CEE0024 */  lw    $t6, 0x24($a3)
/* B5206C 800DAECC 018B6023 */  subu  $t4, $t4, $t3
/* B52070 800DAED0 000C6080 */  sll   $t4, $t4, 2
/* B52074 800DAED4 00001812 */  mflo  $v1
/* B52078 800DAED8 00EC6821 */  addu  $t5, $a3, $t4
/* B5207C 800DAEDC 00094880 */  sll   $t1, $t1, 2
/* B52080 800DAEE0 0083C021 */  addu  $t8, $a0, $v1
/* B52084 800DAEE4 01A93021 */  addu  $a2, $t5, $t1
/* B52088 800DAEE8 030E1023 */  subu  $v0, $t8, $t6
/* B5208C 800DAEEC 24C60040 */  addiu $a2, $a2, 0x40
/* B52090 800DAEF0 15E00002 */  bnez  $t7, .L800DAEFC
/* B52094 800DAEF4 00000000 */   nop   
/* B52098 800DAEF8 0007000D */  break 7
.L800DAEFC:
/* B5209C 800DAEFC 2401FFFF */  li    $at, -1
/* B520A0 800DAF00 15E10004 */  bne   $t7, $at, .L800DAF14
/* B520A4 800DAF04 3C018000 */   lui   $at, 0x8000
/* B520A8 800DAF08 17210002 */  bne   $t9, $at, .L800DAF14
/* B520AC 800DAF0C 00000000 */   nop   
/* B520B0 800DAF10 0006000D */  break 6
.L800DAF14:
/* B520B4 800DAF14 00627823 */  subu  $t7, $v1, $v0
/* B520B8 800DAF18 0441000A */  bgez  $v0, .L800DAF44
/* B520BC 800DAF1C 00805025 */   move  $t2, $a0
/* B520C0 800DAF20 00035840 */  sll   $t3, $v1, 1
/* B520C4 800DAF24 A4CB0010 */  sh    $t3, 0x10($a2)
/* B520C8 800DAF28 A4C00012 */  sh    $zero, 0x12($a2)
/* B520CC 800DAF2C 8CEC001C */  lw    $t4, 0x1c($a3)
/* B520D0 800DAF30 ACCC000C */  sw    $t4, 0xc($a2)
/* B520D4 800DAF34 8CED001C */  lw    $t5, 0x1c($a3)
/* B520D8 800DAF38 01A3C821 */  addu  $t9, $t5, $v1
/* B520DC 800DAF3C 10000008 */  b     .L800DAF60
/* B520E0 800DAF40 ACF9001C */   sw    $t9, 0x1c($a3)
.L800DAF44:
/* B520E4 800DAF44 000FC040 */  sll   $t8, $t7, 1
/* B520E8 800DAF48 00027040 */  sll   $t6, $v0, 1
/* B520EC 800DAF4C A4D80010 */  sh    $t8, 0x10($a2)
/* B520F0 800DAF50 A4CE0012 */  sh    $t6, 0x12($a2)
/* B520F4 800DAF54 8CEB001C */  lw    $t3, 0x1c($a3)
/* B520F8 800DAF58 ACCB000C */  sw    $t3, 0xc($a2)
/* B520FC 800DAF5C ACE2001C */  sw    $v0, 0x1c($a3)
.L800DAF60:
/* B52100 800DAF60 A4C30000 */  sh    $v1, ($a2)
/* B52104 800DAF64 8FAC0050 */  lw    $t4, 0x50($sp)
/* B52108 800DAF68 A4CC0002 */  sh    $t4, 2($a2)
/* B5210C 800DAF6C 94E20014 */  lhu   $v0, 0x14($a3)
/* B52110 800DAF70 8FB80050 */  lw    $t8, 0x50($sp)
/* B52114 800DAF74 5040002E */  beql  $v0, $zero, .L800DB030
/* B52118 800DAF78 8FBF0014 */   lw    $ra, 0x14($sp)
/* B5211C 800DAF7C 8CE50024 */  lw    $a1, 0x24($a3)
/* B52120 800DAF80 004A2021 */  addu  $a0, $v0, $t2
/* B52124 800DAF84 0085082A */  slt   $at, $a0, $a1
/* B52128 800DAF88 54200003 */  bnezl $at, .L800DAF98
/* B5212C 800DAF8C 90EE0004 */   lbu   $t6, 4($a3)
/* B52130 800DAF90 00852023 */  subu  $a0, $a0, $a1
/* B52134 800DAF94 90EE0004 */  lbu   $t6, 4($a3)
.L800DAF98:
/* B52138 800DAF98 90ED0003 */  lbu   $t5, 3($a3)
/* B5213C 800DAF9C 030E001A */  div   $zero, $t8, $t6
/* B52140 800DAFA0 000DC8C0 */  sll   $t9, $t5, 3
/* B52144 800DAFA4 032DC821 */  addu  $t9, $t9, $t5
/* B52148 800DAFA8 0019C880 */  sll   $t9, $t9, 2
/* B5214C 800DAFAC 00001812 */  mflo  $v1
/* B52150 800DAFB0 032DC823 */  subu  $t9, $t9, $t5
/* B52154 800DAFB4 0019C880 */  sll   $t9, $t9, 2
/* B52158 800DAFB8 00835821 */  addu  $t3, $a0, $v1
/* B5215C 800DAFBC 00F97821 */  addu  $t7, $a3, $t9
/* B52160 800DAFC0 01651023 */  subu  $v0, $t3, $a1
/* B52164 800DAFC4 01E93021 */  addu  $a2, $t7, $t1
/* B52168 800DAFC8 24C60158 */  addiu $a2, $a2, 0x158
/* B5216C 800DAFCC 15C00002 */  bnez  $t6, .L800DAFD8
/* B52170 800DAFD0 00000000 */   nop   
/* B52174 800DAFD4 0007000D */  break 7
.L800DAFD8:
/* B52178 800DAFD8 2401FFFF */  li    $at, -1
/* B5217C 800DAFDC 15C10004 */  bne   $t6, $at, .L800DAFF0
/* B52180 800DAFE0 3C018000 */   lui   $at, 0x8000
/* B52184 800DAFE4 17010002 */  bne   $t8, $at, .L800DAFF0
/* B52188 800DAFE8 00000000 */   nop   
/* B5218C 800DAFEC 0006000D */  break 6
.L800DAFF0:
/* B52190 800DAFF0 00626823 */  subu  $t5, $v1, $v0
/* B52194 800DAFF4 04410006 */  bgez  $v0, .L800DB010
/* B52198 800DAFF8 00027840 */   sll   $t7, $v0, 1
/* B5219C 800DAFFC 00036040 */  sll   $t4, $v1, 1
/* B521A0 800DB000 A4CC0010 */  sh    $t4, 0x10($a2)
/* B521A4 800DB004 A4C00012 */  sh    $zero, 0x12($a2)
/* B521A8 800DB008 10000005 */  b     .L800DB020
/* B521AC 800DB00C ACC4000C */   sw    $a0, 0xc($a2)
.L800DB010:
/* B521B0 800DB010 000DC840 */  sll   $t9, $t5, 1
/* B521B4 800DB014 A4D90010 */  sh    $t9, 0x10($a2)
/* B521B8 800DB018 A4CF0012 */  sh    $t7, 0x12($a2)
/* B521BC 800DB01C ACC4000C */  sw    $a0, 0xc($a2)
.L800DB020:
/* B521C0 800DB020 A4C30000 */  sh    $v1, ($a2)
/* B521C4 800DB024 8FB80050 */  lw    $t8, 0x50($sp)
/* B521C8 800DB028 A4D80002 */  sh    $t8, 2($a2)
/* B521CC 800DB02C 8FBF0014 */  lw    $ra, 0x14($sp)
.L800DB030:
/* B521D0 800DB030 27BD0050 */  addiu $sp, $sp, 0x50
/* B521D4 800DB034 03E00008 */  jr    $ra
/* B521D8 800DB038 00000000 */   nop   

glabel func_800DB03C
/* B521DC 800DB03C 3C078017 */  lui   $a3, %hi(gAudioContext) # $a3, 0x8017
/* B521E0 800DB040 24E7F180 */  addiu $a3, %lo(gAudioContext) # addiu $a3, $a3, -0xe80
/* B521E4 800DB044 8CE32894 */  lw    $v1, 0x2894($a3)
/* B521E8 800DB048 00002825 */  move  $a1, $zero
/* B521EC 800DB04C 00640019 */  multu $v1, $a0
/* B521F0 800DB050 00001012 */  mflo  $v0
/* B521F4 800DB054 00023140 */  sll   $a2, $v0, 5
/* B521F8 800DB058 18600018 */  blez  $v1, .L800DB0BC
/* B521FC 800DB05C 00001825 */   move  $v1, $zero
.L800DB060:
/* B52200 800DB060 8CEE352C */  lw    $t6, 0x352c($a3)
/* B52204 800DB064 8CEF0014 */  lw    $t7, 0x14($a3)
/* B52208 800DB068 006E1021 */  addu  $v0, $v1, $t6
/* B5220C 800DB06C 8C5800C0 */  lw    $t8, 0xc0($v0)
/* B52210 800DB070 244200C0 */  addiu $v0, $v0, 0xc0
/* B52214 800DB074 00CF2021 */  addu  $a0, $a2, $t7
/* B52218 800DB078 0018CFC2 */  srl   $t9, $t8, 0x1f
/* B5221C 800DB07C 53200006 */  beql  $t9, $zero, .L800DB098
/* B52220 800DB080 908A0000 */   lbu   $t2, ($a0)
/* B52224 800DB084 90480000 */  lbu   $t0, ($v0)
/* B52228 800DB088 3109FFBF */  andi  $t1, $t0, 0xffbf
/* B5222C 800DB08C 10000004 */  b     .L800DB0A0
/* B52230 800DB090 A0490000 */   sb    $t1, ($v0)
/* B52234 800DB094 908A0000 */  lbu   $t2, ($a0)
.L800DB098:
/* B52238 800DB098 314BFF7F */  andi  $t3, $t2, 0xff7f
/* B5223C 800DB09C A08B0000 */  sb    $t3, ($a0)
.L800DB0A0:
/* B52240 800DB0A0 A0400006 */  sb    $zero, 6($v0)
/* B52244 800DB0A4 8CEC2894 */  lw    $t4, 0x2894($a3)
/* B52248 800DB0A8 24A50001 */  addiu $a1, $a1, 1
/* B5224C 800DB0AC 246300E0 */  addiu $v1, $v1, 0xe0
/* B52250 800DB0B0 00AC082A */  slt   $at, $a1, $t4
/* B52254 800DB0B4 1420FFEA */  bnez  $at, .L800DB060
/* B52258 800DB0B8 24C60020 */   addiu $a2, $a2, 0x20
.L800DB0BC:
/* B5225C 800DB0BC 03E00008 */  jr    $ra
/* B52260 800DB0C0 00000000 */   nop   

glabel func_800DB0C4
/* B52264 800DB0C4 27BDFFC0 */  addiu $sp, $sp, -0x40
/* B52268 800DB0C8 AFB5002C */  sw    $s5, 0x2c($sp)
/* B5226C 800DB0CC 3C158017 */  lui   $s5, %hi(gAudioContext) # $s5, 0x8017
/* B52270 800DB0D0 26B5F180 */  addiu $s5, %lo(gAudioContext) # addiu $s5, $s5, -0xe80
/* B52274 800DB0D4 AFB40028 */  sw    $s4, 0x28($sp)
/* B52278 800DB0D8 86B42854 */  lh    $s4, 0x2854($s5)
/* B5227C 800DB0DC AFBE0038 */  sw    $fp, 0x38($sp)
/* B52280 800DB0E0 AFB60030 */  sw    $s6, 0x30($sp)
/* B52284 800DB0E4 AFB1001C */  sw    $s1, 0x1c($sp)
/* B52288 800DB0E8 00C08825 */  move  $s1, $a2
/* B5228C 800DB0EC 00E0B025 */  move  $s6, $a3
/* B52290 800DB0F0 AFBF003C */  sw    $ra, 0x3c($sp)
/* B52294 800DB0F4 AFB70034 */  sw    $s7, 0x34($sp)
/* B52298 800DB0F8 AFB30024 */  sw    $s3, 0x24($sp)
/* B5229C 800DB0FC AFB20020 */  sw    $s2, 0x20($sp)
/* B522A0 800DB100 AFB00018 */  sw    $s0, 0x18($sp)
/* B522A4 800DB104 AFA40040 */  sw    $a0, 0x40($sp)
/* B522A8 800DB108 AFA50044 */  sw    $a1, 0x44($sp)
/* B522AC 800DB10C 1A80000A */  blez  $s4, .L800DB138
/* B522B0 800DB110 0080F025 */   move  $fp, $a0
.L800DB114:
/* B522B4 800DB114 2690FFFF */  addiu $s0, $s4, -1
/* B522B8 800DB118 0C03B159 */  jal   func_800EC564
/* B522BC 800DB11C 02002025 */   move  $a0, $s0
/* B522C0 800DB120 86AE2854 */  lh    $t6, 0x2854($s5)
/* B522C4 800DB124 0C036C0F */  jal   func_800DB03C
/* B522C8 800DB128 01D42023 */   subu  $a0, $t6, $s4
/* B522CC 800DB12C 1E00FFF9 */  bgtz  $s0, .L800DB114
/* B522D0 800DB130 0200A025 */   move  $s4, $s0
/* B522D4 800DB134 86B42854 */  lh    $s4, 0x2854($s5)
.L800DB138:
/* B522D8 800DB138 0220B825 */  move  $s7, $s1
/* B522DC 800DB13C 1A80003C */  blez  $s4, .L800DB230
/* B522E0 800DB140 AEA00010 */   sw    $zero, 0x10($s5)
.L800DB144:
/* B522E4 800DB144 24010001 */  li    $at, 1
/* B522E8 800DB148 86B22854 */  lh    $s2, 0x2854($s5)
/* B522EC 800DB14C 16810003 */  bne   $s4, $at, .L800DB15C
/* B522F0 800DB150 00008825 */   move  $s1, $zero
/* B522F4 800DB154 10000019 */  b     .L800DB1BC
/* B522F8 800DB158 02C09825 */   move  $s3, $s6
.L800DB15C:
/* B522FC 800DB15C 02D4001A */  div   $zero, $s6, $s4
/* B52300 800DB160 16800002 */  bnez  $s4, .L800DB16C
/* B52304 800DB164 00000000 */   nop   
/* B52308 800DB168 0007000D */  break 7
.L800DB16C:
/* B5230C 800DB16C 2401FFFF */  li    $at, -1
/* B52310 800DB170 16810004 */  bne   $s4, $at, .L800DB184
/* B52314 800DB174 3C018000 */   lui   $at, 0x8000
/* B52318 800DB178 16C10002 */  bne   $s6, $at, .L800DB184
/* B5231C 800DB17C 00000000 */   nop   
/* B52320 800DB180 0006000D */  break 6
.L800DB184:
/* B52324 800DB184 86A32858 */  lh    $v1, 0x2858($s5)
/* B52328 800DB188 00001012 */  mflo  $v0
/* B5232C 800DB18C 0043082A */  slt   $at, $v0, $v1
/* B52330 800DB190 54200004 */  bnezl $at, .L800DB1A4
/* B52334 800DB194 86A3285A */   lh    $v1, 0x285a($s5)
/* B52338 800DB198 10000008 */  b     .L800DB1BC
/* B5233C 800DB19C 00609825 */   move  $s3, $v1
/* B52340 800DB1A0 86A3285A */  lh    $v1, 0x285a($s5)
.L800DB1A4:
/* B52344 800DB1A4 0062082A */  slt   $at, $v1, $v0
/* B52348 800DB1A8 54200004 */  bnezl $at, .L800DB1BC
/* B5234C 800DB1AC 86B32856 */   lh    $s3, 0x2856($s5)
/* B52350 800DB1B0 10000002 */  b     .L800DB1BC
/* B52354 800DB1B4 00609825 */   move  $s3, $v1
/* B52358 800DB1B8 86B32856 */  lh    $s3, 0x2856($s5)
.L800DB1BC:
/* B5235C 800DB1BC 82A20001 */  lb    $v0, 1($s5)
/* B52360 800DB1C0 58400011 */  blezl $v0, .L800DB208
/* B52364 800DB1C4 02E02025 */   move  $a0, $s7
/* B52368 800DB1C8 3C108017 */  lui   $s0, %hi(gAudioContext) # $s0, 0x8017
/* B5236C 800DB1CC 2610F180 */  addiu $s0, %lo(gAudioContext) # addiu $s0, $s0, -0xe80
.L800DB1D0:
/* B52370 800DB1D0 920F0019 */  lbu   $t7, 0x19($s0)
/* B52374 800DB1D4 02602025 */  move  $a0, $s3
/* B52378 800DB1D8 02542823 */  subu  $a1, $s2, $s4
/* B5237C 800DB1DC 51E00006 */  beql  $t7, $zero, .L800DB1F8
/* B52380 800DB1E0 26310001 */   addiu $s1, $s1, 1
/* B52384 800DB1E4 0C036B30 */  jal   func_800DACC0
/* B52388 800DB1E8 02203025 */   move  $a2, $s1
/* B5238C 800DB1EC 86B22854 */  lh    $s2, 0x2854($s5)
/* B52390 800DB1F0 82A20001 */  lb    $v0, 1($s5)
/* B52394 800DB1F4 26310001 */  addiu $s1, $s1, 1
.L800DB1F8:
/* B52398 800DB1F8 0222082A */  slt   $at, $s1, $v0
/* B5239C 800DB1FC 1420FFF4 */  bnez  $at, .L800DB1D0
/* B523A0 800DB200 261002C8 */   addiu $s0, $s0, 0x2c8
/* B523A4 800DB204 02E02025 */  move  $a0, $s7
.L800DB208:
/* B523A8 800DB208 02602825 */  move  $a1, $s3
/* B523AC 800DB20C 03C03025 */  move  $a2, $fp
/* B523B0 800DB210 0C0370E1 */  jal   func_800DC384
/* B523B4 800DB214 02543823 */   subu  $a3, $s2, $s4
/* B523B8 800DB218 2694FFFF */  addiu $s4, $s4, -1
/* B523BC 800DB21C 0013C080 */  sll   $t8, $s3, 2
/* B523C0 800DB220 0040F025 */  move  $fp, $v0
/* B523C4 800DB224 02D3B023 */  subu  $s6, $s6, $s3
/* B523C8 800DB228 1E80FFC6 */  bgtz  $s4, .L800DB144
/* B523CC 800DB22C 02F8B821 */   addu  $s7, $s7, $t8
.L800DB230:
/* B523D0 800DB230 82B90001 */  lb    $t9, 1($s5)
/* B523D4 800DB234 3C108017 */  lui   $s0, %hi(gAudioContext) # $s0, 0x8017
/* B523D8 800DB238 2610F180 */  addiu $s0, %lo(gAudioContext) # addiu $s0, $s0, -0xe80
/* B523DC 800DB23C 1B20000E */  blez  $t9, .L800DB278
/* B523E0 800DB240 00008825 */   move  $s1, $zero
/* B523E4 800DB244 9202001A */  lbu   $v0, 0x1a($s0)
.L800DB248:
/* B523E8 800DB248 10400002 */  beqz  $v0, .L800DB254
/* B523EC 800DB24C 2448FFFF */   addiu $t0, $v0, -1
/* B523F0 800DB250 A208001A */  sb    $t0, 0x1a($s0)
.L800DB254:
/* B523F4 800DB254 9209001B */  lbu   $t1, 0x1b($s0)
/* B523F8 800DB258 26310001 */  addiu $s1, $s1, 1
/* B523FC 800DB25C 261002C8 */  addiu $s0, $s0, 0x2c8
/* B52400 800DB260 392A0001 */  xori  $t2, $t1, 1
/* B52404 800DB264 A20AFD53 */  sb    $t2, -0x2ad($s0)
/* B52408 800DB268 82AB0001 */  lb    $t3, 1($s5)
/* B5240C 800DB26C 022B082A */  slt   $at, $s1, $t3
/* B52410 800DB270 5420FFF5 */  bnezl $at, .L800DB248
/* B52414 800DB274 9202001A */   lbu   $v0, 0x1a($s0)
.L800DB278:
/* B52418 800DB278 8FAC0040 */  lw    $t4, 0x40($sp)
/* B5241C 800DB27C 8FAF0044 */  lw    $t7, 0x44($sp)
/* B52420 800DB280 03C01025 */  move  $v0, $fp
/* B52424 800DB284 03CC6823 */  subu  $t5, $fp, $t4
/* B52428 800DB288 000D70C3 */  sra   $t6, $t5, 3
/* B5242C 800DB28C ADEE0000 */  sw    $t6, ($t7)
/* B52430 800DB290 8FBF003C */  lw    $ra, 0x3c($sp)
/* B52434 800DB294 8FBE0038 */  lw    $fp, 0x38($sp)
/* B52438 800DB298 8FB70034 */  lw    $s7, 0x34($sp)
/* B5243C 800DB29C 8FB60030 */  lw    $s6, 0x30($sp)
/* B52440 800DB2A0 8FB5002C */  lw    $s5, 0x2c($sp)
/* B52444 800DB2A4 8FB40028 */  lw    $s4, 0x28($sp)
/* B52448 800DB2A8 8FB30024 */  lw    $s3, 0x24($sp)
/* B5244C 800DB2AC 8FB20020 */  lw    $s2, 0x20($sp)
/* B52450 800DB2B0 8FB1001C */  lw    $s1, 0x1c($sp)
/* B52454 800DB2B4 8FB00018 */  lw    $s0, 0x18($sp)
/* B52458 800DB2B8 03E00008 */  jr    $ra
/* B5245C 800DB2BC 27BD0040 */   addiu $sp, $sp, 0x40

glabel func_800DB2C0
/* B52460 800DB2C0 3C068017 */  lui   $a2, %hi(gAudioContext) # $a2, 0x8017
/* B52464 800DB2C4 24C6F180 */  addiu $a2, %lo(gAudioContext) # addiu $a2, $a2, -0xe80
/* B52468 800DB2C8 84CE2854 */  lh    $t6, 0x2854($a2)
/* B5246C 800DB2CC 24820001 */  addiu $v0, $a0, 1
/* B52470 800DB2D0 004E082A */  slt   $at, $v0, $t6
/* B52474 800DB2D4 10200014 */  beqz  $at, .L800DB328
/* B52478 800DB2D8 00000000 */   nop   
/* B5247C 800DB2DC 8CCF2894 */  lw    $t7, 0x2894($a2)
.L800DB2E0:
/* B52480 800DB2E0 8CC90014 */  lw    $t1, 0x14($a2)
/* B52484 800DB2E4 01E20019 */  multu $t7, $v0
/* B52488 800DB2E8 0000C012 */  mflo  $t8
/* B5248C 800DB2EC 0305C821 */  addu  $t9, $t8, $a1
/* B52490 800DB2F0 00194140 */  sll   $t0, $t9, 5
/* B52494 800DB2F4 01091821 */  addu  $v1, $t0, $t1
/* B52498 800DB2F8 8C6A0000 */  lw    $t2, ($v1)
/* B5249C 800DB2FC 000A6040 */  sll   $t4, $t2, 1
/* B524A0 800DB300 05800009 */  bltz  $t4, .L800DB328
/* B524A4 800DB304 00000000 */   nop   
/* B524A8 800DB308 906D0000 */  lbu   $t5, ($v1)
/* B524AC 800DB30C 24420001 */  addiu $v0, $v0, 1
/* B524B0 800DB310 31AEFF7F */  andi  $t6, $t5, 0xff7f
/* B524B4 800DB314 A06E0000 */  sb    $t6, ($v1)
/* B524B8 800DB318 84CF2854 */  lh    $t7, 0x2854($a2)
/* B524BC 800DB31C 004F082A */  slt   $at, $v0, $t7
/* B524C0 800DB320 5420FFEF */  bnezl $at, .L800DB2E0
/* B524C4 800DB324 8CCF2894 */   lw    $t7, 0x2894($a2)
.L800DB328:
/* B524C8 800DB328 03E00008 */  jr    $ra
/* B524CC 800DB32C 00000000 */   nop   

glabel func_800DB330
/* B524D0 800DB330 27BDFFD8 */  addiu $sp, $sp, -0x28
/* B524D4 800DB334 AFBF001C */  sw    $ra, 0x1c($sp)
/* B524D8 800DB338 AFA5002C */  sw    $a1, 0x2c($sp)
/* B524DC 800DB33C AFA60030 */  sw    $a2, 0x30($sp)
/* B524E0 800DB340 90AF0003 */  lbu   $t7, 3($a1)
/* B524E4 800DB344 87A80032 */  lh    $t0, 0x32($sp)
/* B524E8 800DB348 00A07025 */  move  $t6, $a1
/* B524EC 800DB34C 000FC0C0 */  sll   $t8, $t7, 3
/* B524F0 800DB350 030FC021 */  addu  $t8, $t8, $t7
/* B524F4 800DB354 0018C080 */  sll   $t8, $t8, 2
/* B524F8 800DB358 030FC023 */  subu  $t8, $t8, $t7
/* B524FC 800DB35C 000848C0 */  sll   $t1, $t0, 3
/* B52500 800DB360 0018C080 */  sll   $t8, $t8, 2
/* B52504 800DB364 01284823 */  subu  $t1, $t1, $t0
/* B52508 800DB368 00094880 */  sll   $t1, $t1, 2
/* B5250C 800DB36C 00B8C821 */  addu  $t9, $a1, $t8
/* B52510 800DB370 03291821 */  addu  $v1, $t9, $t1
/* B52514 800DB374 24630040 */  addiu $v1, $v1, 0x40
/* B52518 800DB378 84670010 */  lh    $a3, 0x10($v1)
/* B5251C 800DB37C 9466000E */  lhu   $a2, 0xe($v1)
/* B52520 800DB380 AFA30024 */  sw    $v1, 0x24($sp)
/* B52524 800DB384 AFAE0010 */  sw    $t6, 0x10($sp)
/* B52528 800DB388 0C037002 */  jal   func_800DC008
/* B5252C 800DB38C 240503E0 */   li    $a1, 992
/* B52530 800DB390 8FA30024 */  lw    $v1, 0x24($sp)
/* B52534 800DB394 00402025 */  move  $a0, $v0
/* B52538 800DB398 8FAA002C */  lw    $t2, 0x2c($sp)
/* B5253C 800DB39C 84670012 */  lh    $a3, 0x12($v1)
/* B52540 800DB3A0 50E00009 */  beql  $a3, $zero, .L800DB3C8
/* B52544 800DB3A4 8FBF001C */   lw    $ra, 0x1c($sp)
/* B52548 800DB3A8 84650010 */  lh    $a1, 0x10($v1)
/* B5254C 800DB3AC AFAA0010 */  sw    $t2, 0x10($sp)
/* B52550 800DB3B0 00003025 */  move  $a2, $zero
/* B52554 800DB3B4 24A503E0 */  addiu $a1, $a1, 0x3e0
/* B52558 800DB3B8 0C037002 */  jal   func_800DC008
/* B5255C 800DB3BC 30A5FFFF */   andi  $a1, $a1, 0xffff
/* B52560 800DB3C0 00402025 */  move  $a0, $v0
/* B52564 800DB3C4 8FBF001C */  lw    $ra, 0x1c($sp)
.L800DB3C8:
/* B52568 800DB3C8 27BD0028 */  addiu $sp, $sp, 0x28
/* B5256C 800DB3CC 00801025 */  move  $v0, $a0
/* B52570 800DB3D0 03E00008 */  jr    $ra
/* B52574 800DB3D4 00000000 */   nop   

glabel func_800DB3D8
/* B52578 800DB3D8 27BDFFD8 */  addiu $sp, $sp, -0x28
/* B5257C 800DB3DC AFBF001C */  sw    $ra, 0x1c($sp)
/* B52580 800DB3E0 AFA5002C */  sw    $a1, 0x2c($sp)
/* B52584 800DB3E4 AFA60030 */  sw    $a2, 0x30($sp)
/* B52588 800DB3E8 90AF0003 */  lbu   $t7, 3($a1)
/* B5258C 800DB3EC 87A80032 */  lh    $t0, 0x32($sp)
/* B52590 800DB3F0 00A07025 */  move  $t6, $a1
/* B52594 800DB3F4 000FC0C0 */  sll   $t8, $t7, 3
/* B52598 800DB3F8 030FC021 */  addu  $t8, $t8, $t7
/* B5259C 800DB3FC 0018C080 */  sll   $t8, $t8, 2
/* B525A0 800DB400 030FC023 */  subu  $t8, $t8, $t7
/* B525A4 800DB404 000848C0 */  sll   $t1, $t0, 3
/* B525A8 800DB408 0018C080 */  sll   $t8, $t8, 2
/* B525AC 800DB40C 01284823 */  subu  $t1, $t1, $t0
/* B525B0 800DB410 00094880 */  sll   $t1, $t1, 2
/* B525B4 800DB414 00B8C821 */  addu  $t9, $a1, $t8
/* B525B8 800DB418 03291821 */  addu  $v1, $t9, $t1
/* B525BC 800DB41C 24630040 */  addiu $v1, $v1, 0x40
/* B525C0 800DB420 84670010 */  lh    $a3, 0x10($v1)
/* B525C4 800DB424 9466000E */  lhu   $a2, 0xe($v1)
/* B525C8 800DB428 AFA30024 */  sw    $v1, 0x24($sp)
/* B525CC 800DB42C AFAE0010 */  sw    $t6, 0x10($sp)
/* B525D0 800DB430 0C03701D */  jal   func_800DC074
/* B525D4 800DB434 240503E0 */   li    $a1, 992
/* B525D8 800DB438 8FA30024 */  lw    $v1, 0x24($sp)
/* B525DC 800DB43C 00402025 */  move  $a0, $v0
/* B525E0 800DB440 8FAA002C */  lw    $t2, 0x2c($sp)
/* B525E4 800DB444 84670012 */  lh    $a3, 0x12($v1)
/* B525E8 800DB448 50E00009 */  beql  $a3, $zero, .L800DB470
/* B525EC 800DB44C 8FBF001C */   lw    $ra, 0x1c($sp)
/* B525F0 800DB450 84650010 */  lh    $a1, 0x10($v1)
/* B525F4 800DB454 AFAA0010 */  sw    $t2, 0x10($sp)
/* B525F8 800DB458 00003025 */  move  $a2, $zero
/* B525FC 800DB45C 24A503E0 */  addiu $a1, $a1, 0x3e0
/* B52600 800DB460 0C03701D */  jal   func_800DC074
/* B52604 800DB464 30A5FFFF */   andi  $a1, $a1, 0xffff
/* B52608 800DB468 00402025 */  move  $a0, $v0
/* B5260C 800DB46C 8FBF001C */  lw    $ra, 0x1c($sp)
.L800DB470:
/* B52610 800DB470 27BD0028 */  addiu $sp, $sp, 0x28
/* B52614 800DB474 00801025 */  move  $v0, $a0
/* B52618 800DB478 03E00008 */  jr    $ra
/* B5261C 800DB47C 00000000 */   nop   

glabel func_800DB480
/* B52620 800DB480 3C0E0A00 */  lui   $t6, (0x0A000C80 >> 16) # lui $t6, 0xa00
/* B52624 800DB484 3C0F0720 */  lui   $t7, (0x072001A0 >> 16) # lui $t7, 0x720
/* B52628 800DB488 35EF01A0 */  ori   $t7, (0x072001A0 & 0xFFFF) # ori $t7, $t7, 0x1a0
/* B5262C 800DB48C 35CE0C80 */  ori   $t6, (0x0A000C80 & 0xFFFF) # ori $t6, $t6, 0xc80
/* B52630 800DB490 AC8E0000 */  sw    $t6, ($a0)
/* B52634 800DB494 AC8F0004 */  sw    $t7, 4($a0)
/* B52638 800DB498 84B80010 */  lh    $t8, 0x10($a1)
/* B5263C 800DB49C 3C080C1A */  lui   $t0, 0xc1a
/* B52640 800DB4A0 24860008 */  addiu $a2, $a0, 8
/* B52644 800DB4A4 3C0A0E20 */  lui   $t2, (0x0E200C80 >> 16) # lui $t2, 0xe20
/* B52648 800DB4A8 3319FFFF */  andi  $t9, $t8, 0xffff
/* B5264C 800DB4AC 03284825 */  or    $t1, $t9, $t0
/* B52650 800DB4B0 354A0C80 */  ori   $t2, (0x0E200C80 & 0xFFFF) # ori $t2, $t2, 0xc80
/* B52654 800DB4B4 ACCA0004 */  sw    $t2, 4($a2)
/* B52658 800DB4B8 ACC90000 */  sw    $t1, ($a2)
/* B5265C 800DB4BC 84AB0012 */  lh    $t3, 0x12($a1)
/* B52660 800DB4C0 24C70008 */  addiu $a3, $a2, 8
/* B52664 800DB4C4 3C0E0720 */  lui   $t6, (0x07200E20 >> 16) # lui $t6, 0x720
/* B52668 800DB4C8 316CFFFF */  andi  $t4, $t3, 0xffff
/* B5266C 800DB4CC 01886825 */  or    $t5, $t4, $t0
/* B52670 800DB4D0 35CE0E20 */  ori   $t6, (0x07200E20 & 0xFFFF) # ori $t6, $t6, 0xe20
/* B52674 800DB4D4 ACEE0004 */  sw    $t6, 4($a3)
/* B52678 800DB4D8 ACED0000 */  sw    $t5, ($a3)
/* B5267C 800DB4DC 03E00008 */  jr    $ra
/* B52680 800DB4E0 24E20008 */   addiu $v0, $a3, 8

glabel func_800DB4E4
/* B52684 800DB4E4 27BDFFD0 */  addiu $sp, $sp, -0x30
/* B52688 800DB4E8 AFBF0024 */  sw    $ra, 0x24($sp)
/* B5268C 800DB4EC AFB00020 */  sw    $s0, 0x20($sp)
/* B52690 800DB4F0 AFA50034 */  sw    $a1, 0x34($sp)
/* B52694 800DB4F4 AFA7003C */  sw    $a3, 0x3c($sp)
/* B52698 800DB4F8 90CE0003 */  lbu   $t6, 3($a2)
/* B5269C 800DB4FC 87B9003E */  lh    $t9, 0x3e($sp)
/* B526A0 800DB500 2401FFF0 */  li    $at, -16
/* B526A4 800DB504 000E78C0 */  sll   $t7, $t6, 3
/* B526A8 800DB508 01EE7821 */  addu  $t7, $t7, $t6
/* B526AC 800DB50C 000F7880 */  sll   $t7, $t7, 2
/* B526B0 800DB510 01EE7823 */  subu  $t7, $t7, $t6
/* B526B4 800DB514 001960C0 */  sll   $t4, $t9, 3
/* B526B8 800DB518 000F7880 */  sll   $t7, $t7, 2
/* B526BC 800DB51C 01996023 */  subu  $t4, $t4, $t9
/* B526C0 800DB520 000C6080 */  sll   $t4, $t4, 2
/* B526C4 800DB524 00CFC021 */  addu  $t8, $a2, $t7
/* B526C8 800DB528 030C1821 */  addu  $v1, $t8, $t4
/* B526CC 800DB52C 8C62004C */  lw    $v0, 0x4c($v1)
/* B526D0 800DB530 846D0050 */  lh    $t5, 0x50($v1)
/* B526D4 800DB534 00C08025 */  move  $s0, $a2
/* B526D8 800DB538 30480007 */  andi  $t0, $v0, 7
/* B526DC 800DB53C 00084040 */  sll   $t0, $t0, 1
/* B526E0 800DB540 00084400 */  sll   $t0, $t0, 0x10
/* B526E4 800DB544 00084403 */  sra   $t0, $t0, 0x10
/* B526E8 800DB548 010D4821 */  addu  $t1, $t0, $t5
/* B526EC 800DB54C 2529000F */  addiu $t1, $t1, 0xf
/* B526F0 800DB550 3129FFF0 */  andi  $t1, $t1, 0xfff0
/* B526F4 800DB554 00094C00 */  sll   $t1, $t1, 0x10
/* B526F8 800DB558 24630040 */  addiu $v1, $v1, 0x40
/* B526FC 800DB55C 00094C03 */  sra   $t1, $t1, 0x10
/* B52700 800DB560 A7A90028 */  sh    $t1, 0x28($sp)
/* B52704 800DB564 AFA3002C */  sw    $v1, 0x2c($sp)
/* B52708 800DB568 A7A8002A */  sh    $t0, 0x2a($sp)
/* B5270C 800DB56C AFB00010 */  sw    $s0, 0x10($sp)
/* B52710 800DB570 240701A0 */  li    $a3, 416
/* B52714 800DB574 240503E0 */  li    $a1, 992
/* B52718 800DB578 05010003 */  bgez  $t0, .L800DB588
/* B5271C 800DB57C 00087043 */   sra   $t6, $t0, 1
/* B52720 800DB580 25010001 */  addiu $at, $t0, 1
/* B52724 800DB584 00017043 */  sra   $t6, $at, 1
.L800DB588:
/* B52728 800DB588 004E3023 */  subu  $a2, $v0, $t6
/* B5272C 800DB58C 0C037002 */  jal   func_800DC008
/* B52730 800DB590 30C6FFFF */   andi  $a2, $a2, 0xffff
/* B52734 800DB594 8FA3002C */  lw    $v1, 0x2c($sp)
/* B52738 800DB598 87A90028 */  lh    $t1, 0x28($sp)
/* B5273C 800DB59C 87A8002A */  lh    $t0, 0x2a($sp)
/* B52740 800DB5A0 846F0012 */  lh    $t7, 0x12($v1)
/* B52744 800DB5A4 252503E0 */  addiu $a1, $t1, 0x3e0
/* B52748 800DB5A8 00402025 */  move  $a0, $v0
/* B5274C 800DB5AC 11E00008 */  beqz  $t7, .L800DB5D0
/* B52750 800DB5B0 30A5FFFF */   andi  $a1, $a1, 0xffff
/* B52754 800DB5B4 241901A0 */  li    $t9, 416
/* B52758 800DB5B8 03293823 */  subu  $a3, $t9, $t1
/* B5275C 800DB5BC 00003025 */  move  $a2, $zero
/* B52760 800DB5C0 AFB00010 */  sw    $s0, 0x10($sp)
/* B52764 800DB5C4 0C037002 */  jal   func_800DC008
/* B52768 800DB5C8 A7A8002A */   sh    $t0, 0x2a($sp)
/* B5276C 800DB5CC 87A8002A */  lh    $t0, 0x2a($sp)
.L800DB5D0:
/* B52770 800DB5D0 251803E0 */  addiu $t8, $t0, 0x3e0
/* B52774 800DB5D4 3C0A0800 */  lui   $t2, 0x800
/* B52778 800DB5D8 330CFFFF */  andi  $t4, $t8, 0xffff
/* B5277C 800DB5DC 018A6825 */  or    $t5, $t4, $t2
/* B52780 800DB5E0 AC4D0000 */  sw    $t5, ($v0)
/* B52784 800DB5E4 8FA50034 */  lw    $a1, 0x34($sp)
/* B52788 800DB5E8 3C010C80 */  lui   $at, 0xc80
/* B5278C 800DB5EC 3C0B0500 */  lui   $t3, 0x500
/* B52790 800DB5F0 00052840 */  sll   $a1, $a1, 1
/* B52794 800DB5F4 30A5FFFF */  andi  $a1, $a1, 0xffff
/* B52798 800DB5F8 00A17025 */  or    $t6, $a1, $at
/* B5279C 800DB5FC AC4E0004 */  sw    $t6, 4($v0)
/* B527A0 800DB600 92190000 */  lbu   $t9, ($s0)
/* B527A4 800DB604 960E000E */  lhu   $t6, 0xe($s0)
/* B527A8 800DB608 24460008 */  addiu $a2, $v0, 8
/* B527AC 800DB60C 0019C400 */  sll   $t8, $t9, 0x10
/* B527B0 800DB610 030B6025 */  or    $t4, $t8, $t3
/* B527B4 800DB614 018E7825 */  or    $t7, $t4, $t6
/* B527B8 800DB618 ACCF0000 */  sw    $t7, ($a2)
/* B527BC 800DB61C 8E190030 */  lw    $t9, 0x30($s0)
/* B527C0 800DB620 25180580 */  addiu $t8, $t0, 0x580
/* B527C4 800DB624 24C70008 */  addiu $a3, $a2, 8
/* B527C8 800DB628 330DFFFF */  andi  $t5, $t8, 0xffff
/* B527CC 800DB62C 3C010E20 */  lui   $at, 0xe20
/* B527D0 800DB630 ACD90004 */  sw    $t9, 4($a2)
/* B527D4 800DB634 00A17025 */  or    $t6, $a1, $at
/* B527D8 800DB638 01AA6025 */  or    $t4, $t5, $t2
/* B527DC 800DB63C ACEC0000 */  sw    $t4, ($a3)
/* B527E0 800DB640 ACEE0004 */  sw    $t6, 4($a3)
/* B527E4 800DB644 92190000 */  lbu   $t9, ($s0)
/* B527E8 800DB648 960E000E */  lhu   $t6, 0xe($s0)
/* B527EC 800DB64C 24E90008 */  addiu $t1, $a3, 8
/* B527F0 800DB650 0019C400 */  sll   $t8, $t9, 0x10
/* B527F4 800DB654 030B6825 */  or    $t5, $t8, $t3
/* B527F8 800DB658 01AE7825 */  or    $t7, $t5, $t6
/* B527FC 800DB65C AD2F0000 */  sw    $t7, ($t1)
/* B52800 800DB660 8E190034 */  lw    $t9, 0x34($s0)
/* B52804 800DB664 25220008 */  addiu $v0, $t1, 8
/* B52808 800DB668 AD390004 */  sw    $t9, 4($t1)
/* B5280C 800DB66C 8FBF0024 */  lw    $ra, 0x24($sp)
/* B52810 800DB670 8FB00020 */  lw    $s0, 0x20($sp)
/* B52814 800DB674 27BD0030 */  addiu $sp, $sp, 0x30
/* B52818 800DB678 03E00008 */  jr    $ra
/* B5281C 800DB67C 00000000 */   nop   

glabel func_800DB680
/* B52820 800DB680 27BDFFD0 */  addiu $sp, $sp, -0x30
/* B52824 800DB684 AFBF002C */  sw    $ra, 0x2c($sp)
/* B52828 800DB688 AFB20028 */  sw    $s2, 0x28($sp)
/* B5282C 800DB68C AFB10024 */  sw    $s1, 0x24($sp)
/* B52830 800DB690 AFB00020 */  sw    $s0, 0x20($sp)
/* B52834 800DB694 AFA60038 */  sw    $a2, 0x38($sp)
/* B52838 800DB698 90AE0003 */  lbu   $t6, 3($a1)
/* B5283C 800DB69C 87B9003A */  lh    $t9, 0x3a($sp)
/* B52840 800DB6A0 3C090800 */  lui   $t1, (0x08000C80 >> 16) # lui $t1, 0x800
/* B52844 800DB6A4 000E78C0 */  sll   $t7, $t6, 3
/* B52848 800DB6A8 01EE7821 */  addu  $t7, $t7, $t6
/* B5284C 800DB6AC 000F7880 */  sll   $t7, $t7, 2
/* B52850 800DB6B0 01EE7823 */  subu  $t7, $t7, $t6
/* B52854 800DB6B4 001940C0 */  sll   $t0, $t9, 3
/* B52858 800DB6B8 000F7880 */  sll   $t7, $t7, 2
/* B5285C 800DB6BC 01194023 */  subu  $t0, $t0, $t9
/* B52860 800DB6C0 00084080 */  sll   $t0, $t0, 2
/* B52864 800DB6C4 00AFC021 */  addu  $t8, $a1, $t7
/* B52868 800DB6C8 35290C80 */  ori   $t1, (0x08000C80 & 0xFFFF) # ori $t1, $t1, 0xc80
/* B5286C 800DB6CC 03088821 */  addu  $s1, $t8, $t0
/* B52870 800DB6D0 AC890000 */  sw    $t1, ($a0)
/* B52874 800DB6D4 962A0058 */  lhu   $t2, 0x58($s1)
/* B52878 800DB6D8 3C010720 */  lui   $at, 0x720
/* B5287C 800DB6DC 24830008 */  addiu $v1, $a0, 8
/* B52880 800DB6E0 000A5840 */  sll   $t3, $t2, 1
/* B52884 800DB6E4 316CFFFF */  andi  $t4, $t3, 0xffff
/* B52888 800DB6E8 01816825 */  or    $t5, $t4, $at
/* B5288C 800DB6EC AC8D0004 */  sw    $t5, 4($a0)
/* B52890 800DB6F0 90AF0000 */  lbu   $t7, ($a1)
/* B52894 800DB6F4 96290056 */  lhu   $t1, 0x56($s1)
/* B52898 800DB6F8 3C010500 */  lui   $at, 0x500
/* B5289C 800DB6FC 000FCC00 */  sll   $t9, $t7, 0x10
/* B528A0 800DB700 0321C025 */  or    $t8, $t9, $at
/* B528A4 800DB704 03095025 */  or    $t2, $t8, $t1
/* B528A8 800DB708 AC6A0000 */  sw    $t2, ($v1)
/* B528AC 800DB70C 8CAB0038 */  lw    $t3, 0x38($a1)
/* B528B0 800DB710 00A09025 */  move  $s2, $a1
/* B528B4 800DB714 26310040 */  addiu $s1, $s1, 0x40
/* B528B8 800DB718 AC6B0004 */  sw    $t3, 4($v1)
/* B528BC 800DB71C 8E4C0028 */  lw    $t4, 0x28($s2)
/* B528C0 800DB720 86270010 */  lh    $a3, 0x10($s1)
/* B528C4 800DB724 9626000E */  lhu   $a2, 0xe($s1)
/* B528C8 800DB728 24640008 */  addiu $a0, $v1, 8
/* B528CC 800DB72C 24050720 */  li    $a1, 1824
/* B528D0 800DB730 0C037038 */  jal   func_800DC0E0
/* B528D4 800DB734 AFAC0010 */   sw    $t4, 0x10($sp)
/* B528D8 800DB738 86270012 */  lh    $a3, 0x12($s1)
/* B528DC 800DB73C 00408025 */  move  $s0, $v0
/* B528E0 800DB740 00402025 */  move  $a0, $v0
/* B528E4 800DB744 50E0000A */  beql  $a3, $zero, .L800DB770
/* B528E8 800DB748 3C0E0800 */   lui   $t6, 0x800
/* B528EC 800DB74C 86250010 */  lh    $a1, 0x10($s1)
/* B528F0 800DB750 8E4D0028 */  lw    $t5, 0x28($s2)
/* B528F4 800DB754 00003025 */  move  $a2, $zero
/* B528F8 800DB758 24A50720 */  addiu $a1, $a1, 0x720
/* B528FC 800DB75C 30A5FFFF */  andi  $a1, $a1, 0xffff
/* B52900 800DB760 0C037038 */  jal   func_800DC0E0
/* B52904 800DB764 AFAD0010 */   sw    $t5, 0x10($sp)
/* B52908 800DB768 00408025 */  move  $s0, $v0
/* B5290C 800DB76C 3C0E0800 */  lui   $t6, (0x08000E20 >> 16) # lui $t6, 0x800
.L800DB770:
/* B52910 800DB770 35CE0E20 */  ori   $t6, (0x08000E20 & 0xFFFF) # ori $t6, $t6, 0xe20
/* B52914 800DB774 02001025 */  move  $v0, $s0
/* B52918 800DB778 AC4E0000 */  sw    $t6, ($v0)
/* B5291C 800DB77C 962F0018 */  lhu   $t7, 0x18($s1)
/* B52920 800DB780 3C010720 */  lui   $at, 0x720
/* B52924 800DB784 26030008 */  addiu $v1, $s0, 8
/* B52928 800DB788 000FC840 */  sll   $t9, $t7, 1
/* B5292C 800DB78C 3328FFFF */  andi  $t0, $t9, 0xffff
/* B52930 800DB790 0101C025 */  or    $t8, $t0, $at
/* B52934 800DB794 AC580004 */  sw    $t8, 4($v0)
/* B52938 800DB798 924A0000 */  lbu   $t2, ($s2)
/* B5293C 800DB79C 962E0016 */  lhu   $t6, 0x16($s1)
/* B52940 800DB7A0 3C010500 */  lui   $at, 0x500
/* B52944 800DB7A4 000A5C00 */  sll   $t3, $t2, 0x10
/* B52948 800DB7A8 01616025 */  or    $t4, $t3, $at
/* B5294C 800DB7AC 018E7825 */  or    $t7, $t4, $t6
/* B52950 800DB7B0 AC6F0000 */  sw    $t7, ($v1)
/* B52954 800DB7B4 8E59003C */  lw    $t9, 0x3c($s2)
/* B52958 800DB7B8 24640008 */  addiu $a0, $v1, 8
/* B5295C 800DB7BC 24050720 */  li    $a1, 1824
/* B52960 800DB7C0 AC790004 */  sw    $t9, 4($v1)
/* B52964 800DB7C4 8E48002C */  lw    $t0, 0x2c($s2)
/* B52968 800DB7C8 86270010 */  lh    $a3, 0x10($s1)
/* B5296C 800DB7CC 9626000E */  lhu   $a2, 0xe($s1)
/* B52970 800DB7D0 0C037038 */  jal   func_800DC0E0
/* B52974 800DB7D4 AFA80010 */   sw    $t0, 0x10($sp)
/* B52978 800DB7D8 86270012 */  lh    $a3, 0x12($s1)
/* B5297C 800DB7DC 00408025 */  move  $s0, $v0
/* B52980 800DB7E0 00402025 */  move  $a0, $v0
/* B52984 800DB7E4 50E0000A */  beql  $a3, $zero, .L800DB810
/* B52988 800DB7E8 8FBF002C */   lw    $ra, 0x2c($sp)
/* B5298C 800DB7EC 86250010 */  lh    $a1, 0x10($s1)
/* B52990 800DB7F0 8E58002C */  lw    $t8, 0x2c($s2)
/* B52994 800DB7F4 00003025 */  move  $a2, $zero
/* B52998 800DB7F8 24A50720 */  addiu $a1, $a1, 0x720
/* B5299C 800DB7FC 30A5FFFF */  andi  $a1, $a1, 0xffff
/* B529A0 800DB800 0C037038 */  jal   func_800DC0E0
/* B529A4 800DB804 AFB80010 */   sw    $t8, 0x10($sp)
/* B529A8 800DB808 00408025 */  move  $s0, $v0
/* B529AC 800DB80C 8FBF002C */  lw    $ra, 0x2c($sp)
.L800DB810:
/* B529B0 800DB810 02001025 */  move  $v0, $s0
/* B529B4 800DB814 8FB00020 */  lw    $s0, 0x20($sp)
/* B529B8 800DB818 8FB10024 */  lw    $s1, 0x24($sp)
/* B529BC 800DB81C 8FB20028 */  lw    $s2, 0x28($sp)
/* B529C0 800DB820 03E00008 */  jr    $ra
/* B529C4 800DB824 27BD0030 */   addiu $sp, $sp, 0x30

glabel func_800DB828
/* B529C8 800DB828 27BDFFD0 */  addiu $sp, $sp, -0x30
/* B529CC 800DB82C AFBF0024 */  sw    $ra, 0x24($sp)
/* B529D0 800DB830 AFB00020 */  sw    $s0, 0x20($sp)
/* B529D4 800DB834 AFA50034 */  sw    $a1, 0x34($sp)
/* B529D8 800DB838 AFA7003C */  sw    $a3, 0x3c($sp)
/* B529DC 800DB83C 90CE0003 */  lbu   $t6, 3($a2)
/* B529E0 800DB840 87B9003E */  lh    $t9, 0x3e($sp)
/* B529E4 800DB844 00C08025 */  move  $s0, $a2
/* B529E8 800DB848 000E78C0 */  sll   $t7, $t6, 3
/* B529EC 800DB84C 01EE7821 */  addu  $t7, $t7, $t6
/* B529F0 800DB850 000F7880 */  sll   $t7, $t7, 2
/* B529F4 800DB854 01EE7823 */  subu  $t7, $t7, $t6
/* B529F8 800DB858 001968C0 */  sll   $t5, $t9, 3
/* B529FC 800DB85C 000F7880 */  sll   $t7, $t7, 2
/* B52A00 800DB860 01B96823 */  subu  $t5, $t5, $t9
/* B52A04 800DB864 000D6880 */  sll   $t5, $t5, 2
/* B52A08 800DB868 00CFC021 */  addu  $t8, $a2, $t7
/* B52A0C 800DB86C 030D1821 */  addu  $v1, $t8, $t5
/* B52A10 800DB870 94620058 */  lhu   $v0, 0x58($v1)
/* B52A14 800DB874 00A07825 */  move  $t7, $a1
/* B52A18 800DB878 8C68004C */  lw    $t0, 0x4c($v1)
/* B52A1C 800DB87C 000273C0 */  sll   $t6, $v0, 0xf
/* B52A20 800DB880 01C5001A */  div   $zero, $t6, $a1
/* B52A24 800DB884 0000C812 */  mflo  $t9
/* B52A28 800DB888 A4790054 */  sh    $t9, 0x54($v1)
/* B52A2C 800DB88C 8FB80034 */  lw    $t8, 0x34($sp)
/* B52A30 800DB890 31090007 */  andi  $t1, $t0, 7
/* B52A34 800DB894 00094840 */  sll   $t1, $t1, 1
/* B52A38 800DB898 00186BC0 */  sll   $t5, $t8, 0xf
/* B52A3C 800DB89C 01A2001A */  div   $zero, $t5, $v0
/* B52A40 800DB8A0 00094C00 */  sll   $t1, $t1, 0x10
/* B52A44 800DB8A4 00094C03 */  sra   $t1, $t1, 0x10
/* B52A48 800DB8A8 24630040 */  addiu $v1, $v1, 0x40
/* B52A4C 800DB8AC 15E00002 */  bnez  $t7, .L800DB8B8
/* B52A50 800DB8B0 00000000 */   nop   
/* B52A54 800DB8B4 0007000D */  break 7
.L800DB8B8:
/* B52A58 800DB8B8 2401FFFF */  li    $at, -1
/* B52A5C 800DB8BC 15E10004 */  bne   $t7, $at, .L800DB8D0
/* B52A60 800DB8C0 3C018000 */   lui   $at, 0x8000
/* B52A64 800DB8C4 15C10002 */  bne   $t6, $at, .L800DB8D0
/* B52A68 800DB8C8 00000000 */   nop   
/* B52A6C 800DB8CC 0006000D */  break 6
.L800DB8D0:
/* B52A70 800DB8D0 846F0010 */  lh    $t7, 0x10($v1)
/* B52A74 800DB8D4 14400002 */  bnez  $v0, .L800DB8E0
/* B52A78 800DB8D8 00000000 */   nop   
/* B52A7C 800DB8DC 0007000D */  break 7
.L800DB8E0:
/* B52A80 800DB8E0 2401FFFF */  li    $at, -1
/* B52A84 800DB8E4 14410004 */  bne   $v0, $at, .L800DB8F8
/* B52A88 800DB8E8 3C018000 */   lui   $at, 0x8000
/* B52A8C 800DB8EC 15A10002 */  bne   $t5, $at, .L800DB8F8
/* B52A90 800DB8F0 00000000 */   nop   
/* B52A94 800DB8F4 0006000D */  break 6
.L800DB8F8:
/* B52A98 800DB8F8 012F5021 */  addu  $t2, $t1, $t7
/* B52A9C 800DB8FC 00007012 */  mflo  $t6
/* B52AA0 800DB900 254A000F */  addiu $t2, $t2, 0xf
/* B52AA4 800DB904 A46E0016 */  sh    $t6, 0x16($v1)
/* B52AA8 800DB908 314AFFF0 */  andi  $t2, $t2, 0xfff0
/* B52AAC 800DB90C 2401FFF0 */  li    $at, -16
/* B52AB0 800DB910 000A5400 */  sll   $t2, $t2, 0x10
/* B52AB4 800DB914 000A5403 */  sra   $t2, $t2, 0x10
/* B52AB8 800DB918 A7AA0028 */  sh    $t2, 0x28($sp)
/* B52ABC 800DB91C A7A9002A */  sh    $t1, 0x2a($sp)
/* B52AC0 800DB920 AFA3002C */  sw    $v1, 0x2c($sp)
/* B52AC4 800DB924 AFB00010 */  sw    $s0, 0x10($sp)
/* B52AC8 800DB928 240503E0 */  li    $a1, 992
/* B52ACC 800DB92C 05210003 */  bgez  $t1, .L800DB93C
/* B52AD0 800DB930 0009C843 */   sra   $t9, $t1, 1
/* B52AD4 800DB934 25210001 */  addiu $at, $t1, 1
/* B52AD8 800DB938 0001C843 */  sra   $t9, $at, 1
.L800DB93C:
/* B52ADC 800DB93C 01193023 */  subu  $a2, $t0, $t9
/* B52AE0 800DB940 30C6FFFF */  andi  $a2, $a2, 0xffff
/* B52AE4 800DB944 0C037002 */  jal   func_800DC008
/* B52AE8 800DB948 240701A0 */   li    $a3, 416
/* B52AEC 800DB94C 8FA3002C */  lw    $v1, 0x2c($sp)
/* B52AF0 800DB950 87AA0028 */  lh    $t2, 0x28($sp)
/* B52AF4 800DB954 87A9002A */  lh    $t1, 0x2a($sp)
/* B52AF8 800DB958 84780012 */  lh    $t8, 0x12($v1)
/* B52AFC 800DB95C 254503E0 */  addiu $a1, $t2, 0x3e0
/* B52B00 800DB960 00402025 */  move  $a0, $v0
/* B52B04 800DB964 1300000A */  beqz  $t8, .L800DB990
/* B52B08 800DB968 30A5FFFF */   andi  $a1, $a1, 0xffff
/* B52B0C 800DB96C 240D01A0 */  li    $t5, 416
/* B52B10 800DB970 01AA3823 */  subu  $a3, $t5, $t2
/* B52B14 800DB974 00003025 */  move  $a2, $zero
/* B52B18 800DB978 AFB00010 */  sw    $s0, 0x10($sp)
/* B52B1C 800DB97C AFA3002C */  sw    $v1, 0x2c($sp)
/* B52B20 800DB980 0C037002 */  jal   func_800DC008
/* B52B24 800DB984 A7A9002A */   sh    $t1, 0x2a($sp)
/* B52B28 800DB988 8FA3002C */  lw    $v1, 0x2c($sp)
/* B52B2C 800DB98C 87A9002A */  lh    $t1, 0x2a($sp)
.L800DB990:
/* B52B30 800DB990 252E03E0 */  addiu $t6, $t1, 0x3e0
/* B52B34 800DB994 3C0B0800 */  lui   $t3, 0x800
/* B52B38 800DB998 31CFFFFF */  andi  $t7, $t6, 0xffff
/* B52B3C 800DB99C 01EBC825 */  or    $t9, $t7, $t3
/* B52B40 800DB9A0 AC590000 */  sw    $t9, ($v0)
/* B52B44 800DB9A4 8FA60034 */  lw    $a2, 0x34($sp)
/* B52B48 800DB9A8 3C010C80 */  lui   $at, 0xc80
/* B52B4C 800DB9AC 3C0C0500 */  lui   $t4, 0x500
/* B52B50 800DB9B0 00063040 */  sll   $a2, $a2, 1
/* B52B54 800DB9B4 30C6FFFF */  andi  $a2, $a2, 0xffff
/* B52B58 800DB9B8 00C1C025 */  or    $t8, $a2, $at
/* B52B5C 800DB9BC AC580004 */  sw    $t8, 4($v0)
/* B52B60 800DB9C0 920E0000 */  lbu   $t6, ($s0)
/* B52B64 800DB9C4 946D0014 */  lhu   $t5, 0x14($v1)
/* B52B68 800DB9C8 24470008 */  addiu $a3, $v0, 8
/* B52B6C 800DB9CC 000E7C00 */  sll   $t7, $t6, 0x10
/* B52B70 800DB9D0 01ECC825 */  or    $t9, $t7, $t4
/* B52B74 800DB9D4 032D7025 */  or    $t6, $t9, $t5
/* B52B78 800DB9D8 ACEE0000 */  sw    $t6, ($a3)
/* B52B7C 800DB9DC 8E0F0030 */  lw    $t7, 0x30($s0)
/* B52B80 800DB9E0 25380580 */  addiu $t8, $t1, 0x580
/* B52B84 800DB9E4 24E80008 */  addiu $t0, $a3, 8
/* B52B88 800DB9E8 3319FFFF */  andi  $t9, $t8, 0xffff
/* B52B8C 800DB9EC 3C010E20 */  lui   $at, 0xe20
/* B52B90 800DB9F0 ACEF0004 */  sw    $t7, 4($a3)
/* B52B94 800DB9F4 00C17025 */  or    $t6, $a2, $at
/* B52B98 800DB9F8 032B6825 */  or    $t5, $t9, $t3
/* B52B9C 800DB9FC AD0D0000 */  sw    $t5, ($t0)
/* B52BA0 800DBA00 AD0E0004 */  sw    $t6, 4($t0)
/* B52BA4 800DBA04 92180000 */  lbu   $t8, ($s0)
/* B52BA8 800DBA08 946F0014 */  lhu   $t7, 0x14($v1)
/* B52BAC 800DBA0C 250A0008 */  addiu $t2, $t0, 8
/* B52BB0 800DBA10 0018CC00 */  sll   $t9, $t8, 0x10
/* B52BB4 800DBA14 032C6825 */  or    $t5, $t9, $t4
/* B52BB8 800DBA18 01AFC025 */  or    $t8, $t5, $t7
/* B52BBC 800DBA1C AD580000 */  sw    $t8, ($t2)
/* B52BC0 800DBA20 8E190034 */  lw    $t9, 0x34($s0)
/* B52BC4 800DBA24 25420008 */  addiu $v0, $t2, 8
/* B52BC8 800DBA28 AD590004 */  sw    $t9, 4($t2)
/* B52BCC 800DBA2C 8FBF0024 */  lw    $ra, 0x24($sp)
/* B52BD0 800DBA30 8FB00020 */  lw    $s0, 0x20($sp)
/* B52BD4 800DBA34 27BD0030 */  addiu $sp, $sp, 0x30
/* B52BD8 800DBA38 03E00008 */  jr    $ra
/* B52BDC 800DBA3C 00000000 */   nop   

glabel func_800DBA40
/* B52BE0 800DBA40 8CCE0270 */  lw    $t6, 0x270($a2)
/* B52BE4 800DBA44 00801025 */  move  $v0, $a0
/* B52BE8 800DBA48 30AFFFFF */  andi  $t7, $a1, 0xffff
/* B52BEC 800DBA4C 11C00010 */  beqz  $t6, .L800DBA90
/* B52BF0 800DBA50 3C010702 */   lui   $at, 0x702
/* B52BF4 800DBA54 01E1C025 */  or    $t8, $t7, $at
/* B52BF8 800DBA58 AC580000 */  sw    $t8, ($v0)
/* B52BFC 800DBA5C 8CD90270 */  lw    $t9, 0x270($a2)
/* B52C00 800DBA60 3C010700 */  lui   $at, 0x700
/* B52C04 800DBA64 24840008 */  addiu $a0, $a0, 8
/* B52C08 800DBA68 AC590004 */  sw    $t9, 4($v0)
/* B52C0C 800DBA6C 90C90000 */  lbu   $t1, ($a2)
/* B52C10 800DBA70 00801825 */  move  $v1, $a0
/* B52C14 800DBA74 24840008 */  addiu $a0, $a0, 8
/* B52C18 800DBA78 00095400 */  sll   $t2, $t1, 0x10
/* B52C1C 800DBA7C 01415825 */  or    $t3, $t2, $at
/* B52C20 800DBA80 356C0C80 */  ori   $t4, $t3, 0xc80
/* B52C24 800DBA84 AC6C0000 */  sw    $t4, ($v1)
/* B52C28 800DBA88 8CCD0278 */  lw    $t5, 0x278($a2)
/* B52C2C 800DBA8C AC6D0004 */  sw    $t5, 4($v1)
.L800DBA90:
/* B52C30 800DBA90 8CCE0274 */  lw    $t6, 0x274($a2)
/* B52C34 800DBA94 00801025 */  move  $v0, $a0
/* B52C38 800DBA98 30AFFFFF */  andi  $t7, $a1, 0xffff
/* B52C3C 800DBA9C 11C00010 */  beqz  $t6, .L800DBAE0
/* B52C40 800DBAA0 3C010702 */   lui   $at, 0x702
/* B52C44 800DBAA4 01E1C025 */  or    $t8, $t7, $at
/* B52C48 800DBAA8 AC580000 */  sw    $t8, ($v0)
/* B52C4C 800DBAAC 8CD90274 */  lw    $t9, 0x274($a2)
/* B52C50 800DBAB0 3C010700 */  lui   $at, 0x700
/* B52C54 800DBAB4 24840008 */  addiu $a0, $a0, 8
/* B52C58 800DBAB8 AC590004 */  sw    $t9, 4($v0)
/* B52C5C 800DBABC 90C90000 */  lbu   $t1, ($a2)
/* B52C60 800DBAC0 00801825 */  move  $v1, $a0
/* B52C64 800DBAC4 24840008 */  addiu $a0, $a0, 8
/* B52C68 800DBAC8 00095400 */  sll   $t2, $t1, 0x10
/* B52C6C 800DBACC 01415825 */  or    $t3, $t2, $at
/* B52C70 800DBAD0 356C0E20 */  ori   $t4, $t3, 0xe20
/* B52C74 800DBAD4 AC6C0000 */  sw    $t4, ($v1)
/* B52C78 800DBAD8 8CCD027C */  lw    $t5, 0x27c($a2)
/* B52C7C 800DBADC AC6D0004 */  sw    $t5, 4($v1)
.L800DBAE0:
/* B52C80 800DBAE0 03E00008 */  jr    $ra
/* B52C84 800DBAE4 00801025 */   move  $v0, $a0

glabel func_800DBAE8
/* B52C88 800DBAE8 27BDFFD8 */  addiu $sp, $sp, -0x28
/* B52C8C 800DBAEC AFBF0014 */  sw    $ra, 0x14($sp)
/* B52C90 800DBAF0 AFA5002C */  sw    $a1, 0x2c($sp)
/* B52C94 800DBAF4 AFA60030 */  sw    $a2, 0x30($sp)
/* B52C98 800DBAF8 80AF0005 */  lb    $t7, 5($a1)
/* B52C9C 800DBAFC 3C088017 */  lui   $t0, %hi(gAudioContext) # $t0, 0x8017
/* B52CA0 800DBB00 2508F180 */  addiu $t0, %lo(gAudioContext) # addiu $t0, $t0, -0xe80
/* B52CA4 800DBB04 000FC080 */  sll   $t8, $t7, 2
/* B52CA8 800DBB08 030FC023 */  subu  $t8, $t8, $t7
/* B52CAC 800DBB0C 0018C080 */  sll   $t8, $t8, 2
/* B52CB0 800DBB10 030FC023 */  subu  $t8, $t8, $t7
/* B52CB4 800DBB14 0018C0C0 */  sll   $t8, $t8, 3
/* B52CB8 800DBB18 030FC021 */  addu  $t8, $t8, $t7
/* B52CBC 800DBB1C 0018C0C0 */  sll   $t8, $t8, 3
/* B52CC0 800DBB20 27190018 */  addiu $t9, $t8, 0x18
/* B52CC4 800DBB24 03283821 */  addu  $a3, $t9, $t0
/* B52CC8 800DBB28 90E90004 */  lbu   $t1, 4($a3)
/* B52CCC 800DBB2C 24010001 */  li    $at, 1
/* B52CD0 800DBB30 00E02825 */  move  $a1, $a3
/* B52CD4 800DBB34 15210012 */  bne   $t1, $at, .L800DBB80
/* B52CD8 800DBB38 87A60032 */   lh    $a2, 0x32($sp)
/* B52CDC 800DBB3C AFA6001C */  sw    $a2, 0x1c($sp)
/* B52CE0 800DBB40 0C036CCC */  jal   func_800DB330
/* B52CE4 800DBB44 AFA70024 */   sw    $a3, 0x24($sp)
/* B52CE8 800DBB48 8FAA002C */  lw    $t2, 0x2c($sp)
/* B52CEC 800DBB4C 3C010C34 */  lui   $at, 0xc34
/* B52CF0 800DBB50 3C0E0C80 */  lui   $t6, (0x0C8003E0 >> 16) # lui $t6, 0xc80
/* B52CF4 800DBB54 854B0008 */  lh    $t3, 8($t2)
/* B52CF8 800DBB58 8FA6001C */  lw    $a2, 0x1c($sp)
/* B52CFC 800DBB5C 8FA50024 */  lw    $a1, 0x24($sp)
/* B52D00 800DBB60 316CFFFF */  andi  $t4, $t3, 0xffff
/* B52D04 800DBB64 01816825 */  or    $t5, $t4, $at
/* B52D08 800DBB68 35CE03E0 */  ori   $t6, (0x0C8003E0 & 0xFFFF) # ori $t6, $t6, 0x3e0
/* B52D0C 800DBB6C AC4E0004 */  sw    $t6, 4($v0)
/* B52D10 800DBB70 AC4D0000 */  sw    $t5, ($v0)
/* B52D14 800DBB74 0C036CF6 */  jal   func_800DB3D8
/* B52D18 800DBB78 24440008 */   addiu $a0, $v0, 8
/* B52D1C 800DBB7C 00402025 */  move  $a0, $v0
.L800DBB80:
/* B52D20 800DBB80 8FBF0014 */  lw    $ra, 0x14($sp)
/* B52D24 800DBB84 27BD0028 */  addiu $sp, $sp, 0x28
/* B52D28 800DBB88 00801025 */  move  $v0, $a0
/* B52D2C 800DBB8C 03E00008 */  jr    $ra
/* B52D30 800DBB90 00000000 */   nop   

glabel func_800DBB94
/* B52D34 800DBB94 03E00008 */  jr    $ra
/* B52D38 800DBB98 00000000 */   nop   

glabel func_800DBB9C
/* B52D3C 800DBB9C 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* B52D40 800DBBA0 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* B52D44 800DBBA4 00A17024 */  and   $t6, $a1, $at
/* B52D48 800DBBA8 3C010200 */  lui   $at, 0x200
/* B52D4C 800DBBAC 01C17825 */  or    $t7, $t6, $at
/* B52D50 800DBBB0 AC8F0000 */  sw    $t7, ($a0)
/* B52D54 800DBBB4 03E00008 */  jr    $ra
/* B52D58 800DBBB8 AC860004 */   sw    $a2, 4($a0)

glabel func_800DBBBC
/* B52D5C 800DBBBC 03E00008 */  jr    $ra
/* B52D60 800DBBC0 00000000 */   nop   

glabel func_800DBBC4
/* B52D64 800DBBC4 03E00008 */  jr    $ra
/* B52D68 800DBBC8 00000000 */   nop   

glabel func_800DBBCC
/* B52D6C 800DBBCC 03E00008 */  jr    $ra
/* B52D70 800DBBD0 00000000 */   nop   

glabel func_800DBBD4
/* B52D74 800DBBD4 30AE00FF */  andi  $t6, $a1, 0xff
/* B52D78 800DBBD8 000E7C00 */  sll   $t7, $t6, 0x10
/* B52D7C 800DBBDC 3C010C00 */  lui   $at, 0xc00
/* B52D80 800DBBE0 01E1C025 */  or    $t8, $t7, $at
/* B52D84 800DBBE4 30D9FFFF */  andi  $t9, $a2, 0xffff
/* B52D88 800DBBE8 03194025 */  or    $t0, $t8, $t9
/* B52D8C 800DBBEC AC880000 */  sw    $t0, ($a0)
/* B52D90 800DBBF0 8FAB0010 */  lw    $t3, 0x10($sp)
/* B52D94 800DBBF4 00075400 */  sll   $t2, $a3, 0x10
/* B52D98 800DBBF8 316CFFFF */  andi  $t4, $t3, 0xffff
/* B52D9C 800DBBFC 014C6825 */  or    $t5, $t2, $t4
/* B52DA0 800DBC00 03E00008 */  jr    $ra
/* B52DA4 800DBC04 AC8D0004 */   sw    $t5, 4($a0)

glabel func_800DBC08
/* B52DA8 800DBC08 03E00008 */  jr    $ra
/* B52DAC 800DBC0C 00000000 */   nop   

glabel func_800DBC10
/* B52DB0 800DBC10 03E00008 */  jr    $ra
/* B52DB4 800DBC14 00000000 */   nop   

glabel func_800DBC18
/* B52DB8 800DBC18 03E00008 */  jr    $ra
/* B52DBC 800DBC1C 00000000 */   nop   

glabel func_800DBC20
/* B52DC0 800DBC20 30AE00FF */  andi  $t6, $a1, 0xff
/* B52DC4 800DBC24 000E7C00 */  sll   $t7, $t6, 0x10
/* B52DC8 800DBC28 3C010800 */  lui   $at, 0x800
/* B52DCC 800DBC2C 01E1C025 */  or    $t8, $t7, $at
/* B52DD0 800DBC30 30D9FFFF */  andi  $t9, $a2, 0xffff
/* B52DD4 800DBC34 03194025 */  or    $t0, $t8, $t9
/* B52DD8 800DBC38 AC880000 */  sw    $t0, ($a0)
/* B52DDC 800DBC3C 8FAB0010 */  lw    $t3, 0x10($sp)
/* B52DE0 800DBC40 00075400 */  sll   $t2, $a3, 0x10
/* B52DE4 800DBC44 316CFFFF */  andi  $t4, $t3, 0xffff
/* B52DE8 800DBC48 014C6825 */  or    $t5, $t2, $t4
/* B52DEC 800DBC4C 03E00008 */  jr    $ra
/* B52DF0 800DBC50 AC8D0004 */   sw    $t5, 4($a0)

glabel func_800DBC54
/* B52DF4 800DBC54 03E00008 */  jr    $ra
/* B52DF8 800DBC58 00000000 */   nop   

glabel func_800DBC5C
/* B52DFC 800DBC5C 03E00008 */  jr    $ra
/* B52E00 800DBC60 00000000 */   nop   

glabel func_800DBC64
/* B52E04 800DBC64 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* B52E08 800DBC68 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* B52E0C 800DBC6C 00A17024 */  and   $t6, $a1, $at
/* B52E10 800DBC70 3C010A00 */  lui   $at, 0xa00
/* B52E14 800DBC74 0006CC00 */  sll   $t9, $a2, 0x10
/* B52E18 800DBC78 30E8FFFF */  andi  $t0, $a3, 0xffff
/* B52E1C 800DBC7C 01C17825 */  or    $t7, $t6, $at
/* B52E20 800DBC80 03284825 */  or    $t1, $t9, $t0
/* B52E24 800DBC84 AC8F0000 */  sw    $t7, ($a0)
/* B52E28 800DBC88 03E00008 */  jr    $ra
/* B52E2C 800DBC8C AC890004 */   sw    $t1, 4($a0)

glabel func_800DBC90
/* B52E30 800DBC90 03E00008 */  jr    $ra
/* B52E34 800DBC94 00000000 */   nop   

glabel func_800DBC98
/* B52E38 800DBC98 03E00008 */  jr    $ra
/* B52E3C 800DBC9C 00000000 */   nop   

glabel func_800DBCA0
/* B52E40 800DBCA0 03E00008 */  jr    $ra
/* B52E44 800DBCA4 00000000 */   nop   

glabel func_800DBCA8
/* B52E48 800DBCA8 03E00008 */  jr    $ra
/* B52E4C 800DBCAC 00000000 */   nop   

glabel func_800DBCB0
/* B52E50 800DBCB0 30EEFFFF */  andi  $t6, $a3, 0xffff
/* B52E54 800DBCB4 3C011100 */  lui   $at, 0x1100
/* B52E58 800DBCB8 0005CC00 */  sll   $t9, $a1, 0x10
/* B52E5C 800DBCBC 30C8FFFF */  andi  $t0, $a2, 0xffff
/* B52E60 800DBCC0 01C17825 */  or    $t7, $t6, $at
/* B52E64 800DBCC4 03284825 */  or    $t1, $t9, $t0
/* B52E68 800DBCC8 AC8F0000 */  sw    $t7, ($a0)
/* B52E6C 800DBCCC 03E00008 */  jr    $ra
/* B52E70 800DBCD0 AC890004 */   sw    $t1, 4($a0)

glabel func_800DBCD4
/* B52E74 800DBCD4 30AE00FF */  andi  $t6, $a1, 0xff
/* B52E78 800DBCD8 000E7C00 */  sll   $t7, $t6, 0x10
/* B52E7C 800DBCDC 3C011200 */  lui   $at, 0x1200
/* B52E80 800DBCE0 01E1C025 */  or    $t8, $t7, $at
/* B52E84 800DBCE4 30D9FFFF */  andi  $t9, $a2, 0xffff
/* B52E88 800DBCE8 03194025 */  or    $t0, $t8, $t9
/* B52E8C 800DBCEC AC880000 */  sw    $t0, ($a0)
/* B52E90 800DBCF0 8FAB0010 */  lw    $t3, 0x10($sp)
/* B52E94 800DBCF4 00075400 */  sll   $t2, $a3, 0x10
/* B52E98 800DBCF8 316CFFFF */  andi  $t4, $t3, 0xffff
/* B52E9C 800DBCFC 014C6825 */  or    $t5, $t2, $t4
/* B52EA0 800DBD00 03E00008 */  jr    $ra
/* B52EA4 800DBD04 AC8D0004 */   sw    $t5, 4($a0)

glabel func_800DBD08
/* B52EA8 800DBD08 03E00008 */  jr    $ra
/* B52EAC 800DBD0C 00000000 */   nop   

glabel func_800DBD10
/* B52EB0 800DBD10 00067103 */  sra   $t6, $a2, 4
/* B52EB4 800DBD14 31CF00FF */  andi  $t7, $t6, 0xff
/* B52EB8 800DBD18 000FC400 */  sll   $t8, $t7, 0x10
/* B52EBC 800DBD1C 3C011400 */  lui   $at, 0x1400
/* B52EC0 800DBD20 0301C825 */  or    $t9, $t8, $at
/* B52EC4 800DBD24 30A8FFFF */  andi  $t0, $a1, 0xffff
/* B52EC8 800DBD28 03284825 */  or    $t1, $t9, $t0
/* B52ECC 800DBD2C AC890000 */  sw    $t1, ($a0)
/* B52ED0 800DBD30 03E00008 */  jr    $ra
/* B52ED4 800DBD34 AC870004 */   sw    $a3, 4($a0)

glabel func_800DBD38
/* B52ED8 800DBD38 00067103 */  sra   $t6, $a2, 4
/* B52EDC 800DBD3C 31CF00FF */  andi  $t7, $t6, 0xff
/* B52EE0 800DBD40 000FC400 */  sll   $t8, $t7, 0x10
/* B52EE4 800DBD44 3C011500 */  lui   $at, 0x1500
/* B52EE8 800DBD48 0301C825 */  or    $t9, $t8, $at
/* B52EEC 800DBD4C 30A8FFFF */  andi  $t0, $a1, 0xffff
/* B52EF0 800DBD50 03284825 */  or    $t1, $t9, $t0
/* B52EF4 800DBD54 AC890000 */  sw    $t1, ($a0)
/* B52EF8 800DBD58 03E00008 */  jr    $ra
/* B52EFC 800DBD5C AC870004 */   sw    $a3, 4($a0)

glabel func_800DBD60
/* B52F00 800DBD60 0005C400 */  sll   $t8, $a1, 0x10
/* B52F04 800DBD64 30D9FFFF */  andi  $t9, $a2, 0xffff
/* B52F08 800DBD68 3C0E1600 */  lui   $t6, 0x1600
/* B52F0C 800DBD6C 03194025 */  or    $t0, $t8, $t9
/* B52F10 800DBD70 AC8E0000 */  sw    $t6, ($a0)
/* B52F14 800DBD74 03E00008 */  jr    $ra
/* B52F18 800DBD78 AC880004 */   sw    $t0, 4($a0)

glabel func_800DBD7C
/* B52F1C 800DBD7C 03E00008 */  jr    $ra
/* B52F20 800DBD80 00000000 */   nop   

glabel func_800DBD84
/* B52F24 800DBD84 03E00008 */  jr    $ra
/* B52F28 800DBD88 00000000 */   nop   

glabel func_800DBD8C
/* B52F2C 800DBD8C 03E00008 */  jr    $ra
/* B52F30 800DBD90 00000000 */   nop   

glabel func_800DBD94
/* B52F34 800DBD94 30AE00FF */  andi  $t6, $a1, 0xff
/* B52F38 800DBD98 000E7C00 */  sll   $t7, $t6, 0x10
/* B52F3C 800DBD9C 3C011700 */  lui   $at, 0x1700
/* B52F40 800DBDA0 01E1C025 */  or    $t8, $t7, $at
/* B52F44 800DBDA4 AC980000 */  sw    $t8, ($a0)
/* B52F48 800DBDA8 03E00008 */  jr    $ra
/* B52F4C 800DBDAC AC860004 */   sw    $a2, 4($a0)

glabel func_800DBDB0
/* B52F50 800DBDB0 8FB90010 */  lw    $t9, 0x10($sp)
/* B52F54 800DBDB4 30AE00FF */  andi  $t6, $a1, 0xff
/* B52F58 800DBDB8 000E7C00 */  sll   $t7, $t6, 0x10
/* B52F5C 800DBDBC 3C010E00 */  lui   $at, 0xe00
/* B52F60 800DBDC0 01E1C025 */  or    $t8, $t7, $at
/* B52F64 800DBDC4 00065C00 */  sll   $t3, $a2, 0x10
/* B52F68 800DBDC8 30ECFFFF */  andi  $t4, $a3, 0xffff
/* B52F6C 800DBDCC 3328FFFF */  andi  $t0, $t9, 0xffff
/* B52F70 800DBDD0 03084825 */  or    $t1, $t8, $t0
/* B52F74 800DBDD4 016C6825 */  or    $t5, $t3, $t4
/* B52F78 800DBDD8 AC890000 */  sw    $t1, ($a0)
/* B52F7C 800DBDDC 03E00008 */  jr    $ra
/* B52F80 800DBDE0 AC8D0004 */   sw    $t5, 4($a0)

glabel func_800DBDE4
/* B52F84 800DBDE4 8FAE0010 */  lw    $t6, 0x10($sp)
/* B52F88 800DBDE8 3C011900 */  lui   $at, 0x1900
/* B52F8C 800DBDEC 30E8FFFF */  andi  $t0, $a3, 0xffff
/* B52F90 800DBDF0 31CF00FF */  andi  $t7, $t6, 0xff
/* B52F94 800DBDF4 000FC400 */  sll   $t8, $t7, 0x10
/* B52F98 800DBDF8 0301C825 */  or    $t9, $t8, $at
/* B52F9C 800DBDFC 00055C00 */  sll   $t3, $a1, 0x10
/* B52FA0 800DBE00 30CCFFFF */  andi  $t4, $a2, 0xffff
/* B52FA4 800DBE04 03284825 */  or    $t1, $t9, $t0
/* B52FA8 800DBE08 016C6825 */  or    $t5, $t3, $t4
/* B52FAC 800DBE0C AC890000 */  sw    $t1, ($a0)
/* B52FB0 800DBE10 03E00008 */  jr    $ra
/* B52FB4 800DBE14 AC8D0004 */   sw    $t5, 4($a0)

glabel func_800DBE18
/* B52FB8 800DBE18 03E00008 */  jr    $ra
/* B52FBC 800DBE1C 00000000 */   nop   

glabel func_800DBE20
/* B52FC0 800DBE20 03E00008 */  jr    $ra
/* B52FC4 800DBE24 00000000 */   nop   

glabel func_800DBE28
/* B52FC8 800DBE28 03E00008 */  jr    $ra
/* B52FCC 800DBE2C 00000000 */   nop   

glabel func_800DBE30
/* B52FD0 800DBE30 03E00008 */  jr    $ra
/* B52FD4 800DBE34 00000000 */   nop   

glabel func_800DBE38
/* B52FD8 800DBE38 30EEFFFF */  andi  $t6, $a3, 0xffff
/* B52FDC 800DBE3C 3C010300 */  lui   $at, 0x300
/* B52FE0 800DBE40 0005CC00 */  sll   $t9, $a1, 0x10
/* B52FE4 800DBE44 30C8FFFF */  andi  $t0, $a2, 0xffff
/* B52FE8 800DBE48 01C17825 */  or    $t7, $t6, $at
/* B52FEC 800DBE4C 03284825 */  or    $t1, $t9, $t0
/* B52FF0 800DBE50 AC8F0000 */  sw    $t7, ($a0)
/* B52FF4 800DBE54 03E00008 */  jr    $ra
/* B52FF8 800DBE58 AC890004 */   sw    $t1, 4($a0)

glabel func_800DBE5C
/* B52FFC 800DBE5C 03E00008 */  jr    $ra
/* B53000 800DBE60 00000000 */   nop   

glabel func_800DBE64
/* B53004 800DBE64 03E00008 */  jr    $ra
/* B53008 800DBE68 00000000 */   nop   

glabel func_800DBE6C
/* B5300C 800DBE6C 03E00008 */  jr    $ra
/* B53010 800DBE70 00000000 */   nop   

glabel func_800DBE74
/* B53014 800DBE74 30AE00FF */  andi  $t6, $a1, 0xff
/* B53018 800DBE78 000E7C00 */  sll   $t7, $t6, 0x10
/* B5301C 800DBE7C 3C010700 */  lui   $at, 0x700
/* B53020 800DBE80 01E1C025 */  or    $t8, $t7, $at
/* B53024 800DBE84 30D9FFFF */  andi  $t9, $a2, 0xffff
/* B53028 800DBE88 03194025 */  or    $t0, $t8, $t9
/* B5302C 800DBE8C AC880000 */  sw    $t0, ($a0)
/* B53030 800DBE90 03E00008 */  jr    $ra
/* B53034 800DBE94 AC870004 */   sw    $a3, 4($a0)

glabel func_800DBE98
/* B53038 800DBE98 30AEFFFF */  andi  $t6, $a1, 0xffff
/* B5303C 800DBE9C 3C010702 */  lui   $at, 0x702
/* B53040 800DBEA0 01C17825 */  or    $t7, $t6, $at
/* B53044 800DBEA4 AC8F0000 */  sw    $t7, ($a0)
/* B53048 800DBEA8 03E00008 */  jr    $ra
/* B5304C 800DBEAC AC860004 */   sw    $a2, 4($a0)

glabel func_800DBEB0
/* B53050 800DBEB0 27BDFFD8 */  addiu $sp, $sp, -0x28
/* B53054 800DBEB4 AFBF001C */  sw    $ra, 0x1c($sp)
/* B53058 800DBEB8 AFA5002C */  sw    $a1, 0x2c($sp)
/* B5305C 800DBEBC AFA60030 */  sw    $a2, 0x30($sp)
/* B53060 800DBEC0 AFA70034 */  sw    $a3, 0x34($sp)
/* B53064 800DBEC4 90CF0003 */  lbu   $t7, 3($a2)
/* B53068 800DBEC8 87A80036 */  lh    $t0, 0x36($sp)
/* B5306C 800DBECC 00C07025 */  move  $t6, $a2
/* B53070 800DBED0 000FC0C0 */  sll   $t8, $t7, 3
/* B53074 800DBED4 030FC021 */  addu  $t8, $t8, $t7
/* B53078 800DBED8 0018C080 */  sll   $t8, $t8, 2
/* B5307C 800DBEDC 030FC023 */  subu  $t8, $t8, $t7
/* B53080 800DBEE0 000848C0 */  sll   $t1, $t0, 3
/* B53084 800DBEE4 0018C080 */  sll   $t8, $t8, 2
/* B53088 800DBEE8 01284823 */  subu  $t1, $t1, $t0
/* B5308C 800DBEEC 00094880 */  sll   $t1, $t1, 2
/* B53090 800DBEF0 00D8C821 */  addu  $t9, $a2, $t8
/* B53094 800DBEF4 03291821 */  addu  $v1, $t9, $t1
/* B53098 800DBEF8 24630040 */  addiu $v1, $v1, 0x40
/* B5309C 800DBEFC 84670010 */  lh    $a3, 0x10($v1)
/* B530A0 800DBF00 9466000E */  lhu   $a2, 0xe($v1)
/* B530A4 800DBF04 AFA30024 */  sw    $v1, 0x24($sp)
/* B530A8 800DBF08 AFAE0010 */  sw    $t6, 0x10($sp)
/* B530AC 800DBF0C 0C037002 */  jal   func_800DC008
/* B530B0 800DBF10 24050C80 */   li    $a1, 3200
/* B530B4 800DBF14 8FA30024 */  lw    $v1, 0x24($sp)
/* B530B8 800DBF18 00402025 */  move  $a0, $v0
/* B530BC 800DBF1C 8FAA0030 */  lw    $t2, 0x30($sp)
/* B530C0 800DBF20 84670012 */  lh    $a3, 0x12($v1)
/* B530C4 800DBF24 50E00009 */  beql  $a3, $zero, .L800DBF4C
/* B530C8 800DBF28 8FBF001C */   lw    $ra, 0x1c($sp)
/* B530CC 800DBF2C 84650010 */  lh    $a1, 0x10($v1)
/* B530D0 800DBF30 AFAA0010 */  sw    $t2, 0x10($sp)
/* B530D4 800DBF34 00003025 */  move  $a2, $zero
/* B530D8 800DBF38 24A50C80 */  addiu $a1, $a1, 0xc80
/* B530DC 800DBF3C 0C037002 */  jal   func_800DC008
/* B530E0 800DBF40 30A5FFFF */   andi  $a1, $a1, 0xffff
/* B530E4 800DBF44 00402025 */  move  $a0, $v0
/* B530E8 800DBF48 8FBF001C */  lw    $ra, 0x1c($sp)
.L800DBF4C:
/* B530EC 800DBF4C 27BD0028 */  addiu $sp, $sp, 0x28
/* B530F0 800DBF50 00801025 */  move  $v0, $a0
/* B530F4 800DBF54 03E00008 */  jr    $ra
/* B530F8 800DBF58 00000000 */   nop   

glabel func_800DBF5C
/* B530FC 800DBF5C 27BDFFD8 */  addiu $sp, $sp, -0x28
/* B53100 800DBF60 AFBF001C */  sw    $ra, 0x1c($sp)
/* B53104 800DBF64 AFA5002C */  sw    $a1, 0x2c($sp)
/* B53108 800DBF68 AFA60030 */  sw    $a2, 0x30($sp)
/* B5310C 800DBF6C AFA70034 */  sw    $a3, 0x34($sp)
/* B53110 800DBF70 90CF0003 */  lbu   $t7, 3($a2)
/* B53114 800DBF74 87A80036 */  lh    $t0, 0x36($sp)
/* B53118 800DBF78 00C07025 */  move  $t6, $a2
/* B5311C 800DBF7C 000FC0C0 */  sll   $t8, $t7, 3
/* B53120 800DBF80 030FC021 */  addu  $t8, $t8, $t7
/* B53124 800DBF84 0018C080 */  sll   $t8, $t8, 2
/* B53128 800DBF88 030FC023 */  subu  $t8, $t8, $t7
/* B5312C 800DBF8C 000848C0 */  sll   $t1, $t0, 3
/* B53130 800DBF90 0018C080 */  sll   $t8, $t8, 2
/* B53134 800DBF94 01284823 */  subu  $t1, $t1, $t0
/* B53138 800DBF98 00094880 */  sll   $t1, $t1, 2
/* B5313C 800DBF9C 00D8C821 */  addu  $t9, $a2, $t8
/* B53140 800DBFA0 03291821 */  addu  $v1, $t9, $t1
/* B53144 800DBFA4 24630158 */  addiu $v1, $v1, 0x158
/* B53148 800DBFA8 84670010 */  lh    $a3, 0x10($v1)
/* B5314C 800DBFAC 9466000E */  lhu   $a2, 0xe($v1)
/* B53150 800DBFB0 AFA30024 */  sw    $v1, 0x24($sp)
/* B53154 800DBFB4 AFAE0010 */  sw    $t6, 0x10($sp)
/* B53158 800DBFB8 0C037002 */  jal   func_800DC008
/* B5315C 800DBFBC 24050C80 */   li    $a1, 3200
/* B53160 800DBFC0 8FA30024 */  lw    $v1, 0x24($sp)
/* B53164 800DBFC4 00402025 */  move  $a0, $v0
/* B53168 800DBFC8 8FAA0030 */  lw    $t2, 0x30($sp)
/* B5316C 800DBFCC 84670012 */  lh    $a3, 0x12($v1)
/* B53170 800DBFD0 50E00009 */  beql  $a3, $zero, .L800DBFF8
/* B53174 800DBFD4 8FBF001C */   lw    $ra, 0x1c($sp)
/* B53178 800DBFD8 84650010 */  lh    $a1, 0x10($v1)
/* B5317C 800DBFDC AFAA0010 */  sw    $t2, 0x10($sp)
/* B53180 800DBFE0 00003025 */  move  $a2, $zero
/* B53184 800DBFE4 24A50C80 */  addiu $a1, $a1, 0xc80
/* B53188 800DBFE8 0C037002 */  jal   func_800DC008
/* B5318C 800DBFEC 30A5FFFF */   andi  $a1, $a1, 0xffff
/* B53190 800DBFF0 00402025 */  move  $a0, $v0
/* B53194 800DBFF4 8FBF001C */  lw    $ra, 0x1c($sp)
.L800DBFF8:
/* B53198 800DBFF8 27BD0028 */  addiu $sp, $sp, 0x28
/* B5319C 800DBFFC 00801025 */  move  $v0, $a0
/* B531A0 800DC000 03E00008 */  jr    $ra
/* B531A4 800DC004 00000000 */   nop   

glabel func_800DC008
/* B531A8 800DC008 00074103 */  sra   $t0, $a3, 4
/* B531AC 800DC00C 310800FF */  andi  $t0, $t0, 0xff
/* B531B0 800DC010 00084400 */  sll   $t0, $t0, 0x10
/* B531B4 800DC014 3C011400 */  lui   $at, 0x1400
/* B531B8 800DC018 01014025 */  or    $t0, $t0, $at
/* B531BC 800DC01C 30AEFFFF */  andi  $t6, $a1, 0xffff
/* B531C0 800DC020 AFA50004 */  sw    $a1, 4($sp)
/* B531C4 800DC024 AFA60008 */  sw    $a2, 8($sp)
/* B531C8 800DC028 010E7825 */  or    $t7, $t0, $t6
/* B531CC 800DC02C AC8F0000 */  sw    $t7, ($a0)
/* B531D0 800DC030 8FB80010 */  lw    $t8, 0x10($sp)
/* B531D4 800DC034 30C6FFFF */  andi  $a2, $a2, 0xffff
/* B531D8 800DC038 00064840 */  sll   $t1, $a2, 1
/* B531DC 800DC03C 8F190028 */  lw    $t9, 0x28($t8)
/* B531E0 800DC040 24AC01A0 */  addiu $t4, $a1, 0x1a0
/* B531E4 800DC044 318DFFFF */  andi  $t5, $t4, 0xffff
/* B531E8 800DC048 03295821 */  addu  $t3, $t9, $t1
/* B531EC 800DC04C AC8B0004 */  sw    $t3, 4($a0)
/* B531F0 800DC050 248A0008 */  addiu $t2, $a0, 8
/* B531F4 800DC054 010D7025 */  or    $t6, $t0, $t5
/* B531F8 800DC058 AD4E0000 */  sw    $t6, ($t2)
/* B531FC 800DC05C 8FAF0010 */  lw    $t7, 0x10($sp)
/* B53200 800DC060 25420008 */  addiu $v0, $t2, 8
/* B53204 800DC064 8DF8002C */  lw    $t8, 0x2c($t7)
/* B53208 800DC068 0309C821 */  addu  $t9, $t8, $t1
/* B5320C 800DC06C 03E00008 */  jr    $ra
/* B53210 800DC070 AD590004 */   sw    $t9, 4($t2)

glabel func_800DC074
/* B53214 800DC074 00074103 */  sra   $t0, $a3, 4
/* B53218 800DC078 310800FF */  andi  $t0, $t0, 0xff
/* B5321C 800DC07C 00084400 */  sll   $t0, $t0, 0x10
/* B53220 800DC080 3C011500 */  lui   $at, 0x1500
/* B53224 800DC084 01014025 */  or    $t0, $t0, $at
/* B53228 800DC088 30AEFFFF */  andi  $t6, $a1, 0xffff
/* B5322C 800DC08C AFA50004 */  sw    $a1, 4($sp)
/* B53230 800DC090 AFA60008 */  sw    $a2, 8($sp)
/* B53234 800DC094 010E7825 */  or    $t7, $t0, $t6
/* B53238 800DC098 AC8F0000 */  sw    $t7, ($a0)
/* B5323C 800DC09C 8FB80010 */  lw    $t8, 0x10($sp)
/* B53240 800DC0A0 30C6FFFF */  andi  $a2, $a2, 0xffff
/* B53244 800DC0A4 00064840 */  sll   $t1, $a2, 1
/* B53248 800DC0A8 8F190028 */  lw    $t9, 0x28($t8)
/* B5324C 800DC0AC 24AC01A0 */  addiu $t4, $a1, 0x1a0
/* B53250 800DC0B0 318DFFFF */  andi  $t5, $t4, 0xffff
/* B53254 800DC0B4 03295821 */  addu  $t3, $t9, $t1
/* B53258 800DC0B8 AC8B0004 */  sw    $t3, 4($a0)
/* B5325C 800DC0BC 248A0008 */  addiu $t2, $a0, 8
/* B53260 800DC0C0 010D7025 */  or    $t6, $t0, $t5
/* B53264 800DC0C4 AD4E0000 */  sw    $t6, ($t2)
/* B53268 800DC0C8 8FAF0010 */  lw    $t7, 0x10($sp)
/* B5326C 800DC0CC 25420008 */  addiu $v0, $t2, 8
/* B53270 800DC0D0 8DF8002C */  lw    $t8, 0x2c($t7)
/* B53274 800DC0D4 0309C821 */  addu  $t9, $t8, $t1
/* B53278 800DC0D8 03E00008 */  jr    $ra
/* B5327C 800DC0DC AD590004 */   sw    $t9, 4($t2)

glabel func_800DC0E0
/* B53280 800DC0E0 00077103 */  sra   $t6, $a3, 4
/* B53284 800DC0E4 31CF00FF */  andi  $t7, $t6, 0xff
/* B53288 800DC0E8 000FC400 */  sll   $t8, $t7, 0x10
/* B5328C 800DC0EC 3C011500 */  lui   $at, 0x1500
/* B53290 800DC0F0 0301C825 */  or    $t9, $t8, $at
/* B53294 800DC0F4 30A8FFFF */  andi  $t0, $a1, 0xffff
/* B53298 800DC0F8 AFA50004 */  sw    $a1, 4($sp)
/* B5329C 800DC0FC AFA60008 */  sw    $a2, 8($sp)
/* B532A0 800DC100 03284825 */  or    $t1, $t9, $t0
/* B532A4 800DC104 AC890000 */  sw    $t1, ($a0)
/* B532A8 800DC108 8FAB0010 */  lw    $t3, 0x10($sp)
/* B532AC 800DC10C 30C6FFFF */  andi  $a2, $a2, 0xffff
/* B532B0 800DC110 00065040 */  sll   $t2, $a2, 1
/* B532B4 800DC114 014B6021 */  addu  $t4, $t2, $t3
/* B532B8 800DC118 AC8C0004 */  sw    $t4, 4($a0)
/* B532BC 800DC11C 03E00008 */  jr    $ra
/* B532C0 800DC120 24820008 */   addiu $v0, $a0, 8

glabel func_800DC124
/* B532C4 800DC124 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B532C8 800DC128 AFBF0014 */  sw    $ra, 0x14($sp)
/* B532CC 800DC12C AFA70024 */  sw    $a3, 0x24($sp)
/* B532D0 800DC130 90CE0004 */  lbu   $t6, 4($a2)
/* B532D4 800DC134 00073C00 */  sll   $a3, $a3, 0x10
/* B532D8 800DC138 24010001 */  li    $at, 1
/* B532DC 800DC13C 15C10004 */  bne   $t6, $at, .L800DC150
/* B532E0 800DC140 00073C03 */   sra   $a3, $a3, 0x10
/* B532E4 800DC144 0C036FD7 */  jal   func_800DBF5C
/* B532E8 800DC148 00000000 */   nop   
/* B532EC 800DC14C 00402025 */  move  $a0, $v0
.L800DC150:
/* B532F0 800DC150 8FBF0014 */  lw    $ra, 0x14($sp)
/* B532F4 800DC154 27BD0018 */  addiu $sp, $sp, 0x18
/* B532F8 800DC158 00801025 */  move  $v0, $a0
/* B532FC 800DC15C 03E00008 */  jr    $ra
/* B53300 800DC160 00000000 */   nop   

glabel func_800DC164
/* B53304 800DC164 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B53308 800DC168 AFBF001C */  sw    $ra, 0x1c($sp)
/* B5330C 800DC16C AFB00018 */  sw    $s0, 0x18($sp)
/* B53310 800DC170 AFA7002C */  sw    $a3, 0x2c($sp)
/* B53314 800DC174 90CE0004 */  lbu   $t6, 4($a2)
/* B53318 800DC178 00073C00 */  sll   $a3, $a3, 0x10
/* B5331C 800DC17C 24010001 */  li    $at, 1
/* B53320 800DC180 00073C03 */  sra   $a3, $a3, 0x10
/* B53324 800DC184 15C1000C */  bne   $t6, $at, .L800DC1B8
/* B53328 800DC188 00808025 */   move  $s0, $a0
/* B5332C 800DC18C 90CF0018 */  lbu   $t7, 0x18($a2)
/* B53330 800DC190 11E00005 */  beqz  $t7, .L800DC1A8
/* B53334 800DC194 00000000 */   nop   
/* B53338 800DC198 0C036E0A */  jal   func_800DB828
/* B5333C 800DC19C 00000000 */   nop   
/* B53340 800DC1A0 10000008 */  b     .L800DC1C4
/* B53344 800DC1A4 00408025 */   move  $s0, $v0
.L800DC1A8:
/* B53348 800DC1A8 0C036FAC */  jal   func_800DBEB0
/* B5334C 800DC1AC 02002025 */   move  $a0, $s0
/* B53350 800DC1B0 10000004 */  b     .L800DC1C4
/* B53354 800DC1B4 00408025 */   move  $s0, $v0
.L800DC1B8:
/* B53358 800DC1B8 0C036D39 */  jal   func_800DB4E4
/* B5335C 800DC1BC 02002025 */   move  $a0, $s0
/* B53360 800DC1C0 00408025 */  move  $s0, $v0
.L800DC1C4:
/* B53364 800DC1C4 8FBF001C */  lw    $ra, 0x1c($sp)
/* B53368 800DC1C8 02001025 */  move  $v0, $s0
/* B5336C 800DC1CC 8FB00018 */  lw    $s0, 0x18($sp)
/* B53370 800DC1D0 03E00008 */  jr    $ra
/* B53374 800DC1D4 27BD0020 */   addiu $sp, $sp, 0x20

glabel func_800DC1D8
/* B53378 800DC1D8 27BDFFD0 */  addiu $sp, $sp, -0x30
/* B5337C 800DC1DC AFBF0024 */  sw    $ra, 0x24($sp)
/* B53380 800DC1E0 AFB10020 */  sw    $s1, 0x20($sp)
/* B53384 800DC1E4 AFB0001C */  sw    $s0, 0x1c($sp)
/* B53388 800DC1E8 AFA60038 */  sw    $a2, 0x38($sp)
/* B5338C 800DC1EC 90AE0003 */  lbu   $t6, 3($a1)
/* B53390 800DC1F0 00063400 */  sll   $a2, $a2, 0x10
/* B53394 800DC1F4 00063403 */  sra   $a2, $a2, 0x10
/* B53398 800DC1F8 000E78C0 */  sll   $t7, $t6, 3
/* B5339C 800DC1FC 01EE7821 */  addu  $t7, $t7, $t6
/* B533A0 800DC200 000F7880 */  sll   $t7, $t7, 2
/* B533A4 800DC204 0006C8C0 */  sll   $t9, $a2, 3
/* B533A8 800DC208 01EE7823 */  subu  $t7, $t7, $t6
/* B533AC 800DC20C 90A80004 */  lbu   $t0, 4($a1)
/* B533B0 800DC210 000F7880 */  sll   $t7, $t7, 2
/* B533B4 800DC214 0326C823 */  subu  $t9, $t9, $a2
/* B533B8 800DC218 0019C880 */  sll   $t9, $t9, 2
/* B533BC 800DC21C 00AFC021 */  addu  $t8, $a1, $t7
/* B533C0 800DC220 03191021 */  addu  $v0, $t8, $t9
/* B533C4 800DC224 24010001 */  li    $at, 1
/* B533C8 800DC228 00808025 */  move  $s0, $a0
/* B533CC 800DC22C 00A08825 */  move  $s1, $a1
/* B533D0 800DC230 1501001D */  bne   $t0, $at, .L800DC2A8
/* B533D4 800DC234 24430040 */   addiu $v1, $v0, 0x40
/* B533D8 800DC238 90A90018 */  lbu   $t1, 0x18($a1)
/* B533DC 800DC23C 51200006 */  beql  $t1, $zero, .L800DC258
/* B533E0 800DC240 9466000E */   lhu   $a2, 0xe($v1)
/* B533E4 800DC244 0C036DA0 */  jal   func_800DB680
/* B533E8 800DC248 00000000 */   nop   
/* B533EC 800DC24C 1000001C */  b     .L800DC2C0
/* B533F0 800DC250 00408025 */   move  $s0, $v0
/* B533F4 800DC254 9466000E */  lhu   $a2, 0xe($v1)
.L800DC258:
/* B533F8 800DC258 84670010 */  lh    $a3, 0x10($v1)
/* B533FC 800DC25C AFA3002C */  sw    $v1, 0x2c($sp)
/* B53400 800DC260 AFB10010 */  sw    $s1, 0x10($sp)
/* B53404 800DC264 02002025 */  move  $a0, $s0
/* B53408 800DC268 0C03701D */  jal   func_800DC074
/* B5340C 800DC26C 24050C80 */   li    $a1, 3200
/* B53410 800DC270 8FA3002C */  lw    $v1, 0x2c($sp)
/* B53414 800DC274 00408025 */  move  $s0, $v0
/* B53418 800DC278 00402025 */  move  $a0, $v0
/* B5341C 800DC27C 84670012 */  lh    $a3, 0x12($v1)
/* B53420 800DC280 50E00010 */  beql  $a3, $zero, .L800DC2C4
/* B53424 800DC284 A2200000 */   sb    $zero, ($s1)
/* B53428 800DC288 84650010 */  lh    $a1, 0x10($v1)
/* B5342C 800DC28C AFB10010 */  sw    $s1, 0x10($sp)
/* B53430 800DC290 00003025 */  move  $a2, $zero
/* B53434 800DC294 24A50C80 */  addiu $a1, $a1, 0xc80
/* B53438 800DC298 0C03701D */  jal   func_800DC074
/* B5343C 800DC29C 30A5FFFF */   andi  $a1, $a1, 0xffff
/* B53440 800DC2A0 10000007 */  b     .L800DC2C0
/* B53444 800DC2A4 00408025 */   move  $s0, $v0
.L800DC2A8:
/* B53448 800DC2A8 02002025 */  move  $a0, $s0
/* B5344C 800DC2AC 26100008 */  addiu $s0, $s0, 8
/* B53450 800DC2B0 24050C80 */  li    $a1, 3200
/* B53454 800DC2B4 24060340 */  li    $a2, 832
/* B53458 800DC2B8 0C036F4E */  jal   func_800DBD38
/* B5345C 800DC2BC 8C470044 */   lw    $a3, 0x44($v0)
.L800DC2C0:
/* B53460 800DC2C0 A2200000 */  sb    $zero, ($s1)
.L800DC2C4:
/* B53464 800DC2C4 8FBF0024 */  lw    $ra, 0x24($sp)
/* B53468 800DC2C8 02001025 */  move  $v0, $s0
/* B5346C 800DC2CC 8FB0001C */  lw    $s0, 0x1c($sp)
/* B53470 800DC2D0 8FB10020 */  lw    $s1, 0x20($sp)
/* B53474 800DC2D4 03E00008 */  jr    $ra
/* B53478 800DC2D8 27BD0030 */   addiu $sp, $sp, 0x30

glabel func_800DC2DC
/* B5347C 800DC2DC 27BDFFD8 */  addiu $sp, $sp, -0x28
/* B53480 800DC2E0 AFBF001C */  sw    $ra, 0x1c($sp)
/* B53484 800DC2E4 AFA5002C */  sw    $a1, 0x2c($sp)
/* B53488 800DC2E8 AFA60030 */  sw    $a2, 0x30($sp)
/* B5348C 800DC2EC 90AF0003 */  lbu   $t7, 3($a1)
/* B53490 800DC2F0 87A80032 */  lh    $t0, 0x32($sp)
/* B53494 800DC2F4 00A07025 */  move  $t6, $a1
/* B53498 800DC2F8 000FC0C0 */  sll   $t8, $t7, 3
/* B5349C 800DC2FC 030FC021 */  addu  $t8, $t8, $t7
/* B534A0 800DC300 0018C080 */  sll   $t8, $t8, 2
/* B534A4 800DC304 030FC023 */  subu  $t8, $t8, $t7
/* B534A8 800DC308 000848C0 */  sll   $t1, $t0, 3
/* B534AC 800DC30C 0018C080 */  sll   $t8, $t8, 2
/* B534B0 800DC310 01284823 */  subu  $t1, $t1, $t0
/* B534B4 800DC314 00094880 */  sll   $t1, $t1, 2
/* B534B8 800DC318 00B8C821 */  addu  $t9, $a1, $t8
/* B534BC 800DC31C 03291821 */  addu  $v1, $t9, $t1
/* B534C0 800DC320 24630158 */  addiu $v1, $v1, 0x158
/* B534C4 800DC324 84670010 */  lh    $a3, 0x10($v1)
/* B534C8 800DC328 9466000E */  lhu   $a2, 0xe($v1)
/* B534CC 800DC32C AFA30024 */  sw    $v1, 0x24($sp)
/* B534D0 800DC330 AFAE0010 */  sw    $t6, 0x10($sp)
/* B534D4 800DC334 0C03701D */  jal   func_800DC074
/* B534D8 800DC338 24050C80 */   li    $a1, 3200
/* B534DC 800DC33C 8FA30024 */  lw    $v1, 0x24($sp)
/* B534E0 800DC340 00402025 */  move  $a0, $v0
/* B534E4 800DC344 8FAA002C */  lw    $t2, 0x2c($sp)
/* B534E8 800DC348 84670012 */  lh    $a3, 0x12($v1)
/* B534EC 800DC34C 50E00009 */  beql  $a3, $zero, .L800DC374
/* B534F0 800DC350 8FBF001C */   lw    $ra, 0x1c($sp)
/* B534F4 800DC354 84650010 */  lh    $a1, 0x10($v1)
/* B534F8 800DC358 AFAA0010 */  sw    $t2, 0x10($sp)
/* B534FC 800DC35C 00003025 */  move  $a2, $zero
/* B53500 800DC360 24A50C80 */  addiu $a1, $a1, 0xc80
/* B53504 800DC364 0C03701D */  jal   func_800DC074
/* B53508 800DC368 30A5FFFF */   andi  $a1, $a1, 0xffff
/* B5350C 800DC36C 00402025 */  move  $a0, $v0
/* B53510 800DC370 8FBF001C */  lw    $ra, 0x1c($sp)
.L800DC374:
/* B53514 800DC374 27BD0028 */  addiu $sp, $sp, 0x28
/* B53518 800DC378 00801025 */  move  $v0, $a0
/* B5351C 800DC37C 03E00008 */  jr    $ra
/* B53520 800DC380 00000000 */   nop   

glabel func_800DC384
/* B53524 800DC384 27BDFF08 */  addiu $sp, $sp, -0xf8
/* B53528 800DC388 AFB5003C */  sw    $s5, 0x3c($sp)
/* B5352C 800DC38C 3C158017 */  lui   $s5, %hi(gAudioContext) # $s5, 0x8017
/* B53530 800DC390 26B5F180 */  addiu $s5, %lo(gAudioContext) # addiu $s5, $s5, -0xe80
/* B53534 800DC394 8EA82894 */  lw    $t0, 0x2894($s5)
/* B53538 800DC398 82A90001 */  lb    $t1, 1($s5)
/* B5353C 800DC39C AFBE0048 */  sw    $fp, 0x48($sp)
/* B53540 800DC3A0 01070019 */  multu $t0, $a3
/* B53544 800DC3A4 AFB30034 */  sw    $s3, 0x34($sp)
/* B53548 800DC3A8 AFB20030 */  sw    $s2, 0x30($sp)
/* B5354C 800DC3AC 00C09825 */  move  $s3, $a2
/* B53550 800DC3B0 00E0F025 */  move  $fp, $a3
/* B53554 800DC3B4 AFBF004C */  sw    $ra, 0x4c($sp)
/* B53558 800DC3B8 AFB70044 */  sw    $s7, 0x44($sp)
/* B5355C 800DC3BC AFB60040 */  sw    $s6, 0x40($sp)
/* B53560 800DC3C0 AFB40038 */  sw    $s4, 0x38($sp)
/* B53564 800DC3C4 AFB1002C */  sw    $s1, 0x2c($sp)
/* B53568 800DC3C8 00005012 */  mflo  $t2
/* B5356C 800DC3CC AFB00028 */  sw    $s0, 0x28($sp)
/* B53570 800DC3D0 AFA400F8 */  sw    $a0, 0xf8($sp)
/* B53574 800DC3D4 AFA500FC */  sw    $a1, 0xfc($sp)
/* B53578 800DC3D8 15200017 */  bnez  $t1, .L800DC438
/* B5357C 800DC3DC 00009025 */   move  $s2, $zero
/* B53580 800DC3E0 19000013 */  blez  $t0, .L800DC430
/* B53584 800DC3E4 00008825 */   move  $s1, $zero
/* B53588 800DC3E8 8EAE0014 */  lw    $t6, 0x14($s5)
/* B5358C 800DC3EC 000A7940 */  sll   $t7, $t2, 5
/* B53590 800DC3F0 27A4009C */  addiu $a0, $sp, 0x9c
/* B53594 800DC3F4 01CF1021 */  addu  $v0, $t6, $t7
.L800DC3F8:
/* B53598 800DC3F8 8C580000 */  lw    $t8, ($v0)
/* B5359C 800DC3FC 00925821 */  addu  $t3, $a0, $s2
/* B535A0 800DC400 0018CFC2 */  srl   $t9, $t8, 0x1f
/* B535A4 800DC404 53200006 */  beql  $t9, $zero, .L800DC420
/* B535A8 800DC408 26310001 */   addiu $s1, $s1, 1
/* B535AC 800DC40C 26520001 */  addiu $s2, $s2, 1
/* B535B0 800DC410 00129400 */  sll   $s2, $s2, 0x10
/* B535B4 800DC414 00129403 */  sra   $s2, $s2, 0x10
/* B535B8 800DC418 A1710000 */  sb    $s1, ($t3)
/* B535BC 800DC41C 26310001 */  addiu $s1, $s1, 1
.L800DC420:
/* B535C0 800DC420 0228082A */  slt   $at, $s1, $t0
/* B535C4 800DC424 1420FFF4 */  bnez  $at, .L800DC3F8
/* B535C8 800DC428 24420020 */   addiu $v0, $v0, 0x20
/* B535CC 800DC42C 00008825 */  move  $s1, $zero
.L800DC430:
/* B535D0 800DC430 1000003C */  b     .L800DC524
/* B535D4 800DC434 0000A025 */   move  $s4, $zero
.L800DC438:
/* B535D8 800DC438 19200020 */  blez  $t1, .L800DC4BC
/* B535DC 800DC43C 0000A025 */   move  $s4, $zero
/* B535E0 800DC440 27A4009C */  addiu $a0, $sp, 0x9c
.L800DC444:
/* B535E4 800DC444 19000016 */  blez  $t0, .L800DC4A0
/* B535E8 800DC448 00008825 */   move  $s1, $zero
/* B535EC 800DC44C 8EAD0014 */  lw    $t5, 0x14($s5)
/* B535F0 800DC450 000A6140 */  sll   $t4, $t2, 5
/* B535F4 800DC454 018D1821 */  addu  $v1, $t4, $t5
.L800DC458:
/* B535F8 800DC458 00601025 */  move  $v0, $v1
/* B535FC 800DC45C 8C4E0000 */  lw    $t6, ($v0)
/* B53600 800DC460 000E7FC2 */  srl   $t7, $t6, 0x1f
/* B53604 800DC464 51E0000B */  beql  $t7, $zero, .L800DC494
/* B53608 800DC468 26310001 */   addiu $s1, $s1, 1
/* B5360C 800DC46C 90580001 */  lbu   $t8, 1($v0)
/* B53610 800DC470 00925821 */  addu  $t3, $a0, $s2
/* B53614 800DC474 0018C942 */  srl   $t9, $t8, 5
/* B53618 800DC478 56990006 */  bnel  $s4, $t9, .L800DC494
/* B5361C 800DC47C 26310001 */   addiu $s1, $s1, 1
/* B53620 800DC480 26520001 */  addiu $s2, $s2, 1
/* B53624 800DC484 00129400 */  sll   $s2, $s2, 0x10
/* B53628 800DC488 00129403 */  sra   $s2, $s2, 0x10
/* B5362C 800DC48C A1710000 */  sb    $s1, ($t3)
/* B53630 800DC490 26310001 */  addiu $s1, $s1, 1
.L800DC494:
/* B53634 800DC494 0228082A */  slt   $at, $s1, $t0
/* B53638 800DC498 1420FFEF */  bnez  $at, .L800DC458
/* B5363C 800DC49C 24630020 */   addiu $v1, $v1, 0x20
.L800DC4A0:
/* B53640 800DC4A0 26940001 */  addiu $s4, $s4, 1
/* B53644 800DC4A4 0014A400 */  sll   $s4, $s4, 0x10
/* B53648 800DC4A8 0014A403 */  sra   $s4, $s4, 0x10
/* B5364C 800DC4AC 0289082A */  slt   $at, $s4, $t1
/* B53650 800DC4B0 1420FFE4 */  bnez  $at, .L800DC444
/* B53654 800DC4B4 00000000 */   nop   
/* B53658 800DC4B8 0000A025 */  move  $s4, $zero
.L800DC4BC:
/* B5365C 800DC4BC 27A4009C */  addiu $a0, $sp, 0x9c
/* B53660 800DC4C0 19000018 */  blez  $t0, .L800DC524
/* B53664 800DC4C4 00008825 */   move  $s1, $zero
/* B53668 800DC4C8 8EAD0014 */  lw    $t5, 0x14($s5)
/* B5366C 800DC4CC 000A6140 */  sll   $t4, $t2, 5
/* B53670 800DC4D0 018D1821 */  addu  $v1, $t4, $t5
.L800DC4D4:
/* B53674 800DC4D4 00601025 */  move  $v0, $v1
/* B53678 800DC4D8 8C4E0000 */  lw    $t6, ($v0)
/* B5367C 800DC4DC 000E7FC2 */  srl   $t7, $t6, 0x1f
/* B53680 800DC4E0 51E0000C */  beql  $t7, $zero, .L800DC514
/* B53684 800DC4E4 26310001 */   addiu $s1, $s1, 1
/* B53688 800DC4E8 90580001 */  lbu   $t8, 1($v0)
/* B5368C 800DC4EC 00925821 */  addu  $t3, $a0, $s2
/* B53690 800DC4F0 0018C942 */  srl   $t9, $t8, 5
/* B53694 800DC4F4 0329082A */  slt   $at, $t9, $t1
/* B53698 800DC4F8 54200006 */  bnezl $at, .L800DC514
/* B5369C 800DC4FC 26310001 */   addiu $s1, $s1, 1
/* B536A0 800DC500 26520001 */  addiu $s2, $s2, 1
/* B536A4 800DC504 00129400 */  sll   $s2, $s2, 0x10
/* B536A8 800DC508 00129403 */  sra   $s2, $s2, 0x10
/* B536AC 800DC50C A1710000 */  sb    $s1, ($t3)
/* B536B0 800DC510 26310001 */  addiu $s1, $s1, 1
.L800DC514:
/* B536B4 800DC514 0228082A */  slt   $at, $s1, $t0
/* B536B8 800DC518 1420FFEE */  bnez  $at, .L800DC4D4
/* B536BC 800DC51C 24630020 */   addiu $v1, $v1, 0x20
/* B536C0 800DC520 00008825 */  move  $s1, $zero
.L800DC524:
/* B536C4 800DC524 02601025 */  move  $v0, $s3
/* B536C8 800DC528 3C0C0200 */  lui   $t4, (0x02000940 >> 16) # lui $t4, 0x200
/* B536CC 800DC52C 358C0940 */  ori   $t4, (0x02000940 & 0xFFFF) # ori $t4, $t4, 0x940
/* B536D0 800DC530 240D0340 */  li    $t5, 832
/* B536D4 800DC534 AC4D0004 */  sw    $t5, 4($v0)
/* B536D8 800DC538 AC4C0000 */  sw    $t4, ($v0)
/* B536DC 800DC53C 82AE0001 */  lb    $t6, 1($s5)
/* B536E0 800DC540 26730008 */  addiu $s3, $s3, 8
/* B536E4 800DC544 AFAA008C */  sw    $t2, 0x8c($sp)
/* B536E8 800DC548 19C000AF */  blez  $t6, .L800DC808
/* B536EC 800DC54C 241700E0 */   li    $s7, 224
/* B536F0 800DC550 AFAA008C */  sw    $t2, 0x8c($sp)
/* B536F4 800DC554 00147880 */  sll   $t7, $s4, 2
.L800DC558:
/* B536F8 800DC558 01F47823 */  subu  $t7, $t7, $s4
/* B536FC 800DC55C 000F7880 */  sll   $t7, $t7, 2
/* B53700 800DC560 01F47823 */  subu  $t7, $t7, $s4
/* B53704 800DC564 000F78C0 */  sll   $t7, $t7, 3
/* B53708 800DC568 01F47821 */  addu  $t7, $t7, $s4
/* B5370C 800DC56C 000F78C0 */  sll   $t7, $t7, 3
/* B53710 800DC570 02AFC021 */  addu  $t8, $s5, $t7
/* B53714 800DC574 AFB8005C */  sw    $t8, 0x5c($sp)
/* B53718 800DC578 930B0019 */  lbu   $t3, 0x19($t8)
/* B5371C 800DC57C 02602025 */  move  $a0, $s3
/* B53720 800DC580 8FA500FC */  lw    $a1, 0xfc($sp)
/* B53724 800DC584 11600051 */  beqz  $t3, .L800DC6CC
/* B53728 800DC588 AFAB0090 */   sw    $t3, 0x90($sp)
/* B5372C 800DC58C 001EB400 */  sll   $s6, $fp, 0x10
/* B53730 800DC590 0016B403 */  sra   $s6, $s6, 0x10
/* B53734 800DC594 00163C00 */  sll   $a3, $s6, 0x10
/* B53738 800DC598 27100018 */  addiu $s0, $t8, 0x18
/* B5373C 800DC59C 02003025 */  move  $a2, $s0
/* B53740 800DC5A0 0C037059 */  jal   func_800DC164
/* B53744 800DC5A4 00073C03 */   sra   $a3, $a3, 0x10
/* B53748 800DC5A8 860C000A */  lh    $t4, 0xa($s0)
/* B5374C 800DC5AC 3C010C34 */  lui   $at, 0xc34
/* B53750 800DC5B0 3C0F0C80 */  lui   $t7, (0x0C800940 >> 16) # lui $t7, 0xc80
/* B53754 800DC5B4 318DFFFF */  andi  $t5, $t4, 0xffff
/* B53758 800DC5B8 01A17025 */  or    $t6, $t5, $at
/* B5375C 800DC5BC 35EF0940 */  ori   $t7, (0x0C800940 & 0xFFFF) # ori $t7, $t7, 0x940
/* B53760 800DC5C0 AC4F0004 */  sw    $t7, 4($v0)
/* B53764 800DC5C4 AC4E0000 */  sw    $t6, ($v0)
/* B53768 800DC5C8 96180014 */  lhu   $t8, 0x14($s0)
/* B5376C 800DC5CC 24430008 */  addiu $v1, $v0, 8
/* B53770 800DC5D0 00609825 */  move  $s3, $v1
/* B53774 800DC5D4 13000008 */  beqz  $t8, .L800DC5F8
/* B53778 800DC5D8 AFB8007C */   sw    $t8, 0x7c($sp)
/* B5377C 800DC5DC 3C190A00 */  lui   $t9, (0x0A000C80 >> 16) # lui $t9, 0xa00
/* B53780 800DC5E0 3C0C03E0 */  lui   $t4, (0x03E00340 >> 16) # lui $t4, 0x3e0
/* B53784 800DC5E4 358C0340 */  ori   $t4, (0x03E00340 & 0xFFFF) # ori $t4, $t4, 0x340
/* B53788 800DC5E8 37390C80 */  ori   $t9, (0x0A000C80 & 0xFFFF) # ori $t9, $t9, 0xc80
/* B5378C 800DC5EC AC790000 */  sw    $t9, ($v1)
/* B53790 800DC5F0 AC6C0004 */  sw    $t4, 4($v1)
/* B53794 800DC5F4 24730008 */  addiu $s3, $v1, 8
.L800DC5F8:
/* B53798 800DC5F8 960D000C */  lhu   $t5, 0xc($s0)
/* B5379C 800DC5FC 34018000 */  li    $at, 32768
/* B537A0 800DC600 02601025 */  move  $v0, $s3
/* B537A4 800DC604 01A17021 */  addu  $t6, $t5, $at
/* B537A8 800DC608 31CFFFFF */  andi  $t7, $t6, 0xffff
/* B537AC 800DC60C 3C010C34 */  lui   $at, 0xc34
/* B537B0 800DC610 3C0B0C80 */  lui   $t3, (0x0C800C80 >> 16) # lui $t3, 0xc80
/* B537B4 800DC614 356B0C80 */  ori   $t3, (0x0C800C80 & 0xFFFF) # ori $t3, $t3, 0xc80
/* B537B8 800DC618 01E1C025 */  or    $t8, $t7, $at
/* B537BC 800DC61C AC580000 */  sw    $t8, ($v0)
/* B537C0 800DC620 AC4B0004 */  sw    $t3, 4($v0)
/* B537C4 800DC624 86190010 */  lh    $t9, 0x10($s0)
/* B537C8 800DC628 26730008 */  addiu $s3, $s3, 8
/* B537CC 800DC62C 02602025 */  move  $a0, $s3
/* B537D0 800DC630 17200004 */  bnez  $t9, .L800DC644
/* B537D4 800DC634 00000000 */   nop   
/* B537D8 800DC638 860C0012 */  lh    $t4, 0x12($s0)
/* B537DC 800DC63C 51800005 */  beql  $t4, $zero, .L800DC654
/* B537E0 800DC640 8FAD007C */   lw    $t5, 0x7c($sp)
.L800DC644:
/* B537E4 800DC644 0C036D20 */  jal   func_800DB480
/* B537E8 800DC648 02002825 */   move  $a1, $s0
/* B537EC 800DC64C 00409825 */  move  $s3, $v0
/* B537F0 800DC650 8FAD007C */  lw    $t5, 0x7c($sp)
.L800DC654:
/* B537F4 800DC654 02602025 */  move  $a0, $s3
/* B537F8 800DC658 02002825 */  move  $a1, $s0
/* B537FC 800DC65C 11A0001B */  beqz  $t5, .L800DC6CC
/* B53800 800DC660 00163400 */   sll   $a2, $s6, 0x10
/* B53804 800DC664 0C037076 */  jal   func_800DC1D8
/* B53808 800DC668 00063403 */   sra   $a2, $a2, 0x10
/* B5380C 800DC66C 820E0005 */  lb    $t6, 5($s0)
/* B53810 800DC670 2401FFFF */  li    $at, -1
/* B53814 800DC674 00409825 */  move  $s3, $v0
/* B53818 800DC678 11C10005 */  beq   $t6, $at, .L800DC690
/* B5381C 800DC67C 00402025 */   move  $a0, $v0
/* B53820 800DC680 02002825 */  move  $a1, $s0
/* B53824 800DC684 0C036EBA */  jal   func_800DBAE8
/* B53828 800DC688 03C03025 */   move  $a2, $fp
/* B5382C 800DC68C 00409825 */  move  $s3, $v0
.L800DC690:
/* B53830 800DC690 00163C00 */  sll   $a3, $s6, 0x10
/* B53834 800DC694 00073C03 */  sra   $a3, $a3, 0x10
/* B53838 800DC698 02602025 */  move  $a0, $s3
/* B5383C 800DC69C 8FA500FC */  lw    $a1, 0xfc($sp)
/* B53840 800DC6A0 0C037049 */  jal   func_800DC124
/* B53844 800DC6A4 02003025 */   move  $a2, $s0
/* B53848 800DC6A8 860F0016 */  lh    $t7, 0x16($s0)
/* B5384C 800DC6AC 3C010C34 */  lui   $at, 0xc34
/* B53850 800DC6B0 3C1903E0 */  lui   $t9, (0x03E00C80 >> 16) # lui $t9, 0x3e0
/* B53854 800DC6B4 31F8FFFF */  andi  $t8, $t7, 0xffff
/* B53858 800DC6B8 03015825 */  or    $t3, $t8, $at
/* B5385C 800DC6BC 37390C80 */  ori   $t9, (0x03E00C80 & 0xFFFF) # ori $t9, $t9, 0xc80
/* B53860 800DC6C0 AC590004 */  sw    $t9, 4($v0)
/* B53864 800DC6C4 AC4B0000 */  sw    $t3, ($v0)
/* B53868 800DC6C8 24530008 */  addiu $s3, $v0, 8
.L800DC6CC:
/* B5386C 800DC6CC 0232082A */  slt   $at, $s1, $s2
/* B53870 800DC6D0 1020001D */  beqz  $at, .L800DC748
/* B53874 800DC6D4 27AC009C */   addiu $t4, $sp, 0x9c
/* B53878 800DC6D8 022C8021 */  addu  $s0, $s1, $t4
.L800DC6DC:
/* B5387C 800DC6DC 92020000 */  lbu   $v0, ($s0)
/* B53880 800DC6E0 8FAD008C */  lw    $t5, 0x8c($sp)
/* B53884 800DC6E4 8EB80014 */  lw    $t8, 0x14($s5)
/* B53888 800DC6E8 00402025 */  move  $a0, $v0
/* B5388C 800DC6EC 004D7021 */  addu  $t6, $v0, $t5
/* B53890 800DC6F0 000E7940 */  sll   $t7, $t6, 5
/* B53894 800DC6F4 01F82821 */  addu  $a1, $t7, $t8
/* B53898 800DC6F8 90AB0001 */  lbu   $t3, 1($a1)
/* B5389C 800DC6FC 000BC942 */  srl   $t9, $t3, 5
/* B538A0 800DC700 56990012 */  bnel  $s4, $t9, .L800DC74C
/* B538A4 800DC704 8FAF0090 */   lw    $t7, 0x90($sp)
/* B538A8 800DC708 00570019 */  multu $v0, $s7
/* B538AC 800DC70C 8EAD352C */  lw    $t5, 0x352c($s5)
/* B538B0 800DC710 8FAE00FC */  lw    $t6, 0xfc($sp)
/* B538B4 800DC714 8FA700F8 */  lw    $a3, 0xf8($sp)
/* B538B8 800DC718 AFB30014 */  sw    $s3, 0x14($sp)
/* B538BC 800DC71C AFBE0018 */  sw    $fp, 0x18($sp)
/* B538C0 800DC720 AFAE0010 */  sw    $t6, 0x10($sp)
/* B538C4 800DC724 00006012 */  mflo  $t4
/* B538C8 800DC728 018D3021 */  addu  $a2, $t4, $t5
/* B538CC 800DC72C 0C037244 */  jal   func_800DC910
/* B538D0 800DC730 24C60010 */   addiu $a2, $a2, 0x10
/* B538D4 800DC734 26310001 */  addiu $s1, $s1, 1
/* B538D8 800DC738 0232082A */  slt   $at, $s1, $s2
/* B538DC 800DC73C 00409825 */  move  $s3, $v0
/* B538E0 800DC740 1420FFE6 */  bnez  $at, .L800DC6DC
/* B538E4 800DC744 26100001 */   addiu $s0, $s0, 1
.L800DC748:
/* B538E8 800DC748 8FAF0090 */  lw    $t7, 0x90($sp)
.L800DC74C:
/* B538EC 800DC74C 8FB0005C */  lw    $s0, 0x5c($sp)
/* B538F0 800DC750 51E00027 */  beql  $t7, $zero, .L800DC7F0
/* B538F4 800DC754 82AD0001 */   lb    $t5, 1($s5)
/* B538F8 800DC758 8E180288 */  lw    $t8, 0x288($s0)
/* B538FC 800DC75C 001EB400 */  sll   $s6, $fp, 0x10
/* B53900 800DC760 0016B403 */  sra   $s6, $s6, 0x10
/* B53904 800DC764 17000004 */  bnez  $t8, .L800DC778
/* B53908 800DC768 26100018 */   addiu $s0, $s0, 0x18
/* B5390C 800DC76C 8E0B0274 */  lw    $t3, 0x274($s0)
/* B53910 800DC770 51600008 */  beql  $t3, $zero, .L800DC794
/* B53914 800DC774 8FB9007C */   lw    $t9, 0x7c($sp)
.L800DC778:
/* B53918 800DC778 8FA500FC */  lw    $a1, 0xfc($sp)
/* B5391C 800DC77C 02602025 */  move  $a0, $s3
/* B53920 800DC780 02003025 */  move  $a2, $s0
/* B53924 800DC784 0C036E90 */  jal   func_800DBA40
/* B53928 800DC788 00052840 */   sll   $a1, $a1, 1
/* B5392C 800DC78C 00409825 */  move  $s3, $v0
/* B53930 800DC790 8FB9007C */  lw    $t9, 0x7c($sp)
.L800DC794:
/* B53934 800DC794 02602025 */  move  $a0, $s3
/* B53938 800DC798 02002825 */  move  $a1, $s0
/* B5393C 800DC79C 13200008 */  beqz  $t9, .L800DC7C0
/* B53940 800DC7A0 00163400 */   sll   $a2, $s6, 0x10
/* B53944 800DC7A4 00163400 */  sll   $a2, $s6, 0x10
/* B53948 800DC7A8 00063403 */  sra   $a2, $a2, 0x10
/* B5394C 800DC7AC 02602025 */  move  $a0, $s3
/* B53950 800DC7B0 0C0370B7 */  jal   func_800DC2DC
/* B53954 800DC7B4 02002825 */   move  $a1, $s0
/* B53958 800DC7B8 1000000C */  b     .L800DC7EC
/* B5395C 800DC7BC 00409825 */   move  $s3, $v0
.L800DC7C0:
/* B53960 800DC7C0 0C037076 */  jal   func_800DC1D8
/* B53964 800DC7C4 00063403 */   sra   $a2, $a2, 0x10
/* B53968 800DC7C8 820C0005 */  lb    $t4, 5($s0)
/* B5396C 800DC7CC 2401FFFF */  li    $at, -1
/* B53970 800DC7D0 00409825 */  move  $s3, $v0
/* B53974 800DC7D4 11810005 */  beq   $t4, $at, .L800DC7EC
/* B53978 800DC7D8 00402025 */   move  $a0, $v0
/* B5397C 800DC7DC 02002825 */  move  $a1, $s0
/* B53980 800DC7E0 0C036EBA */  jal   func_800DBAE8
/* B53984 800DC7E4 03C03025 */   move  $a2, $fp
/* B53988 800DC7E8 00409825 */  move  $s3, $v0
.L800DC7EC:
/* B5398C 800DC7EC 82AD0001 */  lb    $t5, 1($s5)
.L800DC7F0:
/* B53990 800DC7F0 26940001 */  addiu $s4, $s4, 1
/* B53994 800DC7F4 0014A400 */  sll   $s4, $s4, 0x10
/* B53998 800DC7F8 0014A403 */  sra   $s4, $s4, 0x10
/* B5399C 800DC7FC 028D082A */  slt   $at, $s4, $t5
/* B539A0 800DC800 5420FF55 */  bnezl $at, .L800DC558
/* B539A4 800DC804 00147880 */   sll   $t7, $s4, 2
.L800DC808:
/* B539A8 800DC808 8FB600FC */  lw    $s6, 0xfc($sp)
/* B539AC 800DC80C 0232082A */  slt   $at, $s1, $s2
/* B539B0 800DC810 241700E0 */  li    $s7, 224
/* B539B4 800DC814 1020001A */  beqz  $at, .L800DC880
/* B539B8 800DC818 0016B040 */   sll   $s6, $s6, 1
/* B539BC 800DC81C 27AE009C */  addiu $t6, $sp, 0x9c
/* B539C0 800DC820 022E8021 */  addu  $s0, $s1, $t6
/* B539C4 800DC824 024EA021 */  addu  $s4, $s2, $t6
.L800DC828:
/* B539C8 800DC828 92020000 */  lbu   $v0, ($s0)
/* B539CC 800DC82C 8FAF008C */  lw    $t7, 0x8c($sp)
/* B539D0 800DC830 8EAD352C */  lw    $t5, 0x352c($s5)
/* B539D4 800DC834 00570019 */  multu $v0, $s7
/* B539D8 800DC838 8EB90014 */  lw    $t9, 0x14($s5)
/* B539DC 800DC83C 8FAE00FC */  lw    $t6, 0xfc($sp)
/* B539E0 800DC840 004FC021 */  addu  $t8, $v0, $t7
/* B539E4 800DC844 00185940 */  sll   $t3, $t8, 5
/* B539E8 800DC848 AFBE0018 */  sw    $fp, 0x18($sp)
/* B539EC 800DC84C AFB30014 */  sw    $s3, 0x14($sp)
/* B539F0 800DC850 8FA700F8 */  lw    $a3, 0xf8($sp)
/* B539F4 800DC854 00402025 */  move  $a0, $v0
/* B539F8 800DC858 01792821 */  addu  $a1, $t3, $t9
/* B539FC 800DC85C 00006012 */  mflo  $t4
/* B53A00 800DC860 018D3021 */  addu  $a2, $t4, $t5
/* B53A04 800DC864 24C60010 */  addiu $a2, $a2, 0x10
/* B53A08 800DC868 0C037244 */  jal   func_800DC910
/* B53A0C 800DC86C AFAE0010 */   sw    $t6, 0x10($sp)
/* B53A10 800DC870 26100001 */  addiu $s0, $s0, 1
/* B53A14 800DC874 0214082B */  sltu  $at, $s0, $s4
/* B53A18 800DC878 1420FFEB */  bnez  $at, .L800DC828
/* B53A1C 800DC87C 00409825 */   move  $s3, $v0
.L800DC880:
/* B53A20 800DC880 00167903 */  sra   $t7, $s6, 4
/* B53A24 800DC884 31F800FF */  andi  $t8, $t7, 0xff
/* B53A28 800DC888 00185C00 */  sll   $t3, $t8, 0x10
/* B53A2C 800DC88C 3C010D00 */  lui   $at, 0xd00
/* B53A30 800DC890 0161C825 */  or    $t9, $t3, $at
/* B53A34 800DC894 00167040 */  sll   $t6, $s6, 1
/* B53A38 800DC898 000E7903 */  sra   $t7, $t6, 4
/* B53A3C 800DC89C 372C03C0 */  ori   $t4, $t9, 0x3c0
/* B53A40 800DC8A0 02601825 */  move  $v1, $s3
/* B53A44 800DC8A4 31F800FF */  andi  $t8, $t7, 0xff
/* B53A48 800DC8A8 3C0D0940 */  lui   $t5, (0x09400AE0 >> 16) # lui $t5, 0x940
/* B53A4C 800DC8AC 00185C00 */  sll   $t3, $t8, 0x10
/* B53A50 800DC8B0 3C011500 */  lui   $at, 0x1500
/* B53A54 800DC8B4 35AD0AE0 */  ori   $t5, (0x09400AE0 & 0xFFFF) # ori $t5, $t5, 0xae0
/* B53A58 800DC8B8 AC6C0000 */  sw    $t4, ($v1)
/* B53A5C 800DC8BC 26730008 */  addiu $s3, $s3, 8
/* B53A60 800DC8C0 0161C825 */  or    $t9, $t3, $at
/* B53A64 800DC8C4 AC6D0004 */  sw    $t5, 4($v1)
/* B53A68 800DC8C8 372C03C0 */  ori   $t4, $t9, 0x3c0
/* B53A6C 800DC8CC 02602025 */  move  $a0, $s3
/* B53A70 800DC8D0 AC8C0000 */  sw    $t4, ($a0)
/* B53A74 800DC8D4 8FAD00F8 */  lw    $t5, 0xf8($sp)
/* B53A78 800DC8D8 26620008 */  addiu $v0, $s3, 8
/* B53A7C 800DC8DC AC8D0004 */  sw    $t5, 4($a0)
/* B53A80 800DC8E0 8FBF004C */  lw    $ra, 0x4c($sp)
/* B53A84 800DC8E4 8FBE0048 */  lw    $fp, 0x48($sp)
/* B53A88 800DC8E8 8FB70044 */  lw    $s7, 0x44($sp)
/* B53A8C 800DC8EC 8FB60040 */  lw    $s6, 0x40($sp)
/* B53A90 800DC8F0 8FB5003C */  lw    $s5, 0x3c($sp)
/* B53A94 800DC8F4 8FB40038 */  lw    $s4, 0x38($sp)
/* B53A98 800DC8F8 8FB30034 */  lw    $s3, 0x34($sp)
/* B53A9C 800DC8FC 8FB20030 */  lw    $s2, 0x30($sp)
/* B53AA0 800DC900 8FB1002C */  lw    $s1, 0x2c($sp)
/* B53AA4 800DC904 8FB00028 */  lw    $s0, 0x28($sp)
/* B53AA8 800DC908 03E00008 */  jr    $ra
/* B53AAC 800DC90C 27BD00F8 */   addiu $sp, $sp, 0xf8

glabel func_800DC910
/* B53AB0 800DC910 27BDFEA0 */  addiu $sp, $sp, -0x160
/* B53AB4 800DC914 AFBF004C */  sw    $ra, 0x4c($sp)
/* B53AB8 800DC918 AFBE0048 */  sw    $fp, 0x48($sp)
/* B53ABC 800DC91C AFB70044 */  sw    $s7, 0x44($sp)
/* B53AC0 800DC920 AFB60040 */  sw    $s6, 0x40($sp)
/* B53AC4 800DC924 AFB5003C */  sw    $s5, 0x3c($sp)
/* B53AC8 800DC928 AFB40038 */  sw    $s4, 0x38($sp)
/* B53ACC 800DC92C AFB30034 */  sw    $s3, 0x34($sp)
/* B53AD0 800DC930 AFB20030 */  sw    $s2, 0x30($sp)
/* B53AD4 800DC934 AFB1002C */  sw    $s1, 0x2c($sp)
/* B53AD8 800DC938 AFB00028 */  sw    $s0, 0x28($sp)
/* B53ADC 800DC93C AFA40160 */  sw    $a0, 0x160($sp)
/* B53AE0 800DC940 AFA7016C */  sw    $a3, 0x16c($sp)
/* B53AE4 800DC944 8CA30000 */  lw    $v1, ($a1)
/* B53AE8 800DC948 0004C8C0 */  sll   $t9, $a0, 3
/* B53AEC 800DC94C 3C0C8017 */  lui   $t4, %hi(D_801726AC) # $t4, 0x8017
/* B53AF0 800DC950 000372C0 */  sll   $t6, $v1, 0xb
/* B53AF4 800DC954 8D8C26AC */  lw    $t4, %lo(D_801726AC)($t4)
/* B53AF8 800DC958 000E7F82 */  srl   $t7, $t6, 0x1e
/* B53AFC 800DC95C 0324C823 */  subu  $t9, $t9, $a0
/* B53B00 800DC960 00036840 */  sll   $t5, $v1, 1
/* B53B04 800DC964 240A0001 */  li    $t2, 1
/* B53B08 800DC968 0019C940 */  sll   $t9, $t9, 5
/* B53B0C 800DC96C 000D77C2 */  srl   $t6, $t5, 0x1f
/* B53B10 800DC970 00035880 */  sll   $t3, $v1, 2
/* B53B14 800DC974 00C08025 */  move  $s0, $a2
/* B53B18 800DC978 00A08825 */  move  $s1, $a1
/* B53B1C 800DC97C AFAF008C */  sw    $t7, 0x8c($sp)
/* B53B20 800DC980 000B5FC2 */  srl   $t3, $t3, 0x1f
/* B53B24 800DC984 00004825 */  move  $t1, $zero
/* B53B28 800DC988 154E0014 */  bne   $t2, $t6, .L800DC9DC
/* B53B2C 800DC98C 032C3821 */   addu  $a3, $t9, $t4
/* B53B30 800DC990 A0C00000 */  sb    $zero, ($a2)
/* B53B34 800DC994 8CEF00BC */  lw    $t7, 0xbc($a3)
/* B53B38 800DC998 A4C00006 */  sh    $zero, 6($a2)
/* B53B3C 800DC99C A4C00010 */  sh    $zero, 0x10($a2)
/* B53B40 800DC9A0 A4C00012 */  sh    $zero, 0x12($a2)
/* B53B44 800DC9A4 A0C00002 */  sb    $zero, 2($a2)
/* B53B48 800DC9A8 A0C00003 */  sb    $zero, 3($a2)
/* B53B4C 800DC9AC ACCF0008 */  sw    $t7, 8($a2)
/* B53B50 800DC9B0 90B80005 */  lbu   $t8, 5($a1)
/* B53B54 800DC9B4 24190001 */  li    $t9, 1
/* B53B58 800DC9B8 A0C00005 */  sb    $zero, 5($a2)
/* B53B5C 800DC9BC A0D9001A */  sb    $t9, 0x1a($a2)
/* B53B60 800DC9C0 A0D80004 */  sb    $t8, 4($a2)
/* B53B64 800DC9C4 90EC00C0 */  lbu   $t4, 0xc0($a3)
/* B53B68 800DC9C8 01404825 */  move  $t1, $t2
/* B53B6C 800DC9CC 00005825 */  move  $t3, $zero
/* B53B70 800DC9D0 318DFFDF */  andi  $t5, $t4, 0xffdf
/* B53B74 800DC9D4 A0ED00C0 */  sb    $t5, 0xc0($a3)
/* B53B78 800DC9D8 8CA30000 */  lw    $v1, ($a1)
.L800DC9DC:
/* B53B7C 800DC9DC 962E000C */  lhu   $t6, 0xc($s1)
/* B53B80 800DC9E0 8FB80170 */  lw    $t8, 0x170($sp)
/* B53B84 800DC9E4 00032380 */  sll   $a0, $v1, 0xe
/* B53B88 800DC9E8 31CFFFFF */  andi  $t7, $t6, 0xffff
/* B53B8C 800DC9EC 01F80019 */  multu $t7, $t8
/* B53B90 800DC9F0 A7AE0136 */  sh    $t6, 0x136($sp)
/* B53B94 800DC9F4 960D0006 */  lhu   $t5, 6($s0)
/* B53B98 800DC9F8 92020005 */  lbu   $v0, 5($s0)
/* B53B9C 800DC9FC 000427C2 */  srl   $a0, $a0, 0x1f
/* B53BA0 800DCA00 24840001 */  addiu $a0, $a0, 1
/* B53BA4 800DCA04 0000C812 */  mflo  $t9
/* B53BA8 800DCA08 00196040 */  sll   $t4, $t9, 1
/* B53BAC 800DCA0C 018D4021 */  addu  $t0, $t4, $t5
/* B53BB0 800DCA10 15420001 */  bne   $t2, $v0, .L800DCA18
/* B53BB4 800DCA14 A6080006 */   sh    $t0, 6($s0)
.L800DCA18:
/* B53BB8 800DCA18 A2040005 */  sb    $a0, 5($s0)
/* B53BBC 800DCA1C 8E230000 */  lw    $v1, ($s1)
/* B53BC0 800DCA20 0003C340 */  sll   $t8, $v1, 0xd
/* B53BC4 800DCA24 07030018 */  bgezl $t8, .L800DCA88
/* B53BC8 800DCA28 8E380010 */   lw    $t8, 0x10($s1)
/* B53BCC 800DCA2C 00083C02 */  srl   $a3, $t0, 0x10
/* B53BD0 800DCA30 8FA40174 */  lw    $a0, 0x174($sp)
/* B53BD4 800DCA34 AFA70050 */  sw    $a3, 0x50($sp)
/* B53BD8 800DCA38 02202825 */  move  $a1, $s1
/* B53BDC 800DCA3C 02003025 */  move  $a2, $s0
/* B53BE0 800DCA40 AFB00168 */  sw    $s0, 0x168($sp)
/* B53BE4 800DCA44 0C03767D */  jal   func_800DD9F4
/* B53BE8 800DCA48 AFB10164 */   sw    $s1, 0x164($sp)
/* B53BEC 800DCA4C 8FA40168 */  lw    $a0, 0x168($sp)
/* B53BF0 800DCA50 8FAD0050 */  lw    $t5, 0x50($sp)
/* B53BF4 800DCA54 240A0001 */  li    $t2, 1
/* B53BF8 800DCA58 8C860008 */  lw    $a2, 8($a0)
/* B53BFC 800DCA5C 0006C840 */  sll   $t9, $a2, 1
/* B53C00 800DCA60 272C0580 */  addiu $t4, $t9, 0x580
/* B53C04 800DCA64 A7AC00AE */  sh    $t4, 0xae($sp)
/* B53C08 800DCA68 00CD7021 */  addu  $t6, $a2, $t5
/* B53C0C 800DCA6C AC8E0008 */  sw    $t6, 8($a0)
/* B53C10 800DCA70 8FB10164 */  lw    $s1, 0x164($sp)
/* B53C14 800DCA74 8FB00168 */  lw    $s0, 0x168($sp)
/* B53C18 800DCA78 8E230000 */  lw    $v1, ($s1)
/* B53C1C 800DCA7C 1000022D */  b     .L800DD334
/* B53C20 800DCA80 AFA20174 */   sw    $v0, 0x174($sp)
/* B53C24 800DCA84 8E380010 */  lw    $t8, 0x10($s1)
.L800DCA88:
/* B53C28 800DCA88 00086C02 */  srl   $t5, $t0, 0x10
/* B53C2C 800DCA8C 8F020000 */  lw    $v0, ($t8)
/* B53C30 800DCA90 8C450008 */  lw    $a1, 8($v0)
/* B53C34 800DCA94 8CB90004 */  lw    $t9, 4($a1)
/* B53C38 800DCA98 AFB90100 */  sw    $t9, 0x100($sp)
/* B53C3C 800DCA9C 8C4C0004 */  lw    $t4, 4($v0)
/* B53C40 800DCAA0 AFA000B0 */  sw    $zero, 0xb0($sp)
/* B53C44 800DCAA4 AFA000BC */  sw    $zero, 0xbc($sp)
/* B53C48 800DCAA8 18800222 */  blez  $a0, .L800DD334
/* B53C4C 800DCAAC AFAC0110 */   sw    $t4, 0x110($sp)
/* B53C50 800DCAB0 AFAB0088 */  sw    $t3, 0x88($sp)
/* B53C54 800DCAB4 02005825 */  move  $t3, $s0
/* B53C58 800DCAB8 AFAD0050 */  sw    $t5, 0x50($sp)
/* B53C5C 800DCABC AFA20150 */  sw    $v0, 0x150($sp)
/* B53C60 800DCAC0 AFA400C0 */  sw    $a0, 0xc0($sp)
/* B53C64 800DCAC4 AFA5014C */  sw    $a1, 0x14c($sp)
/* B53C68 800DCAC8 AFA7009C */  sw    $a3, 0x9c($sp)
/* B53C6C 800DCACC AFA90138 */  sw    $t1, 0x138($sp)
/* B53C70 800DCAD0 AFB00168 */  sw    $s0, 0x168($sp)
/* B53C74 800DCAD4 AFB10164 */  sw    $s1, 0x164($sp)
/* B53C78 800DCAD8 8FB20174 */  lw    $s2, 0x174($sp)
/* B53C7C 800DCADC 8FAA00D4 */  lw    $t2, 0xd4($sp)
/* B53C80 800DCAE0 00801825 */  move  $v1, $a0
.L800DCAE4:
/* B53C84 800DCAE4 8FAE0150 */  lw    $t6, 0x150($sp)
/* B53C88 800DCAE8 24010001 */  li    $at, 1
/* B53C8C 800DCAEC 00004825 */  move  $t1, $zero
/* B53C90 800DCAF0 8DC70000 */  lw    $a3, ($t6)
/* B53C94 800DCAF4 0000A825 */  move  $s5, $zero
/* B53C98 800DCAF8 14610003 */  bne   $v1, $at, .L800DCB08
/* B53C9C 800DCAFC 00073F02 */   srl   $a3, $a3, 0x1c
/* B53CA0 800DCB00 1000000B */  b     .L800DCB30
/* B53CA4 800DCB04 8FBE0050 */   lw    $fp, 0x50($sp)
.L800DCB08:
/* B53CA8 800DCB08 8FAF0050 */  lw    $t7, 0x50($sp)
/* B53CAC 800DCB0C 8FAC00BC */  lw    $t4, 0xbc($sp)
/* B53CB0 800DCB10 8FBE0050 */  lw    $fp, 0x50($sp)
/* B53CB4 800DCB14 31F80001 */  andi  $t8, $t7, 1
/* B53CB8 800DCB18 13000005 */  beqz  $t8, .L800DCB30
/* B53CBC 800DCB1C 000C6840 */   sll   $t5, $t4, 1
/* B53CC0 800DCB20 2401FFFE */  li    $at, -2
/* B53CC4 800DCB24 01E1C824 */  and   $t9, $t7, $at
/* B53CC8 800DCB28 10000001 */  b     .L800DCB30
/* B53CCC 800DCB2C 032DF021 */   addu  $fp, $t9, $t5
.L800DCB30:
/* B53CD0 800DCB30 10E00003 */  beqz  $a3, .L800DCB40
/* B53CD4 800DCB34 24010003 */   li    $at, 3
/* B53CD8 800DCB38 14E1002C */  bne   $a3, $at, .L800DCBEC
/* B53CDC 800DCB3C 00000000 */   nop   
.L800DCB40:
/* B53CE0 800DCB40 8FAE0150 */  lw    $t6, 0x150($sp)
/* B53CE4 800DCB44 3C188017 */  lui   $t8, %hi(D_8016F190) # $t8, 0x8017
/* B53CE8 800DCB48 8F18F190 */  lw    $t8, %lo(D_8016F190)($t8)
/* B53CEC 800DCB4C 8DC2000C */  lw    $v0, 0xc($t6)
/* B53CF0 800DCB50 8FAF008C */  lw    $t7, 0x8c($sp)
/* B53CF4 800DCB54 24010001 */  li    $at, 1
/* B53CF8 800DCB58 24420008 */  addiu $v0, $v0, 8
/* B53CFC 800DCB5C 13020023 */  beq   $t8, $v0, .L800DCBEC
/* B53D00 800DCB60 00000000 */   nop   
/* B53D04 800DCB64 11E10008 */  beq   $t7, $at, .L800DCB88
/* B53D08 800DCB68 3C0C8013 */   lui   $t4, %hi(D_8012FBAA) # $t4, 0x8013
/* B53D0C 800DCB6C 24010002 */  li    $at, 2
/* B53D10 800DCB70 11E10009 */  beq   $t7, $at, .L800DCB98
/* B53D14 800DCB74 24010003 */   li    $at, 3
/* B53D18 800DCB78 11E10007 */  beq   $t7, $at, .L800DCB98
/* B53D1C 800DCB7C 00000000 */   nop   
/* B53D20 800DCB80 10000005 */  b     .L800DCB98
/* B53D24 800DCB84 00000000 */   nop   
.L800DCB88:
/* B53D28 800DCB88 258CFBAA */  addiu $t4, %lo(D_8012FBAA) # addiu $t4, $t4, -0x456
/* B53D2C 800DCB8C 3C018017 */  lui   $at, %hi(D_8016F190) # $at, 0x8017
/* B53D30 800DCB90 10000003 */  b     .L800DCBA0
/* B53D34 800DCB94 AC2CF190 */   sw    $t4, %lo(D_8016F190)($at)
.L800DCB98:
/* B53D38 800DCB98 3C018017 */  lui   $at, %hi(D_8016F190) # $at, 0x8017
/* B53D3C 800DCB9C AC22F190 */  sw    $v0, %lo(D_8016F190)($at)
.L800DCBA0:
/* B53D40 800DCBA0 8FB90150 */  lw    $t9, 0x150($sp)
/* B53D44 800DCBA4 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* B53D48 800DCBA8 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* B53D4C 800DCBAC 8F22000C */  lw    $v0, 0xc($t9)
/* B53D50 800DCBB0 02401825 */  move  $v1, $s2
/* B53D54 800DCBB4 3C198017 */  lui   $t9, %hi(D_8016F190) # $t9, 0x8017
/* B53D58 800DCBB8 8C4D0000 */  lw    $t5, ($v0)
/* B53D5C 800DCBBC 8C580004 */  lw    $t8, 4($v0)
/* B53D60 800DCBC0 26520008 */  addiu $s2, $s2, 8
/* B53D64 800DCBC4 000D7100 */  sll   $t6, $t5, 4
/* B53D68 800DCBC8 01D80019 */  multu $t6, $t8
/* B53D6C 800DCBCC 00002012 */  mflo  $a0
/* B53D70 800DCBD0 00817824 */  and   $t7, $a0, $at
/* B53D74 800DCBD4 3C010B00 */  lui   $at, 0xb00
/* B53D78 800DCBD8 01E16025 */  or    $t4, $t7, $at
/* B53D7C 800DCBDC AC6C0000 */  sw    $t4, ($v1)
/* B53D80 800DCBE0 8F39F190 */  lw    $t9, %lo(D_8016F190)($t9)
/* B53D84 800DCBE4 AC790004 */  sw    $t9, 4($v1)
/* B53D88 800DCBE8 8FA300C0 */  lw    $v1, 0xc0($sp)
.L800DCBEC:
/* B53D8C 800DCBEC 53C0017F */  beql  $fp, $zero, .L800DD1EC
/* B53D90 800DCBF0 24010001 */   li    $at, 1
/* B53D94 800DCBF4 AFA00140 */  sw    $zero, 0x140($sp)
.L800DCBF8:
/* B53D98 800DCBF8 AFA0013C */  sw    $zero, 0x13c($sp)
/* B53D9C 800DCBFC 8D660008 */  lw    $a2, 8($t3)
/* B53DA0 800DCC00 8FAE0150 */  lw    $t6, 0x150($sp)
/* B53DA4 800DCC04 03C92023 */  subu  $a0, $fp, $t1
/* B53DA8 800DCC08 AFA400FC */  sw    $a0, 0xfc($sp)
/* B53DAC 800DCC0C 8FAD0100 */  lw    $t5, 0x100($sp)
/* B53DB0 800DCC10 8DC80000 */  lw    $t0, ($t6)
/* B53DB4 800DCC14 30D3000F */  andi  $s3, $a2, 0xf
/* B53DB8 800DCC18 0000A025 */  move  $s4, $zero
/* B53DBC 800DCC1C 01A61823 */  subu  $v1, $t5, $a2
/* B53DC0 800DCC20 16600005 */  bnez  $s3, .L800DCC38
/* B53DC4 800DCC24 00083F02 */   srl   $a3, $t0, 0x1c
/* B53DC8 800DCC28 91780000 */  lbu   $t8, ($t3)
/* B53DCC 800DCC2C 57000003 */  bnezl $t8, .L800DCC3C
/* B53DD0 800DCC30 240F0010 */   li    $t7, 16
/* B53DD4 800DCC34 24130010 */  li    $s3, 16
.L800DCC38:
/* B53DD8 800DCC38 240F0010 */  li    $t7, 16
.L800DCC3C:
/* B53DDC 800DCC3C 01F32823 */  subu  $a1, $t7, $s3
/* B53DE0 800DCC40 0083082A */  slt   $at, $a0, $v1
/* B53DE4 800DCC44 1020000C */  beqz  $at, .L800DCC78
/* B53DE8 800DCC48 00A0B025 */   move  $s6, $a1
/* B53DEC 800DCC4C 00851023 */  subu  $v0, $a0, $a1
/* B53DF0 800DCC50 2442000F */  addiu $v0, $v0, 0xf
/* B53DF4 800DCC54 04410002 */  bgez  $v0, .L800DCC60
/* B53DF8 800DCC58 00400821 */   addu  $at, $v0, $zero
/* B53DFC 800DCC5C 2441000F */  addiu $at, $v0, 0xf
.L800DCC60:
/* B53E00 800DCC60 00011103 */  sra   $v0, $at, 4
/* B53E04 800DCC64 00028100 */  sll   $s0, $v0, 4
/* B53E08 800DCC68 00B06021 */  addu  $t4, $a1, $s0
/* B53E0C 800DCC6C 00408825 */  move  $s1, $v0
/* B53E10 800DCC70 10000014 */  b     .L800DCCC4
/* B53E14 800DCC74 0184B823 */   subu  $s7, $t4, $a0
.L800DCC78:
/* B53E18 800DCC78 00658023 */  subu  $s0, $v1, $a1
/* B53E1C 800DCC7C 1E000003 */  bgtz  $s0, .L800DCC8C
/* B53E20 800DCC80 0000B825 */   move  $s7, $zero
/* B53E24 800DCC84 00008025 */  move  $s0, $zero
/* B53E28 800DCC88 0060B025 */  move  $s6, $v1
.L800DCC8C:
/* B53E2C 800DCC8C 8FB9014C */  lw    $t9, 0x14c($sp)
/* B53E30 800DCC90 2611000F */  addiu $s1, $s0, 0xf
/* B53E34 800DCC94 06210002 */  bgez  $s1, .L800DCCA0
/* B53E38 800DCC98 02200821 */   addu  $at, $s1, $zero
/* B53E3C 800DCC9C 2621000F */  addiu $at, $s1, 0xf
.L800DCCA0:
/* B53E40 800DCCA0 00018903 */  sra   $s1, $at, 4
/* B53E44 800DCCA4 8F2D0008 */  lw    $t5, 8($t9)
/* B53E48 800DCCA8 240E0001 */  li    $t6, 1
/* B53E4C 800DCCAC 24180001 */  li    $t8, 1
/* B53E50 800DCCB0 51A00004 */  beql  $t5, $zero, .L800DCCC4
/* B53E54 800DCCB4 AFB80140 */   sw    $t8, 0x140($sp)
/* B53E58 800DCCB8 10000002 */  b     .L800DCCC4
/* B53E5C 800DCCBC AFAE013C */   sw    $t6, 0x13c($sp)
/* B53E60 800DCCC0 AFB80140 */  sw    $t8, 0x140($sp)
.L800DCCC4:
/* B53E64 800DCCC4 2CE10006 */  sltiu $at, $a3, 6
/* B53E68 800DCCC8 10200035 */  beqz  $at, .L800DCDA0
/* B53E6C 800DCCCC 00077880 */   sll   $t7, $a3, 2
/* B53E70 800DCCD0 3C018015 */  lui   $at, %hi(jtbl_801493D0)
/* B53E74 800DCCD4 002F0821 */  addu  $at, $at, $t7
/* B53E78 800DCCD8 8C2F93D0 */  lw    $t7, %lo(jtbl_801493D0)($at)
/* B53E7C 800DCCDC 01E00008 */  jr    $t7
/* B53E80 800DCCE0 00000000 */   nop   
glabel L800DCCE4
/* B53E84 800DCCE4 240C0010 */  li    $t4, 16
/* B53E88 800DCCE8 240A0009 */  li    $t2, 9
/* B53E8C 800DCCEC AFAC00CC */  sw    $t4, 0xcc($sp)
/* B53E90 800DCCF0 1000002B */  b     .L800DCDA0
/* B53E94 800DCCF4 AFA000C8 */   sw    $zero, 0xc8($sp)
glabel L800DCCF8
/* B53E98 800DCCF8 24190010 */  li    $t9, 16
/* B53E9C 800DCCFC 240A0005 */  li    $t2, 5
/* B53EA0 800DCD00 AFB900CC */  sw    $t9, 0xcc($sp)
/* B53EA4 800DCD04 10000026 */  b     .L800DCDA0
/* B53EA8 800DCD08 AFA000C8 */   sw    $zero, 0xc8($sp)
glabel L800DCD0C
/* B53EAC 800DCD0C 240D0010 */  li    $t5, 16
/* B53EB0 800DCD10 240A0010 */  li    $t2, 16
/* B53EB4 800DCD14 AFAD00CC */  sw    $t5, 0xcc($sp)
/* B53EB8 800DCD18 10000021 */  b     .L800DCDA0
/* B53EBC 800DCD1C AFA000C8 */   sw    $zero, 0xc8($sp)
glabel L800DCD20
/* B53EC0 800DCD20 02402025 */  move  $a0, $s2
/* B53EC4 800DCD24 001E3040 */  sll   $a2, $fp, 1
/* B53EC8 800DCD28 24C60020 */  addiu $a2, $a2, 0x20
/* B53ECC 800DCD2C 26520008 */  addiu $s2, $s2, 8
/* B53ED0 800DCD30 24050580 */  li    $a1, 1408
/* B53ED4 800DCD34 AFA00138 */  sw    $zero, 0x138($sp)
/* B53ED8 800DCD38 AFA00120 */  sw    $zero, 0x120($sp)
/* B53EDC 800DCD3C 03C04825 */  move  $t1, $fp
/* B53EE0 800DCD40 03C0A825 */  move  $s5, $fp
/* B53EE4 800DCD44 AFBE0104 */  sw    $fp, 0x104($sp)
/* B53EE8 800DCD48 0C036EE7 */  jal   func_800DBB9C
/* B53EEC 800DCD4C AFAA00D4 */   sw    $t2, 0xd4($sp)
/* B53EF0 800DCD50 8FA90104 */  lw    $t1, 0x104($sp)
/* B53EF4 800DCD54 8FAA00D4 */  lw    $t2, 0xd4($sp)
/* B53EF8 800DCD58 100000FE */  b     .L800DD154
/* B53EFC 800DCD5C 8FAB0168 */   lw    $t3, 0x168($sp)
glabel L800DCD60
/* B53F00 800DCD60 02402025 */  move  $a0, $s2
/* B53F04 800DCD64 001E3040 */  sll   $a2, $fp, 1
/* B53F08 800DCD68 24C60020 */  addiu $a2, $a2, 0x20
/* B53F0C 800DCD6C 26520008 */  addiu $s2, $s2, 8
/* B53F10 800DCD70 24050580 */  li    $a1, 1408
/* B53F14 800DCD74 AFA00138 */  sw    $zero, 0x138($sp)
/* B53F18 800DCD78 AFA00120 */  sw    $zero, 0x120($sp)
/* B53F1C 800DCD7C 03C04825 */  move  $t1, $fp
/* B53F20 800DCD80 03C0A825 */  move  $s5, $fp
/* B53F24 800DCD84 AFBE0104 */  sw    $fp, 0x104($sp)
/* B53F28 800DCD88 0C036EE7 */  jal   func_800DBB9C
/* B53F2C 800DCD8C AFAA00D4 */   sw    $t2, 0xd4($sp)
/* B53F30 800DCD90 8FA90104 */  lw    $t1, 0x104($sp)
/* B53F34 800DCD94 8FAA00D4 */  lw    $t2, 0xd4($sp)
/* B53F38 800DCD98 100000EE */  b     .L800DD154
/* B53F3C 800DCD9C 8FAB0168 */   lw    $t3, 0x168($sp)
glabel L800DCDA0
.L800DCDA0:
/* B53F40 800DCDA0 12200044 */  beqz  $s1, .L800DCEB4
/* B53F44 800DCDA4 8FAE00CC */   lw    $t6, 0xcc($sp)
/* B53F48 800DCDA8 00CEC021 */  addu  $t8, $a2, $t6
/* B53F4C 800DCDAC 03131823 */  subu  $v1, $t8, $s3
/* B53F50 800DCDB0 04610002 */  bgez  $v1, .L800DCDBC
/* B53F54 800DCDB4 00600821 */   addu  $at, $v1, $zero
/* B53F58 800DCDB8 2461000F */  addiu $at, $v1, 0xf
.L800DCDBC:
/* B53F5C 800DCDBC 00011903 */  sra   $v1, $at, 4
/* B53F60 800DCDC0 00081100 */  sll   $v0, $t0, 4
/* B53F64 800DCDC4 00021782 */  srl   $v0, $v0, 0x1e
/* B53F68 800DCDC8 14400008 */  bnez  $v0, .L800DCDEC
/* B53F6C 800DCDCC 24010001 */   li    $at, 1
/* B53F70 800DCDD0 006A0019 */  multu $v1, $t2
/* B53F74 800DCDD4 8FAF00C8 */  lw    $t7, 0xc8($sp)
/* B53F78 800DCDD8 8FAD0110 */  lw    $t5, 0x110($sp)
/* B53F7C 800DCDDC 00006012 */  mflo  $t4
/* B53F80 800DCDE0 01ECC821 */  addu  $t9, $t7, $t4
/* B53F84 800DCDE4 1000001A */  b     .L800DCE50
/* B53F88 800DCDE8 032D2821 */   addu  $a1, $t9, $t5
.L800DCDEC:
/* B53F8C 800DCDEC 14410003 */  bne   $v0, $at, .L800DCDFC
/* B53F90 800DCDF0 00000000 */   nop   
/* B53F94 800DCDF4 10000201 */  b     .L800DD5FC
/* B53F98 800DCDF8 02401025 */   move  $v0, $s2
.L800DCDFC:
/* B53F9C 800DCDFC 006A0019 */  multu $v1, $t2
/* B53FA0 800DCE00 8FAE00C8 */  lw    $t6, 0xc8($sp)
/* B53FA4 800DCE04 8FAC0110 */  lw    $t4, 0x110($sp)
/* B53FA8 800DCE08 2401FFF0 */  li    $at, -16
/* B53FAC 800DCE0C 8FA60138 */  lw    $a2, 0x138($sp)
/* B53FB0 800DCE10 25670001 */  addiu $a3, $t3, 1
/* B53FB4 800DCE14 AFA20010 */  sw    $v0, 0x10($sp)
/* B53FB8 800DCE18 AFA90104 */  sw    $t1, 0x104($sp)
/* B53FBC 800DCE1C AFAA00D4 */  sw    $t2, 0xd4($sp)
/* B53FC0 800DCE20 0000C012 */  mflo  $t8
/* B53FC4 800DCE24 01D87821 */  addu  $t7, $t6, $t8
/* B53FC8 800DCE28 01EC2021 */  addu  $a0, $t7, $t4
/* B53FCC 800DCE2C 022A0019 */  multu $s1, $t2
/* B53FD0 800DCE30 00002812 */  mflo  $a1
/* B53FD4 800DCE34 24A5001F */  addiu $a1, $a1, 0x1f
/* B53FD8 800DCE38 0C0384B7 */  jal   func_800E12DC
/* B53FDC 800DCE3C 00A12824 */   and   $a1, $a1, $at
/* B53FE0 800DCE40 8FA90104 */  lw    $t1, 0x104($sp)
/* B53FE4 800DCE44 8FAA00D4 */  lw    $t2, 0xd4($sp)
/* B53FE8 800DCE48 8FAB0168 */  lw    $t3, 0x168($sp)
/* B53FEC 800DCE4C 00402825 */  move  $a1, $v0
.L800DCE50:
/* B53FF0 800DCE50 14A00003 */  bnez  $a1, .L800DCE60
/* B53FF4 800DCE54 00000000 */   nop   
/* B53FF8 800DCE58 100001E8 */  b     .L800DD5FC
/* B53FFC 800DCE5C 02401025 */   move  $v0, $s2
.L800DCE60:
/* B54000 800DCE60 022A0019 */  multu $s1, $t2
/* B54004 800DCE64 3C011400 */  lui   $at, 0x1400
/* B54008 800DCE68 240F0940 */  li    $t7, 2368
/* B5400C 800DCE6C 30A8000F */  andi  $t0, $a1, 0xf
/* B54010 800DCE70 02402025 */  move  $a0, $s2
/* B54014 800DCE74 00A86023 */  subu  $t4, $a1, $t0
/* B54018 800DCE78 AC8C0004 */  sw    $t4, 4($a0)
/* B5401C 800DCE7C 26520008 */  addiu $s2, $s2, 8
/* B54020 800DCE80 00001012 */  mflo  $v0
/* B54024 800DCE84 2442001F */  addiu $v0, $v0, 0x1f
/* B54028 800DCE88 3042FFF0 */  andi  $v0, $v0, 0xfff0
/* B5402C 800DCE8C 0002C903 */  sra   $t9, $v0, 4
/* B54030 800DCE90 332D00FF */  andi  $t5, $t9, 0xff
/* B54034 800DCE94 000D7400 */  sll   $t6, $t5, 0x10
/* B54038 800DCE98 01C1C025 */  or    $t8, $t6, $at
/* B5403C 800DCE9C 01E26823 */  subu  $t5, $t7, $v0
/* B54040 800DCEA0 31AEFFFF */  andi  $t6, $t5, 0xffff
/* B54044 800DCEA4 030E7825 */  or    $t7, $t8, $t6
/* B54048 800DCEA8 AC8F0000 */  sw    $t7, ($a0)
/* B5404C 800DCEAC 10000004 */  b     .L800DCEC0
/* B54050 800DCEB0 91660000 */   lbu   $a2, ($t3)
.L800DCEB4:
/* B54054 800DCEB4 00008025 */  move  $s0, $zero
/* B54058 800DCEB8 00004025 */  move  $t0, $zero
/* B5405C 800DCEBC 91660000 */  lbu   $a2, ($t3)
.L800DCEC0:
/* B54060 800DCEC0 10C0000B */  beqz  $a2, .L800DCEF0
/* B54064 800DCEC4 02401025 */   move  $v0, $s2
/* B54068 800DCEC8 3C190F00 */  lui   $t9, 0xf00
/* B5406C 800DCECC AC590000 */  sw    $t9, ($v0)
/* B54070 800DCED0 8FAD0150 */  lw    $t5, 0x150($sp)
/* B54074 800DCED4 240F0002 */  li    $t7, 2
/* B54078 800DCED8 26520008 */  addiu $s2, $s2, 8
/* B5407C 800DCEDC 8DB80008 */  lw    $t8, 8($t5)
/* B54080 800DCEE0 270E0010 */  addiu $t6, $t8, 0x10
/* B54084 800DCEE4 AC4E0004 */  sw    $t6, 4($v0)
/* B54088 800DCEE8 AFAF0138 */  sw    $t7, 0x138($sp)
/* B5408C 800DCEEC A1600000 */  sb    $zero, ($t3)
.L800DCEF0:
/* B54090 800DCEF0 8FAC0150 */  lw    $t4, 0x150($sp)
/* B54094 800DCEF4 0013C840 */  sll   $t9, $s3, 1
/* B54098 800DCEF8 2401FFF0 */  li    $at, -16
/* B5409C 800DCEFC 8D870000 */  lw    $a3, ($t4)
/* B540A0 800DCF00 15200003 */  bnez  $t1, .L800DCF10
/* B540A4 800DCF04 00073F02 */   srl   $a3, $a3, 0x1c
/* B540A8 800DCF08 10000003 */  b     .L800DCF18
/* B540AC 800DCF0C AFB90120 */   sw    $t9, 0x120($sp)
.L800DCF10:
/* B540B0 800DCF10 26B4001F */  addiu $s4, $s5, 0x1f
/* B540B4 800DCF14 0281A024 */  and   $s4, $s4, $at
.L800DCF18:
/* B540B8 800DCF18 10E00007 */  beqz  $a3, .L800DCF38
/* B540BC 800DCF1C 24010001 */   li    $at, 1
/* B540C0 800DCF20 10E10042 */  beq   $a3, $at, .L800DD02C
/* B540C4 800DCF24 24010003 */   li    $at, 3
/* B540C8 800DCF28 10E10021 */  beq   $a3, $at, .L800DCFB0
/* B540CC 800DCF2C 00000000 */   nop   
/* B540D0 800DCF30 10000059 */  b     .L800DD098
/* B540D4 800DCF34 00000000 */   nop   
.L800DCF38:
/* B540D8 800DCF38 022A0019 */  multu $s1, $t2
/* B540DC 800DCF3C 240F0940 */  li    $t7, 2368
/* B540E0 800DCF40 3C010800 */  lui   $at, 0x800
/* B540E4 800DCF44 02401025 */  move  $v0, $s2
/* B540E8 800DCF48 26990580 */  addiu $t9, $s4, 0x580
/* B540EC 800DCF4C 26520008 */  addiu $s2, $s2, 8
/* B540F0 800DCF50 02401825 */  move  $v1, $s2
/* B540F4 800DCF54 26520008 */  addiu $s2, $s2, 8
/* B540F8 800DCF58 00006812 */  mflo  $t5
/* B540FC 800DCF5C 25B8001F */  addiu $t8, $t5, 0x1f
/* B54100 800DCF60 330EFFF0 */  andi  $t6, $t8, 0xfff0
/* B54104 800DCF64 01EE6823 */  subu  $t5, $t7, $t6
/* B54108 800DCF68 01A8C021 */  addu  $t8, $t5, $t0
/* B5410C 800DCF6C 330FFFFF */  andi  $t7, $t8, 0xffff
/* B54110 800DCF70 01E17025 */  or    $t6, $t7, $at
/* B54114 800DCF74 0010C040 */  sll   $t8, $s0, 1
/* B54118 800DCF78 330FFFFF */  andi  $t7, $t8, 0xffff
/* B5411C 800DCF7C AC4E0000 */  sw    $t6, ($v0)
/* B54120 800DCF80 00196C00 */  sll   $t5, $t9, 0x10
/* B54124 800DCF84 01AF7025 */  or    $t6, $t5, $t7
/* B54128 800DCF88 AC4E0004 */  sw    $t6, 4($v0)
/* B5412C 800DCF8C 8FAC0138 */  lw    $t4, 0x138($sp)
/* B54130 800DCF90 3C010100 */  lui   $at, 0x100
/* B54134 800DCF94 319900FF */  andi  $t9, $t4, 0xff
/* B54138 800DCF98 0019C400 */  sll   $t8, $t9, 0x10
/* B5413C 800DCF9C 03016825 */  or    $t5, $t8, $at
/* B54140 800DCFA0 AC6D0000 */  sw    $t5, ($v1)
/* B54144 800DCFA4 8D6F000C */  lw    $t7, 0xc($t3)
/* B54148 800DCFA8 1000003B */  b     .L800DD098
/* B5414C 800DCFAC AC6F0004 */   sw    $t7, 4($v1)
.L800DCFB0:
/* B54150 800DCFB0 022A0019 */  multu $s1, $t2
/* B54154 800DCFB4 24180940 */  li    $t8, 2368
/* B54158 800DCFB8 3C010800 */  lui   $at, 0x800
/* B5415C 800DCFBC 02401025 */  move  $v0, $s2
/* B54160 800DCFC0 268F0580 */  addiu $t7, $s4, 0x580
/* B54164 800DCFC4 26520008 */  addiu $s2, $s2, 8
/* B54168 800DCFC8 02401825 */  move  $v1, $s2
/* B5416C 800DCFCC 26520008 */  addiu $s2, $s2, 8
/* B54170 800DCFD0 00007012 */  mflo  $t6
/* B54174 800DCFD4 25CC001F */  addiu $t4, $t6, 0x1f
/* B54178 800DCFD8 3199FFF0 */  andi  $t9, $t4, 0xfff0
/* B5417C 800DCFDC 03197023 */  subu  $t6, $t8, $t9
/* B54180 800DCFE0 01C86021 */  addu  $t4, $t6, $t0
/* B54184 800DCFE4 3198FFFF */  andi  $t8, $t4, 0xffff
/* B54188 800DCFE8 0301C825 */  or    $t9, $t8, $at
/* B5418C 800DCFEC 00106040 */  sll   $t4, $s0, 1
/* B54190 800DCFF0 3198FFFF */  andi  $t8, $t4, 0xffff
/* B54194 800DCFF4 AC590000 */  sw    $t9, ($v0)
/* B54198 800DCFF8 000F7400 */  sll   $t6, $t7, 0x10
/* B5419C 800DCFFC 01D8C825 */  or    $t9, $t6, $t8
/* B541A0 800DD000 AC590004 */  sw    $t9, 4($v0)
/* B541A4 800DD004 8FAD0138 */  lw    $t5, 0x138($sp)
/* B541A8 800DD008 3C010100 */  lui   $at, 0x100
/* B541AC 800DD00C 35AF0004 */  ori   $t7, $t5, 4
/* B541B0 800DD010 31EC00FF */  andi  $t4, $t7, 0xff
/* B541B4 800DD014 000C7400 */  sll   $t6, $t4, 0x10
/* B541B8 800DD018 01C1C025 */  or    $t8, $t6, $at
/* B541BC 800DD01C AC780000 */  sw    $t8, ($v1)
/* B541C0 800DD020 8D79000C */  lw    $t9, 0xc($t3)
/* B541C4 800DD024 1000001C */  b     .L800DD098
/* B541C8 800DD028 AC790004 */   sw    $t9, 4($v1)
.L800DD02C:
/* B541CC 800DD02C 022A0019 */  multu $s1, $t2
/* B541D0 800DD030 240E0940 */  li    $t6, 2368
/* B541D4 800DD034 02402025 */  move  $a0, $s2
/* B541D8 800DD038 26520008 */  addiu $s2, $s2, 8
/* B541DC 800DD03C 00002825 */  move  $a1, $zero
/* B541E0 800DD040 26870580 */  addiu $a3, $s4, 0x580
/* B541E4 800DD044 AFA90104 */  sw    $t1, 0x104($sp)
/* B541E8 800DD048 AFAA00D4 */  sw    $t2, 0xd4($sp)
/* B541EC 800DD04C 00006812 */  mflo  $t5
/* B541F0 800DD050 25AF001F */  addiu $t7, $t5, 0x1f
/* B541F4 800DD054 31ECFFF0 */  andi  $t4, $t7, 0xfff0
/* B541F8 800DD058 01CCC023 */  subu  $t8, $t6, $t4
/* B541FC 800DD05C 0018CC00 */  sll   $t9, $t8, 0x10
/* B54200 800DD060 00196C03 */  sra   $t5, $t9, 0x10
/* B54204 800DD064 00107840 */  sll   $t7, $s0, 1
/* B54208 800DD068 AFAF0010 */  sw    $t7, 0x10($sp)
/* B5420C 800DD06C 0C036F08 */  jal   func_800DBC20
/* B54210 800DD070 01A83021 */   addu  $a2, $t5, $t0
/* B54214 800DD074 8FAB0168 */  lw    $t3, 0x168($sp)
/* B54218 800DD078 02402025 */  move  $a0, $s2
/* B5421C 800DD07C 26520008 */  addiu $s2, $s2, 8
/* B54220 800DD080 8FA50138 */  lw    $a1, 0x138($sp)
/* B54224 800DD084 0C036F65 */  jal   func_800DBD94
/* B54228 800DD088 8D66000C */   lw    $a2, 0xc($t3)
/* B5422C 800DD08C 8FA90104 */  lw    $t1, 0x104($sp)
/* B54230 800DD090 8FAA00D4 */  lw    $t2, 0xd4($sp)
/* B54234 800DD094 8FAB0168 */  lw    $t3, 0x168($sp)
.L800DD098:
/* B54238 800DD098 11200013 */  beqz  $t1, .L800DD0E8
/* B5423C 800DD09C 02401025 */   move  $v0, $s2
/* B54240 800DD0A0 00137040 */  sll   $t6, $s3, 1
/* B54244 800DD0A4 028E6021 */  addu  $t4, $s4, $t6
/* B54248 800DD0A8 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* B5424C 800DD0AC 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* B54250 800DD0B0 25980580 */  addiu $t8, $t4, 0x580
/* B54254 800DD0B4 0301C824 */  and   $t9, $t8, $at
/* B54258 800DD0B8 3C010A00 */  lui   $at, 0xa00
/* B5425C 800DD0BC 03216825 */  or    $t5, $t9, $at
/* B54260 800DD0C0 0216C021 */  addu  $t8, $s0, $s6
/* B54264 800DD0C4 0317C823 */  subu  $t9, $t8, $s7
/* B54268 800DD0C8 AC4D0000 */  sw    $t5, ($v0)
/* B5426C 800DD0CC 00196840 */  sll   $t5, $t9, 1
/* B54270 800DD0D0 26AE0580 */  addiu $t6, $s5, 0x580
/* B54274 800DD0D4 000E6400 */  sll   $t4, $t6, 0x10
/* B54278 800DD0D8 31AFFFFF */  andi  $t7, $t5, 0xffff
/* B5427C 800DD0DC 018F7025 */  or    $t6, $t4, $t7
/* B54280 800DD0E0 AC4E0004 */  sw    $t6, 4($v0)
/* B54284 800DD0E4 26520008 */  addiu $s2, $s2, 8
.L800DD0E8:
/* B54288 800DD0E8 8FB90138 */  lw    $t9, 0x138($sp)
/* B5428C 800DD0EC 0216C021 */  addu  $t8, $s0, $s6
/* B54290 800DD0F0 03171823 */  subu  $v1, $t8, $s7
/* B54294 800DD0F4 24010001 */  li    $at, 1
/* B54298 800DD0F8 13210007 */  beq   $t9, $at, .L800DD118
/* B5429C 800DD0FC 01234821 */   addu  $t1, $t1, $v1
/* B542A0 800DD100 3B220002 */  xori  $v0, $t9, 2
/* B542A4 800DD104 2C420001 */  sltiu $v0, $v0, 1
/* B542A8 800DD108 14400009 */  bnez  $v0, .L800DD130
/* B542AC 800DD10C AFA00138 */   sw    $zero, 0x138($sp)
/* B542B0 800DD110 1000000A */  b     .L800DD13C
/* B542B4 800DD114 00037840 */   sll   $t7, $v1, 1
.L800DD118:
/* B542B8 800DD118 240D0020 */  li    $t5, 32
/* B542BC 800DD11C 0010A840 */  sll   $s5, $s0, 1
/* B542C0 800DD120 AFAD0120 */  sw    $t5, 0x120($sp)
/* B542C4 800DD124 26B50020 */  addiu $s5, $s5, 0x20
/* B542C8 800DD128 1000000A */  b     .L800DD154
/* B542CC 800DD12C AFA00138 */   sw    $zero, 0x138($sp)
.L800DD130:
/* B542D0 800DD130 00036040 */  sll   $t4, $v1, 1
/* B542D4 800DD134 10000007 */  b     .L800DD154
/* B542D8 800DD138 0195A821 */   addu  $s5, $t4, $s5
.L800DD13C:
/* B542DC 800DD13C 52A00004 */  beql  $s5, $zero, .L800DD150
/* B542E0 800DD140 0263A821 */   addu  $s5, $s3, $v1
/* B542E4 800DD144 10000003 */  b     .L800DD154
/* B542E8 800DD148 01F5A821 */   addu  $s5, $t7, $s5
/* B542EC 800DD14C 0263A821 */  addu  $s5, $s3, $v1
.L800DD150:
/* B542F0 800DD150 0015A840 */  sll   $s5, $s5, 1
.L800DD154:
/* B542F4 800DD154 8FAE0140 */  lw    $t6, 0x140($sp)
/* B542F8 800DD158 8FAF013C */  lw    $t7, 0x13c($sp)
/* B542FC 800DD15C 8FAC00FC */  lw    $t4, 0xfc($sp)
/* B54300 800DD160 11C00014 */  beqz  $t6, .L800DD1B4
/* B54304 800DD164 02402025 */   move  $a0, $s2
/* B54308 800DD168 03C93023 */  subu  $a2, $fp, $t1
/* B5430C 800DD16C 24180001 */  li    $t8, 1
/* B54310 800DD170 AFB80088 */  sw    $t8, 0x88($sp)
/* B54314 800DD174 00063040 */  sll   $a2, $a2, 1
/* B54318 800DD178 26520008 */  addiu $s2, $s2, 8
/* B5431C 800DD17C 26A50580 */  addiu $a1, $s5, 0x580
/* B54320 800DD180 0C036EE7 */  jal   func_800DBB9C
/* B54324 800DD184 AFAA00D4 */   sw    $t2, 0xd4($sp)
/* B54328 800DD188 8FA2009C */  lw    $v0, 0x9c($sp)
/* B5432C 800DD18C 904D00C0 */  lbu   $t5, 0xc0($v0)
/* B54330 800DD190 35AC0020 */  ori   $t4, $t5, 0x20
/* B54334 800DD194 A04C00C0 */  sb    $t4, 0xc0($v0)
/* B54338 800DD198 8FA50160 */  lw    $a1, 0x160($sp)
/* B5433C 800DD19C 0C036CB0 */  jal   func_800DB2C0
/* B54340 800DD1A0 8FA40178 */   lw    $a0, 0x178($sp)
/* B54344 800DD1A4 8FAA00D4 */  lw    $t2, 0xd4($sp)
/* B54348 800DD1A8 8FAB0168 */  lw    $t3, 0x168($sp)
/* B5434C 800DD1AC 1000000E */  b     .L800DD1E8
/* B54350 800DD1B0 8FA300C0 */   lw    $v1, 0xc0($sp)
.L800DD1B4:
/* B54354 800DD1B4 11E00006 */  beqz  $t7, .L800DD1D0
/* B54358 800DD1B8 240E0001 */   li    $t6, 1
/* B5435C 800DD1BC A16E0000 */  sb    $t6, ($t3)
/* B54360 800DD1C0 8FB8014C */  lw    $t8, 0x14c($sp)
/* B54364 800DD1C4 8F190000 */  lw    $t9, ($t8)
/* B54368 800DD1C8 10000004 */  b     .L800DD1DC
/* B5436C 800DD1CC AD790008 */   sw    $t9, 8($t3)
.L800DD1D0:
/* B54370 800DD1D0 8D6D0008 */  lw    $t5, 8($t3)
/* B54374 800DD1D4 01AC7821 */  addu  $t7, $t5, $t4
/* B54378 800DD1D8 AD6F0008 */  sw    $t7, 8($t3)
.L800DD1DC:
/* B5437C 800DD1DC 553EFE86 */  bnel  $t1, $fp, .L800DCBF8
/* B54380 800DD1E0 AFA00140 */   sw    $zero, 0x140($sp)
/* B54384 800DD1E4 8FA300C0 */  lw    $v1, 0xc0($sp)
.L800DD1E8:
/* B54388 800DD1E8 24010001 */  li    $at, 1
.L800DD1EC:
/* B5438C 800DD1EC 10610006 */  beq   $v1, $at, .L800DD208
/* B54390 800DD1F0 8FAE0120 */   lw    $t6, 0x120($sp)
/* B54394 800DD1F4 24010002 */  li    $at, 2
/* B54398 800DD1F8 10610006 */  beq   $v1, $at, .L800DD214
/* B5439C 800DD1FC 8FB900BC */   lw    $t9, 0xbc($sp)
/* B543A0 800DD200 1000003B */  b     .L800DD2F0
/* B543A4 800DD204 8FAF0088 */   lw    $t7, 0x88($sp)
.L800DD208:
/* B543A8 800DD208 25D80580 */  addiu $t8, $t6, 0x580
/* B543AC 800DD20C 10000037 */  b     .L800DD2EC
/* B543B0 800DD210 A7B800AE */   sh    $t8, 0xae($sp)
.L800DD214:
/* B543B4 800DD214 13200006 */  beqz  $t9, .L800DD230
/* B543B8 800DD218 02402025 */   move  $a0, $s2
/* B543BC 800DD21C 24010001 */  li    $at, 1
/* B543C0 800DD220 13210021 */  beq   $t9, $at, .L800DD2A8
/* B543C4 800DD224 02402025 */   move  $a0, $s2
/* B543C8 800DD228 10000031 */  b     .L800DD2F0
/* B543CC 800DD22C 8FAF0088 */   lw    $t7, 0x88($sp)
.L800DD230:
/* B543D0 800DD230 8FA50120 */  lw    $a1, 0x120($sp)
/* B543D4 800DD234 240D03E0 */  li    $t5, 992
/* B543D8 800DD238 A7AD00AE */  sh    $t5, 0xae($sp)
/* B543DC 800DD23C 240603E0 */  li    $a2, 992
/* B543E0 800DD240 26520008 */  addiu $s2, $s2, 8
/* B543E4 800DD244 AFAA00D4 */  sw    $t2, 0xd4($sp)
/* B543E8 800DD248 24A50580 */  addiu $a1, $a1, 0x580
/* B543EC 800DD24C 07C10003 */  bgez  $fp, .L800DD25C
/* B543F0 800DD250 001E3843 */   sra   $a3, $fp, 1
/* B543F4 800DD254 27C10001 */  addiu $at, $fp, 1
/* B543F8 800DD258 00013843 */  sra   $a3, $at, 1
.L800DD25C:
/* B543FC 800DD25C 2401FFF8 */  li    $at, -8
/* B54400 800DD260 24E70007 */  addiu $a3, $a3, 7
/* B54404 800DD264 0C036F2C */  jal   func_800DBCB0
/* B54408 800DD268 00E13824 */   and   $a3, $a3, $at
/* B5440C 800DD26C 8FAC0088 */  lw    $t4, 0x88($sp)
/* B54410 800DD270 8FAA00D4 */  lw    $t2, 0xd4($sp)
/* B54414 800DD274 8FAB0168 */  lw    $t3, 0x168($sp)
/* B54418 800DD278 11800009 */  beqz  $t4, .L800DD2A0
/* B5441C 800DD27C AFBE00B0 */   sw    $fp, 0xb0($sp)
/* B54420 800DD280 02402025 */  move  $a0, $s2
/* B54424 800DD284 26520008 */  addiu $s2, $s2, 8
/* B54428 800DD288 27C503E0 */  addiu $a1, $fp, 0x3e0
/* B5442C 800DD28C 27C60010 */  addiu $a2, $fp, 0x10
/* B54430 800DD290 0C036EE7 */  jal   func_800DBB9C
/* B54434 800DD294 AFAA00D4 */   sw    $t2, 0xd4($sp)
/* B54438 800DD298 8FAA00D4 */  lw    $t2, 0xd4($sp)
/* B5443C 800DD29C 8FAB0168 */  lw    $t3, 0x168($sp)
.L800DD2A0:
/* B54440 800DD2A0 10000012 */  b     .L800DD2EC
/* B54444 800DD2A4 8FA300C0 */   lw    $v1, 0xc0($sp)
.L800DD2A8:
/* B54448 800DD2A8 8FA50120 */  lw    $a1, 0x120($sp)
/* B5444C 800DD2AC 8FA600B0 */  lw    $a2, 0xb0($sp)
/* B54450 800DD2B0 26520008 */  addiu $s2, $s2, 8
/* B54454 800DD2B4 AFAA00D4 */  sw    $t2, 0xd4($sp)
/* B54458 800DD2B8 24A50580 */  addiu $a1, $a1, 0x580
/* B5445C 800DD2BC 24C603E0 */  addiu $a2, $a2, 0x3e0
/* B54460 800DD2C0 07C10003 */  bgez  $fp, .L800DD2D0
/* B54464 800DD2C4 001E3843 */   sra   $a3, $fp, 1
/* B54468 800DD2C8 27C10001 */  addiu $at, $fp, 1
/* B5446C 800DD2CC 00013843 */  sra   $a3, $at, 1
.L800DD2D0:
/* B54470 800DD2D0 2401FFF8 */  li    $at, -8
/* B54474 800DD2D4 24E70007 */  addiu $a3, $a3, 7
/* B54478 800DD2D8 0C036F2C */  jal   func_800DBCB0
/* B5447C 800DD2DC 00E13824 */   and   $a3, $a3, $at
/* B54480 800DD2E0 8FAA00D4 */  lw    $t2, 0xd4($sp)
/* B54484 800DD2E4 8FAB0168 */  lw    $t3, 0x168($sp)
/* B54488 800DD2E8 8FA300C0 */  lw    $v1, 0xc0($sp)
.L800DD2EC:
/* B5448C 800DD2EC 8FAF0088 */  lw    $t7, 0x88($sp)
.L800DD2F0:
/* B54490 800DD2F0 8FB800BC */  lw    $t8, 0xbc($sp)
/* B54494 800DD2F4 11E00007 */  beqz  $t7, .L800DD314
/* B54498 800DD2F8 27190001 */   addiu $t9, $t8, 1
/* B5449C 800DD2FC 8FB10164 */  lw    $s1, 0x164($sp)
/* B544A0 800DD300 8FB00168 */  lw    $s0, 0x168($sp)
/* B544A4 800DD304 240A0001 */  li    $t2, 1
/* B544A8 800DD308 8E230000 */  lw    $v1, ($s1)
/* B544AC 800DD30C 10000009 */  b     .L800DD334
/* B544B0 800DD310 AFB20174 */   sw    $s2, 0x174($sp)
.L800DD314:
/* B544B4 800DD314 1723FDF3 */  bne   $t9, $v1, .L800DCAE4
/* B544B8 800DD318 AFB900BC */   sw    $t9, 0xbc($sp)
/* B544BC 800DD31C 8FB10164 */  lw    $s1, 0x164($sp)
/* B544C0 800DD320 AFAA00D4 */  sw    $t2, 0xd4($sp)
/* B544C4 800DD324 240A0001 */  li    $t2, 1
/* B544C8 800DD328 8E230000 */  lw    $v1, ($s1)
/* B544CC 800DD32C AFB20174 */  sw    $s2, 0x174($sp)
/* B544D0 800DD330 8FB00168 */  lw    $s0, 0x168($sp)
.L800DD334:
/* B544D4 800DD334 00036040 */  sll   $t4, $v1, 1
/* B544D8 800DD338 000C7FC2 */  srl   $t7, $t4, 0x1f
/* B544DC 800DD33C 8FB20174 */  lw    $s2, 0x174($sp)
/* B544E0 800DD340 154F0005 */  bne   $t2, $t7, .L800DD358
/* B544E4 800DD344 00004825 */   move  $t1, $zero
/* B544E8 800DD348 922E0000 */  lbu   $t6, ($s1)
/* B544EC 800DD34C 24090001 */  li    $t1, 1
/* B544F0 800DD350 31D8FFBF */  andi  $t8, $t6, 0xffbf
/* B544F4 800DD354 A2380000 */  sb    $t8, ($s1)
.L800DD358:
/* B544F8 800DD358 8FB40170 */  lw    $s4, 0x170($sp)
/* B544FC 800DD35C 97B900AE */  lhu   $t9, 0xae($sp)
/* B54500 800DD360 02402025 */  move  $a0, $s2
/* B54504 800DD364 0014A040 */  sll   $s4, $s4, 1
/* B54508 800DD368 02803025 */  move  $a2, $s4
/* B5450C 800DD36C 02002825 */  move  $a1, $s0
/* B54510 800DD370 97A70136 */  lhu   $a3, 0x136($sp)
/* B54514 800DD374 AFA90014 */  sw    $t1, 0x14($sp)
/* B54518 800DD378 AFA90138 */  sw    $t1, 0x138($sp)
/* B5451C 800DD37C AFB00168 */  sw    $s0, 0x168($sp)
/* B54520 800DD380 AFB10164 */  sw    $s1, 0x164($sp)
/* B54524 800DD384 0C03758B */  jal   func_800DD62C
/* B54528 800DD388 AFB90010 */   sw    $t9, 0x10($sp)
/* B5452C 800DD38C 8FAD008C */  lw    $t5, 0x8c($sp)
/* B54530 800DD390 24010003 */  li    $at, 3
/* B54534 800DD394 00409025 */  move  $s2, $v0
/* B54538 800DD398 15A10007 */  bne   $t5, $at, .L800DD3B8
/* B5453C 800DD39C 00402025 */   move  $a0, $v0
/* B54540 800DD3A0 240503C0 */  li    $a1, 960
/* B54544 800DD3A4 240603C0 */  li    $a2, 960
/* B54548 800DD3A8 02803825 */  move  $a3, $s4
/* B5454C 800DD3AC AFA00010 */  sw    $zero, 0x10($sp)
/* B54550 800DD3B0 0C036F79 */  jal   func_800DBDE4
/* B54554 800DD3B4 24520008 */   addiu $s2, $v0, 8
.L800DD3B8:
/* B54558 800DD3B8 8FAC008C */  lw    $t4, 0x8c($sp)
/* B5455C 800DD3BC 24010002 */  li    $at, 2
/* B54560 800DD3C0 02402025 */  move  $a0, $s2
/* B54564 800DD3C4 15810005 */  bne   $t4, $at, .L800DD3DC
/* B54568 800DD3C8 240503C0 */   li    $a1, 960
/* B5456C 800DD3CC 240603C0 */  li    $a2, 960
/* B54570 800DD3D0 02803825 */  move  $a3, $s4
/* B54574 800DD3D4 0C036F8E */  jal   func_800DBE38
/* B54578 800DD3D8 26520008 */   addiu $s2, $s2, 8
.L800DD3DC:
/* B5457C 800DD3DC 8FB60164 */  lw    $s6, 0x164($sp)
/* B54580 800DD3E0 02402025 */  move  $a0, $s2
/* B54584 800DD3E4 240603C0 */  li    $a2, 960
/* B54588 800DD3E8 92C50002 */  lbu   $a1, 2($s6)
/* B5458C 800DD3EC 00003825 */  move  $a3, $zero
/* B54590 800DD3F0 268F0020 */  addiu $t7, $s4, 0x20
/* B54594 800DD3F4 10A00007 */  beqz  $a1, .L800DD414
/* B54598 800DD3F8 28A10010 */   slti  $at, $a1, 0x10
/* B5459C 800DD3FC 10200002 */  beqz  $at, .L800DD408
/* B545A0 800DD400 26520008 */   addiu $s2, $s2, 8
/* B545A4 800DD404 24050010 */  li    $a1, 16
.L800DD408:
/* B545A8 800DD408 0C036F6C */  jal   func_800DBDB0
/* B545AC 800DD40C AFAF0010 */   sw    $t7, 0x10($sp)
/* B545B0 800DD410 8FB60164 */  lw    $s6, 0x164($sp)
.L800DD414:
/* B545B4 800DD414 8EC60014 */  lw    $a2, 0x14($s6)
/* B545B8 800DD418 02402025 */  move  $a0, $s2
/* B545BC 800DD41C 02802825 */  move  $a1, $s4
/* B545C0 800DD420 50C0000D */  beql  $a2, $zero, .L800DD458
/* B545C4 800DD424 8FB10168 */   lw    $s1, 0x168($sp)
/* B545C8 800DD428 0C036FA6 */  jal   func_800DBE98
/* B545CC 800DD42C 26520008 */   addiu $s2, $s2, 8
/* B545D0 800DD430 8FAE0168 */  lw    $t6, 0x168($sp)
/* B545D4 800DD434 02402025 */  move  $a0, $s2
/* B545D8 800DD438 26520008 */  addiu $s2, $s2, 8
/* B545DC 800DD43C 8DC7000C */  lw    $a3, 0xc($t6)
/* B545E0 800DD440 8FA50138 */  lw    $a1, 0x138($sp)
/* B545E4 800DD444 240603C0 */  li    $a2, 960
/* B545E8 800DD448 0C036F9D */  jal   func_800DBE74
/* B545EC 800DD44C 24E70040 */   addiu $a3, $a3, 0x40
/* B545F0 800DD450 8FB60164 */  lw    $s6, 0x164($sp)
/* B545F4 800DD454 8FB10168 */  lw    $s1, 0x168($sp)
.L800DD458:
/* B545F8 800DD458 92D00007 */  lbu   $s0, 7($s6)
/* B545FC 800DD45C 96C3000E */  lhu   $v1, 0xe($s6)
/* B54600 800DD460 8E33000C */  lw    $s3, 0xc($s1)
/* B54604 800DD464 24180001 */  li    $t8, 1
/* B54608 800DD468 0060A825 */  move  $s5, $v1
/* B5460C 800DD46C 12000034 */  beqz  $s0, .L800DD540
/* B54610 800DD470 267300E0 */   addiu $s3, $s3, 0xe0
/* B54614 800DD474 10600032 */  beqz  $v1, .L800DD540
/* B54618 800DD478 02402025 */   move  $a0, $s2
/* B5461C 800DD47C 240503C0 */  li    $a1, 960
/* B54620 800DD480 24060760 */  li    $a2, 1888
/* B54624 800DD484 02803825 */  move  $a3, $s4
/* B54628 800DD488 0C036F19 */  jal   func_800DBC64
/* B5462C 800DD48C 26520008 */   addiu $s2, $s2, 8
/* B54630 800DD490 8FB80168 */  lw    $t8, 0x168($sp)
/* B54634 800DD494 240F0760 */  li    $t7, 1888
/* B54638 800DD498 01F08823 */  subu  $s1, $t7, $s0
/* B5463C 800DD49C 9319001A */  lbu   $t9, 0x1a($t8)
/* B54640 800DD4A0 02202825 */  move  $a1, $s1
/* B54644 800DD4A4 02402025 */  move  $a0, $s2
/* B54648 800DD4A8 1320000B */  beqz  $t9, .L800DD4D8
/* B5464C 800DD4AC 02003025 */   move  $a2, $s0
/* B54650 800DD4B0 240D0760 */  li    $t5, 1888
/* B54654 800DD4B4 01B08823 */  subu  $s1, $t5, $s0
/* B54658 800DD4B8 02402025 */  move  $a0, $s2
/* B5465C 800DD4BC 26520008 */  addiu $s2, $s2, 8
/* B54660 800DD4C0 02202825 */  move  $a1, $s1
/* B54664 800DD4C4 0C036EE7 */  jal   func_800DBB9C
/* B54668 800DD4C8 02003025 */   move  $a2, $s0
/* B5466C 800DD4CC 8FAC0168 */  lw    $t4, 0x168($sp)
/* B54670 800DD4D0 10000004 */  b     .L800DD4E4
/* B54674 800DD4D4 A180001A */   sb    $zero, 0x1a($t4)
.L800DD4D8:
/* B54678 800DD4D8 02603825 */  move  $a3, $s3
/* B5467C 800DD4DC 0C036F44 */  jal   func_800DBD10
/* B54680 800DD4E0 26520008 */   addiu $s2, $s2, 8
.L800DD4E4:
/* B54684 800DD4E4 02402025 */  move  $a0, $s2
/* B54688 800DD4E8 02902823 */  subu  $a1, $s4, $s0
/* B5468C 800DD4EC 24A503C0 */  addiu $a1, $a1, 0x3c0
/* B54690 800DD4F0 26520008 */  addiu $s2, $s2, 8
/* B54694 800DD4F4 02003025 */  move  $a2, $s0
/* B54698 800DD4F8 0C036F4E */  jal   func_800DBD38
/* B5469C 800DD4FC 02603825 */   move  $a3, $s3
/* B546A0 800DD500 02402025 */  move  $a0, $s2
/* B546A4 800DD504 26520008 */  addiu $s2, $s2, 8
/* B546A8 800DD508 00142903 */  sra   $a1, $s4, 4
/* B546AC 800DD50C 02A03025 */  move  $a2, $s5
/* B546B0 800DD510 24070760 */  li    $a3, 1888
/* B546B4 800DD514 0C036EF5 */  jal   func_800DBBD4
/* B546B8 800DD518 AFB10010 */   sw    $s1, 0x10($sp)
/* B546BC 800DD51C 02402025 */  move  $a0, $s2
/* B546C0 800DD520 26520008 */  addiu $s2, $s2, 8
/* B546C4 800DD524 02202825 */  move  $a1, $s1
/* B546C8 800DD528 240603C0 */  li    $a2, 960
/* B546CC 800DD52C 0C036F19 */  jal   func_800DBC64
/* B546D0 800DD530 02803825 */   move  $a3, $s4
/* B546D4 800DD534 8FB10168 */  lw    $s1, 0x168($sp)
/* B546D8 800DD538 10000002 */  b     .L800DD544
/* B546DC 800DD53C 8FB60164 */   lw    $s6, 0x164($sp)
.L800DD540:
/* B546E0 800DD540 A238001A */  sb    $t8, 0x1a($s1)
.L800DD544:
/* B546E4 800DD544 92D90003 */  lbu   $t9, 3($s6)
/* B546E8 800DD548 02402025 */  move  $a0, $s2
/* B546EC 800DD54C 02C02825 */  move  $a1, $s6
/* B546F0 800DD550 17200004 */  bnez  $t9, .L800DD564
/* B546F4 800DD554 02203025 */   move  $a2, $s1
/* B546F8 800DD558 922D0002 */  lbu   $t5, 2($s1)
/* B546FC 800DD55C 51A00004 */  beql  $t5, $zero, .L800DD570
/* B54700 800DD560 92CC0004 */   lbu   $t4, 4($s6)
.L800DD564:
/* B54704 800DD564 1000000A */  b     .L800DD590
/* B54708 800DD568 24100001 */   li    $s0, 1
/* B5470C 800DD56C 92CC0004 */  lbu   $t4, 4($s6)
.L800DD570:
/* B54710 800DD570 15800005 */  bnez  $t4, .L800DD588
/* B54714 800DD574 00000000 */   nop   
/* B54718 800DD578 922F0003 */  lbu   $t7, 3($s1)
/* B5471C 800DD57C 00008025 */  move  $s0, $zero
/* B54720 800DD580 11E00003 */  beqz  $t7, .L800DD590
/* B54724 800DD584 00000000 */   nop   
.L800DD588:
/* B54728 800DD588 10000001 */  b     .L800DD590
/* B5472C 800DD58C 24100002 */   li    $s0, 2
.L800DD590:
/* B54730 800DD590 8FB80138 */  lw    $t8, 0x138($sp)
/* B54734 800DD594 240E03C0 */  li    $t6, 960
/* B54738 800DD598 AFAE0010 */  sw    $t6, 0x10($sp)
/* B5473C 800DD59C 8FA70170 */  lw    $a3, 0x170($sp)
/* B54740 800DD5A0 AFB00014 */  sw    $s0, 0x14($sp)
/* B54744 800DD5A4 0C0375B3 */  jal   func_800DD6CC
/* B54748 800DD5A8 AFB80018 */   sw    $t8, 0x18($sp)
/* B5474C 800DD5AC 8FB90164 */  lw    $t9, 0x164($sp)
/* B54750 800DD5B0 8FAF0138 */  lw    $t7, 0x138($sp)
/* B54754 800DD5B4 00409025 */  move  $s2, $v0
/* B54758 800DD5B8 972D0000 */  lhu   $t5, ($t9)
/* B5475C 800DD5BC 02402025 */  move  $a0, $s2
/* B54760 800DD5C0 02803825 */  move  $a3, $s4
/* B54764 800DD5C4 31AC0001 */  andi  $t4, $t5, 1
/* B54768 800DD5C8 1180000B */  beqz  $t4, .L800DD5F8
/* B5476C 800DD5CC 31EE0001 */   andi  $t6, $t7, 1
/* B54770 800DD5D0 55C00003 */  bnezl $t6, .L800DD5E0
/* B54774 800DD5D4 8FB80138 */   lw    $t8, 0x138($sp)
/* B54778 800DD5D8 AFA00138 */  sw    $zero, 0x138($sp)
/* B5477C 800DD5DC 8FB80138 */  lw    $t8, 0x138($sp)
.L800DD5E0:
/* B54780 800DD5E0 8FA50164 */  lw    $a1, 0x164($sp)
/* B54784 800DD5E4 8FA60168 */  lw    $a2, 0x168($sp)
/* B54788 800DD5E8 AFB00014 */  sw    $s0, 0x14($sp)
/* B5478C 800DD5EC 0C0376D9 */  jal   func_800DDB64
/* B54790 800DD5F0 AFB80010 */   sw    $t8, 0x10($sp)
/* B54794 800DD5F4 00409025 */  move  $s2, $v0
.L800DD5F8:
/* B54798 800DD5F8 02401025 */  move  $v0, $s2
.L800DD5FC:
/* B5479C 800DD5FC 8FBF004C */  lw    $ra, 0x4c($sp)
/* B547A0 800DD600 8FB00028 */  lw    $s0, 0x28($sp)
/* B547A4 800DD604 8FB1002C */  lw    $s1, 0x2c($sp)
/* B547A8 800DD608 8FB20030 */  lw    $s2, 0x30($sp)
/* B547AC 800DD60C 8FB30034 */  lw    $s3, 0x34($sp)
/* B547B0 800DD610 8FB40038 */  lw    $s4, 0x38($sp)
/* B547B4 800DD614 8FB5003C */  lw    $s5, 0x3c($sp)
/* B547B8 800DD618 8FB60040 */  lw    $s6, 0x40($sp)
/* B547BC 800DD61C 8FB70044 */  lw    $s7, 0x44($sp)
/* B547C0 800DD620 8FBE0048 */  lw    $fp, 0x48($sp)
/* B547C4 800DD624 03E00008 */  jr    $ra
/* B547C8 800DD628 27BD0160 */   addiu $sp, $sp, 0x160

glabel func_800DD62C
/* B547CC 800DD62C 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B547D0 800DD630 AFA7002C */  sw    $a3, 0x2c($sp)
/* B547D4 800DD634 30E7FFFF */  andi  $a3, $a3, 0xffff
/* B547D8 800DD638 AFB00018 */  sw    $s0, 0x18($sp)
/* B547DC 800DD63C 00808025 */  move  $s0, $a0
/* B547E0 800DD640 14E00006 */  bnez  $a3, .L800DD65C
/* B547E4 800DD644 AFBF001C */   sw    $ra, 0x1c($sp)
/* B547E8 800DD648 240503C0 */  li    $a1, 960
/* B547EC 800DD64C 0C036EE7 */  jal   func_800DBB9C
/* B547F0 800DD650 26100008 */   addiu $s0, $s0, 8
/* B547F4 800DD654 10000019 */  b     .L800DD6BC
/* B547F8 800DD658 8FBF001C */   lw    $ra, 0x1c($sp)
.L800DD65C:
/* B547FC 800DD65C 97AF0032 */  lhu   $t7, 0x32($sp)
/* B54800 800DD660 3C010800 */  lui   $at, 0x800
/* B54804 800DD664 02001025 */  move  $v0, $s0
/* B54808 800DD668 01E1C025 */  or    $t8, $t7, $at
/* B5480C 800DD66C 3C0103C0 */  lui   $at, 0x3c0
/* B54810 800DD670 30D9FFFF */  andi  $t9, $a2, 0xffff
/* B54814 800DD674 03214025 */  or    $t0, $t9, $at
/* B54818 800DD678 AC480004 */  sw    $t0, 4($v0)
/* B5481C 800DD67C AC580000 */  sw    $t8, ($v0)
/* B54820 800DD680 8FA90034 */  lw    $t1, 0x34($sp)
/* B54824 800DD684 3C010500 */  lui   $at, 0x500
/* B54828 800DD688 26100008 */  addiu $s0, $s0, 8
/* B5482C 800DD68C 312A00FF */  andi  $t2, $t1, 0xff
/* B54830 800DD690 000A5C00 */  sll   $t3, $t2, 0x10
/* B54834 800DD694 01616025 */  or    $t4, $t3, $at
/* B54838 800DD698 30EDFFFF */  andi  $t5, $a3, 0xffff
/* B5483C 800DD69C 018D7025 */  or    $t6, $t4, $t5
/* B54840 800DD6A0 02001825 */  move  $v1, $s0
/* B54844 800DD6A4 AC6E0000 */  sw    $t6, ($v1)
/* B54848 800DD6A8 8CAF000C */  lw    $t7, 0xc($a1)
/* B5484C 800DD6AC 26100008 */  addiu $s0, $s0, 8
/* B54850 800DD6B0 25F80020 */  addiu $t8, $t7, 0x20
/* B54854 800DD6B4 AC780004 */  sw    $t8, 4($v1)
/* B54858 800DD6B8 8FBF001C */  lw    $ra, 0x1c($sp)
.L800DD6BC:
/* B5485C 800DD6BC 02001025 */  move  $v0, $s0
/* B54860 800DD6C0 8FB00018 */  lw    $s0, 0x18($sp)
/* B54864 800DD6C4 03E00008 */  jr    $ra
/* B54868 800DD6C8 27BD0020 */   addiu $sp, $sp, 0x20

glabel func_800DD6CC
/* B5486C 800DD6CC 27BDFF98 */  addiu $sp, $sp, -0x68
/* B54870 800DD6D0 AFBF0024 */  sw    $ra, 0x24($sp)
/* B54874 800DD6D4 AFB10020 */  sw    $s1, 0x20($sp)
/* B54878 800DD6D8 AFB0001C */  sw    $s0, 0x1c($sp)
/* B5487C 800DD6DC AFA70074 */  sw    $a3, 0x74($sp)
/* B54880 800DD6E0 94A20008 */  lhu   $v0, 8($a1)
/* B54884 800DD6E4 94A3000A */  lhu   $v1, 0xa($a1)
/* B54888 800DD6E8 94CD0010 */  lhu   $t5, 0x10($a2)
/* B5488C 800DD6EC 00021100 */  sll   $v0, $v0, 4
/* B54890 800DD6F0 3048FFFF */  andi  $t0, $v0, 0xffff
/* B54894 800DD6F4 00031900 */  sll   $v1, $v1, 4
/* B54898 800DD6F8 00808025 */  move  $s0, $a0
/* B5489C 800DD6FC 00A08825 */  move  $s1, $a1
/* B548A0 800DD700 90AA0005 */  lbu   $t2, 5($a1)
/* B548A4 800DD704 94DF0012 */  lhu   $ra, 0x12($a2)
/* B548A8 800DD708 3063FFFF */  andi  $v1, $v1, 0xffff
/* B548AC 800DD70C 11A80012 */  beq   $t5, $t0, .L800DD758
/* B548B0 800DD710 01A04825 */   move  $t1, $t5
/* B548B4 800DD714 000710C3 */  sra   $v0, $a3, 3
/* B548B8 800DD718 01097023 */  subu  $t6, $t0, $t1
/* B548BC 800DD71C 01C2001A */  div   $zero, $t6, $v0
/* B548C0 800DD720 00003812 */  mflo  $a3
/* B548C4 800DD724 00073C00 */  sll   $a3, $a3, 0x10
/* B548C8 800DD728 14400002 */  bnez  $v0, .L800DD734
/* B548CC 800DD72C 00000000 */   nop   
/* B548D0 800DD730 0007000D */  break 7
.L800DD734:
/* B548D4 800DD734 2401FFFF */  li    $at, -1
/* B548D8 800DD738 14410004 */  bne   $v0, $at, .L800DD74C
/* B548DC 800DD73C 3C018000 */   lui   $at, 0x8000
/* B548E0 800DD740 15C10002 */  bne   $t6, $at, .L800DD74C
/* B548E4 800DD744 00000000 */   nop   
/* B548E8 800DD748 0006000D */  break 6
.L800DD74C:
/* B548EC 800DD74C 00073C03 */  sra   $a3, $a3, 0x10
/* B548F0 800DD750 10000005 */  b     .L800DD768
/* B548F4 800DD754 03E05825 */   move  $t3, $ra
.L800DD758:
/* B548F8 800DD758 8FA20074 */  lw    $v0, 0x74($sp)
/* B548FC 800DD75C 00003825 */  move  $a3, $zero
/* B54900 800DD760 000210C3 */  sra   $v0, $v0, 3
/* B54904 800DD764 03E05825 */  move  $t3, $ra
.L800DD768:
/* B54908 800DD768 13E30011 */  beq   $ra, $v1, .L800DD7B0
/* B5490C 800DD76C 00602025 */   move  $a0, $v1
/* B54910 800DD770 008B7823 */  subu  $t7, $a0, $t3
/* B54914 800DD774 01E2001A */  div   $zero, $t7, $v0
/* B54918 800DD778 00004012 */  mflo  $t0
/* B5491C 800DD77C 00084400 */  sll   $t0, $t0, 0x10
/* B54920 800DD780 14400002 */  bnez  $v0, .L800DD78C
/* B54924 800DD784 00000000 */   nop   
/* B54928 800DD788 0007000D */  break 7
.L800DD78C:
/* B5492C 800DD78C 2401FFFF */  li    $at, -1
/* B54930 800DD790 14410004 */  bne   $v0, $at, .L800DD7A4
/* B54934 800DD794 3C018000 */   lui   $at, 0x8000
/* B54938 800DD798 15E10002 */  bne   $t7, $at, .L800DD7A4
/* B5493C 800DD79C 00000000 */   nop   
/* B54940 800DD7A0 0006000D */  break 6
.L800DD7A4:
/* B54944 800DD7A4 00084403 */  sra   $t0, $t0, 0x10
/* B54948 800DD7A8 10000003 */  b     .L800DD7B8
/* B5494C 800DD7AC 90CC0004 */   lbu   $t4, 4($a2)
.L800DD7B0:
/* B54950 800DD7B0 00004025 */  move  $t0, $zero
/* B54954 800DD7B4 90CC0004 */  lbu   $t4, 4($a2)
.L800DD7B8:
/* B54958 800DD7B8 AFA90030 */  sw    $t1, 0x30($sp)
/* B5495C 800DD7BC 3158007F */  andi  $t8, $t2, 0x7f
/* B54960 800DD7C0 118A0013 */  beq   $t4, $t2, .L800DD810
/* B54964 800DD7C4 3189007F */   andi  $t1, $t4, 0x7f
/* B54968 800DD7C8 3189007F */  andi  $t1, $t4, 0x7f
/* B5496C 800DD7CC 0309C823 */  subu  $t9, $t8, $t1
/* B54970 800DD7D0 00197240 */  sll   $t6, $t9, 9
/* B54974 800DD7D4 01C2001A */  div   $zero, $t6, $v0
/* B54978 800DD7D8 00007812 */  mflo  $t7
/* B5497C 800DD7DC A7AF0052 */  sh    $t7, 0x52($sp)
/* B54980 800DD7E0 14400002 */  bnez  $v0, .L800DD7EC
/* B54984 800DD7E4 00000000 */   nop   
/* B54988 800DD7E8 0007000D */  break 7
.L800DD7EC:
/* B5498C 800DD7EC 2401FFFF */  li    $at, -1
/* B54990 800DD7F0 14410004 */  bne   $v0, $at, .L800DD804
/* B54994 800DD7F4 3C018000 */   lui   $at, 0x8000
/* B54998 800DD7F8 15C10002 */  bne   $t6, $at, .L800DD804
/* B5499C 800DD7FC 00000000 */   nop   
/* B549A0 800DD800 0006000D */  break 6
.L800DD804:
/* B549A4 800DD804 A0CA0004 */  sb    $t2, 4($a2)
/* B549A8 800DD808 10000002 */  b     .L800DD814
/* B549AC 800DD80C 00000000 */   nop   
.L800DD810:
/* B549B0 800DD810 A7A00052 */  sh    $zero, 0x52($sp)
.L800DD814:
/* B549B4 800DD814 00E20019 */  multu $a3, $v0
/* B549B8 800DD818 8FB80030 */  lw    $t8, 0x30($sp)
/* B549BC 800DD81C 02002025 */  move  $a0, $s0
/* B549C0 800DD820 3C011200 */  lui   $at, 0x1200
/* B549C4 800DD824 3C058013 */  lui   $a1, %hi(D_801304AC) # $a1, 0x8013
/* B549C8 800DD828 0000C812 */  mflo  $t9
/* B549CC 800DD82C 03197021 */  addu  $t6, $t8, $t9
/* B549D0 800DD830 A4CE0010 */  sh    $t6, 0x10($a2)
/* B549D4 800DD834 01020019 */  multu $t0, $v0
/* B549D8 800DD838 02001025 */  move  $v0, $s0
/* B549DC 800DD83C 00007812 */  mflo  $t7
/* B549E0 800DD840 016FC021 */  addu  $t8, $t3, $t7
/* B549E4 800DD844 A4D80012 */  sh    $t8, 0x12($a2)
/* B549E8 800DD848 96390000 */  lhu   $t9, ($s1)
/* B549EC 800DD84C 00097840 */  sll   $t7, $t1, 1
/* B549F0 800DD850 31F800FF */  andi  $t8, $t7, 0xff
/* B549F4 800DD854 332E0001 */  andi  $t6, $t9, 1
/* B549F8 800DD858 11C00027 */  beqz  $t6, .L800DD8F8
/* B549FC 800DD85C 0018CC00 */   sll   $t9, $t8, 0x10
/* B54A00 800DD860 240505C0 */  li    $a1, 1472
/* B54A04 800DD864 240601A0 */  li    $a2, 416
/* B54A08 800DD868 26100008 */  addiu $s0, $s0, 8
/* B54A0C 800DD86C A7A70056 */  sh    $a3, 0x56($sp)
/* B54A10 800DD870 A7A80054 */  sh    $t0, 0x54($sp)
/* B54A14 800DD874 AFA90034 */  sw    $t1, 0x34($sp)
/* B54A18 800DD878 AFAB0028 */  sw    $t3, 0x28($sp)
/* B54A1C 800DD87C 0C036EE7 */  jal   func_800DBB9C
/* B54A20 800DD880 A7AC0050 */   sh    $t4, 0x50($sp)
/* B54A24 800DD884 87A80054 */  lh    $t0, 0x54($sp)
/* B54A28 800DD888 8FA90034 */  lw    $t1, 0x34($sp)
/* B54A2C 800DD88C 02002025 */  move  $a0, $s0
/* B54A30 800DD890 87A70056 */  lh    $a3, 0x56($sp)
/* B54A34 800DD894 26100008 */  addiu $s0, $s0, 8
/* B54A38 800DD898 87A60052 */  lh    $a2, 0x52($sp)
/* B54A3C 800DD89C AFA80010 */  sw    $t0, 0x10($sp)
/* B54A40 800DD8A0 0C036F35 */  jal   func_800DBCD4
/* B54A44 800DD8A4 00092840 */   sll   $a1, $t1, 1
/* B54A48 800DD8A8 02002025 */  move  $a0, $s0
/* B54A4C 800DD8AC 26100008 */  addiu $s0, $s0, 8
/* B54A50 800DD8B0 8FA50030 */  lw    $a1, 0x30($sp)
/* B54A54 800DD8B4 0C036F58 */  jal   func_800DBD60
/* B54A58 800DD8B8 8FA60028 */   lw    $a2, 0x28($sp)
/* B54A5C 800DD8BC 8FA2007C */  lw    $v0, 0x7c($sp)
/* B54A60 800DD8C0 24010001 */  li    $at, 1
/* B54A64 800DD8C4 87AC0050 */  lh    $t4, 0x50($sp)
/* B54A68 800DD8C8 10410007 */  beq   $v0, $at, .L800DD8E8
/* B54A6C 800DD8CC 3C058013 */   lui   $a1, %hi(D_801304A4) # $a1, 0x8013
/* B54A70 800DD8D0 24010002 */  li    $at, 2
/* B54A74 800DD8D4 10410006 */  beq   $v0, $at, .L800DD8F0
/* B54A78 800DD8D8 3C058013 */   lui   $a1, %hi(D_801304A8) # $a1, 0x8013
/* B54A7C 800DD8DC 3C058013 */  lui   $a1, %hi(D_801304AC) # $a1, 0x8013
/* B54A80 800DD8E0 10000018 */  b     .L800DD944
/* B54A84 800DD8E4 8CA504AC */   lw    $a1, %lo(D_801304AC)($a1)
.L800DD8E8:
/* B54A88 800DD8E8 10000016 */  b     .L800DD944
/* B54A8C 800DD8EC 8CA504A4 */   lw    $a1, %lo(D_801304A4)($a1)
.L800DD8F0:
/* B54A90 800DD8F0 10000014 */  b     .L800DD944
/* B54A94 800DD8F4 8CA504A8 */   lw    $a1, %lo(D_801304A8)($a1)
.L800DD8F8:
/* B54A98 800DD8F8 87AF0052 */  lh    $t7, 0x52($sp)
/* B54A9C 800DD8FC 03217025 */  or    $t6, $t9, $at
/* B54AA0 800DD900 26100008 */  addiu $s0, $s0, 8
/* B54AA4 800DD904 31F8FFFF */  andi  $t8, $t7, 0xffff
/* B54AA8 800DD908 01D8C825 */  or    $t9, $t6, $t8
/* B54AAC 800DD90C AC590000 */  sw    $t9, ($v0)
/* B54AB0 800DD910 3118FFFF */  andi  $t8, $t0, 0xffff
/* B54AB4 800DD914 00077400 */  sll   $t6, $a3, 0x10
/* B54AB8 800DD918 01D8C825 */  or    $t9, $t6, $t8
/* B54ABC 800DD91C AC590004 */  sw    $t9, 4($v0)
/* B54AC0 800DD920 3C0F1600 */  lui   $t7, 0x1600
/* B54AC4 800DD924 02001825 */  move  $v1, $s0
/* B54AC8 800DD928 AC6F0000 */  sw    $t7, ($v1)
/* B54ACC 800DD92C 33F9FFFF */  andi  $t9, $ra, 0xffff
/* B54AD0 800DD930 000DC400 */  sll   $t8, $t5, 0x10
/* B54AD4 800DD934 03197825 */  or    $t7, $t8, $t9
/* B54AD8 800DD938 AC6F0004 */  sw    $t7, 4($v1)
/* B54ADC 800DD93C 26100008 */  addiu $s0, $s0, 8
/* B54AE0 800DD940 8CA504AC */  lw    $a1, %lo(D_801304AC)($a1)
.L800DD944:
/* B54AE4 800DD944 97AE007A */  lhu   $t6, 0x7a($sp)
/* B54AE8 800DD948 8E230000 */  lw    $v1, ($s1)
/* B54AEC 800DD94C 02002025 */  move  $a0, $s0
/* B54AF0 800DD950 000EC103 */  sra   $t8, $t6, 4
/* B54AF4 800DD954 331900FF */  andi  $t9, $t8, 0xff
/* B54AF8 800DD958 3C0E8013 */  lui   $t6, %hi(D_801304A0) # $t6, 0x8013
/* B54AFC 800DD95C 8DCE04A0 */  lw    $t6, %lo(D_801304A0)($t6)
/* B54B00 800DD960 00197C00 */  sll   $t7, $t9, 0x10
/* B54B04 800DD964 8FB90074 */  lw    $t9, 0x74($sp)
/* B54B08 800DD968 01EEC025 */  or    $t8, $t7, $t6
/* B54B0C 800DD96C 26020008 */  addiu $v0, $s0, 8
/* B54B10 800DD970 332F00FF */  andi  $t7, $t9, 0xff
/* B54B14 800DD974 000F7200 */  sll   $t6, $t7, 8
/* B54B18 800DD978 030EC825 */  or    $t9, $t8, $t6
/* B54B1C 800DD97C 318F0080 */  andi  $t7, $t4, 0x80
/* B54B20 800DD980 000FC1C3 */  sra   $t8, $t7, 7
/* B54B24 800DD984 330E0001 */  andi  $t6, $t8, 1
/* B54B28 800DD988 000E7900 */  sll   $t7, $t6, 4
/* B54B2C 800DD98C 032FC025 */  or    $t8, $t9, $t7
/* B54B30 800DD990 00037180 */  sll   $t6, $v1, 6
/* B54B34 800DD994 000ECFC2 */  srl   $t9, $t6, 0x1f
/* B54B38 800DD998 332F0001 */  andi  $t7, $t9, 1
/* B54B3C 800DD99C 000F70C0 */  sll   $t6, $t7, 3
/* B54B40 800DD9A0 030EC825 */  or    $t9, $t8, $t6
/* B54B44 800DD9A4 92380000 */  lbu   $t8, ($s1)
/* B54B48 800DD9A8 AC850004 */  sw    $a1, 4($a0)
/* B54B4C 800DD9AC 330E0001 */  andi  $t6, $t8, 1
/* B54B50 800DD9B0 000E7880 */  sll   $t7, $t6, 2
/* B54B54 800DD9B4 032FC025 */  or    $t8, $t9, $t7
/* B54B58 800DD9B8 00037100 */  sll   $t6, $v1, 4
/* B54B5C 800DD9BC 000ECFC2 */  srl   $t9, $t6, 0x1f
/* B54B60 800DD9C0 332F0001 */  andi  $t7, $t9, 1
/* B54B64 800DD9C4 000F7040 */  sll   $t6, $t7, 1
/* B54B68 800DD9C8 030EC825 */  or    $t9, $t8, $t6
/* B54B6C 800DD9CC 00037940 */  sll   $t7, $v1, 5
/* B54B70 800DD9D0 000FC7C2 */  srl   $t8, $t7, 0x1f
/* B54B74 800DD9D4 330E0001 */  andi  $t6, $t8, 1
/* B54B78 800DD9D8 032E7825 */  or    $t7, $t9, $t6
/* B54B7C 800DD9DC AC8F0000 */  sw    $t7, ($a0)
/* B54B80 800DD9E0 8FBF0024 */  lw    $ra, 0x24($sp)
/* B54B84 800DD9E4 8FB10020 */  lw    $s1, 0x20($sp)
/* B54B88 800DD9E8 8FB0001C */  lw    $s0, 0x1c($sp)
/* B54B8C 800DD9EC 03E00008 */  jr    $ra
/* B54B90 800DD9F0 27BD0068 */   addiu $sp, $sp, 0x68

glabel func_800DD9F4
/* B54B94 800DD9F4 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B54B98 800DD9F8 AFBF001C */  sw    $ra, 0x1c($sp)
/* B54B9C 800DD9FC AFB00018 */  sw    $s0, 0x18($sp)
/* B54BA0 800DDA00 AFA7002C */  sw    $a3, 0x2c($sp)
/* B54BA4 800DDA04 8CAE0000 */  lw    $t6, ($a1)
/* B54BA8 800DDA08 00808025 */  move  $s0, $a0
/* B54BAC 800DDA0C 90A80006 */  lbu   $t0, 6($a1)
/* B54BB0 800DDA10 000E7AC0 */  sll   $t7, $t6, 0xb
/* B54BB4 800DDA14 000FC782 */  srl   $t8, $t7, 0x1e
/* B54BB8 800DDA18 13000014 */  beqz  $t8, .L800DDA6C
/* B54BBC 800DDA1C 8CC30008 */   lw    $v1, 8($a2)
/* B54BC0 800DDA20 00073040 */  sll   $a2, $a3, 1
/* B54BC4 800DDA24 24C6000F */  addiu $a2, $a2, 0xf
/* B54BC8 800DDA28 3C078013 */  lui   $a3, %hi(D_8012F0B0) # $a3, 0x8013
/* B54BCC 800DDA2C 02002025 */  move  $a0, $s0
/* B54BD0 800DDA30 2401FFF0 */  li    $at, -16
/* B54BD4 800DDA34 00C13024 */  and   $a2, $a2, $at
/* B54BD8 800DDA38 26100008 */  addiu $s0, $s0, 8
/* B54BDC 800DDA3C 8CE7F0B0 */  lw    $a3, %lo(D_8012F0B0)($a3)
/* B54BE0 800DDA40 0C036F44 */  jal   func_800DBD10
/* B54BE4 800DDA44 24050580 */   li    $a1, 1408
/* B54BE8 800DDA48 3C038013 */  lui   $v1, %hi(gWaveSamples) # $v1, 0x8013
/* B54BEC 800DDA4C 8FA9002C */  lw    $t1, 0x2c($sp)
/* B54BF0 800DDA50 2463F090 */  addiu $v1, %lo(gWaveSamples) # addiu $v1, $v1, -0xf70
/* B54BF4 800DDA54 8C790020 */  lw    $t9, 0x20($v1)
/* B54BF8 800DDA58 00095080 */  sll   $t2, $t1, 2
/* B54BFC 800DDA5C 02001025 */  move  $v0, $s0
/* B54C00 800DDA60 032A5821 */  addu  $t3, $t9, $t2
/* B54C04 800DDA64 1000003A */  b     .L800DDB50
/* B54C08 800DDA68 AC6B0020 */   sw    $t3, 0x20($v1)
.L800DDA6C:
/* B54C0C 800DDA6C 3C0C1408 */  lui   $t4, (0x14080580 >> 16) # lui $t4, 0x1408
/* B54C10 800DDA70 358C0580 */  ori   $t4, (0x14080580 & 0xFFFF) # ori $t4, $t4, 0x580
/* B54C14 800DDA74 02001025 */  move  $v0, $s0
/* B54C18 800DDA78 AC4C0000 */  sw    $t4, ($v0)
/* B54C1C 800DDA7C 8CAD0010 */  lw    $t5, 0x10($a1)
/* B54C20 800DDA80 26100008 */  addiu $s0, $s0, 8
/* B54C24 800DDA84 11000018 */  beqz  $t0, .L800DDAE8
/* B54C28 800DDA88 AC4D0004 */   sw    $t5, 4($v0)
/* B54C2C 800DDA8C 3C028013 */  lui   $v0, %hi(D_801304C0) # $v0, 0x8013
/* B54C30 800DDA90 244204C0 */  addiu $v0, %lo(D_801304C0) # addiu $v0, $v0, 0x4c0
/* B54C34 800DDA94 00087083 */  sra   $t6, $t0, 2
/* B54C38 800DDA98 004E7821 */  addu  $t7, $v0, $t6
/* B54C3C 800DDA9C 91F80000 */  lbu   $t8, ($t7)
/* B54C40 800DDAA0 31190003 */  andi  $t9, $t0, 3
/* B54C44 800DDAA4 00595021 */  addu  $t2, $v0, $t9
/* B54C48 800DDAA8 00780019 */  multu $v1, $t8
/* B54C4C 800DDAAC 914B0000 */  lbu   $t3, ($t2)
/* B54C50 800DDAB0 00004812 */  mflo  $t1
/* B54C54 800DDAB4 00000000 */  nop   
/* B54C58 800DDAB8 00000000 */  nop   
/* B54C5C 800DDABC 012B001A */  div   $zero, $t1, $t3
/* B54C60 800DDAC0 00001812 */  mflo  $v1
/* B54C64 800DDAC4 15600002 */  bnez  $t3, .L800DDAD0
/* B54C68 800DDAC8 00000000 */   nop   
/* B54C6C 800DDACC 0007000D */  break 7
.L800DDAD0:
/* B54C70 800DDAD0 2401FFFF */  li    $at, -1
/* B54C74 800DDAD4 15610004 */  bne   $t3, $at, .L800DDAE8
/* B54C78 800DDAD8 3C018000 */   lui   $at, 0x8000
/* B54C7C 800DDADC 15210002 */  bne   $t1, $at, .L800DDAE8
/* B54C80 800DDAE0 00000000 */   nop   
/* B54C84 800DDAE4 0006000D */  break 6
.L800DDAE8:
/* B54C88 800DDAE8 8FAD002C */  lw    $t5, 0x2c($sp)
/* B54C8C 800DDAEC 3063003F */  andi  $v1, $v1, 0x3f
/* B54C90 800DDAF0 240C0040 */  li    $t4, 64
/* B54C94 800DDAF4 01831023 */  subu  $v0, $t4, $v1
/* B54C98 800DDAF8 004D082A */  slt   $at, $v0, $t5
/* B54C9C 800DDAFC 10200012 */  beqz  $at, .L800DDB48
/* B54CA0 800DDB00 01A22023 */   subu  $a0, $t5, $v0
/* B54CA4 800DDB04 2484003F */  addiu $a0, $a0, 0x3f
/* B54CA8 800DDB08 04810002 */  bgez  $a0, .L800DDB14
/* B54CAC 800DDB0C 00800821 */   addu  $at, $a0, $zero
/* B54CB0 800DDB10 2481003F */  addiu $at, $a0, 0x3f
.L800DDB14:
/* B54CB4 800DDB14 00012183 */  sra   $a0, $at, 6
/* B54CB8 800DDB18 1080000B */  beqz  $a0, .L800DDB48
/* B54CBC 800DDB1C 02001025 */   move  $v0, $s0
/* B54CC0 800DDB20 308E00FF */  andi  $t6, $a0, 0xff
/* B54CC4 800DDB24 000E7C00 */  sll   $t7, $t6, 0x10
/* B54CC8 800DDB28 3C010900 */  lui   $at, 0x900
/* B54CCC 800DDB2C 01E1C025 */  or    $t8, $t7, $at
/* B54CD0 800DDB30 3C0A0600 */  lui   $t2, (0x06000080 >> 16) # lui $t2, 0x600
/* B54CD4 800DDB34 354A0080 */  ori   $t2, (0x06000080 & 0xFFFF) # ori $t2, $t2, 0x80
/* B54CD8 800DDB38 37190580 */  ori   $t9, $t8, 0x580
/* B54CDC 800DDB3C AC590000 */  sw    $t9, ($v0)
/* B54CE0 800DDB40 AC4A0004 */  sw    $t2, 4($v0)
/* B54CE4 800DDB44 26100008 */  addiu $s0, $s0, 8
.L800DDB48:
/* B54CE8 800DDB48 ACC30008 */  sw    $v1, 8($a2)
/* B54CEC 800DDB4C 02001025 */  move  $v0, $s0
.L800DDB50:
/* B54CF0 800DDB50 8FBF001C */  lw    $ra, 0x1c($sp)
/* B54CF4 800DDB54 8FB00018 */  lw    $s0, 0x18($sp)
/* B54CF8 800DDB58 27BD0020 */  addiu $sp, $sp, 0x20
/* B54CFC 800DDB5C 03E00008 */  jr    $ra
/* B54D00 800DDB60 00000000 */   nop   

glabel func_800DDB64
/* B54D04 800DDB64 8FAE0014 */  lw    $t6, 0x14($sp)
/* B54D08 800DDB68 24090001 */  li    $t1, 1
/* B54D0C 800DDB6C 24010002 */  li    $at, 2
/* B54D10 800DDB70 11C90005 */  beq   $t6, $t1, .L800DDB88
/* B54D14 800DDB74 24080940 */   li    $t0, 2368
/* B54D18 800DDB78 11C10008 */  beq   $t6, $at, .L800DDB9C
/* B54D1C 800DDB7C 24080AE0 */   li    $t0, 2784
/* B54D20 800DDB80 03E00008 */  jr    $ra
/* B54D24 800DDB84 00801025 */   move  $v0, $a0

.L800DDB88:
/* B54D28 800DDB88 90A30003 */  lbu   $v1, 3($a1)
/* B54D2C 800DDB8C 90C20002 */  lbu   $v0, 2($a2)
/* B54D30 800DDB90 A0C00003 */  sb    $zero, 3($a2)
/* B54D34 800DDB94 10000008 */  b     .L800DDBB8
/* B54D38 800DDB98 A0C30002 */   sb    $v1, 2($a2)
.L800DDB9C:
/* B54D3C 800DDB9C 90A30004 */  lbu   $v1, 4($a1)
/* B54D40 800DDBA0 90C20003 */  lbu   $v0, 3($a2)
/* B54D44 800DDBA4 A0C00002 */  sb    $zero, 2($a2)
/* B54D48 800DDBA8 10000003 */  b     .L800DDBB8
/* B54D4C 800DDBAC A0C30003 */   sb    $v1, 3($a2)
/* B54D50 800DDBB0 03E00008 */  jr    $ra
/* B54D54 800DDBB4 00801025 */   move  $v0, $a0

.L800DDBB8:
/* B54D58 800DDBB8 8FAF0010 */  lw    $t7, 0x10($sp)
/* B54D5C 800DDBBC 3C180200 */  lui   $t8, (0x020005C0 >> 16) # lui $t8, 0x200
/* B54D60 800DDBC0 3C0103C0 */  lui   $at, 0x3c0
/* B54D64 800DDBC4 11E9005D */  beq   $t7, $t1, .L800DDD3C
/* B54D68 800DDBC8 371805C0 */   ori   $t8, (0x020005C0 & 0xFFFF) # ori $t8, $t8, 0x5c0
/* B54D6C 800DDBCC 00404825 */  move  $t1, $v0
/* B54D70 800DDBD0 1043002B */  beq   $v0, $v1, .L800DDC80
/* B54D74 800DDBD4 00602825 */   move  $a1, $v1
/* B54D78 800DDBD8 00E51021 */  addu  $v0, $a3, $a1
/* B54D7C 800DDBDC 00495023 */  subu  $t2, $v0, $t1
/* B54D80 800DDBE0 3159FFFF */  andi  $t9, $t2, 0xffff
/* B54D84 800DDBE4 3C0103C0 */  lui   $at, 0x3c0
/* B54D88 800DDBE8 03216825 */  or    $t5, $t9, $at
/* B54D8C 800DDBEC 3C180800 */  lui   $t8, (0x080005C0 >> 16) # lui $t8, 0x800
/* B54D90 800DDBF0 000773C0 */  sll   $t6, $a3, 0xf
/* B54D94 800DDBF4 371805C0 */  ori   $t8, (0x080005C0 & 0xFFFF) # ori $t8, $t8, 0x5c0
/* B54D98 800DDBF8 00805825 */  move  $t3, $a0
/* B54D9C 800DDBFC AD780000 */  sw    $t8, ($t3)
/* B54DA0 800DDC00 AD6D0004 */  sw    $t5, 4($t3)
/* B54DA4 800DDC04 2559FFFE */  addiu $t9, $t2, -2
/* B54DA8 800DDC08 24840008 */  addiu $a0, $a0, 8
/* B54DAC 800DDC0C 00806025 */  move  $t4, $a0
/* B54DB0 800DDC10 AD800004 */  sw    $zero, 4($t4)
/* B54DB4 800DDC14 24840008 */  addiu $a0, $a0, 8
/* B54DB8 800DDC18 05C10003 */  bgez  $t6, .L800DDC28
/* B54DBC 800DDC1C 000E7843 */   sra   $t7, $t6, 1
/* B54DC0 800DDC20 25C10001 */  addiu $at, $t6, 1
/* B54DC4 800DDC24 00017843 */  sra   $t7, $at, 1
.L800DDC28:
/* B54DC8 800DDC28 25F8FFFF */  addiu $t8, $t7, -1
/* B54DCC 800DDC2C 07210003 */  bgez  $t9, .L800DDC3C
/* B54DD0 800DDC30 00196843 */   sra   $t5, $t9, 1
/* B54DD4 800DDC34 27210001 */  addiu $at, $t9, 1
/* B54DD8 800DDC38 00016843 */  sra   $t5, $at, 1
.L800DDC3C:
/* B54DDC 800DDC3C 030D001A */  div   $zero, $t8, $t5
/* B54DE0 800DDC40 15A00002 */  bnez  $t5, .L800DDC4C
/* B54DE4 800DDC44 00000000 */   nop   
/* B54DE8 800DDC48 0007000D */  break 7
.L800DDC4C:
/* B54DEC 800DDC4C 2401FFFF */  li    $at, -1
/* B54DF0 800DDC50 15A10004 */  bne   $t5, $at, .L800DDC64
/* B54DF4 800DDC54 3C018000 */   lui   $at, 0x8000
/* B54DF8 800DDC58 17010002 */  bne   $t8, $at, .L800DDC64
/* B54DFC 800DDC5C 00000000 */   nop   
/* B54E00 800DDC60 0006000D */  break 6
.L800DDC64:
/* B54E04 800DDC64 00007012 */  mflo  $t6
/* B54E08 800DDC68 31CFFFFF */  andi  $t7, $t6, 0xffff
/* B54E0C 800DDC6C 31F9FFFF */  andi  $t9, $t7, 0xffff
/* B54E10 800DDC70 3C010600 */  lui   $at, 0x600
/* B54E14 800DDC74 0321C025 */  or    $t8, $t9, $at
/* B54E18 800DDC78 1000000B */  b     .L800DDCA8
/* B54E1C 800DDC7C AD980000 */   sw    $t8, ($t4)
.L800DDC80:
/* B54E20 800DDC80 00805025 */  move  $t2, $a0
/* B54E24 800DDC84 3C0D0A00 */  lui   $t5, (0x0A0005C0 >> 16) # lui $t5, 0xa00
/* B54E28 800DDC88 30EEFFFF */  andi  $t6, $a3, 0xffff
/* B54E2C 800DDC8C 3C0103C0 */  lui   $at, 0x3c0
/* B54E30 800DDC90 01C17825 */  or    $t7, $t6, $at
/* B54E34 800DDC94 35AD05C0 */  ori   $t5, (0x0A0005C0 & 0xFFFF) # ori $t5, $t5, 0x5c0
/* B54E38 800DDC98 AD4D0000 */  sw    $t5, ($t2)
/* B54E3C 800DDC9C AD4F0004 */  sw    $t7, 4($t2)
/* B54E40 800DDCA0 24840008 */  addiu $a0, $a0, 8
/* B54E44 800DDCA4 00E51021 */  addu  $v0, $a3, $a1
.L800DDCA8:
/* B54E48 800DDCA8 1120001B */  beqz  $t1, .L800DDD18
/* B54E4C 800DDCAC 3C180A00 */   lui   $t8, 0xa00
/* B54E50 800DDCB0 2539000F */  addiu $t9, $t1, 0xf
/* B54E54 800DDCB4 3338FFF0 */  andi  $t8, $t9, 0xfff0
/* B54E58 800DDCB8 00186903 */  sra   $t5, $t8, 4
/* B54E5C 800DDCBC 31AE00FF */  andi  $t6, $t5, 0xff
/* B54E60 800DDCC0 000E7C00 */  sll   $t7, $t6, 0x10
/* B54E64 800DDCC4 3C011400 */  lui   $at, 0x1400
/* B54E68 800DDCC8 01E1C825 */  or    $t9, $t7, $at
/* B54E6C 800DDCCC 373805C0 */  ori   $t8, $t9, 0x5c0
/* B54E70 800DDCD0 00805025 */  move  $t2, $a0
/* B54E74 800DDCD4 AD580000 */  sw    $t8, ($t2)
/* B54E78 800DDCD8 8CCD000C */  lw    $t5, 0xc($a2)
/* B54E7C 800DDCDC 24840008 */  addiu $a0, $a0, 8
/* B54E80 800DDCE0 3C0F0A00 */  lui   $t7, (0x0A0003C0 >> 16) # lui $t7, 0xa00
/* B54E84 800DDCE4 25AE00A0 */  addiu $t6, $t5, 0xa0
/* B54E88 800DDCE8 AD4E0004 */  sw    $t6, 4($t2)
/* B54E8C 800DDCEC 35EF03C0 */  ori   $t7, (0x0A0003C0 & 0xFFFF) # ori $t7, $t7, 0x3c0
/* B54E90 800DDCF0 00805825 */  move  $t3, $a0
/* B54E94 800DDCF4 AD6F0000 */  sw    $t7, ($t3)
/* B54E98 800DDCF8 00497023 */  subu  $t6, $v0, $t1
/* B54E9C 800DDCFC 253805C0 */  addiu $t8, $t1, 0x5c0
/* B54EA0 800DDD00 00186C00 */  sll   $t5, $t8, 0x10
/* B54EA4 800DDD04 31CFFFFF */  andi  $t7, $t6, 0xffff
/* B54EA8 800DDD08 01AFC825 */  or    $t9, $t5, $t7
/* B54EAC 800DDD0C AD790004 */  sw    $t9, 4($t3)
/* B54EB0 800DDD10 10000020 */  b     .L800DDD94
/* B54EB4 800DDD14 24840008 */   addiu $a0, $a0, 8
.L800DDD18:
/* B54EB8 800DDD18 00804825 */  move  $t1, $a0
/* B54EBC 800DDD1C 304EFFFF */  andi  $t6, $v0, 0xffff
/* B54EC0 800DDD20 3C0105C0 */  lui   $at, 0x5c0
/* B54EC4 800DDD24 01C16825 */  or    $t5, $t6, $at
/* B54EC8 800DDD28 371803C0 */  ori   $t8, $t8, 0x3c0
/* B54ECC 800DDD2C AD380000 */  sw    $t8, ($t1)
/* B54ED0 800DDD30 AD2D0004 */  sw    $t5, 4($t1)
/* B54ED4 800DDD34 10000017 */  b     .L800DDD94
/* B54ED8 800DDD38 24840008 */   addiu $a0, $a0, 8
.L800DDD3C:
/* B54EDC 800DDD3C 00804825 */  move  $t1, $a0
/* B54EE0 800DDD40 3C0F0A00 */  lui   $t7, (0x0A0005C0 >> 16) # lui $t7, 0xa00
/* B54EE4 800DDD44 30E2FFFF */  andi  $v0, $a3, 0xffff
/* B54EE8 800DDD48 0041C825 */  or    $t9, $v0, $at
/* B54EEC 800DDD4C 35EF05C0 */  ori   $t7, (0x0A0005C0 & 0xFFFF) # ori $t7, $t7, 0x5c0
/* B54EF0 800DDD50 24840008 */  addiu $a0, $a0, 8
/* B54EF4 800DDD54 AD2F0000 */  sw    $t7, ($t1)
/* B54EF8 800DDD58 AD390004 */  sw    $t9, 4($t1)
/* B54EFC 800DDD5C 00805025 */  move  $t2, $a0
/* B54F00 800DDD60 24840008 */  addiu $a0, $a0, 8
/* B54F04 800DDD64 AD580000 */  sw    $t8, ($t2)
/* B54F08 800DDD68 00805825 */  move  $t3, $a0
/* B54F0C 800DDD6C 246F05C0 */  addiu $t7, $v1, 0x5c0
/* B54F10 800DDD70 AD430004 */  sw    $v1, 4($t2)
/* B54F14 800DDD74 000FCC00 */  sll   $t9, $t7, 0x10
/* B54F18 800DDD78 3C0E0A00 */  lui   $t6, (0x0A0003C0 >> 16) # lui $t6, 0xa00
/* B54F1C 800DDD7C 35CE03C0 */  ori   $t6, (0x0A0003C0 & 0xFFFF) # ori $t6, $t6, 0x3c0
/* B54F20 800DDD80 0322C025 */  or    $t8, $t9, $v0
/* B54F24 800DDD84 AD780004 */  sw    $t8, 4($t3)
/* B54F28 800DDD88 AD6E0000 */  sw    $t6, ($t3)
/* B54F2C 800DDD8C 24840008 */  addiu $a0, $a0, 8
/* B54F30 800DDD90 00602825 */  move  $a1, $v1
.L800DDD94:
/* B54F34 800DDD94 10600010 */  beqz  $v1, .L800DDDD8
/* B54F38 800DDD98 00801025 */   move  $v0, $a0
/* B54F3C 800DDD9C 24AE000F */  addiu $t6, $a1, 0xf
/* B54F40 800DDDA0 31CDFFF0 */  andi  $t5, $t6, 0xfff0
/* B54F44 800DDDA4 000D7903 */  sra   $t7, $t5, 4
/* B54F48 800DDDA8 31F900FF */  andi  $t9, $t7, 0xff
/* B54F4C 800DDDAC 0019C400 */  sll   $t8, $t9, 0x10
/* B54F50 800DDDB0 24ED05C0 */  addiu $t5, $a3, 0x5c0
/* B54F54 800DDDB4 3C011500 */  lui   $at, 0x1500
/* B54F58 800DDDB8 03017025 */  or    $t6, $t8, $at
/* B54F5C 800DDDBC 31AFFFFF */  andi  $t7, $t5, 0xffff
/* B54F60 800DDDC0 01CFC825 */  or    $t9, $t6, $t7
/* B54F64 800DDDC4 AC590000 */  sw    $t9, ($v0)
/* B54F68 800DDDC8 8CD8000C */  lw    $t8, 0xc($a2)
/* B54F6C 800DDDCC 24840008 */  addiu $a0, $a0, 8
/* B54F70 800DDDD0 270D00A0 */  addiu $t5, $t8, 0xa0
/* B54F74 800DDDD4 AC4D0004 */  sw    $t5, 4($v0)
.L800DDDD8:
/* B54F78 800DDDD8 24EE003F */  addiu $t6, $a3, 0x3f
/* B54F7C 800DDDDC 31CFFFC0 */  andi  $t7, $t6, 0xffc0
/* B54F80 800DDDE0 000FC903 */  sra   $t9, $t7, 4
/* B54F84 800DDDE4 333800FF */  andi  $t8, $t9, 0xff
/* B54F88 800DDDE8 00186C00 */  sll   $t5, $t8, 0x10
/* B54F8C 800DDDEC 3C010400 */  lui   $at, 0x400
/* B54F90 800DDDF0 01A17025 */  or    $t6, $t5, $at
/* B54F94 800DDDF4 3C0105C0 */  lui   $at, 0x5c0
/* B54F98 800DDDF8 3119FFFF */  andi  $t9, $t0, 0xffff
/* B54F9C 800DDDFC 0321C025 */  or    $t8, $t9, $at
/* B54FA0 800DDE00 35CF7FFF */  ori   $t7, $t6, 0x7fff
/* B54FA4 800DDE04 AC8F0000 */  sw    $t7, ($a0)
/* B54FA8 800DDE08 AC980004 */  sw    $t8, 4($a0)
/* B54FAC 800DDE0C 24820008 */  addiu $v0, $a0, 8
/* B54FB0 800DDE10 03E00008 */  jr    $ra
/* B54FB4 800DDE14 00000000 */   nop   
