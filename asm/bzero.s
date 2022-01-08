.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel bzero
/* 005050 80004450 28A1000C */  slti  $at, $a1, 0xc
/* 005054 80004454 1420001D */  bnez  $at, .bytezero
/* 005058 80004458 00041823 */   negu  $v1, $a0
/* 00505C 8000445C 30630003 */  andi  $v1, $v1, 3
/* 005060 80004460 10600003 */  beqz  $v1, .blkzero
/* 005064 80004464 00A32823 */   subu  $a1, $a1, $v1
/* 005068 80004468 A8800000 */  swl   $zero, ($a0)
/* 00506C 8000446C 00832021 */  addu  $a0, $a0, $v1
.blkzero:
/* 005070 80004470 2401FFE0 */  li    $at, -32
/* 005074 80004474 00A13824 */  and   $a3, $a1, $at
/* 005078 80004478 10E0000C */  beqz  $a3, .wordzero
/* 00507C 8000447C 00A72823 */   subu  $a1, $a1, $a3
/* 005080 80004480 00E43821 */  addu  $a3, $a3, $a0
.L80004484:
/* 005084 80004484 24840020 */  addiu $a0, $a0, 0x20
/* 005088 80004488 AC80FFE0 */  sw    $zero, -0x20($a0)
/* 00508C 8000448C AC80FFE4 */  sw    $zero, -0x1c($a0)
/* 005090 80004490 AC80FFE8 */  sw    $zero, -0x18($a0)
/* 005094 80004494 AC80FFEC */  sw    $zero, -0x14($a0)
/* 005098 80004498 AC80FFF0 */  sw    $zero, -0x10($a0)
/* 00509C 8000449C AC80FFF4 */  sw    $zero, -0xc($a0)
/* 0050A0 800044A0 AC80FFF8 */  sw    $zero, -8($a0)
/* 0050A4 800044A4 1487FFF7 */  bne   $a0, $a3, .L80004484
/* 0050A8 800044A8 AC80FFFC */   sw    $zero, -4($a0)
.wordzero:
/* 0050AC 800044AC 2401FFFC */  li    $at, -4
/* 0050B0 800044B0 00A13824 */  and   $a3, $a1, $at
/* 0050B4 800044B4 10E00005 */  beqz  $a3, .bytezero
/* 0050B8 800044B8 00A72823 */   subu  $a1, $a1, $a3
/* 0050BC 800044BC 00E43821 */  addu  $a3, $a3, $a0
.L800044C0:
/* 0050C0 800044C0 24840004 */  addiu $a0, $a0, 4
/* 0050C4 800044C4 1487FFFE */  bne   $a0, $a3, .L800044C0
/* 0050C8 800044C8 AC80FFFC */   sw    $zero, -4($a0)
.bytezero:
/* 0050CC 800044CC 18A00005 */  blez  $a1, .zerodone
/* 0050D0 800044D0 00000000 */   nop
/* 0050D4 800044D4 00A42821 */  addu  $a1, $a1, $a0
.L800044D8:
/* 0050D8 800044D8 24840001 */  addiu $a0, $a0, 1
/* 0050DC 800044DC 1485FFFE */  bne   $a0, $a1, .L800044D8
/* 0050E0 800044E0 A080FFFF */   sb    $zero, -1($a0)
.zerodone:
/* 0050E4 800044E4 03E00008 */  jr    $ra
/* 0050E8 800044E8 00000000 */   nop

/* 0050EC 800044EC 00000000 */  nop
/* 0050F0 800044F0 00000000 */  nop
/* 0050F4 800044F4 00000000 */  nop
/* 0050F8 800044F8 00000000 */  nop
/* 0050FC 800044FC 00000000 */  nop
/* 005100 80004500 00000000 */  nop
/* 005104 80004504 00000000 */  nop
/* 005108 80004508 00000000 */  nop
/* 00510C 8000450C 00000000 */  nop
/* 005110 80004510 00000000 */  nop
/* 005114 80004514 00000000 */  nop
/* 005118 80004518 00000000 */  nop
/* 00511C 8000451C 00000000 */  nop
/* 005120 80004520 00000000 */  nop
/* 005124 80004524 00000000 */  nop
/* 005128 80004528 00000000 */  nop
/* 00512C 8000452C 00000000 */  nop
/* 005130 80004530 00000000 */  nop
/* 005134 80004534 00000000 */  nop
/* 005138 80004538 00000000 */  nop
/* 00513C 8000453C 00000000 */  nop
/* 005140 80004540 00000000 */  nop
/* 005144 80004544 00000000 */  nop
/* 005148 80004548 00000000 */  nop
/* 00514C 8000454C 00000000 */  nop
