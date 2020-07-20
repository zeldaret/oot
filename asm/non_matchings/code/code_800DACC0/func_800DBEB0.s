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

