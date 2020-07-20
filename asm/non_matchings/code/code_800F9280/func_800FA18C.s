glabel func_800FA18C
/* B7132C 800FA18C AFA40000 */  sw    $a0, ($sp)
/* B71330 800FA190 308400FF */  andi  $a0, $a0, 0xff
/* B71334 800FA194 00047080 */  sll   $t6, $a0, 2
/* B71338 800FA198 01C47021 */  addu  $t6, $t6, $a0
/* B7133C 800FA19C 000E7080 */  sll   $t6, $t6, 2
/* B71340 800FA1A0 01C47023 */  subu  $t6, $t6, $a0
/* B71344 800FA1A4 000E70C0 */  sll   $t6, $t6, 3
/* B71348 800FA1A8 01C47021 */  addu  $t6, $t6, $a0
/* B7134C 800FA1AC 3C0F8017 */  lui   $t7, %hi(D_8016E750) # $t7, 0x8017
/* B71350 800FA1B0 25EFE750 */  addiu $t7, %lo(D_8016E750) # addiu $t7, $t7, -0x18b0
/* B71354 800FA1B4 000E7080 */  sll   $t6, $t6, 2
/* B71358 800FA1B8 01CF1821 */  addu  $v1, $t6, $t7
/* B7135C 800FA1BC 9066004D */  lbu   $a2, 0x4d($v1)
/* B71360 800FA1C0 AFA50004 */  sw    $a1, 4($sp)
/* B71364 800FA1C4 30A700FF */  andi  $a3, $a1, 0xff
/* B71368 800FA1C8 18C0001B */  blez  $a2, .L800FA238
/* B7136C 800FA1CC 00001025 */   move  $v0, $zero
/* B71370 800FA1D0 0004C080 */  sll   $t8, $a0, 2
/* B71374 800FA1D4 0304C021 */  addu  $t8, $t8, $a0
/* B71378 800FA1D8 0018C080 */  sll   $t8, $t8, 2
/* B7137C 800FA1DC 0304C023 */  subu  $t8, $t8, $a0
/* B71380 800FA1E0 0018C0C0 */  sll   $t8, $t8, 3
/* B71384 800FA1E4 0304C021 */  addu  $t8, $t8, $a0
/* B71388 800FA1E8 0018C080 */  sll   $t8, $t8, 2
/* B7138C 800FA1EC 030F2821 */  addu  $a1, $t8, $t7
/* B71390 800FA1F0 00E04025 */  move  $t0, $a3
/* B71394 800FA1F4 3C0AFF00 */  lui   $t2, 0xff00
/* B71398 800FA1F8 3C0900F0 */  lui   $t1, 0xf0
/* B7139C 800FA1FC 0002C880 */  sll   $t9, $v0, 2
.L800FA200:
/* B713A0 800FA200 00B93821 */  addu  $a3, $a1, $t9
/* B713A4 800FA204 8CEB002C */  lw    $t3, 0x2c($a3)
/* B713A8 800FA208 24420001 */  addiu $v0, $v0, 1
/* B713AC 800FA20C 304200FF */  andi  $v0, $v0, 0xff
/* B713B0 800FA210 01692024 */  and   $a0, $t3, $t1
/* B713B4 800FA214 00042502 */  srl   $a0, $a0, 0x14
/* B713B8 800FA218 308400FF */  andi  $a0, $a0, 0xff
/* B713BC 800FA21C 55040004 */  bnel  $t0, $a0, .L800FA230
/* B713C0 800FA220 0046082A */   slt   $at, $v0, $a2
/* B713C4 800FA224 ACEA002C */  sw    $t2, 0x2c($a3)
/* B713C8 800FA228 9066004D */  lbu   $a2, 0x4d($v1)
/* B713CC 800FA22C 0046082A */  slt   $at, $v0, $a2
.L800FA230:
/* B713D0 800FA230 5420FFF3 */  bnezl $at, .L800FA200
/* B713D4 800FA234 0002C880 */   sll   $t9, $v0, 2
.L800FA238:
/* B713D8 800FA238 03E00008 */  jr    $ra
/* B713DC 800FA23C 00000000 */   nop   

