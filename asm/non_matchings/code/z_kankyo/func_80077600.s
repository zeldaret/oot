glabel func_80077600
/* AEE7A0 80077600 3C0E8016 */  lui   $t6, %hi(gSaveContext+0x140e) # $t6, 0x8016
/* AEE7A4 80077604 95CEFA6E */  lhu   $t6, %lo(gSaveContext+0x140e)($t6)
/* AEE7A8 80077608 3401FFFF */  li    $at, 65535
/* AEE7AC 8007760C 00001825 */  move  $v1, $zero
/* AEE7B0 80077610 15C10002 */  bne   $t6, $at, .L8007761C
/* AEE7B4 80077614 00000000 */   nop   
/* AEE7B8 80077618 24030001 */  li    $v1, 1
.L8007761C:
/* AEE7BC 8007761C 03E00008 */  jr    $ra
/* AEE7C0 80077620 00601025 */   move  $v0, $v1

