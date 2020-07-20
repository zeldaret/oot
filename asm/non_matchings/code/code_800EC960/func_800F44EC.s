glabel func_800F44EC
/* B6B68C 800F44EC AFA50004 */  sw    $a1, 4($sp)
/* B6B690 800F44F0 240E0001 */  li    $t6, 1
/* B6B694 800F44F4 3C018013 */  lui   $at, %hi(D_801305B8) # $at, 0x8013
/* B6B698 800F44F8 00052E00 */  sll   $a1, $a1, 0x18
/* B6B69C 800F44FC A02E05B8 */  sb    $t6, %lo(D_801305B8)($at)
/* B6B6A0 800F4500 00052E03 */  sra   $a1, $a1, 0x18
/* B6B6A4 800F4504 AFA40000 */  sw    $a0, ($sp)
/* B6B6A8 800F4508 3C018013 */  lui   $at, %hi(D_801305BC) # $at, 0x8013
/* B6B6AC 800F450C 00042600 */  sll   $a0, $a0, 0x18
/* B6B6B0 800F4510 A02505BC */  sb    $a1, %lo(D_801305BC)($at)
/* B6B6B4 800F4514 00042603 */  sra   $a0, $a0, 0x18
/* B6B6B8 800F4518 3C018013 */  lui   $at, %hi(D_801305C0)
/* B6B6BC 800F451C 03E00008 */  jr    $ra
/* B6B6C0 800F4520 A02405C0 */   sb    $a0, %lo(D_801305C0)($at)

