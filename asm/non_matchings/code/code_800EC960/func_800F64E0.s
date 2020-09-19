glabel func_800F64E0
/* B6D680 800F64E0 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B6D684 800F64E4 AFA40020 */  sw    $a0, 0x20($sp)
/* B6D688 800F64E8 308400FF */  andi  $a0, $a0, 0xff
/* B6D68C 800F64EC 3C018013 */  lui   $at, %hi(D_80130608) # $at, 0x8013
/* B6D690 800F64F0 AFBF001C */  sw    $ra, 0x1c($sp)
/* B6D694 800F64F4 10800011 */  beqz  $a0, .L800F653C
/* B6D698 800F64F8 A0240608 */   sb    $a0, %lo(D_80130608)($at)
/* B6D69C 800F64FC 3C078013 */  lui   $a3, %hi(D_801333E0) # $a3, 0x8013
/* B6D6A0 800F6500 3C0E8013 */  lui   $t6, %hi(D_801333E8) # $t6, 0x8013
/* B6D6A4 800F6504 24E733E0 */  addiu $a3, %lo(D_801333E0) # addiu $a3, $a3, 0x33e0
/* B6D6A8 800F6508 25CE33E8 */  addiu $t6, %lo(D_801333E8) # addiu $t6, $t6, 0x33e8
/* B6D6AC 800F650C 3C058013 */  lui   $a1, %hi(D_801333D4) # $a1, 0x8013
/* B6D6B0 800F6510 24A533D4 */  addiu $a1, %lo(D_801333D4) # addiu $a1, $a1, 0x33d4
/* B6D6B4 800F6514 AFAE0014 */  sw    $t6, 0x14($sp)
/* B6D6B8 800F6518 AFA70010 */  sw    $a3, 0x10($sp)
/* B6D6BC 800F651C 24044800 */  li    $a0, 18432
/* B6D6C0 800F6520 0C03DCE3 */  jal   Audio_PlaySoundGeneral
/* B6D6C4 800F6524 24060004 */   li    $a2, 4
/* B6D6C8 800F6528 3C04F100 */  lui   $a0, 0xf100
/* B6D6CC 800F652C 0C0396BF */  jal   func_800E5AFC
/* B6D6D0 800F6530 00002825 */   move  $a1, $zero
/* B6D6D4 800F6534 10000010 */  b     .L800F6578
/* B6D6D8 800F6538 8FBF001C */   lw    $ra, 0x1c($sp)
.L800F653C:
/* B6D6DC 800F653C 3C078013 */  lui   $a3, %hi(D_801333E0) # $a3, 0x8013
/* B6D6E0 800F6540 3C0F8013 */  lui   $t7, %hi(D_801333E8) # $t7, 0x8013
/* B6D6E4 800F6544 24E733E0 */  addiu $a3, %lo(D_801333E0) # addiu $a3, $a3, 0x33e0
/* B6D6E8 800F6548 25EF33E8 */  addiu $t7, %lo(D_801333E8) # addiu $t7, $t7, 0x33e8
/* B6D6EC 800F654C 3C058013 */  lui   $a1, %hi(D_801333D4) # $a1, 0x8013
/* B6D6F0 800F6550 24A533D4 */  addiu $a1, %lo(D_801333D4) # addiu $a1, $a1, 0x33d4
/* B6D6F4 800F6554 AFAF0014 */  sw    $t7, 0x14($sp)
/* B6D6F8 800F6558 AFA70010 */  sw    $a3, 0x10($sp)
/* B6D6FC 800F655C 24044801 */  li    $a0, 18433
/* B6D700 800F6560 0C03DCE3 */  jal   Audio_PlaySoundGeneral
/* B6D704 800F6564 24060004 */   li    $a2, 4
/* B6D708 800F6568 3C04F200 */  lui   $a0, 0xf200
/* B6D70C 800F656C 0C0396BF */  jal   func_800E5AFC
/* B6D710 800F6570 00002825 */   move  $a1, $zero
/* B6D714 800F6574 8FBF001C */  lw    $ra, 0x1c($sp)
.L800F6578:
/* B6D718 800F6578 27BD0020 */  addiu $sp, $sp, 0x20
/* B6D71C 800F657C 03E00008 */  jr    $ra
/* B6D720 800F6580 00000000 */   nop   

