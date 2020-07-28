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

