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

