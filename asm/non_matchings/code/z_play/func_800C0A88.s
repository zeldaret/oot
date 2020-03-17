glabel func_800C0A88
/* B37C28 800C0A88 000570C0 */  sll   $t6, $a1, 3
/* B37C2C 800C0A8C 01C57023 */  subu  $t6, $t6, $a1
/* B37C30 800C0A90 3C0F8016 */  lui   $t7, %hi(gSaveContext) # $t7, 0x8016
/* B37C34 800C0A94 AFA60008 */  sw    $a2, 8($sp)
/* B37C38 800C0A98 25EFE660 */  addiu $t7, %lo(gSaveContext) # addiu $t7, $t7, -0x19a0
/* B37C3C 800C0A9C 000E7080 */  sll   $t6, $t6, 2
/* B37C40 800C0AA0 8FB80014 */  lw    $t8, 0x14($sp)
/* B37C44 800C0AA4 00063400 */  sll   $a2, $a2, 0x10
/* B37C48 800C0AA8 01CF1021 */  addu  $v0, $t6, $t7
/* B37C4C 800C0AAC 00063403 */  sra   $a2, $a2, 0x10
/* B37C50 800C0AB0 A4461378 */  sh    $a2, 0x1378($v0)
/* B37C54 800C0AB4 A047137A */  sb    $a3, 0x137a($v0)
/* B37C58 800C0AB8 8F080000 */  lw    $t0, ($t8)
/* B37C5C 800C0ABC 87A9001A */  lh    $t1, 0x1a($sp)
/* B37C60 800C0AC0 8FAA0010 */  lw    $t2, 0x10($sp)
/* B37C64 800C0AC4 AC481368 */  sw    $t0, 0x1368($v0)
/* B37C68 800C0AC8 8F190004 */  lw    $t9, 4($t8)
/* B37C6C 800C0ACC AC59136C */  sw    $t9, 0x136c($v0)
/* B37C70 800C0AD0 8F080008 */  lw    $t0, 8($t8)
/* B37C74 800C0AD4 A4491374 */  sh    $t1, 0x1374($v0)
/* B37C78 800C0AD8 A44A1376 */  sh    $t2, 0x1376($v0)
/* B37C7C 800C0ADC AC481370 */  sw    $t0, 0x1370($v0)
/* B37C80 800C0AE0 8C8B1D2C */  lw    $t3, 0x1d2c($a0)
/* B37C84 800C0AE4 AC4B137C */  sw    $t3, 0x137c($v0)
/* B37C88 800C0AE8 8C8C1D48 */  lw    $t4, 0x1d48($a0)
/* B37C8C 800C0AEC 03E00008 */  jr    $ra
/* B37C90 800C0AF0 AC4C1380 */   sw    $t4, 0x1380($v0)

