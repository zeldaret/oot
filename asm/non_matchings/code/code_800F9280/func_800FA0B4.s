glabel func_800FA0B4
/* B71254 800FA0B4 AFA40000 */  sw    $a0, ($sp)
/* B71258 800FA0B8 308400FF */  andi  $a0, $a0, 0xff
/* B7125C 800FA0BC 00047080 */  sll   $t6, $a0, 2
/* B71260 800FA0C0 01C47023 */  subu  $t6, $t6, $a0
/* B71264 800FA0C4 000E7080 */  sll   $t6, $t6, 2
/* B71268 800FA0C8 01C47023 */  subu  $t6, $t6, $a0
/* B7126C 800FA0CC 000E7140 */  sll   $t6, $t6, 5
/* B71270 800FA0D0 3C0F8017 */  lui   $t7, %hi(gAudioContext+0x3530)
/* B71274 800FA0D4 01EE7821 */  addu  $t7, $t7, $t6
/* B71278 800FA0D8 8DEF26B0 */  lw    $t7, %lo(gAudioContext+0x3530)($t7)
/* B7127C 800FA0DC 0004C880 */  sll   $t9, $a0, 2
/* B71280 800FA0E0 0324C821 */  addu  $t9, $t9, $a0
/* B71284 800FA0E4 000FC7C2 */  srl   $t8, $t7, 0x1f
/* B71288 800FA0E8 17000003 */  bnez  $t8, .L800FA0F8
/* B7128C 800FA0EC 0019C880 */   sll   $t9, $t9, 2
/* B71290 800FA0F0 03E00008 */  jr    $ra
/* B71294 800FA0F4 3402FFFF */   li    $v0, 65535

.L800FA0F8:
/* B71298 800FA0F8 0324C823 */  subu  $t9, $t9, $a0
/* B7129C 800FA0FC 0019C8C0 */  sll   $t9, $t9, 3
/* B712A0 800FA100 0324C821 */  addu  $t9, $t9, $a0
/* B712A4 800FA104 0019C880 */  sll   $t9, $t9, 2
/* B712A8 800FA108 3C028017 */  lui   $v0, %hi(D_8016E9A4)
/* B712AC 800FA10C 00591021 */  addu  $v0, $v0, $t9
/* B712B0 800FA110 9442E9A4 */  lhu   $v0, %lo(D_8016E9A4)($v0)
/* B712B4 800FA114 03E00008 */  jr    $ra
/* B712B8 800FA118 00000000 */   nop   

