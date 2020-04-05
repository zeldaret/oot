glabel func_800CC824
/* B439C4 800CC824 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B439C8 800CC828 AFBF0014 */  sw    $ra, 0x14($sp)
/* B439CC 800CC82C AFA40018 */  sw    $a0, 0x18($sp)
/* B439D0 800CC830 AFA5001C */  sw    $a1, 0x1c($sp)
/* B439D4 800CC834 AFA60020 */  sw    $a2, 0x20($sp)
/* B439D8 800CC838 AFA70024 */  sw    $a3, 0x24($sp)
/* B439DC 800CC83C 0C01DE1C */  jal   Math_Sins
/* B439E0 800CC840 87A4001E */   lh    $a0, 0x1e($sp)
/* B439E4 800CC844 3C018014 */  lui   $at, %hi(D_801464E8)
/* B439E8 800CC848 C42464E8 */  lwc1  $f4, %lo(D_801464E8)($at)
/* B439EC 800CC84C 8FAE0020 */  lw    $t6, 0x20($sp)
/* B439F0 800CC850 46040182 */  mul.s $f6, $f0, $f4
/* B439F4 800CC854 E5C60000 */  swc1  $f6, ($t6)
/* B439F8 800CC858 0C01DE0D */  jal   Math_Coss
/* B439FC 800CC85C 87A4001E */   lh    $a0, 0x1e($sp)
/* B43A00 800CC860 3C018014 */  lui   $at, %hi(D_801464EC)
/* B43A04 800CC864 C42864EC */  lwc1  $f8, %lo(D_801464EC)($at)
/* B43A08 800CC868 8FAF0024 */  lw    $t7, 0x24($sp)
/* B43A0C 800CC86C 8FA20018 */  lw    $v0, 0x18($sp)
/* B43A10 800CC870 46080082 */  mul.s $f2, $f0, $f8
/* B43A14 800CC874 E5E20000 */  swc1  $f2, ($t7)
/* B43A18 800CC878 8FB80020 */  lw    $t8, 0x20($sp)
/* B43A1C 800CC87C C4500000 */  lwc1  $f16, ($v0)
/* B43A20 800CC880 C4440008 */  lwc1  $f4, 8($v0)
/* B43A24 800CC884 C70A0000 */  lwc1  $f10, ($t8)
/* B43A28 800CC888 8FB90028 */  lw    $t9, 0x28($sp)
/* B43A2C 800CC88C 46105482 */  mul.s $f18, $f10, $f16
/* B43A30 800CC890 00000000 */  nop   
/* B43A34 800CC894 46041182 */  mul.s $f6, $f2, $f4
/* B43A38 800CC898 46123200 */  add.s $f8, $f6, $f18
/* B43A3C 800CC89C 46004287 */  neg.s $f10, $f8
/* B43A40 800CC8A0 E72A0000 */  swc1  $f10, ($t9)
/* B43A44 800CC8A4 8FBF0014 */  lw    $ra, 0x14($sp)
/* B43A48 800CC8A8 27BD0018 */  addiu $sp, $sp, 0x18
/* B43A4C 800CC8AC 03E00008 */  jr    $ra
/* B43A50 800CC8B0 00000000 */   nop   

