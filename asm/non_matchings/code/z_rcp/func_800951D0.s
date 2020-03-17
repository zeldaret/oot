glabel func_800951D0
/* B0C370 800951D0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B0C374 800951D4 AFBF0014 */  sw    $ra, 0x14($sp)
/* B0C378 800951D8 AFA5001C */  sw    $a1, 0x1c($sp)
/* B0C37C 800951DC AFA60020 */  sw    $a2, 0x20($sp)
/* B0C380 800951E0 AFA70024 */  sw    $a3, 0x24($sp)
/* B0C384 800951E4 0C031A73 */  jal   Graph_Alloc
/* B0C388 800951E8 24050010 */   li    $a1, 16
/* B0C38C 800951EC 3C0EFB00 */  lui   $t6, 0xfb00
/* B0C390 800951F0 AC4E0000 */  sw    $t6, ($v0)
/* B0C394 800951F4 8FB8001C */  lw    $t8, 0x1c($sp)
/* B0C398 800951F8 8FA80020 */  lw    $t0, 0x20($sp)
/* B0C39C 800951FC 8FAC0024 */  lw    $t4, 0x24($sp)
/* B0C3A0 80095200 0018CE00 */  sll   $t9, $t8, 0x18
/* B0C3A4 80095204 8FB80028 */  lw    $t8, 0x28($sp)
/* B0C3A8 80095208 310900FF */  andi  $t1, $t0, 0xff
/* B0C3AC 8009520C 00095400 */  sll   $t2, $t1, 0x10
/* B0C3B0 80095210 318D00FF */  andi  $t5, $t4, 0xff
/* B0C3B4 80095214 000D7200 */  sll   $t6, $t5, 8
/* B0C3B8 80095218 032A5825 */  or    $t3, $t9, $t2
/* B0C3BC 8009521C 016E7825 */  or    $t7, $t3, $t6
/* B0C3C0 80095220 330800FF */  andi  $t0, $t8, 0xff
/* B0C3C4 80095224 01E84825 */  or    $t1, $t7, $t0
/* B0C3C8 80095228 3C19DF00 */  lui   $t9, 0xdf00
/* B0C3CC 8009522C AC490004 */  sw    $t1, 4($v0)
/* B0C3D0 80095230 AC590008 */  sw    $t9, 8($v0)
/* B0C3D4 80095234 AC40000C */  sw    $zero, 0xc($v0)
/* B0C3D8 80095238 8FBF0014 */  lw    $ra, 0x14($sp)
/* B0C3DC 8009523C 27BD0018 */  addiu $sp, $sp, 0x18
/* B0C3E0 80095240 03E00008 */  jr    $ra
/* B0C3E4 80095244 00000000 */   nop   

