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

