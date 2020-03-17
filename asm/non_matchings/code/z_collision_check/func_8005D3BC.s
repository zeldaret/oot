glabel func_8005D3BC
/* AD455C 8005D3BC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AD4560 8005D3C0 AFBF0014 */  sw    $ra, 0x14($sp)
/* AD4564 8005D3C4 0C017503 */  jal   func_8005D40C
/* AD4568 8005D3C8 A4A00002 */   sh    $zero, 2($a1)
/* AD456C 8005D3CC 3C028016 */  lui   $v0, %hi(gGameInfo) # $v0, 0x8016
/* AD4570 8005D3D0 2442FA90 */  addiu $v0, %lo(gGameInfo) # addiu $v0, $v0, -0x570
/* AD4574 8005D3D4 8C4E0000 */  lw    $t6, ($v0)
/* AD4578 8005D3D8 24030001 */  li    $v1, 1
/* AD457C 8005D3DC A5C30E7E */  sh    $v1, 0xe7e($t6)
/* AD4580 8005D3E0 8C4F0000 */  lw    $t7, ($v0)
/* AD4584 8005D3E4 A5E30E80 */  sh    $v1, 0xe80($t7)
/* AD4588 8005D3E8 8C580000 */  lw    $t8, ($v0)
/* AD458C 8005D3EC A7030E82 */  sh    $v1, 0xe82($t8)
/* AD4590 8005D3F0 8FBF0014 */  lw    $ra, 0x14($sp)
/* AD4594 8005D3F4 27BD0018 */  addiu $sp, $sp, 0x18
/* AD4598 8005D3F8 03E00008 */  jr    $ra
/* AD459C 8005D3FC 00000000 */   nop   

