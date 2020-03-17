glabel DynaPolyInfo_Alloc
/* AB8A20 80041880 00047100 */  sll   $t6, $a0, 4
/* AB8A24 80041884 000E7F02 */  srl   $t7, $t6, 0x1c
/* AB8A28 80041888 000FC080 */  sll   $t8, $t7, 2
/* AB8A2C 8004188C 3C198016 */  lui   $t9, %hi(gSegments)
/* AB8A30 80041890 0338C821 */  addu  $t9, $t9, $t8
/* AB8A34 80041894 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* AB8A38 80041898 8F396FA8 */  lw    $t9, %lo(gSegments)($t9)
/* AB8A3C 8004189C 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* AB8A40 800418A0 00814024 */  and   $t0, $a0, $at
/* AB8A44 800418A4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AB8A48 800418A8 3C018000 */  lui   $at, 0x8000
/* AB8A4C 800418AC 03284821 */  addu  $t1, $t9, $t0
/* AB8A50 800418B0 AFBF0014 */  sw    $ra, 0x14($sp)
/* AB8A54 800418B4 01212021 */  addu  $a0, $t1, $at
/* AB8A58 800418B8 0C0105E8 */  jal   func_800417A0
/* AB8A5C 800418BC ACA40000 */   sw    $a0, ($a1)
/* AB8A60 800418C0 8FBF0014 */  lw    $ra, 0x14($sp)
/* AB8A64 800418C4 27BD0018 */  addiu $sp, $sp, 0x18
/* AB8A68 800418C8 03E00008 */  jr    $ra
/* AB8A6C 800418CC 00000000 */   nop   

