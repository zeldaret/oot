glabel func_8010B680
/* B82820 8010B680 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B82824 8010B684 AFA40020 */  sw    $a0, 0x20($sp)
/* B82828 8010B688 AFBF0014 */  sw    $ra, 0x14($sp)
/* B8282C 8010B68C 3C048015 */  lui   $a0, %hi(D_8015430C) # $a0, 0x8015
/* B82830 8010B690 AFA50024 */  sw    $a1, 0x24($sp)
/* B82834 8010B694 AFA60028 */  sw    $a2, 0x28($sp)
/* B82838 8010B698 0C00084C */  jal   osSyncPrintf
/* B8283C 8010B69C 2484430C */   addiu $a0, %lo(D_8015430C) # addiu $a0, $a0, 0x430c
/* B82840 8010B6A0 3C048015 */  lui   $a0, %hi(D_80154314) # $a0, 0x8015
/* B82844 8010B6A4 24844314 */  addiu $a0, %lo(D_80154314) # addiu $a0, $a0, 0x4314
/* B82848 8010B6A8 97A50026 */  lhu   $a1, 0x26($sp)
/* B8284C 8010B6AC 0C00084C */  jal   osSyncPrintf
/* B82850 8010B6B0 8FA60028 */   lw    $a2, 0x28($sp)
/* B82854 8010B6B4 3C048015 */  lui   $a0, %hi(D_80154328) # $a0, 0x8015
/* B82858 8010B6B8 0C00084C */  jal   osSyncPrintf
/* B8285C 8010B6BC 24844328 */   addiu $a0, %lo(D_80154328) # addiu $a0, $a0, 0x4328
/* B82860 8010B6C0 8FA40020 */  lw    $a0, 0x20($sp)
/* B82864 8010B6C4 340EFFFF */  li    $t6, 65535
/* B82868 8010B6C8 248220D8 */  addiu $v0, $a0, 0x20d8
/* B8286C 8010B6CC 24417FFF */  addiu $at, $v0, 0x7fff
/* B82870 8010B6D0 A42E63F1 */  sh    $t6, 0x63f1($at)
/* B82874 8010B6D4 AFA20018 */  sw    $v0, 0x18($sp)
/* B82878 8010B6D8 0C042C30 */  jal   func_8010B0C0
/* B8287C 8010B6DC 97A50026 */   lhu   $a1, 0x26($sp)
/* B82880 8010B6E0 8FA20018 */  lw    $v0, 0x18($sp)
/* B82884 8010B6E4 8FAF0028 */  lw    $t7, 0x28($sp)
/* B82888 8010B6E8 24180001 */  li    $t8, 1
/* B8288C 8010B6EC 24417FFF */  addiu $at, $v0, 0x7fff
/* B82890 8010B6F0 A0386305 */  sb    $t8, 0x6305($at)
/* B82894 8010B6F4 A02063E8 */  sb    $zero, 0x63e8($at)
/* B82898 8010B6F8 A42063E9 */  sh    $zero, 0x63e9($at)
/* B8289C 8010B6FC AC2F6409 */  sw    $t7, 0x6409($at)
/* B828A0 8010B700 8FB90020 */  lw    $t9, 0x20($sp)
/* B828A4 8010B704 3C010001 */  lui   $at, 1
/* B828A8 8010B708 00390821 */  addu  $at, $at, $t9
/* B828AC 8010B70C A42004C6 */  sh    $zero, 0x4c6($at)
/* B828B0 8010B710 8FBF0014 */  lw    $ra, 0x14($sp)
/* B828B4 8010B714 27BD0020 */  addiu $sp, $sp, 0x20
/* B828B8 8010B718 03E00008 */  jr    $ra
/* B828BC 8010B71C 00000000 */   nop   

