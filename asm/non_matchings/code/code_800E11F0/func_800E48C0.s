glabel func_800E48C0
/* B5BA60 800E48C0 8C820000 */  lw    $v0, ($a0)
/* B5BA64 800E48C4 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* B5BA68 800E48C8 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* B5BA6C 800E48CC 8C430000 */  lw    $v1, ($v0)
/* B5BA70 800E48D0 00617024 */  and   $t6, $v1, $at
/* B5BA74 800E48D4 11C0000E */  beqz  $t6, .L800E4910
/* B5BA78 800E48D8 0003C180 */   sll   $t8, $v1, 6
/* B5BA7C 800E48DC 0701000C */  bgez  $t8, .L800E4910
/* B5BA80 800E48E0 0003C900 */   sll   $t9, $v1, 4
/* B5BA84 800E48E4 00194782 */  srl   $t0, $t9, 0x1e
/* B5BA88 800E48E8 11000009 */  beqz  $t0, .L800E4910
/* B5BA8C 800E48EC 3C038017 */   lui   $v1, %hi(gAudioContext) # $v1, 0x8017
/* B5BA90 800E48F0 2463F180 */  addiu $v1, %lo(gAudioContext) # addiu $v1, $v1, -0xe80
/* B5BA94 800E48F4 8C691768 */  lw    $t1, 0x1768($v1)
/* B5BA98 800E48F8 00095080 */  sll   $t2, $t1, 2
/* B5BA9C 800E48FC 006A5821 */  addu  $t3, $v1, $t2
/* B5BAA0 800E4900 AD620B68 */  sw    $v0, 0xb68($t3)
/* B5BAA4 800E4904 8C6C1768 */  lw    $t4, 0x1768($v1)
/* B5BAA8 800E4908 258D0001 */  addiu $t5, $t4, 1
/* B5BAAC 800E490C AC6D1768 */  sw    $t5, 0x1768($v1)
.L800E4910:
/* B5BAB0 800E4910 03E00008 */  jr    $ra
/* B5BAB4 800E4914 00000000 */   nop

